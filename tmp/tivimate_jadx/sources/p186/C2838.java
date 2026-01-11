package p186;

import android.view.DisplayCutout;
import android.view.WindowInsets;
import j$.util.Objects;

/* renamed from: ˋᵔ.ﹶᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C2838 extends C2788 {
    public C2838(C2816 c2816, WindowInsets windowInsets) {
        super(c2816, windowInsets);
    }

    @Override // p186.AbstractC2810, p186.C2822
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2838)) {
            return false;
        }
        C2838 c2838 = (C2838) obj;
        return Objects.equals(this.f10576, c2838.f10576) && Objects.equals(this.f10579, c2838.f10579) && AbstractC2810.m6240(this.f10580, c2838.f10580);
    }

    @Override // p186.C2822
    public int hashCode() {
        return this.f10576.hashCode();
    }

    @Override // p186.C2822
    /* renamed from: ˑﹳ */
    public C2784 mo6265() {
        DisplayCutout displayCutout = this.f10576.getDisplayCutout();
        if (displayCutout == null) {
            return null;
        }
        return new C2784(displayCutout);
    }

    @Override // p186.C2822
    /* renamed from: ﹳٴ */
    public C2816 mo6267() {
        return C2816.m6253(null, this.f10576.consumeDisplayCutout());
    }
}
