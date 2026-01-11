package androidx.leanback.transition;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.internal.measurement.ᵎ;

/* renamed from: androidx.leanback.transition.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0073 extends ᵎ {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ FadeAndShortSlide f571;

    public C0073(FadeAndShortSlide fadeAndShortSlide) {
        this.f571 = fadeAndShortSlide;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final float m446(FadeAndShortSlide fadeAndShortSlide, ViewGroup viewGroup, View view, int[] iArr) {
        int centerY;
        int height = (view.getHeight() / 2) + iArr[1];
        viewGroup.getLocationOnScreen(iArr);
        Rect epicenter = this.f571.getEpicenter();
        if (epicenter == null) {
            centerY = (viewGroup.getHeight() / 2) + iArr[1];
        } else {
            centerY = epicenter.centerY();
        }
        if (height < centerY) {
            return view.getTranslationY() - fadeAndShortSlide.m443(viewGroup);
        }
        return fadeAndShortSlide.m443(viewGroup) + view.getTranslationY();
    }
}
