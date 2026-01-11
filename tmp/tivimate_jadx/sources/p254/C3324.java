package p254;

import p171.InterfaceC2646;
import p305.AbstractC3712;
import p305.C3724;
import p305.C3732;

/* renamed from: יי.ʽʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3324 implements InterfaceC3333 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f12830;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f12831;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public boolean f12832;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C3732 f12833 = new C3732(32);

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC3341 f12834;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public boolean f12835;

    public C3324(InterfaceC3341 interfaceC3341) {
        this.f12834 = interfaceC3341;
    }

    @Override // p254.InterfaceC3333
    /* renamed from: ʽ, reason: contains not printable characters */
    public final void mo7146(int i, C3732 c3732) {
        boolean z = (i & 1) != 0;
        int m7874 = z ? c3732.f14533 + c3732.m7874() : -1;
        if (this.f12835) {
            if (!z) {
                return;
            }
            this.f12835 = false;
            c3732.m7896(m7874);
            this.f12831 = 0;
        }
        while (c3732.m7904() > 0) {
            int i2 = this.f12831;
            C3732 c37322 = this.f12833;
            if (i2 < 3) {
                if (i2 == 0) {
                    int m78742 = c3732.m7874();
                    c3732.m7896(c3732.f14533 - 1);
                    if (m78742 == 255) {
                        this.f12835 = true;
                        return;
                    }
                }
                int min = Math.min(c3732.m7904(), 3 - this.f12831);
                c3732.m7875(c37322.f14534, this.f12831, min);
                int i3 = this.f12831 + min;
                this.f12831 = i3;
                if (i3 == 3) {
                    c37322.m7896(0);
                    c37322.m7891(3);
                    c37322.m7900(1);
                    int m78743 = c37322.m7874();
                    int m78744 = c37322.m7874();
                    this.f12832 = (m78743 & 128) != 0;
                    int i4 = (((m78743 & 15) << 8) | m78744) + 3;
                    this.f12830 = i4;
                    byte[] bArr = c37322.f14534;
                    if (bArr.length < i4) {
                        c37322.m7877(Math.min(4098, Math.max(i4, bArr.length * 2)));
                    }
                }
            } else {
                int min2 = Math.min(c3732.m7904(), this.f12830 - this.f12831);
                c3732.m7875(c37322.f14534, this.f12831, min2);
                int i5 = this.f12831 + min2;
                this.f12831 = i5;
                int i6 = this.f12830;
                if (i5 != i6) {
                    continue;
                } else {
                    if (!this.f12832) {
                        c37322.m7891(i6);
                    } else {
                        if (AbstractC3712.m7774(0, i6, -1, c37322.f14534) != 0) {
                            this.f12835 = true;
                            return;
                        }
                        c37322.m7891(this.f12830 - 4);
                    }
                    c37322.m7896(0);
                    this.f12834.mo6818(c37322);
                    this.f12831 = 0;
                }
            }
        }
    }

    @Override // p254.InterfaceC3333
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void mo7147() {
        this.f12835 = true;
    }

    @Override // p254.InterfaceC3333
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void mo7148(C3724 c3724, InterfaceC2646 interfaceC2646, C3339 c3339) {
        this.f12834.mo6855(c3724, interfaceC2646, c3339);
        this.f12835 = true;
    }
}
