package p196;

import com.bumptech.glide.ʽ;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Locale;
import p055.C1490;
import p127.C2145;
import p127.C2177;
import p171.AbstractC2649;
import p171.InterfaceC2639;
import p171.InterfaceC2646;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p305.C3732;
import p411.AbstractC4892;

/* renamed from: ˎʾ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2896 implements InterfaceC2889 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public long f10903;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public boolean f10905;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public InterfaceC2639 f10906;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2177 f10907;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public boolean f10908;

    /* renamed from: ʽ, reason: contains not printable characters */
    public long f10902 = -1;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f10904 = -1;

    public C2896(C2177 c2177) {
        this.f10907 = c2177;
    }

    @Override // p196.InterfaceC2889
    /* renamed from: ʽ */
    public final void mo6391(long j) {
        this.f10902 = j;
    }

    @Override // p196.InterfaceC2889
    /* renamed from: ˈ */
    public final void mo6392(InterfaceC2646 interfaceC2646, int i) {
        InterfaceC2639 mo1138 = interfaceC2646.mo1138(i, 1);
        this.f10906 = mo1138;
        mo1138.mo4108(this.f10907.f8527);
    }

    @Override // p196.InterfaceC2889
    /* renamed from: ⁱˊ */
    public final void mo6393(long j, long j2) {
        this.f10902 = j;
        this.f10903 = j2;
    }

    @Override // p196.InterfaceC2889
    /* renamed from: ﹳٴ */
    public final void mo6394(C3732 c3732, long j, int i, boolean z) {
        AbstractC3731.m7868(this.f10906);
        if (!this.f10908) {
            int i2 = c3732.f14533;
            AbstractC3731.m7843("ID Header has insufficient data", c3732.f14532 > 18);
            AbstractC3731.m7843("ID Header missing", c3732.m7890(8, StandardCharsets.UTF_8).equals("OpusHead"));
            AbstractC3731.m7843("version number must always be 1", c3732.m7874() == 1);
            c3732.m7896(i2);
            ArrayList m5906 = AbstractC2649.m5906(c3732.f14534);
            C1490 m4300 = this.f10907.f8527.m4300();
            m4300.f5851 = m5906;
            AbstractC4892.m9687(m4300, this.f10906);
            this.f10908 = true;
        } else if (this.f10905) {
            int m5097 = C2145.m5097(this.f10904);
            if (i != m5097) {
                String str = AbstractC3712.f14481;
                Locale locale = Locale.US;
                AbstractC3731.m7850("RtpOpusReader", AbstractC4892.m9681("Received RTP packet with unexpected sequence number. Expected: ", m5097, "; received: ", i, "."));
            }
            int m7904 = c3732.m7904();
            this.f10906.mo4109(m7904, c3732);
            this.f10906.mo4112(ʽ.ᴵᵔ(48000, this.f10903, j, this.f10902), 1, m7904, 0, null);
        } else {
            AbstractC3731.m7843("Comment Header has insufficient data", c3732.f14532 >= 8);
            AbstractC3731.m7843("Comment Header should follow ID Header", c3732.m7890(8, StandardCharsets.UTF_8).equals("OpusTags"));
            this.f10905 = true;
        }
        this.f10904 = i;
    }
}
