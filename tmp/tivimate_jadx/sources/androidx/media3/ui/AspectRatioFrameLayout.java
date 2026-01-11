package androidx.media3.ui;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import p312.AbstractC3866;
import p312.InterfaceC3844;
import ʻـ.ⁱˊ;

/* loaded from: classes.dex */
public final class AspectRatioFrameLayout extends FrameLayout {

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final /* synthetic */ int f1254 = 0;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f1255;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final ⁱˊ f1256;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public ValueAnimator f1257;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public float f1258;

    public AspectRatioFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1255 = 0;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, AbstractC3866.f15050, 0, 0);
            try {
                this.f1255 = obtainStyledAttributes.getInt(0, 0);
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
        this.f1256 = new ⁱˊ(this);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static void m795(View view, int i, int i2) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        if (layoutParams.width == i && layoutParams.height == i2) {
            return;
        }
        layoutParams.gravity = 17;
        layoutParams.width = i;
        layoutParams.height = i2;
        view.setLayoutParams(layoutParams);
    }

    public int getResizeMode() {
        return this.f1255;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.f1257 == null) {
            m796(false);
        }
    }

    public void setAspectRatio(float f) {
        if (this.f1258 != f) {
            this.f1258 = f;
            m796(false);
        }
    }

    public void setAspectRatioListener(InterfaceC3844 interfaceC3844) {
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x004e, code lost:
    
        if (r8 != 5) goto L34;
     */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0073  */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m796(boolean r19) {
        /*
            Method dump skipped, instructions count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.ui.AspectRatioFrameLayout.m796(boolean):void");
    }
}
