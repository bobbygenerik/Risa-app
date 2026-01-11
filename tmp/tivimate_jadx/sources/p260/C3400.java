package p260;

import androidx.media3.common.ParserException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.List;
import p017.AbstractC0993;
import p017.C0956;
import p017.C0982;
import p027.C1090;
import p171.C2627;
import p171.C2644;
import p171.InterfaceC2622;
import p171.InterfaceC2626;
import p171.InterfaceC2632;
import p171.InterfaceC2639;
import p171.InterfaceC2646;
import p194.C2886;
import p305.AbstractC3712;

/* renamed from: ـʻ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3400 implements InterfaceC2632 {

    /* renamed from: ˏי, reason: contains not printable characters */
    public static final byte[] f13302;

    /* renamed from: יـ, reason: contains not printable characters */
    public static final byte[] f13303;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public static final int[] f13304 = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public static final int[] f13305 = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public long f13306;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public boolean f13307;

    /* renamed from: ʽ, reason: contains not printable characters */
    public boolean f13308;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public InterfaceC2646 f13309;

    /* renamed from: ˈ, reason: contains not printable characters */
    public long f13310;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public InterfaceC2626 f13311;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public long f13312;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f13313;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public InterfaceC2639 f13314;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public boolean f13316;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public int f13317;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C2644 f13318;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public InterfaceC2639 f13320;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f13321;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final byte[] f13319 = new byte[1];

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public int f13315 = -1;

    static {
        String str = AbstractC3712.f14481;
        Charset charset = StandardCharsets.UTF_8;
        f13303 = "#!AMR\n".getBytes(charset);
        f13302 = "#!AMR-WB\n".getBytes(charset);
    }

    public C3400() {
        C2644 c2644 = new C2644();
        this.f13318 = c2644;
        this.f13320 = c2644;
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ʼˎ */
    public final void mo2900(InterfaceC2646 interfaceC2646) {
        this.f13309 = interfaceC2646;
        InterfaceC2639 mo1138 = interfaceC2646.mo1138(0, 1);
        this.f13314 = mo1138;
        this.f13320 = mo1138;
        interfaceC2646.mo1137();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int m7300(InterfaceC2622 interfaceC2622) {
        boolean z;
        interfaceC2622.mo4600();
        byte[] bArr = this.f13319;
        interfaceC2622.mo4576(bArr, 0, 1);
        byte b = bArr[0];
        if ((b & 131) > 0) {
            throw ParserException.m741(null, "Invalid padding bits for frame header " + ((int) b));
        }
        int i = (b >> 3) & 15;
        if (i >= 0 && i <= 15 && (((z = this.f13308) && (i < 10 || i > 13)) || (!z && (i < 12 || i > 14)))) {
            return z ? f13305[i] : f13304[i];
        }
        StringBuilder sb = new StringBuilder("Illegal AMR ");
        sb.append(this.f13308 ? "WB" : "NB");
        sb.append(" frame type ");
        sb.append(i);
        throw ParserException.m741(null, sb.toString());
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ˈ */
    public final InterfaceC2632 mo2902() {
        return this;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final boolean m7301(InterfaceC2622 interfaceC2622) {
        interfaceC2622.mo4600();
        byte[] bArr = f13303;
        byte[] bArr2 = new byte[bArr.length];
        interfaceC2622.mo4576(bArr2, 0, bArr.length);
        if (Arrays.equals(bArr2, bArr)) {
            this.f13308 = false;
            interfaceC2622.mo4595(bArr.length);
            return true;
        }
        interfaceC2622.mo4600();
        byte[] bArr3 = f13302;
        byte[] bArr4 = new byte[bArr3.length];
        interfaceC2622.mo4576(bArr4, 0, bArr3.length);
        if (!Arrays.equals(bArr4, bArr3)) {
            return false;
        }
        this.f13308 = true;
        interfaceC2622.mo4595(bArr3.length);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0131  */
    @Override // p171.InterfaceC2632
    /* renamed from: ٴﹶ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo2904(p171.InterfaceC2622 r18, p055.C1468 r19) {
        /*
            Method dump skipped, instructions count: 332
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p260.C3400.mo2904(ˊﾞ.ʼᐧ, ʽⁱ.ˏי):int");
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
        this.f13310 = 0L;
        this.f13313 = 0;
        this.f13321 = 0;
        this.f13312 = j2;
        InterfaceC2626 interfaceC2626 = this.f13311;
        if (!(interfaceC2626 instanceof C2627)) {
            if (j == 0 || !(interfaceC2626 instanceof C2886)) {
                this.f13306 = 0L;
                return;
            } else {
                this.f13306 = (Math.max(0L, j - ((C2886) interfaceC2626).f10843) * 8000000) / r7.f10839;
                return;
            }
        }
        C2627 c2627 = (C2627) interfaceC2626;
        C1090 c1090 = c2627.f9948;
        long m3469 = c1090.f4254 == 0 ? -9223372036854775807L : c1090.m3469(AbstractC3712.m7760(c2627.f9949, j));
        this.f13306 = m3469;
        if (Math.abs(this.f13312 - m3469) < 20000) {
            return;
        }
        this.f13316 = true;
        this.f13320 = this.f13318;
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ﹳٴ */
    public final void mo2909() {
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ﾞᴵ */
    public final boolean mo2910(InterfaceC2622 interfaceC2622) {
        return m7301(interfaceC2622);
    }
}
