package p354;

import p307.AbstractC3740;

/* renamed from: ᵔʿ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4331 extends AbstractC4334 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public int f16102;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f16103;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f16104;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public int f16105;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public int[] f16106;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f16107;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public static void m8759(byte[] bArr, int i, int i2) {
        bArr[i2] = (byte) i;
        bArr[i2 + 1] = (byte) (i >>> 8);
        bArr[i2 + 2] = (byte) (i >>> 16);
        bArr[i2 + 3] = (byte) (i >>> 24);
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static int m8760(int i, int i2, int i3) {
        return ((~i) & i3) | (i2 & i);
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static int m8761(int i, int i2, int i3) {
        return (i & i3) | (i2 & (~i3));
    }

    @Override // p354.AbstractC4334
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void mo8762() {
        super.mo8762();
        this.f16103 = 1732584193;
        this.f16104 = -271733879;
        this.f16107 = -1732584194;
        this.f16105 = 271733878;
        this.f16102 = 0;
        int i = 0;
        while (true) {
            int[] iArr = this.f16106;
            if (i == iArr.length) {
                return;
            }
            iArr[i] = 0;
            i++;
        }
    }

    @Override // p354.AbstractC4334
    /* renamed from: ʽ, reason: contains not printable characters */
    public final int mo8763(int i, byte[] bArr) {
        m8781();
        m8759(bArr, this.f16103, i);
        m8759(bArr, this.f16104, i + 4);
        m8759(bArr, this.f16107, i + 8);
        m8759(bArr, this.f16105, i + 12);
        mo8762();
        return 16;
    }

    @Override // p354.AbstractC4334
    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void mo8764(AbstractC4334 abstractC4334) {
        m8765((C4331) abstractC4334);
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final void m8765(C4331 c4331) {
        m8783(c4331);
        this.f16103 = c4331.f16103;
        this.f16104 = c4331.f16104;
        this.f16107 = c4331.f16107;
        this.f16105 = c4331.f16105;
        int[] iArr = c4331.f16106;
        System.arraycopy(iArr, 0, this.f16106, 0, iArr.length);
        this.f16102 = c4331.f16102;
    }

    @Override // p354.AbstractC4334
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int mo8766() {
        return 16;
    }

    @Override // p354.AbstractC4334
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void mo8767(long j) {
        if (this.f16102 > 14) {
            mo8770();
        }
        int[] iArr = this.f16106;
        iArr[14] = (int) j;
        iArr[15] = (int) (j >>> 32);
    }

    @Override // p354.AbstractC4334
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void mo8768(int i, byte[] bArr) {
        int[] iArr = this.f16106;
        int i2 = this.f16102;
        int i3 = i2 + 1;
        this.f16102 = i3;
        iArr[i2] = ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
        if (i3 == 16) {
            mo8770();
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [ᵔʿ.ʽ, ᵔʿ.ﹳٴ] */
    @Override // p354.AbstractC4334
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AbstractC4334 mo8769() {
        ?? abstractC4334 = new AbstractC4334(this);
        abstractC4334.f16106 = new int[16];
        abstractC4334.m8765(this);
        return abstractC4334;
    }

    @Override // p354.AbstractC4334
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void mo8770() {
        int i = this.f16103;
        int i2 = this.f16104;
        int i3 = this.f16107;
        int i4 = this.f16105;
        int m8760 = m8760(i2, i3, i4) + i;
        int[] iArr = this.f16106;
        int m7929 = AbstractC3740.m7929(m8760, iArr[0], -680876936, 7, i2);
        int m79292 = AbstractC3740.m7929(m8760(m7929, i2, i3) + i4, iArr[1], -389564586, 12, m7929);
        int m79293 = AbstractC3740.m7929(m8760(m79292, m7929, i2) + i3, iArr[2], 606105819, 17, m79292);
        int m79294 = AbstractC3740.m7929(m8760(m79293, m79292, m7929) + i2, iArr[3], -1044525330, 22, m79293);
        int m79295 = AbstractC3740.m7929(m8760(m79294, m79293, m79292) + m7929, iArr[4], -176418897, 7, m79294);
        int m79296 = AbstractC3740.m7929(m8760(m79295, m79294, m79293) + m79292, iArr[5], 1200080426, 12, m79295);
        int m79297 = AbstractC3740.m7929(m8760(m79296, m79295, m79294) + m79293, iArr[6], -1473231341, 17, m79296);
        int m79298 = AbstractC3740.m7929(m8760(m79297, m79296, m79295) + m79294, iArr[7], -45705983, 22, m79297);
        int m79299 = AbstractC3740.m7929(m8760(m79298, m79297, m79296) + m79295, iArr[8], 1770035416, 7, m79298);
        int m792910 = AbstractC3740.m7929(m8760(m79299, m79298, m79297) + m79296, iArr[9], -1958414417, 12, m79299);
        int m792911 = AbstractC3740.m7929(m8760(m792910, m79299, m79298) + m79297, iArr[10], -42063, 17, m792910);
        int m792912 = AbstractC3740.m7929(m8760(m792911, m792910, m79299) + m79298, iArr[11], -1990404162, 22, m792911);
        int m792913 = AbstractC3740.m7929(m8760(m792912, m792911, m792910) + m79299, iArr[12], 1804603682, 7, m792912);
        int m792914 = AbstractC3740.m7929(m8760(m792913, m792912, m792911) + m792910, iArr[13], -40341101, 12, m792913);
        int m792915 = AbstractC3740.m7929(m8760(m792914, m792913, m792912) + m792911, iArr[14], -1502002290, 17, m792914);
        int m792916 = AbstractC3740.m7929(m8760(m792915, m792914, m792913) + m792912, iArr[15], 1236535329, 22, m792915);
        int m792917 = AbstractC3740.m7929(m8761(m792916, m792915, m792914) + m792913, iArr[1], -165796510, 5, m792916);
        int m792918 = AbstractC3740.m7929(m8761(m792917, m792916, m792915) + m792914, iArr[6], -1069501632, 9, m792917);
        int m792919 = AbstractC3740.m7929(m8761(m792918, m792917, m792916) + m792915, iArr[11], 643717713, 14, m792918);
        int m792920 = AbstractC3740.m7929(m8761(m792919, m792918, m792917) + m792916, iArr[0], -373897302, 20, m792919);
        int m792921 = AbstractC3740.m7929(m8761(m792920, m792919, m792918) + m792917, iArr[5], -701558691, 5, m792920);
        int m792922 = AbstractC3740.m7929(m8761(m792921, m792920, m792919) + m792918, iArr[10], 38016083, 9, m792921);
        int m792923 = AbstractC3740.m7929(m8761(m792922, m792921, m792920) + m792919, iArr[15], -660478335, 14, m792922);
        int m792924 = AbstractC3740.m7929(m8761(m792923, m792922, m792921) + m792920, iArr[4], -405537848, 20, m792923);
        int m792925 = AbstractC3740.m7929(m8761(m792924, m792923, m792922) + m792921, iArr[9], 568446438, 5, m792924);
        int m792926 = AbstractC3740.m7929(m8761(m792925, m792924, m792923) + m792922, iArr[14], -1019803690, 9, m792925);
        int m792927 = AbstractC3740.m7929(m8761(m792926, m792925, m792924) + m792923, iArr[3], -187363961, 14, m792926);
        int m792928 = AbstractC3740.m7929(m8761(m792927, m792926, m792925) + m792924, iArr[8], 1163531501, 20, m792927);
        int m792929 = AbstractC3740.m7929(m8761(m792928, m792927, m792926) + m792925, iArr[13], -1444681467, 5, m792928);
        int m792930 = AbstractC3740.m7929(m8761(m792929, m792928, m792927) + m792926, iArr[2], -51403784, 9, m792929);
        int m792931 = AbstractC3740.m7929(m8761(m792930, m792929, m792928) + m792927, iArr[7], 1735328473, 14, m792930);
        int m792932 = AbstractC3740.m7929(m8761(m792931, m792930, m792929) + m792928, iArr[12], -1926607734, 20, m792931);
        int m792933 = AbstractC3740.m7929(m792929 + ((m792932 ^ m792931) ^ m792930), iArr[5], -378558, 4, m792932);
        int m792934 = AbstractC3740.m7929(m792930 + ((m792933 ^ m792932) ^ m792931), iArr[8], -2022574463, 11, m792933);
        int m792935 = AbstractC3740.m7929(m792931 + ((m792934 ^ m792933) ^ m792932), iArr[11], 1839030562, 16, m792934);
        int m792936 = AbstractC3740.m7929(m792932 + ((m792935 ^ m792934) ^ m792933), iArr[14], -35309556, 23, m792935);
        int m792937 = AbstractC3740.m7929(m792933 + ((m792936 ^ m792935) ^ m792934), iArr[1], -1530992060, 4, m792936);
        int m792938 = AbstractC3740.m7929(m792934 + ((m792937 ^ m792936) ^ m792935), iArr[4], 1272893353, 11, m792937);
        int m792939 = AbstractC3740.m7929(m792935 + ((m792938 ^ m792937) ^ m792936), iArr[7], -155497632, 16, m792938);
        int m792940 = AbstractC3740.m7929(m792936 + ((m792939 ^ m792938) ^ m792937), iArr[10], -1094730640, 23, m792939);
        int m792941 = AbstractC3740.m7929(m792937 + ((m792940 ^ m792939) ^ m792938), iArr[13], 681279174, 4, m792940);
        int m792942 = AbstractC3740.m7929(m792938 + ((m792941 ^ m792940) ^ m792939), iArr[0], -358537222, 11, m792941);
        int m792943 = AbstractC3740.m7929(m792939 + ((m792942 ^ m792941) ^ m792940), iArr[3], -722521979, 16, m792942);
        int m792944 = AbstractC3740.m7929(m792940 + ((m792943 ^ m792942) ^ m792941), iArr[6], 76029189, 23, m792943);
        int m792945 = AbstractC3740.m7929(m792941 + ((m792944 ^ m792943) ^ m792942), iArr[9], -640364487, 4, m792944);
        int m792946 = AbstractC3740.m7929(m792942 + ((m792945 ^ m792944) ^ m792943), iArr[12], -421815835, 11, m792945);
        int m792947 = AbstractC3740.m7929(m792943 + ((m792946 ^ m792945) ^ m792944), iArr[15], 530742520, 16, m792946);
        int m792948 = AbstractC3740.m7929(m792944 + ((m792947 ^ m792946) ^ m792945), iArr[2], -995338651, 23, m792947);
        int m792949 = AbstractC3740.m7929(m792945 + (((~m792946) | m792948) ^ m792947), iArr[0], -198630844, 6, m792948);
        int m792950 = AbstractC3740.m7929(m792946 + (((~m792947) | m792949) ^ m792948), iArr[7], 1126891415, 10, m792949);
        int m792951 = AbstractC3740.m7929(m792947 + (((~m792948) | m792950) ^ m792949), iArr[14], -1416354905, 15, m792950);
        int m792952 = AbstractC3740.m7929(m792948 + (((~m792949) | m792951) ^ m792950), iArr[5], -57434055, 21, m792951);
        int m792953 = AbstractC3740.m7929(m792949 + (((~m792950) | m792952) ^ m792951), iArr[12], 1700485571, 6, m792952);
        int m792954 = AbstractC3740.m7929(m792950 + (((~m792951) | m792953) ^ m792952), iArr[3], -1894986606, 10, m792953);
        int m792955 = AbstractC3740.m7929(m792951 + (((~m792952) | m792954) ^ m792953), iArr[10], -1051523, 15, m792954);
        int m792956 = AbstractC3740.m7929(m792952 + (((~m792953) | m792955) ^ m792954), iArr[1], -2054922799, 21, m792955);
        int m792957 = AbstractC3740.m7929(m792953 + (((~m792954) | m792956) ^ m792955), iArr[8], 1873313359, 6, m792956);
        int m792958 = AbstractC3740.m7929(m792954 + (((~m792955) | m792957) ^ m792956), iArr[15], -30611744, 10, m792957);
        int m792959 = AbstractC3740.m7929(m792955 + (((~m792956) | m792958) ^ m792957), iArr[6], -1560198380, 15, m792958);
        int m792960 = AbstractC3740.m7929(m792956 + (((~m792957) | m792959) ^ m792958), iArr[13], 1309151649, 21, m792959);
        int m792961 = AbstractC3740.m7929(m792957 + (((~m792958) | m792960) ^ m792959), iArr[4], -145523070, 6, m792960);
        int m792962 = AbstractC3740.m7929(m792958 + (((~m792959) | m792961) ^ m792960), iArr[11], -1120210379, 10, m792961);
        int m792963 = AbstractC3740.m7929(m792959 + (((~m792960) | m792962) ^ m792961), iArr[2], 718787259, 15, m792962);
        int m792964 = AbstractC3740.m7929(m792960 + (((~m792961) | m792963) ^ m792962), iArr[9], -343485551, 21, m792963);
        this.f16103 += m792961;
        this.f16104 += m792964;
        this.f16107 += m792963;
        this.f16105 += m792962;
        this.f16102 = 0;
        for (int i5 = 0; i5 != iArr.length; i5++) {
            iArr[i5] = 0;
        }
    }
}
