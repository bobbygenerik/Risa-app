package androidx.leanback.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import ar.tvplayer.tv.R;

/* loaded from: classes.dex */
class GuidedActionsRelativeLayout extends RelativeLayout {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public C0138 f650;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final float f651;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public boolean f652;

    public GuidedActionsRelativeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f652 = false;
        this.f651 = GuidanceStylingRelativeLayout.m539(context);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        C0095 c0095;
        C0138 c0138 = this.f650;
        if (c0138 != null) {
            C0117 c0117 = c0138.f983;
            if (keyEvent.getKeyCode() == 4 && keyEvent.getAction() == 1 && (c0095 = c0117.f946) != null && c0095.m585()) {
                c0117.m620(true);
                return true;
            }
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.f652 = false;
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        View findViewById;
        int size = View.MeasureSpec.getSize(i2);
        if (size > 0 && (findViewById = findViewById(R.id.1sn)) != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) findViewById.getLayoutParams();
            if (marginLayoutParams.topMargin < 0 && !this.f652) {
                this.f652 = true;
            }
            if (this.f652) {
                marginLayoutParams.topMargin = (int) ((this.f651 * size) / 100.0f);
            }
        }
        super.onMeasure(i, i2);
    }
}
