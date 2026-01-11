package p363;

import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import java.util.WeakHashMap;
import p186.AbstractC2780;
import p186.AbstractC2823;
import p229.C3125;
import ˈˋ.ʾˊ;

/* renamed from: ᵔᵢ.ﹳᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4433 extends ʾˊ {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ int f16542;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final /* synthetic */ Object f16543;

    public /* synthetic */ C4433(int i, Object obj) {
        this.f16542 = i;
        this.f16543 = obj;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m8971() {
        int i = this.f16542;
        Object obj = this.f16543;
        switch (i) {
            case 0:
                LayoutInflaterFactory2C4430 layoutInflaterFactory2C4430 = ((RunnableC4414) obj).f16425;
                layoutInflaterFactory2C4430.f16502.setAlpha(1.0f);
                layoutInflaterFactory2C4430.f16496.m6227(null);
                layoutInflaterFactory2C4430.f16496 = null;
                return;
            case 1:
                LayoutInflaterFactory2C4430 layoutInflaterFactory2C44302 = (LayoutInflaterFactory2C4430) obj;
                layoutInflaterFactory2C44302.f16502.setAlpha(1.0f);
                layoutInflaterFactory2C44302.f16496.m6227(null);
                layoutInflaterFactory2C44302.f16496 = null;
                return;
            default:
                LayoutInflaterFactory2C4430 layoutInflaterFactory2C44303 = (LayoutInflaterFactory2C4430) ((C3125) obj).f11941;
                layoutInflaterFactory2C44303.f16502.setVisibility(8);
                PopupWindow popupWindow = layoutInflaterFactory2C44303.f16525;
                if (popupWindow != null) {
                    popupWindow.dismiss();
                } else if (layoutInflaterFactory2C44303.f16502.getParent() instanceof View) {
                    View view = (View) layoutInflaterFactory2C44303.f16502.getParent();
                    WeakHashMap weakHashMap = AbstractC2823.f10603;
                    AbstractC2780.m6186(view);
                }
                layoutInflaterFactory2C44303.f16502.m38();
                layoutInflaterFactory2C44303.f16496.m6227(null);
                layoutInflaterFactory2C44303.f16496 = null;
                ViewGroup viewGroup = layoutInflaterFactory2C44303.f16523;
                WeakHashMap weakHashMap2 = AbstractC2823.f10603;
                AbstractC2780.m6186(viewGroup);
                return;
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public void m8972() {
        int i = this.f16542;
        Object obj = this.f16543;
        switch (i) {
            case 0:
                ((RunnableC4414) obj).f16425.f16502.setVisibility(0);
                return;
            case 1:
                LayoutInflaterFactory2C4430 layoutInflaterFactory2C4430 = (LayoutInflaterFactory2C4430) obj;
                layoutInflaterFactory2C4430.f16502.setVisibility(0);
                if (layoutInflaterFactory2C4430.f16502.getParent() instanceof View) {
                    View view = (View) layoutInflaterFactory2C4430.f16502.getParent();
                    WeakHashMap weakHashMap = AbstractC2823.f10603;
                    AbstractC2780.m6186(view);
                    return;
                }
                return;
            default:
                return;
        }
    }
}
