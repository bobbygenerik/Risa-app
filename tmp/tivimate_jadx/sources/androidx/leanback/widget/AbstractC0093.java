package androidx.leanback.widget;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.EditText;
import ar.tvplayer.tv.R;
import java.util.Random;
import java.util.regex.Pattern;

/* renamed from: androidx.leanback.widget.ʾˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0093 extends EditText {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static final Pattern f862 = Pattern.compile("\\S+");

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public static final C0097 f863 = new C0097(Integer.class, "streamPosition", 3);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public Bitmap f864;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Random f865;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public int f866;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public Bitmap f867;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public ObjectAnimator f868;

    public AbstractC0093(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.style.m1);
        this.f865 = new Random();
    }

    public int getStreamPosition() {
        return this.f866;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f867 = Bitmap.createScaledBitmap(BitmapFactory.decodeResource(getResources(), R.drawable.5f3), (int) (r0.getWidth() * 1.3f), (int) (r0.getHeight() * 1.3f), false);
        this.f864 = Bitmap.createScaledBitmap(BitmapFactory.decodeResource(getResources(), R.drawable.4es), (int) (r0.getWidth() * 1.3f), (int) (r0.getHeight() * 1.3f), false);
        this.f866 = -1;
        ObjectAnimator objectAnimator = this.f868;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        setText("");
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("androidx.leanback.widget.StreamingTextView");
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(ﹳٴ.ﹳٴ.ˉـ(callback, this));
    }

    public void setStreamPosition(int i) {
        this.f866 = i;
        invalidate();
    }
}
