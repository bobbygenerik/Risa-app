package com.risa.app.recommendation;

import android.app.IntentService;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import androidx.core.app.NotificationCompat;
import android.util.Log;

import com.risa.app.MainActivity;
import com.risa.app.R;

import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

public class UpdateRecommendationsService extends IntentService {

    private static final String TAG = "RecommendationService";
    private static final int MAX_RECOMMENDATIONS = 5;
    private static int sNotificationId = 0;
    private static final String CHANNEL_ID = "recommendations";

    public UpdateRecommendationsService() {
        super("UpdateRecommendationsService");
    }

    @Override
    public void onCreate() {
        super.onCreate();
        createNotificationChannel();
    }

    @Override
    protected void onHandleIntent(Intent intent) {
        Log.d(TAG, "Updating recommendation cards");

        List<Content> recommendedContent = getMockRecommendedContent();

        if (recommendedContent == null || recommendedContent.isEmpty()) {
            Log.d(TAG, "No content to recommend.");
            return;
        }

        NotificationManager notificationManager =
                (NotificationManager) getSystemService(Context.NOTIFICATION_SERVICE);

        notificationManager.cancelAll();

        for (int i = 0; i < Math.min(recommendedContent.size(), MAX_RECOMMENDATIONS); i++) {
            Content content = recommendedContent.get(i);
            buildRecommendation(content, notificationManager);
        }
    }

    private void buildRecommendation(Content content, NotificationManager notificationManager) {
        try {
            Bitmap background = BitmapFactory.decodeResource(getResources(), R.drawable.tv_banner);

            Intent detailsIntent = new Intent(this, MainActivity.class);

            PendingIntent pendingIntent = PendingIntent.getActivity(
                    this,
                    content.getId().hashCode(),
                    detailsIntent,
                    PendingIntent.FLAG_UPDATE_CURRENT | (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M ? PendingIntent.FLAG_IMMUTABLE : 0)
            );

            Notification notification = new NotificationCompat.Builder(this, CHANNEL_ID)
                    .setContentTitle(content.getTitle())
                    .setContentText(content.getDescription())
                    .setSmallIcon(R.mipmap.ic_launcher)
                    .setLargeIcon(background)
                    .setGroup(TAG)
                    .setCategory(Notification.CATEGORY_RECOMMENDATION)
                    .setColor(getResources().getColor(R.color.fastlane_background))
                    .setContentIntent(pendingIntent)
                    .setAutoCancel(true)
                    .build();

            notificationManager.notify(sNotificationId++, notification);

        } catch (Exception e) {
            Log.e(TAG, "Could not create recommendation: " + content.getTitle(), e);
        }
    }

    private void createNotificationChannel() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            CharSequence name = "Recommendations";
            String description = "Channel for content recommendations";
            int importance = NotificationManager.IMPORTANCE_DEFAULT;
            NotificationChannel channel = new NotificationChannel(CHANNEL_ID, name, importance);
            channel.setDescription(description);
            NotificationManager notificationManager = getSystemService(NotificationManager.class);
            notificationManager.createNotificationChannel(channel);
        }
    }

    private List<Content> getMockRecommendedContent() {
        List<Content> contentList = new ArrayList<>();
        contentList.add(new Content("1", "Movie Title 1", "A thrilling adventure.",
                "https://example.com/movie1_card.jpg", "https://example.com/movie1_bg.jpg"));
        contentList.add(new Content("2", "TV Show Episode 2", "The next exciting episode.",
                "https://example.com/show2_card.jpg", "https://example.com/show2_bg.jpg"));
        contentList.add(new Content("3", "Documentary Name", "Explore the wonders of nature.",
                "https://example.com/doc3_card.jpg", "https://example.com/doc3_bg.jpg"));
        return contentList;
    }

    private static class Content {
        private String id;
        private String title;
        private String description;
        private String cardImageUrl;
        private String backgroundImageUrl;

        public Content(String id, String title, String description, String cardImageUrl, String backgroundImageUrl) {
            this.id = id;
            this.title = title;
            this.description = description;
            this.cardImageUrl = cardImageUrl;
            this.backgroundImageUrl = backgroundImageUrl;
        }

        public String getId() {
            return id;
        }

        public String getTitle() {
            return title;
        }

        public String getDescription() {
            return description;
        }

        public String getCardImageUrl() {
            return cardImageUrl;
        }

        public String getBackgroundImageUrl() {
            return backgroundImageUrl;
        }
    }
}
