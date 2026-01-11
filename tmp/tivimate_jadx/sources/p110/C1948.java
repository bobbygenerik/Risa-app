package p110;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.leanback.preference.internal.OutlineOnlyWithChildrenFrameLayout;
import com.google.android.material.chip.Chip;

/* renamed from: ˆᵢ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1948 extends ViewOutlineProvider {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ View f7729;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f7730;

    public /* synthetic */ C1948(View view, int i) {
        this.f7730 = i;
        this.f7729 = view;
    }

    @Override // android.view.ViewOutlineProvider
    public final void getOutline(View view, Outline outline) {
        switch (this.f7730) {
            case 0:
                C1953 c1953 = ((Chip) this.f7729).f2681;
                if (c1953 != null) {
                    c1953.getOutline(outline);
                    return;
                } else {
                    outline.setAlpha(0.0f);
                    return;
                }
            default:
                OutlineOnlyWithChildrenFrameLayout outlineOnlyWithChildrenFrameLayout = (OutlineOnlyWithChildrenFrameLayout) this.f7729;
                if (outlineOnlyWithChildrenFrameLayout.getChildCount() > 0) {
                    outlineOnlyWithChildrenFrameLayout.f542.getOutline(view, outline);
                    return;
                } else {
                    ViewOutlineProvider.BACKGROUND.getOutline(view, outline);
                    return;
                }
        }
    }
}
