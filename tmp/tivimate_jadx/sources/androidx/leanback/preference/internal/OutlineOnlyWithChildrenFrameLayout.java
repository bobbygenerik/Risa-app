package androidx.leanback.preference.internal;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import p110.C1948;

/* loaded from: classes.dex */
public class OutlineOnlyWithChildrenFrameLayout extends FrameLayout {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public C1948 f541;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public ViewOutlineProvider f542;

    public OutlineOnlyWithChildrenFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        invalidateOutline();
    }

    @Override // android.view.View
    public void setOutlineProvider(ViewOutlineProvider viewOutlineProvider) {
        this.f542 = viewOutlineProvider;
        if (this.f541 == null) {
            this.f541 = new C1948(this, 1);
        }
        super.setOutlineProvider(this.f541);
    }
}
