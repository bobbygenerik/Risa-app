package p213;

import androidx.media3.common.ParserException;
import com.parse.ʽˑ;
import java.util.ArrayList;
import java.util.Arrays;
import p012.C0881;
import p012.C0894;
import p017.AbstractC0993;
import p055.AbstractC1464;
import p055.C1476;
import p055.C1490;
import p055.C1495;
import p171.AbstractC2649;
import p171.C2620;
import p305.AbstractC3731;
import p305.C3732;
import ˉˆ.ʿ;
import ﹶﾞ.ⁱי;

/* renamed from: ˏʻ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2998 extends AbstractC3003 {

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public boolean f11439;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public int f11440;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public ʽˑ f11441;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public C2620 f11442;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public ʿ f11443;

    /* JADX WARN: Type inference failed for: r1v59, types: [byte[], java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r8v8, types: [java.lang.Object, ˊﾞ.ʼʼ] */
    @Override // p213.AbstractC3003
    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean mo6531(C3732 c3732, long j, ⁱי r28) {
        ʽˑ r8;
        if (this.f11441 != null) {
            ((C1495) r28.ᴵˊ).getClass();
            return false;
        }
        C2620 c2620 = this.f11442;
        int i = 4;
        if (c2620 == null) {
            AbstractC2649.m5908(1, c3732, false);
            c3732.m7902();
            int m7874 = c3732.m7874();
            int m7902 = c3732.m7902();
            int m7884 = c3732.m7884();
            if (m7884 <= 0) {
                m7884 = -1;
            }
            int m78842 = c3732.m7884();
            int i2 = m78842 > 0 ? m78842 : -1;
            c3732.m7884();
            int m78742 = c3732.m7874();
            int pow = (int) Math.pow(2.0d, m78742 & 15);
            int pow2 = (int) Math.pow(2.0d, (m78742 & 240) >> 4);
            c3732.m7874();
            ?? copyOf = Arrays.copyOf(c3732.f14534, c3732.f14532);
            ?? obj = new Object();
            obj.f9930 = m7874;
            obj.f9929 = m7902;
            obj.f9925 = m7884;
            obj.f9926 = i2;
            obj.f9927 = pow;
            obj.f9931 = pow2;
            obj.f9928 = copyOf;
            this.f11442 = obj;
        } else {
            ʿ r7 = this.f11443;
            if (r7 == null) {
                this.f11443 = AbstractC2649.m5903(c3732, true, true);
            } else {
                int i3 = c3732.f14532;
                byte[] bArr = new byte[i3];
                System.arraycopy(c3732.f14534, 0, bArr, 0, i3);
                int i4 = c2620.f9930;
                int i5 = 5;
                AbstractC2649.m5908(5, c3732, false);
                int m78743 = c3732.m7874() + 1;
                C0881 c0881 = new C0881(c3732.f14534);
                int i6 = 8;
                c0881.m3095(c3732.f14533 * 8);
                int i7 = 0;
                while (true) {
                    int i8 = 16;
                    if (i7 < m78743) {
                        int i9 = i6;
                        if (c0881.m3097(24) != 5653314) {
                            throw ParserException.m741(null, "expected code book to start with [0x56, 0x43, 0x42] at " + ((c0881.f3736 * 8) + c0881.f3737));
                        }
                        int m3097 = c0881.m3097(16);
                        int m30972 = c0881.m3097(24);
                        if (c0881.m3112()) {
                            c0881.m3095(i5);
                            int i10 = 0;
                            while (i10 < m30972) {
                                int i11 = 0;
                                for (int i12 = m30972 - i10; i12 > 0; i12 >>>= 1) {
                                    i11++;
                                }
                                i10 += c0881.m3097(i11);
                            }
                        } else {
                            boolean m3112 = c0881.m3112();
                            for (int i13 = 0; i13 < m30972; i13++) {
                                if (!m3112) {
                                    c0881.m3095(i5);
                                } else if (c0881.m3112()) {
                                    c0881.m3095(i5);
                                }
                            }
                        }
                        int m30973 = c0881.m3097(4);
                        if (m30973 > 2) {
                            throw ParserException.m741(null, "lookup type greater than 2 not decodable: " + m30973);
                        }
                        if (m30973 == 1 || m30973 == 2) {
                            c0881.m3095(32);
                            c0881.m3095(32);
                            int m30974 = c0881.m3097(4) + 1;
                            c0881.m3095(1);
                            c0881.m3095((int) ((m30973 == 1 ? m3097 != 0 ? (long) Math.floor(Math.pow(m30972, 1.0d / m3097)) : 0L : m30972 * m3097) * m30974));
                        }
                        i7++;
                        i6 = i9;
                        i5 = 5;
                    } else {
                        int i14 = i6;
                        int i15 = 6;
                        int m30975 = c0881.m3097(6) + 1;
                        for (int i16 = 0; i16 < m30975; i16++) {
                            if (c0881.m3097(16) != 0) {
                                throw ParserException.m741(null, "placeholder of time domain transforms not zeroed out");
                            }
                        }
                        int i17 = 1;
                        int m30976 = c0881.m3097(6) + 1;
                        int i18 = 0;
                        while (true) {
                            int i19 = 3;
                            if (i18 < m30976) {
                                int m30977 = c0881.m3097(i8);
                                if (m30977 == 0) {
                                    int i20 = i14;
                                    c0881.m3095(i20);
                                    c0881.m3095(16);
                                    c0881.m3095(16);
                                    c0881.m3095(6);
                                    c0881.m3095(i20);
                                    int m30978 = c0881.m3097(4) + 1;
                                    int i21 = 0;
                                    while (i21 < m30978) {
                                        c0881.m3095(i20);
                                        i21++;
                                        i20 = 8;
                                    }
                                } else {
                                    if (m30977 != i17) {
                                        throw ParserException.m741(null, "floor type greater than 1 not decodable: " + m30977);
                                    }
                                    int m30979 = c0881.m3097(5);
                                    int[] iArr = new int[m30979];
                                    int i22 = -1;
                                    for (int i23 = 0; i23 < m30979; i23++) {
                                        int m309710 = c0881.m3097(i);
                                        iArr[i23] = m309710;
                                        if (m309710 > i22) {
                                            i22 = m309710;
                                        }
                                    }
                                    int i24 = i22 + 1;
                                    int[] iArr2 = new int[i24];
                                    int i25 = 0;
                                    while (i25 < i24) {
                                        iArr2[i25] = c0881.m3097(i19) + 1;
                                        int m309711 = c0881.m3097(2);
                                        int i26 = i14;
                                        if (m309711 > 0) {
                                            c0881.m3095(i26);
                                        }
                                        int[] iArr3 = iArr2;
                                        int i27 = 0;
                                        for (int i28 = 1; i27 < (i28 << m309711); i28 = 1) {
                                            c0881.m3095(i26);
                                            i27++;
                                            i26 = 8;
                                        }
                                        i25++;
                                        iArr2 = iArr3;
                                        i14 = 8;
                                        i19 = 3;
                                    }
                                    int[] iArr4 = iArr2;
                                    c0881.m3095(2);
                                    int m309712 = c0881.m3097(4);
                                    int i29 = 0;
                                    int i30 = 0;
                                    for (int i31 = 0; i31 < m30979; i31++) {
                                        i29 += iArr4[iArr[i31]];
                                        while (i30 < i29) {
                                            c0881.m3095(m309712);
                                            i30++;
                                        }
                                    }
                                }
                                i18++;
                                i14 = 8;
                                i15 = 6;
                                i = 4;
                                i8 = 16;
                                i17 = 1;
                            } else {
                                int m309713 = c0881.m3097(i15) + 1;
                                int i32 = 0;
                                while (i32 < m309713) {
                                    if (c0881.m3097(16) > 2) {
                                        throw ParserException.m741(null, "residueType greater than 2 is not decodable");
                                    }
                                    c0881.m3095(24);
                                    c0881.m3095(24);
                                    c0881.m3095(24);
                                    int m309714 = c0881.m3097(i15) + 1;
                                    int i33 = 8;
                                    c0881.m3095(8);
                                    int[] iArr5 = new int[m309714];
                                    for (int i34 = 0; i34 < m309714; i34++) {
                                        iArr5[i34] = ((c0881.m3112() ? c0881.m3097(5) : 0) * 8) + c0881.m3097(3);
                                    }
                                    int i35 = 0;
                                    while (i35 < m309714) {
                                        int i36 = 0;
                                        while (i36 < i33) {
                                            if ((iArr5[i35] & (1 << i36)) != 0) {
                                                c0881.m3095(i33);
                                            }
                                            i36++;
                                            i33 = 8;
                                        }
                                        i35++;
                                        i33 = 8;
                                    }
                                    i32++;
                                    i15 = 6;
                                }
                                int m309715 = c0881.m3097(i15) + 1;
                                for (int i37 = 0; i37 < m309715; i37++) {
                                    int m309716 = c0881.m3097(16);
                                    if (m309716 != 0) {
                                        AbstractC3731.m7842("VorbisUtil", "mapping type other than 0 not supported: " + m309716);
                                    } else {
                                        int m309717 = c0881.m3112() ? c0881.m3097(4) + 1 : 1;
                                        if (c0881.m3112()) {
                                            int m309718 = c0881.m3097(8) + 1;
                                            for (int i38 = 0; i38 < m309718; i38++) {
                                                int i39 = i4 - 1;
                                                int i40 = 0;
                                                for (int i41 = i39; i41 > 0; i41 >>>= 1) {
                                                    i40++;
                                                }
                                                c0881.m3095(i40);
                                                int i42 = 0;
                                                while (i39 > 0) {
                                                    i42++;
                                                    i39 >>>= 1;
                                                }
                                                c0881.m3095(i42);
                                            }
                                        }
                                        if (c0881.m3097(2) != 0) {
                                            throw ParserException.m741(null, "to reserved bits must be zero after mapping coupling steps");
                                        }
                                        if (m309717 > 1) {
                                            for (int i43 = 0; i43 < i4; i43++) {
                                                c0881.m3095(4);
                                            }
                                        }
                                        for (int i44 = 0; i44 < m309717; i44++) {
                                            c0881.m3095(8);
                                            c0881.m3095(8);
                                            c0881.m3095(8);
                                        }
                                    }
                                }
                                int m309719 = c0881.m3097(6);
                                int i45 = m309719 + 1;
                                C0894[] c0894Arr = new C0894[i45];
                                for (int i46 = 0; i46 < i45; i46++) {
                                    boolean m31122 = c0881.m3112();
                                    c0881.m3097(16);
                                    c0881.m3097(16);
                                    c0881.m3097(8);
                                    c0894Arr[i46] = new C0894(m31122);
                                }
                                if (!c0881.m3112()) {
                                    throw ParserException.m741(null, "framing bit after modes not set as expected");
                                }
                                int i47 = 0;
                                while (m309719 > 0) {
                                    i47++;
                                    m309719 >>>= 1;
                                }
                                r8 = new ʽˑ(c2620, r7, bArr, c0894Arr, i47);
                            }
                        }
                    }
                }
            }
        }
        r8 = null;
        this.f11441 = r8;
        if (r8 == null) {
            return true;
        }
        C2620 c26202 = (C2620) r8.ʽʽ;
        ArrayList arrayList = new ArrayList();
        arrayList.add((byte[]) c26202.f9928);
        arrayList.add((byte[]) r8.ᴵᵔ);
        C1476 m5907 = AbstractC2649.m5907(AbstractC0993.m3267((String[]) ((ʿ) r8.ˈٴ).ᴵˊ));
        C1490 c1490 = new C1490();
        c1490.f5886 = AbstractC1464.m4251("audio/ogg");
        c1490.f5861 = AbstractC1464.m4251("audio/vorbis");
        c1490.f5880 = c26202.f9926;
        c1490.f5850 = c26202.f9925;
        c1490.f5873 = c26202.f9930;
        c1490.f5864 = c26202.f9929;
        c1490.f5851 = arrayList;
        c1490.f5871 = m5907;
        r28.ᴵˊ = new C1495(c1490);
        return true;
    }

    @Override // p213.AbstractC3003
    /* renamed from: ˈ, reason: contains not printable characters */
    public final void mo6532(boolean z) {
        super.mo6532(z);
        if (z) {
            this.f11441 = null;
            this.f11442 = null;
            this.f11443 = null;
        }
        this.f11440 = 0;
        this.f11439 = false;
    }

    @Override // p213.AbstractC3003
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final long mo6533(C3732 c3732) {
        byte b = c3732.f14534[0];
        if ((b & 1) == 1) {
            return -1L;
        }
        ʽˑ r2 = this.f11441;
        AbstractC3731.m7868(r2);
        int i = r2.ᴵˊ;
        C2620 c2620 = (C2620) r2.ʽʽ;
        int i2 = !((C0894[]) r2.ˊʻ)[(b >> 1) & (255 >>> (8 - i))].f3768 ? c2620.f9927 : c2620.f9931;
        long j = this.f11439 ? (this.f11440 + i2) / 4 : 0;
        byte[] bArr = c3732.f14534;
        int length = bArr.length;
        int i3 = c3732.f14532 + 4;
        if (length < i3) {
            byte[] copyOf = Arrays.copyOf(bArr, i3);
            c3732.m7897(copyOf.length, copyOf);
        } else {
            c3732.m7891(i3);
        }
        byte[] bArr2 = c3732.f14534;
        int i4 = c3732.f14532;
        bArr2[i4 - 4] = (byte) (j & 255);
        bArr2[i4 - 3] = (byte) ((j >>> 8) & 255);
        bArr2[i4 - 2] = (byte) ((j >>> 16) & 255);
        bArr2[i4 - 1] = (byte) ((j >>> 24) & 255);
        this.f11439 = true;
        this.f11440 = i2;
        return j;
    }

    @Override // p213.AbstractC3003
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void mo6534(long j) {
        this.f11464 = j;
        this.f11439 = j != 0;
        C2620 c2620 = this.f11442;
        this.f11440 = c2620 != null ? c2620.f9927 : 0;
    }
}
