package p442;

import android.view.View;
import java.util.Iterator;
import java.util.List;
import p186.C2783;
import p186.C2816;
import p236.AbstractC3200;
import ʽⁱ.ᵎﹶ;
import ﹶﾞ.ⁱי;

/* renamed from: ﹶᵔ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5196 extends ᵎﹶ {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f19527;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public int f19528;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final View f19529;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final int[] f19530 = new int[2];

    public C5196(View view) {
        this.f19529 = view;
    }

    /* renamed from: ʽⁱ, reason: contains not printable characters */
    public final void m10177(C2783 c2783) {
        View view = this.f19529;
        int[] iArr = this.f19530;
        view.getLocationOnScreen(iArr);
        this.f19527 = iArr[1];
    }

    /* renamed from: ʾﾞ, reason: contains not printable characters */
    public final C2816 m10178(C2816 c2816, List list) {
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            if ((((C2783) it.next()).f10541.mo6190() & 8) != 0) {
                this.f19529.setTranslationY(AbstractC3200.m7038(r0.f10541.mo6189(), this.f19528, 0));
                break;
            }
        }
        return c2816;
    }

    /* renamed from: יﹳ, reason: contains not printable characters */
    public final void m10179(C2783 c2783) {
        this.f19529.setTranslationY(0.0f);
    }

    /* renamed from: ⁱˉ, reason: contains not printable characters */
    public final ⁱי m10180(C2783 c2783, ⁱי r4) {
        View view = this.f19529;
        int[] iArr = this.f19530;
        view.getLocationOnScreen(iArr);
        int i = this.f19527 - iArr[1];
        this.f19528 = i;
        view.setTranslationY(i);
        return r4;
    }
}
