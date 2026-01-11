package p254;

import java.util.List;
import p012.C0881;
import p017.AbstractC0993;
import p017.C0956;
import p017.C0982;
import p055.C1468;
import p171.C2637;
import p171.C2651;
import p171.InterfaceC2622;
import p171.InterfaceC2632;
import p171.InterfaceC2646;
import p305.AbstractC3731;
import p305.C3732;

/* renamed from: יי.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3329 implements InterfaceC2632 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public boolean f12878;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C3732 f12879;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C0881 f12880;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public InterfaceC2646 f12881;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public boolean f12883;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public long f12886;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3336 f12885 = new C3336(0, null, "audio/mp4a-latm", true);

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C3732 f12884 = new C3732(2048);

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public long f12882 = -1;

    public C3329(int i) {
        C3732 c3732 = new C3732(10);
        this.f12879 = c3732;
        byte[] bArr = c3732.f14534;
        this.f12880 = new C0881(bArr.length, bArr);
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ʼˎ */
    public final void mo2900(InterfaceC2646 interfaceC2646) {
        this.f12881 = interfaceC2646;
        this.f12885.mo7142(interfaceC2646, new C3339(0, 1));
        interfaceC2646.mo1137();
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ˈ */
    public final InterfaceC2632 mo2902() {
        return this;
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ٴﹶ */
    public final int mo2904(InterfaceC2622 interfaceC2622, C1468 c1468) {
        AbstractC3731.m7868(this.f12881);
        interfaceC2622.getLength();
        C3732 c3732 = this.f12884;
        int read = interfaceC2622.read(c3732.f14534, 0, 2048);
        boolean z = read == -1;
        if (!this.f12878) {
            this.f12881.mo1133(new C2637(-9223372036854775807L));
            this.f12878 = true;
        }
        if (z) {
            return -1;
        }
        c3732.m7896(0);
        c3732.m7891(read);
        boolean z2 = this.f12883;
        C3336 c3336 = this.f12885;
        if (!z2) {
            c3336.f12949 = this.f12886;
            this.f12883 = true;
        }
        c3336.mo7138(c3732);
        return 0;
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ᵎﹶ */
    public final List mo2905() {
        C0982 c0982 = AbstractC0993.f3977;
        return C0956.f3901;
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ⁱˊ */
    public final void mo2908(long j, long j2) {
        this.f12883 = false;
        this.f12885.mo7141();
        this.f12886 = j2;
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ﹳٴ */
    public final void mo2909() {
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ﾞᴵ */
    public final boolean mo2910(InterfaceC2622 interfaceC2622) {
        int i = 0;
        while (true) {
            C3732 c3732 = this.f12879;
            interfaceC2622.mo4576(c3732.f14534, 0, 10);
            c3732.m7896(0);
            if (c3732.m7894() != 4801587) {
                break;
            }
            c3732.m7900(3);
            int m7881 = c3732.m7881();
            i += m7881 + 10;
            interfaceC2622.mo4590(m7881);
        }
        interfaceC2622.mo4600();
        interfaceC2622.mo4590(i);
        if (this.f12882 == -1) {
            this.f12882 = i;
        }
        int i2 = i;
        int i3 = 0;
        int i4 = 0;
        do {
            C3732 c37322 = this.f12879;
            C2651 c2651 = (C2651) interfaceC2622;
            c2651.mo4572(c37322.f14534, 0, 2, false);
            c37322.m7896(0);
            if ((c37322.m7895() & 65526) == 65520) {
                i3++;
                if (i3 >= 4 && i4 > 188) {
                    return true;
                }
                c2651.mo4572(c37322.f14534, 0, 4, false);
                C0881 c0881 = this.f12880;
                c0881.m3094(14);
                int m3097 = c0881.m3097(13);
                if (m3097 <= 6) {
                    i2++;
                    c2651.f10070 = 0;
                    c2651.m5932(i2, false);
                } else {
                    c2651.m5932(m3097 - 6, false);
                    i4 += m3097;
                }
            } else {
                i2++;
                c2651.f10070 = 0;
                c2651.m5932(i2, false);
            }
            i3 = 0;
            i4 = 0;
        } while (i2 - i < 8192);
        return false;
    }
}
