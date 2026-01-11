package p354;

import ﹳˋ.ٴﹶ;

/* renamed from: ᵔʿ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4332 extends AbstractC4334 {

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static final int[] f16108 = {1116352408, 1899447441, -1245643825, -373957723, 961987163, 1508970993, -1841331548, -1424204075, -670586216, 310598401, 607225278, 1426881987, 1925078388, -2132889090, -1680079193, -1046744716, -459576895, -272742522, 264347078, 604807628, 770255983, 1249150122, 1555081692, 1996064986, -1740746414, -1473132947, -1341970488, -1084653625, -958395405, -710438585, 113926993, 338241895, 666307205, 773529912, 1294757372, 1396182291, 1695183700, 1986661051, -2117940946, -1838011259, -1564481375, -1474664885, -1035236496, -949202525, -778901479, -694614492, -200395387, 275423344, 430227734, 506948616, 659060556, 883997877, 958139571, 1322822218, 1537002063, 1747873779, 1955562222, 2024104815, -2067236844, -1933114872, -1866530822, -1538233109, -1090935817, -965641998};

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public int f16109;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public int f16110;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f16111;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public int f16112;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f16113;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public int f16114;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public int f16115;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public int f16116;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public int[] f16117 = new int[64];

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f16118;

    public C4332() {
        mo8762();
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public static int m8771(int i) {
        return ((i << 7) | (i >>> 25)) ^ (((i >>> 6) | (i << 26)) ^ ((i >>> 11) | (i << 21)));
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static int m8772(int i, int i2, int i3) {
        return ((~i) & i3) ^ (i2 & i);
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public static int m8773(int i) {
        return ((i << 10) | (i >>> 22)) ^ (((i >>> 2) | (i << 30)) ^ ((i >>> 13) | (i << 19)));
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static int m8774(int i, int i2, int i3) {
        return ((i & i3) ^ (i & i2)) ^ (i2 & i3);
    }

    @Override // p354.AbstractC4334
    /* renamed from: ʼˎ */
    public final void mo8762() {
        super.mo8762();
        this.f16111 = 1779033703;
        this.f16113 = -1150833019;
        this.f16118 = 1013904242;
        this.f16115 = -1521486534;
        this.f16116 = 1359893119;
        this.f16109 = -1694144372;
        this.f16110 = 528734635;
        this.f16114 = 1541459225;
        this.f16112 = 0;
        int i = 0;
        while (true) {
            int[] iArr = this.f16117;
            if (i == iArr.length) {
                return;
            }
            iArr[i] = 0;
            i++;
        }
    }

    @Override // p354.AbstractC4334
    /* renamed from: ʽ */
    public final int mo8763(int i, byte[] bArr) {
        m8781();
        ٴﹶ.ᵢˏ(bArr, this.f16111, i);
        ٴﹶ.ᵢˏ(bArr, this.f16113, i + 4);
        ٴﹶ.ᵢˏ(bArr, this.f16118, i + 8);
        ٴﹶ.ᵢˏ(bArr, this.f16115, i + 12);
        ٴﹶ.ᵢˏ(bArr, this.f16116, i + 16);
        ٴﹶ.ᵢˏ(bArr, this.f16109, i + 20);
        ٴﹶ.ᵢˏ(bArr, this.f16110, i + 24);
        ٴﹶ.ᵢˏ(bArr, this.f16114, i + 28);
        mo8762();
        return 32;
    }

    @Override // p354.AbstractC4334
    /* renamed from: ˆʾ */
    public final void mo8764(AbstractC4334 abstractC4334) {
        m8775((C4332) abstractC4334);
    }

    @Override // p354.AbstractC4334
    /* renamed from: ˑﹳ */
    public final int mo8766() {
        return 32;
    }

    @Override // p354.AbstractC4334
    /* renamed from: ᵎﹶ */
    public final void mo8767(long j) {
        if (this.f16112 > 14) {
            mo8770();
        }
        int[] iArr = this.f16117;
        iArr[14] = (int) (j >>> 32);
        iArr[15] = (int) j;
    }

    @Override // p354.AbstractC4334
    /* renamed from: ᵔᵢ */
    public final void mo8768(int i, byte[] bArr) {
        int i2 = (bArr[i + 3] & 255) | (bArr[i] << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
        int[] iArr = this.f16117;
        int i3 = this.f16112;
        iArr[i3] = i2;
        int i4 = i3 + 1;
        this.f16112 = i4;
        if (i4 == 16) {
            mo8770();
        }
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final void m8775(C4332 c4332) {
        m8783(c4332);
        this.f16111 = c4332.f16111;
        this.f16113 = c4332.f16113;
        this.f16118 = c4332.f16118;
        this.f16115 = c4332.f16115;
        this.f16116 = c4332.f16116;
        this.f16109 = c4332.f16109;
        this.f16110 = c4332.f16110;
        this.f16114 = c4332.f16114;
        int[] iArr = c4332.f16117;
        System.arraycopy(iArr, 0, this.f16117, 0, iArr.length);
        this.f16112 = c4332.f16112;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [ᵔʿ.ˈ, ᵔʿ.ﹳٴ] */
    @Override // p354.AbstractC4334
    /* renamed from: ﹳٴ */
    public final AbstractC4334 mo8769() {
        ?? abstractC4334 = new AbstractC4334(this);
        abstractC4334.f16117 = new int[64];
        abstractC4334.m8775(this);
        return abstractC4334;
    }

    @Override // p354.AbstractC4334
    /* renamed from: ﾞᴵ */
    public final void mo8770() {
        int[] iArr = this.f16117;
        for (int i = 16; i <= 63; i++) {
            int i2 = iArr[i - 2];
            int i3 = ((i2 >>> 10) ^ (((i2 >>> 17) | (i2 << 15)) ^ ((i2 >>> 19) | (i2 << 13)))) + iArr[i - 7];
            int i4 = iArr[i - 15];
            iArr[i] = i3 + ((i4 >>> 3) ^ (((i4 >>> 7) | (i4 << 25)) ^ ((i4 >>> 18) | (i4 << 14)))) + iArr[i - 16];
        }
        int i5 = this.f16111;
        int i6 = this.f16113;
        int i7 = this.f16118;
        int i8 = this.f16115;
        int i9 = this.f16116;
        int i10 = this.f16109;
        int i11 = this.f16110;
        int i12 = this.f16114;
        int i13 = 0;
        for (int i14 = 0; i14 < 8; i14++) {
            int m8772 = m8772(i9, i10, i11) + m8771(i9);
            int[] iArr2 = f16108;
            int i15 = m8772 + iArr2[i13] + iArr[i13] + i12;
            int i16 = i8 + i15;
            int m8774 = m8774(i5, i6, i7) + m8773(i5) + i15;
            int i17 = i13 + 1;
            int m87722 = m8772(i16, i9, i10) + m8771(i16) + iArr2[i17] + iArr[i17] + i11;
            int i18 = i7 + m87722;
            int m87742 = m8774(m8774, i5, i6) + m8773(m8774) + m87722;
            int i19 = i13 + 2;
            int m87723 = m8772(i18, i16, i9) + m8771(i18) + iArr2[i19] + iArr[i19] + i10;
            int i20 = i6 + m87723;
            int m87743 = m8774(m87742, m8774, i5) + m8773(m87742) + m87723;
            int i21 = i13 + 3;
            int m87724 = m8772(i20, i18, i16) + m8771(i20) + iArr2[i21] + iArr[i21] + i9;
            int i22 = i5 + m87724;
            int m87744 = m8774(m87743, m87742, m8774) + m8773(m87743) + m87724;
            int i23 = i13 + 4;
            int m87725 = m8772(i22, i20, i18) + m8771(i22) + iArr2[i23] + iArr[i23] + i16;
            i12 = m8774 + m87725;
            i8 = m8774(m87744, m87743, m87742) + m8773(m87744) + m87725;
            int i24 = i13 + 5;
            int m87726 = m8772(i12, i22, i20) + m8771(i12) + iArr2[i24] + iArr[i24] + i18;
            i11 = m87742 + m87726;
            i7 = m8774(i8, m87744, m87743) + m8773(i8) + m87726;
            int i25 = i13 + 6;
            int m87727 = m8772(i11, i12, i22) + m8771(i11) + iArr2[i25] + iArr[i25] + i20;
            i10 = m87743 + m87727;
            i6 = m8774(i7, i8, m87744) + m8773(i7) + m87727;
            int i26 = i13 + 7;
            int m87728 = m8772(i10, i11, i12) + m8771(i10) + iArr2[i26] + iArr[i26] + i22;
            i9 = m87744 + m87728;
            i5 = m8774(i6, i7, i8) + m8773(i6) + m87728;
            i13 += 8;
        }
        this.f16111 += i5;
        this.f16113 += i6;
        this.f16118 += i7;
        this.f16115 += i8;
        this.f16116 += i9;
        this.f16109 += i10;
        this.f16110 += i11;
        this.f16114 += i12;
        this.f16112 = 0;
        for (int i27 = 0; i27 < 16; i27++) {
            iArr[i27] = 0;
        }
    }
}
