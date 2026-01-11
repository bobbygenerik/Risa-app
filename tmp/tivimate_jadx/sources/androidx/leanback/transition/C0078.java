package androidx.leanback.transition;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.internal.measurement.ᵎ;

/* renamed from: androidx.leanback.transition.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0078 extends ᵎ {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ int f583;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public float m453(FadeAndShortSlide fadeAndShortSlide, ViewGroup viewGroup, View view, int[] iArr) {
        switch (this.f583) {
            case 0:
                if (viewGroup.getLayoutDirection() == 1) {
                    return fadeAndShortSlide.m444(viewGroup) + view.getTranslationX();
                }
                return view.getTranslationX() - fadeAndShortSlide.m444(viewGroup);
            case 1:
                return viewGroup.getLayoutDirection() == 1 ? view.getTranslationX() - fadeAndShortSlide.m444(viewGroup) : view.getTranslationX() + fadeAndShortSlide.m444(viewGroup);
            case 2:
                int width = (view.getWidth() / 2) + iArr[0];
                viewGroup.getLocationOnScreen(iArr);
                Rect epicenter = fadeAndShortSlide.getEpicenter();
                return width < (epicenter == null ? (viewGroup.getWidth() / 2) + iArr[0] : epicenter.centerX()) ? view.getTranslationX() - fadeAndShortSlide.m444(viewGroup) : view.getTranslationX() + fadeAndShortSlide.m444(viewGroup);
            default:
                return super.ʼˎ(fadeAndShortSlide, viewGroup, view, iArr);
        }
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public float m454(FadeAndShortSlide fadeAndShortSlide, ViewGroup viewGroup, View view, int[] iArr) {
        switch (this.f583) {
            case 3:
                return fadeAndShortSlide.m443(viewGroup) + view.getTranslationY();
            case 4:
                return view.getTranslationY() - fadeAndShortSlide.m443(viewGroup);
            default:
                return super.ˆʾ(fadeAndShortSlide, viewGroup, view, iArr);
        }
    }
}
