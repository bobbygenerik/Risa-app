package p363;

import android.view.View;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import java.util.WeakHashMap;
import p186.AbstractC2780;
import p186.AbstractC2823;
import p229.C3125;
import ˈˋ.ʾˊ;

/* renamed from: ᵔᵢ.ٴᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4421 extends ʾˊ {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ int f16436;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final /* synthetic */ C4425 f16437;

    public /* synthetic */ C4421(C4425 c4425, int i) {
        this.f16436 = i;
        this.f16437 = c4425;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m8926() {
        View view;
        int i = this.f16436;
        C4425 c4425 = this.f16437;
        switch (i) {
            case 0:
                if (c4425.f16450 && (view = c4425.f16455) != null) {
                    view.setTranslationY(0.0f);
                    c4425.f16453.setTranslationY(0.0f);
                }
                c4425.f16453.setVisibility(8);
                c4425.f16453.setTransitioning(false);
                c4425.f16446 = null;
                C3125 c3125 = c4425.f16465;
                if (c3125 != null) {
                    c3125.m6845(c4425.f16448);
                    c4425.f16448 = null;
                    c4425.f16465 = null;
                }
                ActionBarOverlayLayout actionBarOverlayLayout = c4425.f16447;
                if (actionBarOverlayLayout != null) {
                    WeakHashMap weakHashMap = AbstractC2823.f10603;
                    AbstractC2780.m6186(actionBarOverlayLayout);
                    return;
                }
                return;
            default:
                c4425.f16446 = null;
                c4425.f16453.requestLayout();
                return;
        }
    }
}
