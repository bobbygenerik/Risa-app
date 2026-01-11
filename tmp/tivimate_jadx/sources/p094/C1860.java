package p094;

import com.google.android.gms.internal.measurement.ˏʻ;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;
import p012.C0881;
import p017.AbstractC0993;
import p017.C0956;
import p017.C0968;
import p055.AbstractC1464;
import p055.C1476;
import p062.C1560;
import p112.C1962;
import p305.AbstractC3712;
import p305.C3732;
import ˈˋ.ʾˊ;

/* renamed from: ˆʻ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1860 extends ʾˊ {

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C1560 f7471 = new C1560(4);

    /* renamed from: ʽ, reason: contains not printable characters */
    public final InterfaceC1869 f7472;

    public C1860(InterfaceC1869 interfaceC1869) {
        this.f7472 = interfaceC1869;
    }

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public static String m4787(byte[] bArr, int i, int i2, Charset charset) {
        return (i2 <= i || i2 > bArr.length) ? "" : new String(bArr, i, i2 - i, charset);
    }

    /* renamed from: ʿ, reason: contains not printable characters */
    public static int m4788(int i) {
        return (i == 0 || i == 3) ? 1 : 2;
    }

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public static Charset m4789(int i) {
        return i != 1 ? i != 2 ? i != 3 ? StandardCharsets.ISO_8859_1 : StandardCharsets.UTF_8 : StandardCharsets.UTF_16BE : StandardCharsets.UTF_16;
    }

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public static C1864 m4790(C3732 c3732, int i, int i2, boolean z, int i3, InterfaceC1869 interfaceC1869) {
        int i4 = c3732.f14533;
        int m4799 = m4799(i4, c3732.f14534);
        String str = new String(c3732.f14534, i4, m4799 - i4, StandardCharsets.ISO_8859_1);
        c3732.m7896(m4799 + 1);
        int m7874 = c3732.m7874();
        boolean z2 = (m7874 & 2) != 0;
        boolean z3 = (m7874 & 1) != 0;
        int m78742 = c3732.m7874();
        String[] strArr = new String[m78742];
        for (int i5 = 0; i5 < m78742; i5++) {
            int i6 = c3732.f14533;
            int m47992 = m4799(i6, c3732.f14534);
            strArr[i5] = new String(c3732.f14534, i6, m47992 - i6, StandardCharsets.ISO_8859_1);
            c3732.m7896(m47992 + 1);
        }
        ArrayList arrayList = new ArrayList();
        int i7 = i4 + i;
        while (c3732.f14533 < i7) {
            AbstractC1863 m4791 = m4791(i2, c3732, z, i3, interfaceC1869);
            if (m4791 != null) {
                arrayList.add(m4791);
            }
        }
        return new C1864(str, z2, z3, strArr, (AbstractC1863[]) arrayList.toArray(new AbstractC1863[0]));
    }

    /* JADX WARN: Code restructure failed: missing block: B:156:0x01b2, code lost:
    
        if (r5 == 67) goto L142;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0251  */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2, types: [ˆʻ.ˆʾ] */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v2, types: [int] */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r1v27 */
    /* JADX WARN: Type inference failed for: r1v28, types: [ᐧˎ.ﹳᐧ] */
    /* JADX WARN: Type inference failed for: r1v29 */
    /* JADX WARN: Type inference failed for: r1v31 */
    /* JADX WARN: Type inference failed for: r1v35 */
    /* JADX WARN: Type inference failed for: r1v36 */
    /* JADX WARN: Type inference failed for: r1v37 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* renamed from: ˈʿ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p094.AbstractC1863 m4791(int r19, p305.C3732 r20, boolean r21, int r22, p094.InterfaceC1869 r23) {
        /*
            Method dump skipped, instructions count: 632
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p094.C1860.m4791(int, ᐧˎ.ﹳᐧ, boolean, int, ˆʻ.ᵎﹶ):ˆʻ.ˆʾ");
    }

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public static C1866 m4792(int i, C3732 c3732) {
        if (i < 1) {
            return null;
        }
        int m7874 = c3732.m7874();
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        c3732.m7875(bArr, 0, i2);
        int m4800 = m4800(bArr, 0, m7874);
        return new C1866("TXXX", new String(bArr, 0, m4800, m4789(m7874)), m4807(bArr, m7874, m4788(m7874) + m4800));
    }

    /* renamed from: ˉـ, reason: contains not printable characters */
    public static C1861 m4793(int i, C3732 c3732) {
        if (i < 1) {
            return null;
        }
        int m7874 = c3732.m7874();
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        c3732.m7875(bArr, 0, i2);
        int m4800 = m4800(bArr, 0, m7874);
        String str = new String(bArr, 0, m4800, m4789(m7874));
        int m4788 = m4788(m7874) + m4800;
        return new C1861("WXXX", str, m4787(bArr, m4788, m4799(m4788, bArr), StandardCharsets.ISO_8859_1));
    }

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public static C1870 m4794(int i, C3732 c3732) {
        byte[] bArr = new byte[i];
        c3732.m7875(bArr, 0, i);
        int m4799 = m4799(0, bArr);
        String str = new String(bArr, 0, m4799, StandardCharsets.ISO_8859_1);
        int i2 = m4799 + 1;
        return new C1870(str, i <= i2 ? AbstractC3712.f14480 : Arrays.copyOfRange(bArr, i2, i));
    }

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public static C1865 m4795(int i, C3732 c3732) {
        int m7895 = c3732.m7895();
        int m7894 = c3732.m7894();
        int m78942 = c3732.m7894();
        int m7874 = c3732.m7874();
        int m78742 = c3732.m7874();
        C0881 c0881 = new C0881(4);
        c0881.m3099(c3732);
        int i2 = ((i - 10) * 8) / (m7874 + m78742);
        int[] iArr = new int[i2];
        int[] iArr2 = new int[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            int m3097 = c0881.m3097(m7874);
            int m30972 = c0881.m3097(m78742);
            iArr[i3] = m3097;
            iArr2[i3] = m30972;
        }
        return new C1865(m7895, m7894, m78942, iArr, iArr2);
    }

    /* renamed from: ˏᵢ, reason: contains not printable characters */
    public static int m4796(int i, C3732 c3732) {
        byte[] bArr = c3732.f14534;
        int i2 = c3732.f14533;
        int i3 = i2;
        while (true) {
            int i4 = i3 + 1;
            if (i4 >= i2 + i) {
                return i;
            }
            if ((bArr[i3] & 255) == 255 && bArr[i4] == 0) {
                System.arraycopy(bArr, i3 + 2, bArr, i4, (i - (i3 - i2)) - 2);
                i--;
            }
            i3 = i4;
        }
    }

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public static C1875 m4797(int i, C3732 c3732) {
        int m7874 = c3732.m7874();
        Charset m4789 = m4789(m7874);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        c3732.m7875(bArr, 0, i2);
        int m4799 = m4799(0, bArr);
        String m4251 = AbstractC1464.m4251(new String(bArr, 0, m4799, StandardCharsets.ISO_8859_1));
        int i3 = m4799 + 1;
        int m4800 = m4800(bArr, i3, m7874);
        String m4787 = m4787(bArr, i3, m4800, m4789);
        int m4788 = m4788(m7874) + m4800;
        int m48002 = m4800(bArr, m4788, m7874);
        String m47872 = m4787(bArr, m4788, m48002, m4789);
        int m47882 = m4788(m7874) + m48002;
        return new C1875(m4251, m4787, m47872, i2 <= m47882 ? AbstractC3712.f14480 : Arrays.copyOfRange(bArr, m47882, i2));
    }

    /* renamed from: ـˏ, reason: contains not printable characters */
    public static C1866 m4798(int i, String str, C3732 c3732) {
        if (i < 1) {
            return null;
        }
        int m7874 = c3732.m7874();
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        c3732.m7875(bArr, 0, i2);
        return new C1866(str, null, m4807(bArr, m7874, 0));
    }

    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public static int m4799(int i, byte[] bArr) {
        while (i < bArr.length) {
            if (bArr[i] == 0) {
                return i;
            }
            i++;
        }
        return bArr.length;
    }

    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    public static int m4800(byte[] bArr, int i, int i2) {
        int m4799 = m4799(i, bArr);
        if (i2 == 0 || i2 == 3) {
            return m4799;
        }
        while (m4799 < bArr.length - 1) {
            if ((m4799 - i) % 2 == 0 && bArr[m4799 + 1] == 0) {
                return m4799;
            }
            m4799 = m4799(m4799 + 1, bArr);
        }
        return bArr.length;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0077, code lost:
    
        if ((r10 & 1) != 0) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x007a, code lost:
    
        r4 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0087, code lost:
    
        if ((r10 & 128) != 0) goto L45;
     */
    /* renamed from: ᴵʼ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m4801(p305.C3732 r18, int r19, int r20, boolean r21) {
        /*
            r1 = r18
            r0 = r19
            int r2 = r1.f14533
        L6:
            int r3 = r1.m7904()     // Catch: java.lang.Throwable -> L20
            r4 = 1
            r5 = r20
            if (r3 < r5) goto Lac
            r3 = 3
            r6 = 0
            if (r0 < r3) goto L23
            int r7 = r1.m7893()     // Catch: java.lang.Throwable -> L20
            long r8 = r1.m7880()     // Catch: java.lang.Throwable -> L20
            int r10 = r1.m7895()     // Catch: java.lang.Throwable -> L20
            goto L2d
        L20:
            r0 = move-exception
            goto Lb0
        L23:
            int r7 = r1.m7894()     // Catch: java.lang.Throwable -> L20
            int r8 = r1.m7894()     // Catch: java.lang.Throwable -> L20
            long r8 = (long) r8
            r10 = r6
        L2d:
            r11 = 0
            if (r7 != 0) goto L3b
            int r7 = (r8 > r11 ? 1 : (r8 == r11 ? 0 : -1))
            if (r7 != 0) goto L3b
            if (r10 != 0) goto L3b
            r1.m7896(r2)
            return r4
        L3b:
            r7 = 4
            if (r0 != r7) goto L6c
            if (r21 != 0) goto L6c
            r13 = 8421504(0x808080, double:4.160776E-317)
            long r13 = r13 & r8
            int r11 = (r13 > r11 ? 1 : (r13 == r11 ? 0 : -1))
            if (r11 == 0) goto L4c
            r1.m7896(r2)
            return r6
        L4c:
            r11 = 255(0xff, double:1.26E-321)
            long r13 = r8 & r11
            r15 = 8
            long r15 = r8 >> r15
            long r15 = r15 & r11
            r17 = 7
            long r15 = r15 << r17
            long r13 = r13 | r15
            r15 = 16
            long r15 = r8 >> r15
            long r15 = r15 & r11
            r17 = 14
            long r15 = r15 << r17
            long r13 = r13 | r15
            r15 = 24
            long r8 = r8 >> r15
            long r8 = r8 & r11
            r11 = 21
            long r8 = r8 << r11
            long r8 = r8 | r13
        L6c:
            if (r0 != r7) goto L7c
            r3 = r10 & 64
            if (r3 == 0) goto L74
            r3 = r4
            goto L75
        L74:
            r3 = r6
        L75:
            r7 = r10 & 1
            if (r7 == 0) goto L7a
            goto L8c
        L7a:
            r4 = r6
            goto L8c
        L7c:
            if (r0 != r3) goto L8a
            r3 = r10 & 32
            if (r3 == 0) goto L84
            r3 = r4
            goto L85
        L84:
            r3 = r6
        L85:
            r7 = r10 & 128(0x80, float:1.8E-43)
            if (r7 == 0) goto L7a
            goto L8c
        L8a:
            r3 = r6
            r4 = r3
        L8c:
            if (r4 == 0) goto L90
            int r3 = r3 + 4
        L90:
            long r3 = (long) r3
            int r3 = (r8 > r3 ? 1 : (r8 == r3 ? 0 : -1))
            if (r3 >= 0) goto L99
            r1.m7896(r2)
            return r6
        L99:
            int r3 = r1.m7904()     // Catch: java.lang.Throwable -> L20
            long r3 = (long) r3
            int r3 = (r3 > r8 ? 1 : (r3 == r8 ? 0 : -1))
            if (r3 >= 0) goto La6
            r1.m7896(r2)
            return r6
        La6:
            int r3 = (int) r8
            r1.m7900(r3)     // Catch: java.lang.Throwable -> L20
            goto L6
        Lac:
            r1.m7896(r2)
            return r4
        Lb0:
            r1.m7896(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p094.C1860.m4801(ᐧˎ.ﹳᐧ, int, int, boolean):boolean");
    }

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public static C1861 m4802(int i, String str, C3732 c3732) {
        byte[] bArr = new byte[i];
        c3732.m7875(bArr, 0, i);
        return new C1861(str, null, new String(bArr, 0, m4799(0, bArr), StandardCharsets.ISO_8859_1));
    }

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public static C1873 m4803(C3732 c3732, int i, int i2) {
        int m4799;
        String concat;
        int m7874 = c3732.m7874();
        Charset m4789 = m4789(m7874);
        int i3 = i - 1;
        byte[] bArr = new byte[i3];
        c3732.m7875(bArr, 0, i3);
        if (i2 == 2) {
            concat = "image/" + ˏʻ.ˈⁱ(new String(bArr, 0, 3, StandardCharsets.ISO_8859_1));
            if ("image/jpg".equals(concat)) {
                concat = "image/jpeg";
            }
            m4799 = 2;
        } else {
            m4799 = m4799(0, bArr);
            String str = ˏʻ.ˈⁱ(new String(bArr, 0, m4799, StandardCharsets.ISO_8859_1));
            concat = str.indexOf(47) == -1 ? "image/".concat(str) : str;
        }
        int i4 = bArr[m4799 + 1] & 255;
        int i5 = m4799 + 2;
        int m4800 = m4800(bArr, i5, m7874);
        String str2 = new String(bArr, i5, m4800 - i5, m4789);
        int m4788 = m4788(m7874) + m4800;
        return new C1873(concat, str2, i4, i3 <= m4788 ? AbstractC3712.f14480 : Arrays.copyOfRange(bArr, m4788, i3));
    }

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public static String m4804(int i, int i2, int i3, int i4, int i5) {
        return i == 2 ? String.format(Locale.US, "%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4)) : String.format(Locale.US, "%c%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5));
    }

    /* renamed from: ᵔי, reason: contains not printable characters */
    public static C1862 m4805(C3732 c3732, int i, int i2, boolean z, int i3, InterfaceC1869 interfaceC1869) {
        int i4 = c3732.f14533;
        int m4799 = m4799(i4, c3732.f14534);
        String str = new String(c3732.f14534, i4, m4799 - i4, StandardCharsets.ISO_8859_1);
        c3732.m7896(m4799 + 1);
        int m7893 = c3732.m7893();
        int m78932 = c3732.m7893();
        long m7880 = c3732.m7880();
        if (m7880 == 4294967295L) {
            m7880 = -1;
        }
        long m78802 = c3732.m7880();
        long j = m78802 == 4294967295L ? -1L : m78802;
        ArrayList arrayList = new ArrayList();
        int i5 = i4 + i;
        while (c3732.f14533 < i5) {
            AbstractC1863 m4791 = m4791(i2, c3732, z, i3, interfaceC1869);
            if (m4791 != null) {
                arrayList.add(m4791);
            }
        }
        return new C1862(str, m7893, m78932, m7880, j, (AbstractC1863[]) arrayList.toArray(new AbstractC1863[0]));
    }

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public static C1867 m4806(int i, C3732 c3732) {
        if (i < 4) {
            return null;
        }
        int m7874 = c3732.m7874();
        Charset m4789 = m4789(m7874);
        byte[] bArr = new byte[3];
        c3732.m7875(bArr, 0, 3);
        String str = new String(bArr, 0, 3);
        int i2 = i - 4;
        byte[] bArr2 = new byte[i2];
        c3732.m7875(bArr2, 0, i2);
        int m4800 = m4800(bArr2, 0, m7874);
        String str2 = new String(bArr2, 0, m4800, m4789);
        int m4788 = m4788(m7874) + m4800;
        return new C1867(str, str2, m4787(bArr2, m4788, m4800(bArr2, m4788, m7874), m4789));
    }

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public static C0956 m4807(byte[] bArr, int i, int i2) {
        if (i2 >= bArr.length) {
            return AbstractC0993.m3260("");
        }
        C0968 m3261 = AbstractC0993.m3261();
        int m4800 = m4800(bArr, i2, i);
        while (i2 < m4800) {
            m3261.m3239(new String(bArr, i2, m4800 - i2, m4789(i)));
            i2 = m4788(i) + m4800;
            m4800 = m4800(bArr, i2, i);
        }
        C0956 m3249 = m3261.m3249();
        return m3249.isEmpty() ? AbstractC0993.m3260("") : m3249;
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final C1476 m4808(C1962 c1962, ByteBuffer byteBuffer) {
        return m4809(byteBuffer.limit(), byteBuffer.array());
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x009b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x009c  */
    /* renamed from: ٴʼ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p055.C1476 m4809(int r13, byte[] r14) {
        /*
            Method dump skipped, instructions count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p094.C1860.m4809(int, byte[]):ʽⁱ.ٴᵢ");
    }
}
