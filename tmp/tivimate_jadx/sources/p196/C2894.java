package p196;

import com.bumptech.glide.ʽ;
import java.util.Locale;
import p055.C1490;
import p055.C1495;
import p127.C2145;
import p127.C2177;
import p171.InterfaceC2639;
import p171.InterfaceC2646;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p305.C3732;
import p411.AbstractC4892;

/* renamed from: ˎʾ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2894 implements InterfaceC2889 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public boolean f10885;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public boolean f10887;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public boolean f10891;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public InterfaceC2639 f10892;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2177 f10893;

    /* renamed from: ʽ, reason: contains not printable characters */
    public long f10886 = -9223372036854775807L;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f10888 = -1;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f10889 = -1;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public long f10894 = -9223372036854775807L;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public long f10890 = 0;

    public C2894(C2177 c2177) {
        this.f10893 = c2177;
    }

    @Override // p196.InterfaceC2889
    /* renamed from: ʽ */
    public final void mo6391(long j) {
        AbstractC3731.m7857(this.f10886 == -9223372036854775807L);
        this.f10886 = j;
    }

    @Override // p196.InterfaceC2889
    /* renamed from: ˈ */
    public final void mo6392(InterfaceC2646 interfaceC2646, int i) {
        InterfaceC2639 mo1138 = interfaceC2646.mo1138(i, 2);
        this.f10892 = mo1138;
        mo1138.mo4108(this.f10893.f8527);
    }

    @Override // p196.InterfaceC2889
    /* renamed from: ⁱˊ */
    public final void mo6393(long j, long j2) {
        this.f10886 = j;
        this.f10889 = -1;
        this.f10890 = j2;
    }

    @Override // p196.InterfaceC2889
    /* renamed from: ﹳٴ */
    public final void mo6394(C3732 c3732, long j, int i, boolean z) {
        AbstractC3731.m7868(this.f10892);
        int m7874 = c3732.m7874();
        if ((m7874 & 16) == 16 && (m7874 & 7) == 0) {
            if (this.f10891 && this.f10889 > 0) {
                InterfaceC2639 interfaceC2639 = this.f10892;
                interfaceC2639.getClass();
                interfaceC2639.mo4112(this.f10894, this.f10885 ? 1 : 0, this.f10889, 0, null);
                this.f10889 = -1;
                this.f10894 = -9223372036854775807L;
                this.f10891 = false;
            }
            this.f10891 = true;
        } else {
            if (!this.f10891) {
                AbstractC3731.m7850("RtpVP8Reader", "RTP packet is not the start of a new VP8 partition, skipping.");
                return;
            }
            int m5097 = C2145.m5097(this.f10888);
            if (i < m5097) {
                String str = AbstractC3712.f14481;
                Locale locale = Locale.US;
                AbstractC3731.m7850("RtpVP8Reader", AbstractC4892.m9681("Received RTP packet with unexpected sequence number. Expected: ", m5097, "; received: ", i, ". Dropping packet."));
                return;
            }
        }
        if ((m7874 & 128) != 0) {
            int m78742 = c3732.m7874();
            if ((m78742 & 128) != 0 && (c3732.m7874() & 128) != 0) {
                c3732.m7900(1);
            }
            if ((m78742 & 64) != 0) {
                c3732.m7900(1);
            }
            if ((m78742 & 32) != 0 || (m78742 & 16) != 0) {
                c3732.m7900(1);
            }
        }
        if (this.f10889 == -1 && this.f10891) {
            this.f10885 = (c3732.m7901() & 1) == 0;
        }
        if (!this.f10887) {
            int i2 = c3732.f14533;
            c3732.m7896(i2 + 6);
            int m7905 = c3732.m7905() & 16383;
            int m79052 = c3732.m7905() & 16383;
            c3732.m7896(i2);
            C1495 c1495 = this.f10893.f8527;
            if (m7905 != c1495.f5905 || m79052 != c1495.f5899) {
                InterfaceC2639 interfaceC26392 = this.f10892;
                C1490 m4300 = c1495.m4300();
                m4300.f5865 = m7905;
                m4300.f5854 = m79052;
                AbstractC4892.m9687(m4300, interfaceC26392);
            }
            this.f10887 = true;
        }
        int m7904 = c3732.m7904();
        this.f10892.mo4109(m7904, c3732);
        int i3 = this.f10889;
        if (i3 == -1) {
            this.f10889 = m7904;
        } else {
            this.f10889 = i3 + m7904;
        }
        this.f10894 = ʽ.ᴵᵔ(90000, this.f10890, j, this.f10886);
        if (z) {
            InterfaceC2639 interfaceC26393 = this.f10892;
            interfaceC26393.getClass();
            interfaceC26393.mo4112(this.f10894, this.f10885 ? 1 : 0, this.f10889, 0, null);
            this.f10889 = -1;
            this.f10894 = -9223372036854775807L;
            this.f10891 = false;
        }
        this.f10888 = i;
    }
}
