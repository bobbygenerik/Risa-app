package p213;

import androidx.leanback.widget.C0122;
import androidx.media3.common.ParserException;
import java.util.List;
import p017.AbstractC0993;
import p017.C0956;
import p017.C0982;
import p171.AbstractC2649;
import p171.InterfaceC2622;
import p171.InterfaceC2632;
import p171.InterfaceC2646;
import p305.AbstractC3712;
import p305.C3732;

/* renamed from: ˏʻ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3000 implements InterfaceC2632 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public boolean f11446;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public AbstractC3003 f11447;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public InterfaceC2646 f11448;

    @Override // p171.InterfaceC2632
    /* renamed from: ʼˎ */
    public final void mo2900(InterfaceC2646 interfaceC2646) {
        this.f11448 = interfaceC2646;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean m6535(InterfaceC2622 interfaceC2622) {
        boolean z;
        C0122 c0122 = new C0122();
        if (c0122.m629(interfaceC2622, true) && (c0122.f963 & 2) == 2) {
            int min = Math.min(c0122.f960, 8);
            C3732 c3732 = new C3732(min);
            interfaceC2622.mo4576(c3732.f14534, 0, min);
            c3732.m7896(0);
            if (c3732.m7904() >= 5 && c3732.m7874() == 127 && c3732.m7880() == 1179402563) {
                this.f11447 = new AbstractC3003();
                return true;
            }
            c3732.m7896(0);
            try {
                z = AbstractC2649.m5908(1, c3732, true);
            } catch (ParserException unused) {
                z = false;
            }
            if (z) {
                this.f11447 = new AbstractC3003();
            } else {
                c3732.m7896(0);
                if (C3002.m6538(c3732, C3002.f11455)) {
                    this.f11447 = new AbstractC3003();
                }
            }
            return true;
        }
        return false;
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ˈ */
    public final InterfaceC2632 mo2902() {
        return this;
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x0175 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0176  */
    @Override // p171.InterfaceC2632
    /* renamed from: ٴﹶ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo2904(p171.InterfaceC2622 r21, p055.C1468 r22) {
        /*
            Method dump skipped, instructions count: 390
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p213.C3000.mo2904(ˊﾞ.ʼᐧ, ʽⁱ.ˏי):int");
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
        AbstractC3003 abstractC3003 = this.f11447;
        if (abstractC3003 != null) {
            C3001 c3001 = abstractC3003.f11467;
            C0122 c0122 = c3001.f11453;
            c0122.f963 = 0;
            c0122.f962 = 0L;
            c0122.f958 = 0;
            c0122.f959 = 0;
            c0122.f960 = 0;
            c3001.f11452.m7886(0);
            c3001.f11449 = -1;
            c3001.f11451 = false;
            if (j == 0) {
                abstractC3003.mo6532(!abstractC3003.f11468);
                return;
            }
            if (abstractC3003.f11465 != 0) {
                long j3 = (abstractC3003.f11457 * j2) / 1000000;
                abstractC3003.f11462 = j3;
                InterfaceC3006 interfaceC3006 = abstractC3003.f11460;
                String str = AbstractC3712.f14481;
                interfaceC3006.mo2913(j3);
                abstractC3003.f11465 = 2;
            }
        }
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ﹳٴ */
    public final void mo2909() {
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ﾞᴵ */
    public final boolean mo2910(InterfaceC2622 interfaceC2622) {
        try {
            return m6535(interfaceC2622);
        } catch (ParserException unused) {
            return false;
        }
    }
}
