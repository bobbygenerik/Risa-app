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

/* renamed from: ˎʾ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2892 implements InterfaceC2889 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public int f10862;

    /* renamed from: ʽ, reason: contains not printable characters */
    public InterfaceC2639 f10863;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public int f10864;

    /* renamed from: ˈ, reason: contains not printable characters */
    public long f10865;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public boolean f10866;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public long f10867;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public boolean f10868;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public int f10869;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public long f10870;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C2177 f10871;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f10872;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public boolean f10873;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f10874;

    public C2892(C2177 c2177, int i) {
        this.f10872 = i;
        switch (i) {
            case 1:
                this.f10871 = c2177;
                this.f10865 = -9223372036854775807L;
                this.f10869 = -1;
                this.f10870 = -9223372036854775807L;
                this.f10867 = 0L;
                this.f10874 = -1;
                this.f10862 = -1;
                this.f10864 = -1;
                return;
            default:
                this.f10871 = c2177;
                this.f10865 = -9223372036854775807L;
                this.f10869 = -1;
                return;
        }
    }

    @Override // p196.InterfaceC2889
    /* renamed from: ʽ */
    public final void mo6391(long j) {
        switch (this.f10872) {
            case 0:
                AbstractC3731.m7857(this.f10865 == -9223372036854775807L);
                this.f10865 = j;
                return;
            default:
                AbstractC3731.m7857(this.f10865 == -9223372036854775807L);
                this.f10865 = j;
                return;
        }
    }

    @Override // p196.InterfaceC2889
    /* renamed from: ˈ */
    public final void mo6392(InterfaceC2646 interfaceC2646, int i) {
        switch (this.f10872) {
            case 0:
                InterfaceC2639 mo1138 = interfaceC2646.mo1138(i, 2);
                this.f10863 = mo1138;
                mo1138.mo4108(this.f10871.f8527);
                return;
            default:
                InterfaceC2639 mo11382 = interfaceC2646.mo1138(i, 2);
                this.f10863 = mo11382;
                mo11382.mo4108(this.f10871.f8527);
                return;
        }
    }

    @Override // p196.InterfaceC2889
    /* renamed from: ⁱˊ */
    public final void mo6393(long j, long j2) {
        switch (this.f10872) {
            case 0:
                this.f10865 = j;
                this.f10874 = 0;
                this.f10867 = j2;
                return;
            default:
                this.f10865 = j;
                this.f10869 = -1;
                this.f10867 = j2;
                return;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p196.InterfaceC2889
    /* renamed from: ﹳٴ */
    public final void mo6394(C3732 c3732, long j, int i, boolean z) {
        int i2;
        int i3;
        int i4 = this.f10872;
        C2177 c2177 = this.f10871;
        switch (i4) {
            case 0:
                AbstractC3731.m7868(this.f10863);
                int i5 = c3732.f14533;
                int m7895 = c3732.m7895();
                Object[] objArr = (m7895 & 1024) > 0;
                if ((m7895 & 512) != 0 || (m7895 & 504) != 0 || (m7895 & 7) != 0) {
                    AbstractC3731.m7850("RtpH263Reader", "Dropping packet: video reduncancy coding is not supported, packet header VRC, or PLEN or PEBIT is non-zero");
                    return;
                }
                if (objArr == true) {
                    if (this.f10866 && this.f10874 > 0) {
                        InterfaceC2639 interfaceC2639 = this.f10863;
                        interfaceC2639.getClass();
                        interfaceC2639.mo4112(this.f10870, this.f10868 ? 1 : 0, this.f10874, 0, null);
                        this.f10874 = 0;
                        this.f10870 = -9223372036854775807L;
                        this.f10868 = false;
                        this.f10866 = false;
                    }
                    this.f10866 = true;
                    if ((c3732.m7901() & 252) < 128) {
                        AbstractC3731.m7850("RtpH263Reader", "Picture start Code (PSC) missing, dropping packet.");
                        return;
                    }
                    byte[] bArr = c3732.f14534;
                    bArr[i5] = 0;
                    bArr[i5 + 1] = 0;
                    c3732.m7896(i5);
                } else {
                    if (!this.f10866) {
                        AbstractC3731.m7850("RtpH263Reader", "First payload octet of the H263 packet is not the beginning of a new H263 partition, Dropping current packet.");
                        return;
                    }
                    int m5097 = C2145.m5097(this.f10869);
                    if (i < m5097) {
                        String str = AbstractC3712.f14481;
                        Locale locale = Locale.US;
                        AbstractC3731.m7850("RtpH263Reader", AbstractC4892.m9681("Received RTP packet with unexpected sequence number. Expected: ", m5097, "; received: ", i, ". Dropping packet."));
                        return;
                    }
                }
                if (this.f10874 == 0) {
                    boolean z2 = this.f10873;
                    int i6 = c3732.f14533;
                    if (((c3732.m7880() >> 10) & 63) == 32) {
                        int m7901 = c3732.m7901();
                        int i7 = (m7901 >> 1) & 1;
                        if (!z2 && i7 == 0) {
                            int i8 = (m7901 >> 2) & 7;
                            if (i8 == 1) {
                                this.f10862 = 128;
                                this.f10864 = 96;
                            } else {
                                int i9 = i8 - 2;
                                this.f10862 = 176 << i9;
                                this.f10864 = 144 << i9;
                            }
                        }
                        c3732.m7896(i6);
                        this.f10868 = i7 == 0;
                    } else {
                        c3732.m7896(i6);
                        this.f10868 = false;
                    }
                    if (!this.f10873 && this.f10868) {
                        int i10 = this.f10862;
                        C1495 c1495 = c2177.f8527;
                        if (i10 != c1495.f5905 || this.f10864 != c1495.f5899) {
                            InterfaceC2639 interfaceC26392 = this.f10863;
                            C1490 m4300 = c1495.m4300();
                            m4300.f5865 = this.f10862;
                            m4300.f5854 = this.f10864;
                            AbstractC4892.m9687(m4300, interfaceC26392);
                        }
                        this.f10873 = true;
                    }
                }
                int m7904 = c3732.m7904();
                this.f10863.mo4109(m7904, c3732);
                this.f10874 += m7904;
                this.f10870 = ʽ.ᴵᵔ(90000, this.f10867, j, this.f10865);
                if (z) {
                    InterfaceC2639 interfaceC26393 = this.f10863;
                    interfaceC26393.getClass();
                    interfaceC26393.mo4112(this.f10870, this.f10868 ? 1 : 0, this.f10874, 0, null);
                    this.f10874 = 0;
                    this.f10870 = -9223372036854775807L;
                    this.f10868 = false;
                    this.f10866 = false;
                }
                this.f10869 = i;
                return;
            default:
                AbstractC3731.m7868(this.f10863);
                int m7874 = c3732.m7874();
                if ((m7874 & 8) == 8) {
                    if (this.f10868 && this.f10869 > 0) {
                        InterfaceC2639 interfaceC26394 = this.f10863;
                        interfaceC26394.getClass();
                        interfaceC26394.mo4112(this.f10870, this.f10866 ? 1 : 0, this.f10869, 0, null);
                        this.f10869 = -1;
                        this.f10870 = -9223372036854775807L;
                        this.f10868 = false;
                    }
                    this.f10868 = true;
                } else {
                    if (!this.f10868) {
                        AbstractC3731.m7850("RtpVp9Reader", "First payload octet of the RTP packet is not the beginning of a new VP9 partition, Dropping current packet.");
                        return;
                    }
                    int m50972 = C2145.m5097(this.f10874);
                    if (i < m50972) {
                        String str2 = AbstractC3712.f14481;
                        Locale locale2 = Locale.US;
                        AbstractC3731.m7850("RtpVp9Reader", AbstractC4892.m9681("Received RTP packet with unexpected sequence number. Expected: ", m50972, "; received: ", i, ". Dropping packet."));
                        return;
                    }
                }
                if ((m7874 & 128) == 0 || (c3732.m7874() & 128) == 0 || c3732.m7904() >= 1) {
                    int i11 = m7874 & 16;
                    AbstractC3731.m7843("VP9 flexible mode is not supported.", i11 == 0);
                    if ((m7874 & 32) != 0) {
                        c3732.m7900(1);
                        if (c3732.m7904() < 1) {
                            return;
                        }
                        if (i11 == 0) {
                            c3732.m7900(1);
                        }
                    }
                    if ((m7874 & 2) != 0) {
                        int m78742 = c3732.m7874();
                        int i12 = (m78742 >> 5) & 7;
                        if ((m78742 & 16) != 0) {
                            int i13 = i12 + 1;
                            if (c3732.m7904() < i13 * 4) {
                                return;
                            }
                            for (int i14 = 0; i14 < i13; i14++) {
                                this.f10862 = c3732.m7895();
                                this.f10864 = c3732.m7895();
                            }
                        }
                        if ((m78742 & 8) != 0) {
                            int m78743 = c3732.m7874();
                            if (c3732.m7904() < m78743) {
                                return;
                            }
                            for (int i15 = 0; i15 < m78743; i15++) {
                                int m78952 = (c3732.m7895() & 12) >> 2;
                                if (c3732.m7904() < m78952) {
                                    return;
                                }
                                c3732.m7900(m78952);
                            }
                        }
                    }
                    if (this.f10869 == -1 && this.f10868) {
                        this.f10866 = (c3732.m7901() & 4) == 0;
                    }
                    if (!this.f10873 && (i2 = this.f10862) != -1 && (i3 = this.f10864) != -1) {
                        C1495 c14952 = c2177.f8527;
                        if (i2 != c14952.f5905 || i3 != c14952.f5899) {
                            InterfaceC2639 interfaceC26395 = this.f10863;
                            C1490 m43002 = c14952.m4300();
                            m43002.f5865 = this.f10862;
                            m43002.f5854 = this.f10864;
                            AbstractC4892.m9687(m43002, interfaceC26395);
                        }
                        this.f10873 = true;
                    }
                    int m79042 = c3732.m7904();
                    this.f10863.mo4109(m79042, c3732);
                    int i16 = this.f10869;
                    if (i16 == -1) {
                        this.f10869 = m79042;
                    } else {
                        this.f10869 = i16 + m79042;
                    }
                    this.f10870 = ʽ.ᴵᵔ(90000, this.f10867, j, this.f10865);
                    if (z) {
                        InterfaceC2639 interfaceC26396 = this.f10863;
                        interfaceC26396.getClass();
                        interfaceC26396.mo4112(this.f10870, this.f10866 ? 1 : 0, this.f10869, 0, null);
                        this.f10869 = -1;
                        this.f10870 = -9223372036854775807L;
                        this.f10868 = false;
                    }
                    this.f10874 = i;
                    return;
                }
                return;
        }
    }
}
