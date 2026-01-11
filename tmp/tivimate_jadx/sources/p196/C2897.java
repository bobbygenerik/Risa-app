package p196;

import com.bumptech.glide.ʽ;
import p012.C0881;
import p127.C2177;
import p171.AbstractC2649;
import p171.C2648;
import p171.InterfaceC2639;
import p171.InterfaceC2646;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p305.C3732;

/* renamed from: ˎʾ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2897 implements InterfaceC2889 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public InterfaceC2639 f10909;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f10910;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public long f10912;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2177 f10914;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public long f10915;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C0881 f10913 = new C0881(4);

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public long f10911 = -9223372036854775807L;

    public C2897(C2177 c2177) {
        this.f10914 = c2177;
    }

    @Override // p196.InterfaceC2889
    /* renamed from: ʽ */
    public final void mo6391(long j) {
        AbstractC3731.m7857(this.f10911 == -9223372036854775807L);
        this.f10911 = j;
    }

    @Override // p196.InterfaceC2889
    /* renamed from: ˈ */
    public final void mo6392(InterfaceC2646 interfaceC2646, int i) {
        InterfaceC2639 mo1138 = interfaceC2646.mo1138(i, 1);
        this.f10909 = mo1138;
        mo1138.mo4108(this.f10914.f8527);
    }

    @Override // p196.InterfaceC2889
    /* renamed from: ⁱˊ */
    public final void mo6393(long j, long j2) {
        this.f10911 = j;
        this.f10912 = j2;
    }

    @Override // p196.InterfaceC2889
    /* renamed from: ﹳٴ */
    public final void mo6394(C3732 c3732, long j, int i, boolean z) {
        int m7874 = c3732.m7874() & 3;
        int m78742 = c3732.m7874() & 255;
        long j2 = ʽ.ᴵᵔ(this.f10914.f8530, this.f10912, j, this.f10911);
        if (m7874 != 0) {
            if (m7874 == 1 || m7874 == 2) {
                int i2 = this.f10910;
                if (i2 > 0) {
                    InterfaceC2639 interfaceC2639 = this.f10909;
                    String str = AbstractC3712.f14481;
                    interfaceC2639.mo4112(this.f10915, 1, i2, 0, null);
                    this.f10910 = 0;
                }
            } else if (m7874 != 3) {
                throw new IllegalArgumentException(String.valueOf(m7874));
            }
            int m7904 = c3732.m7904();
            InterfaceC2639 interfaceC26392 = this.f10909;
            interfaceC26392.getClass();
            interfaceC26392.mo4109(m7904, c3732);
            int i3 = this.f10910 + m7904;
            this.f10910 = i3;
            this.f10915 = j2;
            if (z && m7874 == 3) {
                InterfaceC2639 interfaceC26393 = this.f10909;
                String str2 = AbstractC3712.f14481;
                interfaceC26393.mo4112(j2, 1, i3, 0, null);
                this.f10910 = 0;
                return;
            }
            return;
        }
        int i4 = this.f10910;
        if (i4 > 0) {
            InterfaceC2639 interfaceC26394 = this.f10909;
            String str3 = AbstractC3712.f14481;
            interfaceC26394.mo4112(this.f10915, 1, i4, 0, null);
            this.f10910 = 0;
        }
        if (m78742 == 1) {
            int m79042 = c3732.m7904();
            InterfaceC2639 interfaceC26395 = this.f10909;
            interfaceC26395.getClass();
            interfaceC26395.mo4109(m79042, c3732);
            InterfaceC2639 interfaceC26396 = this.f10909;
            String str4 = AbstractC3712.f14481;
            interfaceC26396.mo4112(j2, 1, m79042, 0, null);
            return;
        }
        byte[] bArr = c3732.f14534;
        C0881 c0881 = this.f10913;
        c0881.getClass();
        c0881.m3101(bArr.length, bArr);
        c0881.m3090(2);
        long j3 = j2;
        for (int i5 = 0; i5 < m78742; i5++) {
            C2648 m5913 = AbstractC2649.m5913(c0881);
            int i6 = m5913.f10037;
            InterfaceC2639 interfaceC26397 = this.f10909;
            interfaceC26397.getClass();
            interfaceC26397.mo4109(i6, c3732);
            InterfaceC2639 interfaceC26398 = this.f10909;
            String str5 = AbstractC3712.f14481;
            interfaceC26398.mo4112(j3, 1, m5913.f10037, 0, null);
            j3 += (m5913.f10038 / m5913.f10039) * 1000000;
            c0881.m3090(i6);
        }
    }
}
