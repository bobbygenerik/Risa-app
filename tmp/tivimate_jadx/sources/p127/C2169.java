package p127;

import android.os.SystemClock;
import java.util.List;
import p017.AbstractC0993;
import p017.C0956;
import p017.C0982;
import p055.C1468;
import p171.C2637;
import p171.InterfaceC2622;
import p171.InterfaceC2632;
import p171.InterfaceC2646;
import p196.C2890;
import p196.C2891;
import p196.C2892;
import p196.C2893;
import p196.C2894;
import p196.C2895;
import p196.C2896;
import p196.C2897;
import p196.C2898;
import p196.C2899;
import p196.InterfaceC2889;
import p223.C3056;
import p305.AbstractC3731;
import p305.C3732;

/* renamed from: ˈـ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2169 implements InterfaceC2632 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public volatile long f8459;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C3732 f8460;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public volatile int f8461;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f8462;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public long f8463;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final Object f8464;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public boolean f8465;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public InterfaceC2646 f8466;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public boolean f8467;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C3732 f8468;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC2889 f8469;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public long f8470;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final C2165 f8471;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public C2169(C2177 c2177, int i) {
        char c;
        InterfaceC2889 c2892;
        InterfaceC2889 interfaceC2889;
        this.f8462 = i;
        String str = c2177.f8527.f5930;
        str.getClass();
        switch (str.hashCode()) {
            case -1664118616:
                if (str.equals("video/3gpp")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -1662541442:
                if (str.equals("video/hevc")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -1606874997:
                if (str.equals("audio/amr-wb")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -53558318:
                if (str.equals("audio/mp4a-latm")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 187078296:
                if (str.equals("audio/ac3")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 187094639:
                if (str.equals("audio/raw")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 1187890754:
                if (str.equals("video/mp4v-es")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 1331836730:
                if (str.equals("video/avc")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case 1503095341:
                if (str.equals("audio/3gpp")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case 1504891608:
                if (str.equals("audio/opus")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case 1599127256:
                if (str.equals("video/x-vnd.on2.vp8")) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case 1599127257:
                if (str.equals("video/x-vnd.on2.vp9")) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            case 1903231877:
                if (str.equals("audio/g711-alaw")) {
                    c = '\f';
                    break;
                }
                c = 65535;
                break;
            case 1903589369:
                if (str.equals("audio/g711-mlaw")) {
                    c = '\r';
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                c2892 = new C2892(c2177, 0);
                interfaceC2889 = c2892;
                break;
            case 1:
                c2892 = new C2893(c2177, 1);
                interfaceC2889 = c2892;
                break;
            case 2:
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                c2892 = new C2890(c2177);
                interfaceC2889 = c2892;
                break;
            case 3:
                c2892 = c2177.f8529.equals("MP4A-LATM") ? new C2899(c2177) : new C2898(c2177);
                interfaceC2889 = c2892;
                break;
            case 4:
                c2892 = new C2897(c2177);
                interfaceC2889 = c2892;
                break;
            case 5:
            case '\f':
            case '\r':
                c2892 = new C2891(c2177);
                interfaceC2889 = c2892;
                break;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                c2892 = new C2895(c2177);
                interfaceC2889 = c2892;
                break;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                c2892 = new C2893(c2177, 0);
                interfaceC2889 = c2892;
                break;
            case '\t':
                c2892 = new C2896(c2177);
                interfaceC2889 = c2892;
                break;
            case '\n':
                c2892 = new C2894(c2177);
                interfaceC2889 = c2892;
                break;
            case 11:
                c2892 = new C2892(c2177, 1);
                interfaceC2889 = c2892;
                break;
            default:
                interfaceC2889 = null;
                break;
        }
        interfaceC2889.getClass();
        this.f8469 = interfaceC2889;
        this.f8468 = new C3732(65507);
        this.f8460 = new C3732();
        this.f8464 = new Object();
        this.f8471 = new C2165();
        this.f8459 = -9223372036854775807L;
        this.f8461 = -1;
        this.f8470 = -9223372036854775807L;
        this.f8463 = -9223372036854775807L;
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ʼˎ */
    public final void mo2900(InterfaceC2646 interfaceC2646) {
        this.f8469.mo6392(interfaceC2646, this.f8462);
        interfaceC2646.mo1137();
        interfaceC2646.mo1133(new C2637(-9223372036854775807L));
        this.f8466 = interfaceC2646;
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ˈ */
    public final InterfaceC2632 mo2902() {
        return this;
    }

    /* JADX WARN: Type inference failed for: r0v16, types: [ˈـ.ᵔᵢ, java.lang.Object] */
    @Override // p171.InterfaceC2632
    /* renamed from: ٴﹶ */
    public final int mo2904(InterfaceC2622 interfaceC2622, C1468 c1468) {
        this.f8466.getClass();
        int read = interfaceC2622.read(this.f8468.f14534, 0, 65507);
        if (read == -1) {
            return -1;
        }
        if (read == 0) {
            return 0;
        }
        this.f8468.m7896(0);
        this.f8468.m7891(read);
        C3732 c3732 = this.f8468;
        byte[] bArr = C2145.f8334;
        C2145 c2145 = null;
        if (c3732.m7904() >= 12) {
            int m7874 = c3732.m7874();
            byte b = (byte) (m7874 >> 6);
            byte b2 = (byte) (m7874 & 15);
            boolean z = ((m7874 >> 4) & 1) == 1;
            if (b == 2) {
                int m78742 = c3732.m7874();
                boolean z2 = ((m78742 >> 7) & 1) == 1;
                byte b3 = (byte) (m78742 & 127);
                int m7895 = c3732.m7895();
                long m7880 = c3732.m7880();
                int m7893 = c3732.m7893();
                if (b2 > 0) {
                    byte[] bArr2 = new byte[b2 * 4];
                    for (int i = 0; i < b2; i++) {
                        c3732.m7875(bArr2, i * 4, 4);
                    }
                }
                if (z) {
                    c3732.m7900(2);
                    short m7873 = c3732.m7873();
                    if (m7873 != 0) {
                        c3732.m7900(m7873 * 4);
                    }
                }
                byte[] bArr3 = new byte[c3732.m7904()];
                c3732.m7875(bArr3, 0, c3732.m7904());
                ?? obj = new Object();
                obj.f8496 = bArr;
                obj.f8495 = z2;
                obj.f8494 = b3;
                AbstractC3731.m7849(m7895 >= 0 && m7895 <= 65535);
                obj.f8491 = 65535 & m7895;
                obj.f8492 = m7880;
                obj.f8493 = m7893;
                obj.f8496 = bArr3;
                c2145 = new C2145(obj);
            }
        }
        if (c2145 != null) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long j = elapsedRealtime - 30;
            this.f8471.m5142(c2145, elapsedRealtime);
            C2145 m5143 = this.f8471.m5143(j);
            if (m5143 != null) {
                if (!this.f8467) {
                    if (this.f8459 == -9223372036854775807L) {
                        this.f8459 = m5143.f8336;
                    }
                    if (this.f8461 == -1) {
                        this.f8461 = m5143.f8335;
                    }
                    this.f8469.mo6391(this.f8459);
                    this.f8467 = true;
                }
                synchronized (this.f8464) {
                    try {
                        if (!this.f8465) {
                            do {
                                C3732 c37322 = this.f8460;
                                byte[] bArr4 = m5143.f8340;
                                c37322.getClass();
                                c37322.m7897(bArr4.length, bArr4);
                                this.f8469.mo6394(this.f8460, m5143.f8336, m5143.f8335, m5143.f8339);
                                m5143 = this.f8471.m5143(j);
                            } while (m5143 != null);
                        } else if (this.f8470 != -9223372036854775807L && this.f8463 != -9223372036854775807L) {
                            this.f8471.m5144();
                            this.f8469.mo6393(this.f8470, this.f8463);
                            this.f8465 = false;
                            this.f8470 = -9223372036854775807L;
                            this.f8463 = -9223372036854775807L;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return 0;
            }
        }
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
        synchronized (this.f8464) {
            try {
                if (!this.f8465) {
                    this.f8465 = true;
                }
                this.f8470 = j;
                this.f8463 = j2;
            } catch (Throwable th) {
                throw th;
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
        throw new UnsupportedOperationException("RTP packets are transmitted in a packet stream do not support sniffing.");
    }
}
