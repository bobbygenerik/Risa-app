package p151;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import com.parse.ٴʼ;
import java.util.ArrayList;
import p404.C4790;

/* renamed from: ˊʻ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2423 {

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final ArrayList f9356;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public C4790 f9358;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public String f9360;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final Notification f9361;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public CharSequence f9362;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public PendingIntent f9364;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final boolean f9365;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public int f9366;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Context f9368;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public Bundle f9369;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public CharSequence f9370;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final ArrayList f9367 = new ArrayList();

    /* renamed from: ʽ, reason: contains not printable characters */
    public final ArrayList f9357 = new ArrayList();

    /* renamed from: ˈ, reason: contains not printable characters */
    public final ArrayList f9359 = new ArrayList();

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final boolean f9355 = true;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public boolean f9363 = false;

    public C2423(Context context, String str) {
        Notification notification = new Notification();
        this.f9361 = notification;
        this.f9368 = context;
        this.f9360 = str;
        notification.when = System.currentTimeMillis();
        notification.audioStreamType = -1;
        this.f9366 = 0;
        this.f9356 = new ArrayList();
        this.f9365 = true;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static CharSequence m5528(CharSequence charSequence) {
        return (charSequence != null && charSequence.length() > 5120) ? charSequence.subSequence(0, 5120) : charSequence;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m5529(C4790 c4790) {
        if (this.f9358 != c4790) {
            this.f9358 = c4790;
            if (((C2423) c4790.f18036) != this) {
                c4790.f18036 = this;
                m5529(c4790);
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Notification m5530() {
        Notification build;
        Bundle bundle;
        ٴʼ r0 = new ٴʼ(this);
        Notification.Builder builder = (Notification.Builder) r0.ᴵˊ;
        C2423 c2423 = (C2423) r0.ʽʽ;
        C4790 c4790 = c2423.f9358;
        if (c4790 != null) {
            new Notification.BigTextStyle(builder).setBigContentTitle(null).bigText((CharSequence) c4790.f18034);
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            build = builder.build();
        } else if (i >= 24) {
            build = builder.build();
        } else {
            builder.setExtras((Bundle) r0.ˈٴ);
            build = builder.build();
        }
        if (c4790 != null) {
            c2423.f9358.getClass();
        }
        if (c4790 != null && (bundle = build.extras) != null) {
            bundle.putString("androidx.core.app.extra.COMPAT_TEMPLATE", "androidx.core.app.NotificationCompat$BigTextStyle");
        }
        return build;
    }
}
