package p196;

import androidx.media3.common.ParserException;
import com.bumptech.glide.ʽ;
import java.util.Locale;
import java.util.TreeMap;
import p012.AbstractC0903;
import p127.C2145;
import p127.C2177;
import p171.InterfaceC2639;
import p171.InterfaceC2646;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p305.C3732;
import p411.AbstractC4892;

/* renamed from: ˎʾ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2893 implements InterfaceC2889 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public int f10875;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Object f10876;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public long f10877;

    /* renamed from: ˈ, reason: contains not printable characters */
    public Object f10878;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public Object f10879;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public long f10880;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public int f10881;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object f10882;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f10883;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f10884;

    public C2893(String str, String str2, long j, int i, int i2, int i3, int[] iArr, TreeMap treeMap) {
        this.f10883 = 2;
        this.f10882 = str;
        this.f10876 = str2;
        this.f10880 = j;
        this.f10877 = 0L;
        this.f10884 = i;
        this.f10881 = i2;
        this.f10875 = i3;
        this.f10878 = iArr;
        this.f10879 = treeMap;
    }

    public C2893(C2177 c2177, int i) {
        this.f10883 = i;
        switch (i) {
            case 1:
                this.f10882 = new C3732();
                this.f10876 = new C3732(AbstractC0903.f3824);
                this.f10878 = c2177;
                this.f10880 = -9223372036854775807L;
                this.f10881 = -1;
                return;
            default:
                this.f10876 = new C3732(AbstractC0903.f3824);
                this.f10878 = c2177;
                this.f10882 = new C3732();
                this.f10880 = -9223372036854775807L;
                this.f10881 = -1;
                return;
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    private final void m6395(long j) {
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    private final void m6396(long j) {
    }

    @Override // p196.InterfaceC2889
    /* renamed from: ʽ */
    public void mo6391(long j) {
        int i = this.f10883;
    }

    @Override // p196.InterfaceC2889
    /* renamed from: ˈ */
    public void mo6392(InterfaceC2646 interfaceC2646, int i) {
        switch (this.f10883) {
            case 0:
                InterfaceC2639 mo1138 = interfaceC2646.mo1138(i, 2);
                this.f10879 = mo1138;
                String str = AbstractC3712.f14481;
                mo1138.mo4108(((C2177) this.f10878).f8527);
                return;
            default:
                InterfaceC2639 mo11382 = interfaceC2646.mo1138(i, 2);
                this.f10879 = mo11382;
                mo11382.mo4108(((C2177) this.f10878).f8527);
                return;
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public int m6397() {
        C3732 c3732 = (C3732) this.f10876;
        c3732.m7896(0);
        int m7904 = c3732.m7904();
        InterfaceC2639 interfaceC2639 = (InterfaceC2639) this.f10879;
        interfaceC2639.getClass();
        interfaceC2639.mo4109(m7904, c3732);
        return m7904;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public int m6398() {
        C3732 c3732 = (C3732) this.f10876;
        c3732.m7896(0);
        int m7904 = c3732.m7904();
        InterfaceC2639 interfaceC2639 = (InterfaceC2639) this.f10879;
        interfaceC2639.getClass();
        interfaceC2639.mo4109(m7904, c3732);
        return m7904;
    }

    @Override // p196.InterfaceC2889
    /* renamed from: ⁱˊ */
    public void mo6393(long j, long j2) {
        switch (this.f10883) {
            case 0:
                this.f10880 = j;
                this.f10875 = 0;
                this.f10877 = j2;
                return;
            default:
                this.f10880 = j;
                this.f10875 = 0;
                this.f10877 = j2;
                return;
        }
    }

    @Override // p196.InterfaceC2889
    /* renamed from: ﹳٴ */
    public void mo6394(C3732 c3732, long j, int i, boolean z) {
        int i2 = this.f10883;
        Object obj = this.f10882;
        switch (i2) {
            case 0:
                try {
                    int i3 = c3732.f14534[0] & 31;
                    AbstractC3731.m7868((InterfaceC2639) this.f10879);
                    if (i3 > 0 && i3 < 24) {
                        int m7904 = c3732.m7904();
                        this.f10875 = m6397() + this.f10875;
                        ((InterfaceC2639) this.f10879).mo4109(m7904, c3732);
                        this.f10875 += m7904;
                        this.f10884 = (c3732.f14534[0] & 31) != 5 ? 0 : 1;
                    } else if (i3 == 24) {
                        c3732.m7874();
                        while (c3732.m7904() > 4) {
                            int m7895 = c3732.m7895();
                            this.f10875 = m6397() + this.f10875;
                            ((InterfaceC2639) this.f10879).mo4109(m7895, c3732);
                            this.f10875 += m7895;
                        }
                        this.f10884 = 0;
                    } else {
                        if (i3 != 28) {
                            throw ParserException.m740(String.format("RTP H264 packetization mode [%d] not supported.", Integer.valueOf(i3)), null);
                        }
                        C3732 c37322 = (C3732) obj;
                        byte[] bArr = c3732.f14534;
                        byte b = bArr[0];
                        byte b2 = bArr[1];
                        int i4 = (b & 224) | (b2 & 31);
                        boolean z2 = (b2 & 128) > 0;
                        boolean z3 = (b2 & 64) > 0;
                        if (z2) {
                            this.f10875 = m6397() + this.f10875;
                            byte[] bArr2 = c3732.f14534;
                            bArr2[1] = (byte) i4;
                            c37322.getClass();
                            c37322.m7897(bArr2.length, bArr2);
                            c37322.m7896(1);
                        } else {
                            int m5097 = C2145.m5097(this.f10881);
                            if (i != m5097) {
                                String str = AbstractC3712.f14481;
                                Locale locale = Locale.US;
                                AbstractC3731.m7850("RtpH264Reader", AbstractC4892.m9681("Received RTP packet with unexpected sequence number. Expected: ", m5097, "; received: ", i, ". Dropping packet."));
                            } else {
                                byte[] bArr3 = c3732.f14534;
                                c37322.getClass();
                                c37322.m7897(bArr3.length, bArr3);
                                c37322.m7896(2);
                            }
                        }
                        int m79042 = c37322.m7904();
                        ((InterfaceC2639) this.f10879).mo4109(m79042, c37322);
                        this.f10875 += m79042;
                        if (z3) {
                            this.f10884 = (i4 & 31) != 5 ? 0 : 1;
                        }
                    }
                    if (z) {
                        if (this.f10880 == -9223372036854775807L) {
                            this.f10880 = j;
                        }
                        ((InterfaceC2639) this.f10879).mo4112(ʽ.ᴵᵔ(90000, this.f10877, j, this.f10880), this.f10884, this.f10875, 0, null);
                        this.f10875 = 0;
                    }
                    this.f10881 = i;
                    return;
                } catch (IndexOutOfBoundsException e) {
                    throw ParserException.m740(null, e);
                }
            default:
                byte[] bArr4 = c3732.f14534;
                if (bArr4.length == 0) {
                    throw ParserException.m740("Empty RTP data packet.", null);
                }
                int i5 = (bArr4[0] >> 1) & 63;
                AbstractC3731.m7868((InterfaceC2639) this.f10879);
                if (i5 >= 0 && i5 < 48) {
                    int m79043 = c3732.m7904();
                    this.f10875 = m6398() + this.f10875;
                    ((InterfaceC2639) this.f10879).mo4109(m79043, c3732);
                    this.f10875 += m79043;
                    int i6 = (c3732.f14534[0] >> 1) & 63;
                    if (i6 != 19 && i6 != 20) {
                        r15 = 0;
                    }
                    this.f10884 = r15;
                } else if (i5 == 48) {
                    c3732.m7896(2);
                    int i7 = 0;
                    while (c3732.m7904() > 2) {
                        int m78952 = c3732.m7895();
                        int i8 = (c3732.f14534[c3732.f14533] & 126) >> 1;
                        if (c3732.m7904() < m78952) {
                            throw ParserException.m740("Malformed Aggregation Packet. NAL unit size exceeds packet size.", null);
                        }
                        this.f10875 = m6398() + this.f10875;
                        ((InterfaceC2639) this.f10879).mo4109(m78952, c3732);
                        this.f10875 += m78952;
                        this.f10884 |= (i8 == 19 || i8 == 20) ? 1 : 0;
                        i7++;
                    }
                    if (c3732.m7904() > 0) {
                        throw ParserException.m740("Malformed Aggregation Packet. Packet size exceeds NAL unit size.", null);
                    }
                    if (i7 < 2) {
                        throw ParserException.m740("Aggregation Packet must contain at least 2 NAL units.", null);
                    }
                } else {
                    if (i5 != 49) {
                        throw ParserException.m740(String.format("RTP H265 payload type [%d] not supported.", Integer.valueOf(i5)), null);
                    }
                    C3732 c37323 = (C3732) obj;
                    byte[] bArr5 = c3732.f14534;
                    if (bArr5.length < 3) {
                        throw ParserException.m740("Malformed FU header.", null);
                    }
                    int i9 = bArr5[1] & 7;
                    byte b3 = bArr5[2];
                    int i10 = b3 & 63;
                    boolean z4 = (b3 & 128) > 0;
                    boolean z5 = (b3 & 64) > 0;
                    if (z4) {
                        this.f10875 = m6398() + this.f10875;
                        byte[] bArr6 = c3732.f14534;
                        bArr6[1] = (byte) ((i10 << 1) & 127);
                        bArr6[2] = (byte) i9;
                        c37323.getClass();
                        c37323.m7897(bArr6.length, bArr6);
                        c37323.m7896(1);
                    } else {
                        int i11 = (this.f10881 + 1) % 65535;
                        if (i != i11) {
                            String str2 = AbstractC3712.f14481;
                            Locale locale2 = Locale.US;
                            AbstractC3731.m7850("RtpH265Reader", AbstractC4892.m9681("Received RTP packet with unexpected sequence number. Expected: ", i11, "; received: ", i, ". Dropping packet."));
                        } else {
                            c37323.getClass();
                            c37323.m7897(bArr5.length, bArr5);
                            c37323.m7896(3);
                        }
                    }
                    int m79044 = c37323.m7904();
                    ((InterfaceC2639) this.f10879).mo4109(m79044, c37323);
                    this.f10875 += m79044;
                    if (z5) {
                        if (i10 != 19 && i10 != 20) {
                            r15 = 0;
                        }
                        this.f10884 = r15;
                    }
                }
                if (z) {
                    if (this.f10880 == -9223372036854775807L) {
                        this.f10880 = j;
                    }
                    ((InterfaceC2639) this.f10879).mo4112(ʽ.ᴵᵔ(90000, this.f10877, j, this.f10880), this.f10884, this.f10875, 0, null);
                    this.f10875 = 0;
                }
                this.f10881 = i;
                return;
        }
    }
}
