package p254;

import java.util.Collections;
import java.util.List;
import p055.AbstractC1464;
import p055.C1490;
import p171.InterfaceC2639;
import p171.InterfaceC2646;
import p305.AbstractC3731;
import p305.C3732;
import p411.AbstractC4892;

/* renamed from: יי.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3345 implements InterfaceC3321 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public long f13058;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f13059;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f13060;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public Object f13061;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public boolean f13062;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f13063;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final Object f13064;

    public C3345() {
        this.f13063 = 1;
        this.f13064 = new C3732(10);
        this.f13058 = -9223372036854775807L;
    }

    public C3345(List list) {
        this.f13063 = 0;
        this.f13064 = list;
        this.f13061 = new InterfaceC2639[list.size()];
        this.f13058 = -9223372036854775807L;
    }

    @Override // p254.InterfaceC3321
    /* renamed from: ʽ */
    public final void mo7138(C3732 c3732) {
        boolean z;
        boolean z2;
        switch (this.f13063) {
            case 0:
                if (this.f13062) {
                    if (this.f13059 == 2) {
                        if (c3732.m7904() == 0) {
                            z2 = false;
                        } else {
                            if (c3732.m7874() != 32) {
                                this.f13062 = false;
                            }
                            this.f13059--;
                            z2 = this.f13062;
                        }
                        if (!z2) {
                            return;
                        }
                    }
                    if (this.f13059 == 1) {
                        if (c3732.m7904() == 0) {
                            z = false;
                        } else {
                            if (c3732.m7874() != 0) {
                                this.f13062 = false;
                            }
                            this.f13059--;
                            z = this.f13062;
                        }
                        if (!z) {
                            return;
                        }
                    }
                    int i = c3732.f14533;
                    int m7904 = c3732.m7904();
                    for (InterfaceC2639 interfaceC2639 : (InterfaceC2639[]) this.f13061) {
                        c3732.m7896(i);
                        interfaceC2639.mo4109(m7904, c3732);
                    }
                    this.f13060 += m7904;
                    return;
                }
                return;
            default:
                C3732 c37322 = (C3732) this.f13064;
                AbstractC3731.m7868((InterfaceC2639) this.f13061);
                if (this.f13062) {
                    int m79042 = c3732.m7904();
                    int i2 = this.f13060;
                    if (i2 < 10) {
                        int min = Math.min(m79042, 10 - i2);
                        System.arraycopy(c3732.f14534, c3732.f14533, c37322.f14534, this.f13060, min);
                        if (this.f13060 + min == 10) {
                            c37322.m7896(0);
                            if (73 != c37322.m7874() || 68 != c37322.m7874() || 51 != c37322.m7874()) {
                                AbstractC3731.m7850("Id3Reader", "Discarding invalid ID3 tag");
                                this.f13062 = false;
                                return;
                            } else {
                                c37322.m7900(3);
                                this.f13059 = c37322.m7881() + 10;
                            }
                        }
                    }
                    int min2 = Math.min(m79042, this.f13059 - this.f13060);
                    ((InterfaceC2639) this.f13061).mo4109(min2, c3732);
                    this.f13060 += min2;
                    return;
                }
                return;
        }
    }

    @Override // p254.InterfaceC3321
    /* renamed from: ˈ */
    public final void mo7139(boolean z) {
        int i;
        switch (this.f13063) {
            case 0:
                if (this.f13062) {
                    AbstractC3731.m7857(this.f13058 != -9223372036854775807L);
                    for (InterfaceC2639 interfaceC2639 : (InterfaceC2639[]) this.f13061) {
                        interfaceC2639.mo4112(this.f13058, 1, this.f13060, 0, null);
                    }
                    this.f13062 = false;
                    return;
                }
                return;
            default:
                AbstractC3731.m7868((InterfaceC2639) this.f13061);
                if (this.f13062 && (i = this.f13059) != 0 && this.f13060 == i) {
                    AbstractC3731.m7857(this.f13058 != -9223372036854775807L);
                    ((InterfaceC2639) this.f13061).mo4112(this.f13058, 1, this.f13059, 0, null);
                    this.f13062 = false;
                    return;
                }
                return;
        }
    }

    @Override // p254.InterfaceC3321
    /* renamed from: ˑﹳ */
    public final void mo7140(int i, long j) {
        switch (this.f13063) {
            case 0:
                if ((i & 4) == 0) {
                    return;
                }
                this.f13062 = true;
                this.f13058 = j;
                this.f13060 = 0;
                this.f13059 = 2;
                return;
            default:
                if ((i & 4) == 0) {
                    return;
                }
                this.f13062 = true;
                this.f13058 = j;
                this.f13059 = 0;
                this.f13060 = 0;
                return;
        }
    }

    @Override // p254.InterfaceC3321
    /* renamed from: ⁱˊ */
    public final void mo7141() {
        switch (this.f13063) {
            case 0:
                this.f13062 = false;
                this.f13058 = -9223372036854775807L;
                return;
            default:
                this.f13062 = false;
                this.f13058 = -9223372036854775807L;
                return;
        }
    }

    @Override // p254.InterfaceC3321
    /* renamed from: ﾞᴵ */
    public final void mo7142(InterfaceC2646 interfaceC2646, C3339 c3339) {
        switch (this.f13063) {
            case 0:
                InterfaceC2639[] interfaceC2639Arr = (InterfaceC2639[]) this.f13061;
                for (int i = 0; i < interfaceC2639Arr.length; i++) {
                    C3334 c3334 = (C3334) ((List) this.f13064).get(i);
                    c3339.m7159();
                    c3339.m7158();
                    InterfaceC2639 mo1138 = interfaceC2646.mo1138(c3339.f12986, 3);
                    C1490 c1490 = new C1490();
                    c3339.m7158();
                    c1490.f5884 = c3339.f12987;
                    c1490.f5886 = AbstractC1464.m4251("video/mp2t");
                    c1490.f5861 = AbstractC1464.m4251("application/dvbsubs");
                    c1490.f5851 = Collections.singletonList(c3334.f12920);
                    c1490.f5859 = c3334.f12921;
                    AbstractC4892.m9687(c1490, mo1138);
                    interfaceC2639Arr[i] = mo1138;
                }
                return;
            default:
                c3339.m7159();
                c3339.m7158();
                InterfaceC2639 mo11382 = interfaceC2646.mo1138(c3339.f12986, 5);
                this.f13061 = mo11382;
                C1490 c14902 = new C1490();
                c3339.m7158();
                c14902.f5884 = c3339.f12987;
                c14902.f5886 = AbstractC1464.m4251("video/mp2t");
                c14902.f5861 = AbstractC1464.m4251("application/id3");
                AbstractC4892.m9687(c14902, mo11382);
                return;
        }
    }
}
