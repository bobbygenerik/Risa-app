package p460;

import java.security.DigestException;
import java.security.MessageDigest;
import p035.AbstractC1220;

/* renamed from: ﾞᐧ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5413 extends MessageDigest {

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f20673;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f20674;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public long f20675;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f20676;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int f20677;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final byte[] f20678;

    public C5413() {
        super("MD4");
        this.f20677 = 1732584193;
        this.f20676 = -271733879;
        this.f20673 = -1732584194;
        this.f20674 = 271733878;
        this.f20678 = new byte[64];
    }

    @Override // java.security.MessageDigestSpi
    public final int engineDigest(byte[] bArr, int i, int i2) {
        if (i < 0 || i + i2 >= bArr.length) {
            throw new DigestException("Wrong offset or not enough space to store the digest");
        }
        int min = Math.min(i2, 16);
        System.arraycopy(engineDigest(), 0, bArr, i, min);
        return min;
    }

    @Override // java.security.MessageDigestSpi
    public final byte[] engineDigest() {
        long j = this.f20675;
        int i = (int) (j % 64);
        int i2 = i < 56 ? 64 - i : 128 - i;
        byte[] bArr = new byte[i2];
        bArr[0] = Byte.MIN_VALUE;
        long j2 = j << 3;
        int i3 = i2 - 8;
        int i4 = 0;
        while (i4 < 8) {
            bArr[i3] = (byte) (j2 >>> (i4 << 3));
            i4++;
            i3++;
        }
        engineUpdate(bArr, 0, i2);
        int i5 = this.f20677;
        int i6 = this.f20676;
        int i7 = this.f20673;
        int i8 = this.f20674;
        byte[] bArr2 = {(byte) i5, (byte) (i5 >>> 8), (byte) (i5 >>> 16), (byte) (i5 >>> 24), (byte) i6, (byte) (i6 >>> 8), (byte) (i6 >>> 16), (byte) (i6 >>> 24), (byte) i7, (byte) (i7 >>> 8), (byte) (i7 >>> 16), (byte) (i7 >>> 24), (byte) i8, (byte) (i8 >>> 8), (byte) (i8 >>> 16), (byte) (i8 >>> 24)};
        engineReset();
        return bArr2;
    }

    @Override // java.security.MessageDigestSpi
    public final int engineGetDigestLength() {
        return 16;
    }

    @Override // java.security.MessageDigestSpi
    public final void engineReset() {
        this.f20677 = 1732584193;
        this.f20676 = -271733879;
        this.f20673 = -1732584194;
        this.f20674 = 271733878;
        this.f20675 = 0L;
    }

    @Override // java.security.MessageDigestSpi
    public final void engineUpdate(byte b) {
        long j = this.f20675;
        int i = (int) (j % 64);
        byte[] bArr = this.f20678;
        bArr[i] = b;
        this.f20675 = j + 1;
        if (i == 63) {
            m10847(0, bArr);
        }
    }

    @Override // java.security.MessageDigestSpi
    public final void engineUpdate(byte[] bArr, int i, int i2) {
        long j = this.f20675;
        int i3 = (int) (j % 64);
        int i4 = 64 - i3;
        this.f20675 = j + i2;
        byte[] bArr2 = this.f20678;
        int i5 = 0;
        if (i2 >= i4) {
            System.arraycopy(bArr, i, bArr2, i3, i4);
            m10847(0, bArr2);
            while (true) {
                int i6 = i4 + 64;
                if (i4 + 63 >= i2) {
                    break;
                }
                m10847(i4 + i, bArr);
                i4 = i6;
            }
            i3 = 0;
            i5 = i4;
        }
        if (i5 < i2) {
            System.arraycopy(bArr, i + i5, bArr2, i3, i2 - i5);
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m10847(int i, byte[] bArr) {
        int i2 = this.f20677;
        int i3 = this.f20676;
        int i4 = this.f20673;
        int i5 = this.f20674;
        int[] iArr = new int[16];
        int i6 = i;
        for (int i7 = 0; i7 < 16; i7++) {
            int i8 = i6 + 3;
            int i9 = ((bArr[i6 + 1] & 255) << 8) | (bArr[i6] & 255) | ((bArr[i6 + 2] & 255) << 16);
            i6 += 4;
            iArr[i7] = i9 | ((bArr[i8] & 255) << 24);
        }
        int i10 = this.f20677;
        int i11 = this.f20676;
        int i12 = this.f20673;
        int i13 = ~i11;
        int i14 = this.f20674;
        int i15 = iArr[0];
        int i16 = ((i11 & i12) | (i13 & i14)) + i15 + i10;
        int i17 = (i16 << 3) | (i16 >>> 29);
        int i18 = (i17 & i11) | ((~i17) & i12);
        int i19 = iArr[1];
        int i20 = i18 + i19 + i14;
        int i21 = (i20 >>> 25) | (i20 << 7);
        int i22 = (i21 & i17) | ((~i21) & i11);
        int i23 = iArr[2];
        int i24 = i22 + i23 + i12;
        int i25 = (i24 << 11) | (i24 >>> 21);
        int i26 = (i25 & i21) | ((~i25) & i17);
        int i27 = iArr[3];
        int i28 = i26 + i27 + i11;
        int i29 = (i28 << 19) | (i28 >>> 13);
        int i30 = ((~i29) & i21) | (i29 & i25);
        int i31 = iArr[4];
        int i32 = i30 + i31 + i17;
        int i33 = (i32 << 3) | (i32 >>> 29);
        int i34 = ((~i33) & i25) | (i33 & i29);
        int i35 = iArr[5];
        int i36 = i34 + i35 + i21;
        int i37 = (i36 >>> 25) | (i36 << 7);
        int i38 = ((~i37) & i29) | (i37 & i33);
        int i39 = iArr[6];
        int i40 = i38 + i39 + i25;
        int i41 = (i40 >>> 21) | (i40 << 11);
        int i42 = ((~i41) & i33) | (i41 & i37);
        int i43 = iArr[7];
        int i44 = i42 + i43 + i29;
        int i45 = (i44 >>> 13) | (i44 << 19);
        int i46 = ((~i45) & i37) | (i45 & i41);
        int i47 = iArr[8];
        int i48 = i46 + i47 + i33;
        int i49 = (i48 >>> 29) | (i48 << 3);
        int i50 = ((~i49) & i41) | (i49 & i45);
        int i51 = iArr[9];
        int i52 = i50 + i51 + i37;
        int i53 = (i52 << 7) | (i52 >>> 25);
        int i54 = (i53 & i49) | ((~i53) & i45);
        int i55 = iArr[10];
        int i56 = i54 + i55 + i41;
        int i57 = (i56 << 11) | (i56 >>> 21);
        int i58 = (i57 & i53) | ((~i57) & i49);
        int i59 = iArr[11];
        int i60 = i58 + i59 + i45;
        int i61 = (i60 << 19) | (i60 >>> 13);
        int i62 = (i61 & i57) | ((~i61) & i53);
        int i63 = iArr[12];
        int i64 = i62 + i63 + i49;
        int i65 = (i64 << 3) | (i64 >>> 29);
        int i66 = (i65 & i61) | ((~i65) & i57);
        int i67 = iArr[13];
        int i68 = i66 + i67 + i53;
        int i69 = (i68 << 7) | (i68 >>> 25);
        int i70 = (i69 & i65) | ((~i69) & i61);
        int i71 = iArr[14];
        int i72 = i70 + i71 + i57;
        int i73 = (i72 << 11) | (i72 >>> 21);
        int i74 = (i73 & i69) | ((~i73) & i65);
        int i75 = iArr[15];
        int i76 = i74 + i75 + i61;
        int i77 = (i76 << 19) | (i76 >>> 13);
        int m3796 = AbstractC1220.m3796((i77 & (i73 | i69)) | (i73 & i69), i15, 1518500249, i65);
        int i78 = (m3796 >>> 29) | (m3796 << 3);
        int m37962 = AbstractC1220.m3796(((i77 | i73) & i78) | (i77 & i73), i31, 1518500249, i69);
        int i79 = (m37962 >>> 27) | (m37962 << 5);
        int m37963 = AbstractC1220.m3796(((i78 | i77) & i79) | (i78 & i77), i47, 1518500249, i73);
        int i80 = (m37963 >>> 23) | (m37963 << 9);
        int m37964 = AbstractC1220.m3796(((i79 | i78) & i80) | (i79 & i78), i63, 1518500249, i77);
        int i81 = (m37964 >>> 19) | (m37964 << 13);
        int m37965 = AbstractC1220.m3796(((i80 | i79) & i81) | (i80 & i79), i19, 1518500249, i78);
        int i82 = (m37965 >>> 29) | (m37965 << 3);
        int m37966 = AbstractC1220.m3796(((i81 | i80) & i82) | (i81 & i80), i35, 1518500249, i79);
        int i83 = (m37966 >>> 27) | (m37966 << 5);
        int m37967 = AbstractC1220.m3796(((i82 | i81) & i83) | (i82 & i81), i51, 1518500249, i80);
        int i84 = (m37967 >>> 23) | (m37967 << 9);
        int m37968 = AbstractC1220.m3796(((i83 | i82) & i84) | (i83 & i82), i67, 1518500249, i81);
        int i85 = (m37968 >>> 19) | (m37968 << 13);
        int m37969 = AbstractC1220.m3796(((i84 | i83) & i85) | (i84 & i83), i23, 1518500249, i82);
        int i86 = (m37969 >>> 29) | (m37969 << 3);
        int m379610 = AbstractC1220.m3796(((i85 | i84) & i86) | (i85 & i84), i39, 1518500249, i83);
        int i87 = (m379610 >>> 27) | (m379610 << 5);
        int m379611 = AbstractC1220.m3796(((i86 | i85) & i87) | (i86 & i85), i55, 1518500249, i84);
        int i88 = (m379611 >>> 23) | (m379611 << 9);
        int m379612 = AbstractC1220.m3796(((i87 | i86) & i88) | (i87 & i86), i71, 1518500249, i85);
        int i89 = (m379612 >>> 19) | (m379612 << 13);
        int m379613 = AbstractC1220.m3796(((i88 | i87) & i89) | (i88 & i87), i27, 1518500249, i86);
        int i90 = (m379613 >>> 29) | (m379613 << 3);
        int m379614 = AbstractC1220.m3796(((i89 | i88) & i90) | (i89 & i88), i43, 1518500249, i87);
        int i91 = (m379614 >>> 27) | (m379614 << 5);
        int m379615 = AbstractC1220.m3796(((i90 | i89) & i91) | (i90 & i89), i59, 1518500249, i88);
        int i92 = (m379615 >>> 23) | (m379615 << 9);
        int m379616 = AbstractC1220.m3796(((i91 | i90) & i92) | (i91 & i90), i75, 1518500249, i89);
        int i93 = (m379616 >>> 19) | (m379616 << 13);
        int m379617 = AbstractC1220.m3796((i93 ^ i92) ^ i91, i15, 1859775393, i90);
        int i94 = (m379617 >>> 29) | (m379617 << 3);
        int m379618 = AbstractC1220.m3796((i94 ^ i93) ^ i92, i47, 1859775393, i91);
        int i95 = (m379618 >>> 23) | (m379618 << 9);
        int m379619 = AbstractC1220.m3796((i95 ^ i94) ^ i93, i31, 1859775393, i92);
        int i96 = (m379619 >>> 21) | (m379619 << 11);
        int m379620 = AbstractC1220.m3796((i96 ^ i95) ^ i94, i63, 1859775393, i93);
        int i97 = (m379620 >>> 17) | (m379620 << 15);
        int m379621 = AbstractC1220.m3796((i97 ^ i96) ^ i95, i23, 1859775393, i94);
        int i98 = (m379621 >>> 29) | (m379621 << 3);
        int m379622 = AbstractC1220.m3796((i98 ^ i97) ^ i96, i55, 1859775393, i95);
        int i99 = (m379622 >>> 23) | (m379622 << 9);
        int m379623 = AbstractC1220.m3796((i99 ^ i98) ^ i97, i39, 1859775393, i96);
        int i100 = (m379623 >>> 21) | (m379623 << 11);
        int m379624 = AbstractC1220.m3796((i100 ^ i99) ^ i98, i71, 1859775393, i97);
        int i101 = (m379624 >>> 17) | (m379624 << 15);
        int m379625 = AbstractC1220.m3796((i101 ^ i100) ^ i99, i19, 1859775393, i98);
        int i102 = (m379625 >>> 29) | (m379625 << 3);
        int m379626 = AbstractC1220.m3796((i102 ^ i101) ^ i100, i51, 1859775393, i99);
        int i103 = (m379626 >>> 23) | (m379626 << 9);
        int m379627 = AbstractC1220.m3796((i103 ^ i102) ^ i101, i35, 1859775393, i100);
        int i104 = (m379627 >>> 21) | (m379627 << 11);
        int m379628 = AbstractC1220.m3796((i104 ^ i103) ^ i102, i67, 1859775393, i101);
        int i105 = (m379628 >>> 17) | (m379628 << 15);
        int m379629 = AbstractC1220.m3796((i105 ^ i104) ^ i103, i27, 1859775393, i102);
        int i106 = (m379629 >>> 29) | (m379629 << 3);
        int m379630 = AbstractC1220.m3796((i106 ^ i105) ^ i104, i59, 1859775393, i103);
        int i107 = (m379630 >>> 23) | (m379630 << 9);
        int m379631 = AbstractC1220.m3796((i107 ^ i106) ^ i105, i43, 1859775393, i104);
        int i108 = (m379631 >>> 21) | (m379631 << 11);
        int m379632 = AbstractC1220.m3796((i108 ^ i107) ^ i106, i75, 1859775393, i105);
        this.f20677 = i106 + i2;
        this.f20676 = ((m379632 >>> 17) | (m379632 << 15)) + i3;
        this.f20673 = i108 + i4;
        this.f20674 = i107 + i5;
    }
}
