package p354;

import p307.AbstractC3740;

/* renamed from: ᵔʿ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4333 extends AbstractC4334 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public int f16119;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f16120;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f16121;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public int f16122;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public int[] f16123;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f16124;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public static int m8776(int i, int i2) {
        return (i >>> (32 - i2)) | (i << i2);
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static int m8777(int i, int i2, int i3) {
        return ((~i) & i3) | (i2 & i);
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static int m8778(int i, int i2, int i3) {
        return (i & (i2 | i3)) | (i2 & i3);
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public static void m8779(byte[] bArr, int i, int i2) {
        bArr[i2] = (byte) i;
        bArr[i2 + 1] = (byte) (i >>> 8);
        bArr[i2 + 2] = (byte) (i >>> 16);
        bArr[i2 + 3] = (byte) (i >>> 24);
    }

    @Override // p354.AbstractC4334
    /* renamed from: ʼˎ */
    public final void mo8762() {
        super.mo8762();
        this.f16120 = 1732584193;
        this.f16121 = -271733879;
        this.f16124 = -1732584194;
        this.f16122 = 271733878;
        this.f16119 = 0;
        int i = 0;
        while (true) {
            int[] iArr = this.f16123;
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
        m8779(bArr, this.f16120, i);
        m8779(bArr, this.f16121, i + 4);
        m8779(bArr, this.f16124, i + 8);
        m8779(bArr, this.f16122, i + 12);
        mo8762();
        return 16;
    }

    @Override // p354.AbstractC4334
    /* renamed from: ˆʾ */
    public final void mo8764(AbstractC4334 abstractC4334) {
        m8780((C4333) abstractC4334);
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final void m8780(C4333 c4333) {
        m8783(c4333);
        this.f16120 = c4333.f16120;
        this.f16121 = c4333.f16121;
        this.f16124 = c4333.f16124;
        this.f16122 = c4333.f16122;
        int[] iArr = c4333.f16123;
        System.arraycopy(iArr, 0, this.f16123, 0, iArr.length);
        this.f16119 = c4333.f16119;
    }

    @Override // p354.AbstractC4334
    /* renamed from: ˑﹳ */
    public final int mo8766() {
        return 16;
    }

    @Override // p354.AbstractC4334
    /* renamed from: ᵎﹶ */
    public final void mo8767(long j) {
        if (this.f16119 > 14) {
            mo8770();
        }
        int[] iArr = this.f16123;
        iArr[14] = (int) j;
        iArr[15] = (int) (j >>> 32);
    }

    @Override // p354.AbstractC4334
    /* renamed from: ᵔᵢ */
    public final void mo8768(int i, byte[] bArr) {
        int[] iArr = this.f16123;
        int i2 = this.f16119;
        int i3 = i2 + 1;
        this.f16119 = i3;
        iArr[i2] = ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
        if (i3 == 16) {
            mo8770();
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [ᵔʿ.ⁱˊ, ᵔʿ.ﹳٴ] */
    @Override // p354.AbstractC4334
    /* renamed from: ﹳٴ */
    public final AbstractC4334 mo8769() {
        ?? abstractC4334 = new AbstractC4334(this);
        abstractC4334.f16123 = new int[16];
        abstractC4334.m8780(this);
        return abstractC4334;
    }

    @Override // p354.AbstractC4334
    /* renamed from: ﾞᴵ */
    public final void mo8770() {
        int i = this.f16120;
        int i2 = this.f16121;
        int i3 = this.f16124;
        int i4 = this.f16122;
        int m8777 = m8777(i2, i3, i4) + i;
        int[] iArr = this.f16123;
        int m8776 = m8776(m8777 + iArr[0], 3);
        int m87762 = m8776(m8777(m8776, i2, i3) + i4 + iArr[1], 7);
        int m87763 = m8776(m8777(m87762, m8776, i2) + i3 + iArr[2], 11);
        int m87764 = m8776(m8777(m87763, m87762, m8776) + i2 + iArr[3], 19);
        int m87765 = m8776(m8777(m87764, m87763, m87762) + m8776 + iArr[4], 3);
        int m87766 = m8776(m8777(m87765, m87764, m87763) + m87762 + iArr[5], 7);
        int m87767 = m8776(m8777(m87766, m87765, m87764) + m87763 + iArr[6], 11);
        int m87768 = m8776(m8777(m87767, m87766, m87765) + m87764 + iArr[7], 19);
        int m87769 = m8776(m8777(m87768, m87767, m87766) + m87765 + iArr[8], 3);
        int m877610 = m8776(m8777(m87769, m87768, m87767) + m87766 + iArr[9], 7);
        int m877611 = m8776(m8777(m877610, m87769, m87768) + m87767 + iArr[10], 11);
        int m877612 = m8776(m8777(m877611, m877610, m87769) + m87768 + iArr[11], 19);
        int m877613 = m8776(m8777(m877612, m877611, m877610) + m87769 + iArr[12], 3);
        int m877614 = m8776(m8777(m877613, m877612, m877611) + m877610 + iArr[13], 7);
        int m877615 = m8776(m8777(m877614, m877613, m877612) + m877611 + iArr[14], 11);
        int m877616 = m8776(m8777(m877615, m877614, m877613) + m877612 + iArr[15], 19);
        int m7925 = AbstractC3740.m7925(m8778(m877616, m877615, m877614) + m877613, iArr[0], 1518500249, 3);
        int m79252 = AbstractC3740.m7925(m8778(m7925, m877616, m877615) + m877614, iArr[4], 1518500249, 5);
        int m79253 = AbstractC3740.m7925(m8778(m79252, m7925, m877616) + m877615, iArr[8], 1518500249, 9);
        int m79254 = AbstractC3740.m7925(m8778(m79253, m79252, m7925) + m877616, iArr[12], 1518500249, 13);
        int m79255 = AbstractC3740.m7925(m8778(m79254, m79253, m79252) + m7925, iArr[1], 1518500249, 3);
        int m79256 = AbstractC3740.m7925(m8778(m79255, m79254, m79253) + m79252, iArr[5], 1518500249, 5);
        int m79257 = AbstractC3740.m7925(m8778(m79256, m79255, m79254) + m79253, iArr[9], 1518500249, 9);
        int m79258 = AbstractC3740.m7925(m8778(m79257, m79256, m79255) + m79254, iArr[13], 1518500249, 13);
        int m79259 = AbstractC3740.m7925(m8778(m79258, m79257, m79256) + m79255, iArr[2], 1518500249, 3);
        int m792510 = AbstractC3740.m7925(m8778(m79259, m79258, m79257) + m79256, iArr[6], 1518500249, 5);
        int m792511 = AbstractC3740.m7925(m8778(m792510, m79259, m79258) + m79257, iArr[10], 1518500249, 9);
        int m792512 = AbstractC3740.m7925(m8778(m792511, m792510, m79259) + m79258, iArr[14], 1518500249, 13);
        int m792513 = AbstractC3740.m7925(m8778(m792512, m792511, m792510) + m79259, iArr[3], 1518500249, 3);
        int m792514 = AbstractC3740.m7925(m8778(m792513, m792512, m792511) + m792510, iArr[7], 1518500249, 5);
        int m792515 = AbstractC3740.m7925(m8778(m792514, m792513, m792512) + m792511, iArr[11], 1518500249, 9);
        int m792516 = AbstractC3740.m7925(m8778(m792515, m792514, m792513) + m792512, iArr[15], 1518500249, 13);
        int m792517 = AbstractC3740.m7925(m792513 + ((m792516 ^ m792515) ^ m792514), iArr[0], 1859775393, 3);
        int m792518 = AbstractC3740.m7925(m792514 + ((m792517 ^ m792516) ^ m792515), iArr[8], 1859775393, 9);
        int m792519 = AbstractC3740.m7925(m792515 + ((m792518 ^ m792517) ^ m792516), iArr[4], 1859775393, 11);
        int m792520 = AbstractC3740.m7925(m792516 + ((m792519 ^ m792518) ^ m792517), iArr[12], 1859775393, 15);
        int m792521 = AbstractC3740.m7925(m792517 + ((m792520 ^ m792519) ^ m792518), iArr[2], 1859775393, 3);
        int m792522 = AbstractC3740.m7925(m792518 + ((m792521 ^ m792520) ^ m792519), iArr[10], 1859775393, 9);
        int m792523 = AbstractC3740.m7925(m792519 + ((m792522 ^ m792521) ^ m792520), iArr[6], 1859775393, 11);
        int m792524 = AbstractC3740.m7925(m792520 + ((m792523 ^ m792522) ^ m792521), iArr[14], 1859775393, 15);
        int m792525 = AbstractC3740.m7925(m792521 + ((m792524 ^ m792523) ^ m792522), iArr[1], 1859775393, 3);
        int m792526 = AbstractC3740.m7925(m792522 + ((m792525 ^ m792524) ^ m792523), iArr[9], 1859775393, 9);
        int m792527 = AbstractC3740.m7925(m792523 + ((m792526 ^ m792525) ^ m792524), iArr[5], 1859775393, 11);
        int m792528 = AbstractC3740.m7925(m792524 + ((m792527 ^ m792526) ^ m792525), iArr[13], 1859775393, 15);
        int m792529 = AbstractC3740.m7925(m792525 + ((m792528 ^ m792527) ^ m792526), iArr[3], 1859775393, 3);
        int m792530 = AbstractC3740.m7925(m792526 + ((m792529 ^ m792528) ^ m792527), iArr[11], 1859775393, 9);
        int m792531 = AbstractC3740.m7925(m792527 + ((m792530 ^ m792529) ^ m792528), iArr[7], 1859775393, 11);
        int m792532 = AbstractC3740.m7925(m792528 + ((m792531 ^ m792530) ^ m792529), iArr[15], 1859775393, 15);
        this.f16120 += m792529;
        this.f16121 += m792532;
        this.f16124 += m792531;
        this.f16122 += m792530;
        this.f16119 = 0;
        for (int i5 = 0; i5 != iArr.length; i5++) {
            iArr[i5] = 0;
        }
    }
}
