package p186;

import p349.C4292;
import ˉᵎ.ⁱˊ;

/* renamed from: ˋᵔ.ˊᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2797 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public C4292[] f10548;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2816 f10549;

    public AbstractC2797() {
        this(new C2816());
    }

    public AbstractC2797(C2816 c2816) {
        this.f10549 = c2816;
    }

    /* renamed from: ʽ */
    public void mo6168(int i, C4292 c4292) {
        if (this.f10548 == null) {
            this.f10548 = new C4292[10];
        }
        for (int i2 = 1; i2 <= 512; i2 <<= 1) {
            if ((i & i2) != 0) {
                this.f10548[ⁱˊ.ʽʽ(i2)] = c4292;
            }
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public void mo6219(C4292 c4292) {
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public abstract void mo6220(C4292 c4292);

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public abstract void mo6221(C4292 c4292);

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public void mo6222(C4292 c4292) {
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public abstract C2816 mo6223();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m6224() {
        C4292[] c4292Arr = this.f10548;
        if (c4292Arr != null) {
            C4292 c4292 = c4292Arr[0];
            C4292 c42922 = c4292Arr[1];
            C2816 c2816 = this.f10549;
            if (c42922 == null) {
                c42922 = c2816.f10589.mo6167(2);
            }
            if (c4292 == null) {
                c4292 = c2816.f10589.mo6167(1);
            }
            mo6221(C4292.m8694(c4292, c42922));
            C4292 c42923 = this.f10548[ⁱˊ.ʽʽ(16)];
            if (c42923 != null) {
                mo6225(c42923);
            }
            C4292 c42924 = this.f10548[ⁱˊ.ʽʽ(32)];
            if (c42924 != null) {
                mo6219(c42924);
            }
            C4292 c42925 = this.f10548[ⁱˊ.ʽʽ(64)];
            if (c42925 != null) {
                mo6222(c42925);
            }
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public void mo6225(C4292 c4292) {
    }
}
