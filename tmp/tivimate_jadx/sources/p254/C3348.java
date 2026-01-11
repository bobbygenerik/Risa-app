package p254;

import java.util.List;
import p017.AbstractC0993;
import p017.C0956;
import p017.C0982;
import p055.C1468;
import p171.AbstractC2649;
import p171.C2637;
import p171.C2651;
import p171.InterfaceC2622;
import p171.InterfaceC2632;
import p171.InterfaceC2646;
import p305.C3732;

/* renamed from: יי.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3348 implements InterfaceC2632 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public boolean f13087;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3347 f13089 = new C3347("audio/ac3");

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C3732 f13088 = new C3732(2786);

    @Override // p171.InterfaceC2632
    /* renamed from: ʼˎ */
    public final void mo2900(InterfaceC2646 interfaceC2646) {
        this.f13089.mo7142(interfaceC2646, new C3339(0, 1));
        interfaceC2646.mo1137();
        interfaceC2646.mo1133(new C2637(-9223372036854775807L));
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ˈ */
    public final InterfaceC2632 mo2902() {
        return this;
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ٴﹶ */
    public final int mo2904(InterfaceC2622 interfaceC2622, C1468 c1468) {
        C3732 c3732 = this.f13088;
        int read = interfaceC2622.read(c3732.f14534, 0, 2786);
        if (read == -1) {
            return -1;
        }
        c3732.m7896(0);
        c3732.m7891(read);
        boolean z = this.f13087;
        C3347 c3347 = this.f13089;
        if (!z) {
            c3347.f13077 = 0L;
            this.f13087 = true;
        }
        c3347.mo7138(c3732);
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
        this.f13087 = false;
        this.f13089.mo7141();
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ﹳٴ */
    public final void mo2909() {
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ﾞᴵ */
    public final boolean mo2910(InterfaceC2622 interfaceC2622) {
        C2651 c2651;
        int m5921;
        C3732 c3732 = new C3732(10);
        int i = 0;
        while (true) {
            c2651 = (C2651) interfaceC2622;
            c2651.mo4572(c3732.f14534, 0, 10, false);
            c3732.m7896(0);
            if (c3732.m7894() != 4801587) {
                break;
            }
            c3732.m7900(3);
            int m7881 = c3732.m7881();
            i += m7881 + 10;
            c2651.m5932(m7881, false);
        }
        c2651.f10070 = 0;
        c2651.m5932(i, false);
        int i2 = 0;
        int i3 = i;
        while (true) {
            c2651.mo4572(c3732.f14534, 0, 6, false);
            c3732.m7896(0);
            if (c3732.m7895() != 2935) {
                c2651.f10070 = 0;
                i3++;
                if (i3 - i >= 8192) {
                    break;
                }
                c2651.m5932(i3, false);
                i2 = 0;
            } else {
                i2++;
                if (i2 >= 4) {
                    return true;
                }
                byte[] bArr = c3732.f14534;
                if (bArr.length < 6) {
                    m5921 = -1;
                } else if (((bArr[5] & 248) >> 3) > 10) {
                    m5921 = ((((bArr[2] & 7) << 8) | (bArr[3] & 255)) + 1) * 2;
                } else {
                    byte b = bArr[4];
                    m5921 = AbstractC2649.m5921((b & 192) >> 6, b & 63);
                }
                if (m5921 == -1) {
                    break;
                }
                c2651.m5932(m5921 - 6, false);
            }
        }
        return false;
    }
}
