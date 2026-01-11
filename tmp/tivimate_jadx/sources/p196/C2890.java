package p196;

import com.bumptech.glide.ʽ;
import java.util.Locale;
import p127.C2145;
import p127.C2177;
import p171.InterfaceC2639;
import p171.InterfaceC2646;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p305.C3732;
import p411.AbstractC4892;

/* renamed from: ˎʾ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2890 implements InterfaceC2889 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f10850;

    /* renamed from: ˈ, reason: contains not printable characters */
    public InterfaceC2639 f10851;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public long f10852;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public int f10853;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean f10854;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2177 f10855;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public long f10856;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static final int[] f10849 = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static final int[] f10848 = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};

    public C2890(C2177 c2177) {
        this.f10855 = c2177;
        String str = c2177.f8527.f5930;
        str.getClass();
        this.f10854 = "audio/amr-wb".equals(str);
        this.f10850 = c2177.f8530;
        this.f10852 = -9223372036854775807L;
        this.f10853 = -1;
        this.f10856 = 0L;
    }

    @Override // p196.InterfaceC2889
    /* renamed from: ʽ */
    public final void mo6391(long j) {
        this.f10852 = j;
    }

    @Override // p196.InterfaceC2889
    /* renamed from: ˈ */
    public final void mo6392(InterfaceC2646 interfaceC2646, int i) {
        InterfaceC2639 mo1138 = interfaceC2646.mo1138(i, 1);
        this.f10851 = mo1138;
        mo1138.mo4108(this.f10855.f8527);
    }

    @Override // p196.InterfaceC2889
    /* renamed from: ⁱˊ */
    public final void mo6393(long j, long j2) {
        this.f10852 = j;
        this.f10856 = j2;
    }

    @Override // p196.InterfaceC2889
    /* renamed from: ﹳٴ */
    public final void mo6394(C3732 c3732, long j, int i, boolean z) {
        int m5097;
        AbstractC3731.m7868(this.f10851);
        int i2 = this.f10853;
        if (i2 != -1 && i != (m5097 = C2145.m5097(i2))) {
            String str = AbstractC3712.f14481;
            Locale locale = Locale.US;
            AbstractC3731.m7850("RtpAmrReader", AbstractC4892.m9681("Received RTP packet with unexpected sequence number. Expected: ", m5097, "; received: ", i, "."));
        }
        c3732.m7900(1);
        int m7901 = (c3732.m7901() >> 3) & 15;
        boolean z2 = (m7901 >= 0 && m7901 <= 8) || m7901 == 15;
        StringBuilder sb = new StringBuilder("Illegal AMR ");
        boolean z3 = this.f10854;
        sb.append(z3 ? "WB" : "NB");
        sb.append(" frame type ");
        sb.append(m7901);
        AbstractC3731.m7843(sb.toString(), z2);
        int i3 = z3 ? f10848[m7901] : f10849[m7901];
        int m7904 = c3732.m7904();
        AbstractC3731.m7843("compound payload not supported currently", m7904 == i3);
        this.f10851.mo4109(m7904, c3732);
        this.f10851.mo4112(ʽ.ᴵᵔ(this.f10850, this.f10856, j, this.f10852), 1, m7904, 0, null);
        this.f10853 = i;
    }
}
