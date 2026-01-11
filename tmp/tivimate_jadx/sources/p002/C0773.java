package p002;

import com.google.android.gms.internal.measurement.ᵎ;
import java.nio.charset.Charset;
import p197.AbstractC2901;
import p197.C2902;
import p317.AbstractC3913;
import p317.AbstractC3914;
import p431.C5116;

/* renamed from: ʻʽ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0773 extends ᵎ {

    /* renamed from: ᵔי, reason: contains not printable characters */
    public static final byte[] f3196 = new byte[0];

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final byte[] f3197;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final byte[] f3198;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final byte[] f3199;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final byte[] f3200;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final boolean f3201;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final byte[] f3202;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final byte[] f3203;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public byte[] f3204;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final long f3205;

    public C0773(byte[] bArr, byte[] bArr2, String str, String str2, byte[] bArr3, long j, boolean z) {
        this.f3197 = bArr;
        this.f3198 = bArr2;
        Charset charset = C5116.f19218;
        this.f3203 = str.getBytes(charset);
        byte[] bArr4 = f3196;
        this.f3200 = str2 != null ? str2.getBytes(charset) : bArr4;
        this.f3202 = bArr4;
        this.f3199 = bArr3 == null ? bArr4 : bArr3;
        this.f3205 = j;
        this.f3201 = z;
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static int m2799(C2902 c2902, byte[] bArr, int i) {
        if (bArr == null) {
            bArr = f3196;
        }
        c2902.m6417(bArr.length);
        c2902.m6417(bArr.length);
        c2902.m6419(i);
        return i + bArr.length;
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public final void m2800(C2902 c2902) {
        c2902.m6423("NTLMSSP\u0000", AbstractC3913.f15175);
        c2902.m6419(3L);
        int i = this.f3201 ? 80 : 64;
        long j = this.f3205;
        EnumC0770 enumC0770 = EnumC0770.f3186;
        if (AbstractC3914.m8089(j, enumC0770)) {
            i += 8;
        }
        int m2799 = m2799(c2902, this.f3202, m2799(c2902, this.f3203, m2799(c2902, this.f3200, m2799(c2902, this.f3198, m2799(c2902, this.f3197, i)))));
        if (AbstractC3914.m8089(j, EnumC0770.f3178)) {
            m2799(c2902, this.f3199, m2799);
        } else {
            m2799(c2902, f3196, m2799);
        }
        c2902.m6419(j);
        if (AbstractC3914.m8089(j, enumC0770)) {
            AbstractC2901 abstractC2901 = new AbstractC2901();
            abstractC2901.mo6412((byte) 6);
            abstractC2901.mo6412((byte) 1);
            abstractC2901.m6417(7600);
            abstractC2901.mo6415(3, new byte[]{0, 0, 0});
            abstractC2901.mo6412((byte) 15);
            byte[] m6420 = abstractC2901.m6420();
            c2902.mo6415(m6420.length, m6420);
        }
    }
}
