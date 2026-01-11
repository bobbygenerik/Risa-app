package p012;

import androidx.leanback.widget.ﾞʻ;
import j$.util.Objects;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import p055.AbstractC1464;
import p055.C1495;
import p305.AbstractC3731;

/* renamed from: ʻᴵ.ﹳᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0903 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final byte[] f3824 = {0, 0, 0, 1};

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final float[] f3823 = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final Object f3821 = new Object();

    /* renamed from: ˈ, reason: contains not printable characters */
    public static int[] f3822 = new int[10];

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0118  */
    /* renamed from: ʼˎ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static ˏˆ.ﹳٴ m3157(byte[] r40, int r41, int r42) {
        /*
            Method dump skipped, instructions count: 2159
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012.AbstractC0903.m3157(byte[], int, int):ˏˆ.ﹳٴ");
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static boolean m3158(byte[] bArr, int i, C1495 c1495) {
        int i2;
        if (Objects.equals(c1495.f5930, "video/avc")) {
            byte b = bArr[4];
            if (((b & 96) >> 5) == 0 && ((i2 = b & 31) == 1 || i2 == 9 || i2 == 14)) {
                return false;
            }
        } else if (Objects.equals(c1495.f5930, "video/hevc")) {
            C0888 m3162 = m3162(new C0881(bArr, 4, i + 4));
            int i3 = m3162.f3755;
            if (i3 == 35) {
                return false;
            }
            if (i3 <= 14 && i3 % 2 == 0 && m3162.f3753 == c1495.f5926 - 1) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0261  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01d2  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0208  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0214  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x021f  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0228  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x023b  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01ff  */
    /* renamed from: ˆʾ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p012.C0900 m3159(byte[] r30, int r31, int r32) {
        /*
            Method dump skipped, instructions count: 634
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012.AbstractC0903.m3159(byte[], int, int):ʻᴵ.ᵔﹳ");
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static int m3160(C1495 c1495) {
        if (Objects.equals(c1495.f5930, "video/avc")) {
            return 1;
        }
        return (Objects.equals(c1495.f5930, "video/hevc") || AbstractC1464.m4252(c1495.f5924, "video/hevc") != null) ? 2 : 0;
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static int m3161(int i, byte[] bArr) {
        int i2;
        synchronized (f3821) {
            int i3 = 0;
            int i4 = 0;
            while (i3 < i) {
                while (true) {
                    if (i3 >= i - 2) {
                        i3 = i;
                        break;
                    }
                    try {
                        if (bArr[i3] == 0 && bArr[i3 + 1] == 0 && bArr[i3 + 2] == 3) {
                            break;
                        }
                        i3++;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (i3 < i) {
                    int[] iArr = f3822;
                    if (iArr.length <= i4) {
                        f3822 = Arrays.copyOf(iArr, iArr.length * 2);
                    }
                    f3822[i4] = i3;
                    i3 += 3;
                    i4++;
                }
            }
            i2 = i - i4;
            int i5 = 0;
            int i6 = 0;
            for (int i7 = 0; i7 < i4; i7++) {
                int i8 = f3822[i7] - i6;
                System.arraycopy(bArr, i6, bArr, i5, i8);
                int i9 = i5 + i8;
                int i10 = i9 + 1;
                bArr[i9] = 0;
                i5 = i9 + 2;
                bArr[i10] = 0;
                i6 += i8 + 3;
            }
            System.arraycopy(bArr, i6, bArr, i5, i2 - i5);
        }
        return i2;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static C0888 m3162(C0881 c0881) {
        c0881.m3102();
        return new C0888(c0881.m3097(6), c0881.m3097(6), c0881.m3097(3) - 1);
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static void m3163(C0881 c0881) {
        int m3107 = c0881.m3107() + 1;
        c0881.m3095(8);
        for (int i = 0; i < m3107; i++) {
            c0881.m3107();
            c0881.m3107();
            c0881.m3102();
        }
        c0881.m3095(20);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static ﾞʻ m3164(byte[] bArr, int i, int i2) {
        byte b;
        int i3 = i + 2;
        do {
            i2--;
            b = bArr[i2];
            if (b != 0) {
                break;
            }
        } while (i2 > i3);
        if (b == 0 || i2 <= i3) {
            return null;
        }
        C0881 c0881 = new C0881(bArr, i3, i2 + 1);
        while (c0881.m3096(16)) {
            int m3097 = c0881.m3097(8);
            int i4 = 0;
            while (m3097 == 255) {
                i4 += 255;
                m3097 = c0881.m3097(8);
            }
            int i5 = i4 + m3097;
            int m30972 = c0881.m3097(8);
            int i6 = 0;
            while (m30972 == 255) {
                i6 += 255;
                m30972 = c0881.m3097(8);
            }
            int i7 = i6 + m30972;
            if (i7 == 0 || !c0881.m3096(i7)) {
                return null;
            }
            if (i5 == 176) {
                int m3107 = c0881.m3107();
                boolean m3112 = c0881.m3112();
                int m31072 = m3112 ? c0881.m3107() : 0;
                int m31073 = c0881.m3107();
                int i8 = -1;
                for (int i9 = 0; i9 <= m31073; i9++) {
                    i8 = c0881.m3107();
                    c0881.m3107();
                    int m30973 = c0881.m3097(6);
                    if (m30973 == 63) {
                        return null;
                    }
                    c0881.m3097(m30973 == 0 ? Math.max(0, m3107 - 30) : Math.max(0, (m30973 + m3107) - 31));
                    if (m3112) {
                        int m30974 = c0881.m3097(6);
                        if (m30974 == 63) {
                            return null;
                        }
                        c0881.m3097(m30974 == 0 ? Math.max(0, m31072 - 30) : Math.max(0, (m30974 + m31072) - 31));
                    }
                    if (c0881.m3112()) {
                        c0881.m3095(10);
                    }
                }
                return new ﾞʻ(i8, 1);
            }
            c0881.m3095(i7 * 8);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x02fc  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0317  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x03d8  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:242:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01d0  */
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p012.C0898 m3165(byte[] r32, int r33, int r34, ˏˆ.ﹳٴ r35) {
        /*
            Method dump skipped, instructions count: 1003
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012.AbstractC0903.m3165(byte[], int, int, ˏˆ.ﹳٴ):ʻᴵ.ᵔʾ");
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static int m3166(byte[] bArr, int i, int i2, boolean[] zArr) {
        int i3 = i2 - i;
        AbstractC3731.m7857(i3 >= 0);
        if (i3 == 0) {
            return i2;
        }
        if (zArr[0]) {
            m3167(zArr);
            return i - 3;
        }
        if (i3 > 1 && zArr[1] && bArr[i] == 1) {
            m3167(zArr);
            return i - 2;
        }
        if (i3 > 2 && zArr[2] && bArr[i] == 0 && bArr[i + 1] == 1) {
            m3167(zArr);
            return i - 1;
        }
        int i4 = i2 - 1;
        int i5 = i + 2;
        while (i5 < i4) {
            byte b = bArr[i5];
            if ((b & 254) == 0) {
                int i6 = i5 - 2;
                if (bArr[i6] == 0 && bArr[i5 - 1] == 0 && b == 1) {
                    m3167(zArr);
                    return i6;
                }
                i5 -= 2;
            }
            i5 += 3;
        }
        zArr[0] = i3 <= 2 ? !(i3 != 2 ? !(zArr[1] && bArr[i4] == 1) : !(zArr[2] && bArr[i2 + (-2)] == 0 && bArr[i4] == 1)) : bArr[i2 + (-3)] == 0 && bArr[i2 + (-2)] == 0 && bArr[i4] == 1;
        zArr[1] = i3 <= 1 ? zArr[2] && bArr[i4] == 0 : bArr[i2 + (-2)] == 0 && bArr[i4] == 0;
        zArr[2] = bArr[i4] == 0;
        return i2;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m3167(boolean[] zArr) {
        zArr[0] = false;
        zArr[1] = false;
        zArr[2] = false;
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static ArrayList m3168(ByteBuffer byteBuffer) {
        int remaining;
        ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        ArrayList arrayList = new ArrayList();
        while (asReadOnlyBuffer.hasRemaining()) {
            byte b = asReadOnlyBuffer.get();
            int i = (b >> 3) & 15;
            if (((b >> 2) & 1) != 0) {
                asReadOnlyBuffer.get();
            }
            if (((b >> 1) & 1) != 0) {
                remaining = 0;
                for (int i2 = 0; i2 < 8; i2++) {
                    byte b2 = asReadOnlyBuffer.get();
                    remaining |= (b2 & Byte.MAX_VALUE) << (i2 * 7);
                    if ((b2 & 128) == 0) {
                        break;
                    }
                }
            } else {
                remaining = asReadOnlyBuffer.remaining();
            }
            ByteBuffer duplicate = asReadOnlyBuffer.duplicate();
            duplicate.limit(asReadOnlyBuffer.position() + remaining);
            arrayList.add(new C0886(i, duplicate));
            asReadOnlyBuffer.position(asReadOnlyBuffer.position() + remaining);
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0076  */
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p012.C0896 m3169(p012.C0881 r19, boolean r20, int r21, p012.C0896 r22) {
        /*
            r0 = r19
            r1 = r21
            r2 = r22
            r3 = 6
            int[] r4 = new int[r3]
            r5 = 2
            r6 = 8
            r7 = 0
            if (r20 == 0) goto L42
            int r2 = r0.m3097(r5)
            boolean r8 = r0.m3112()
            r9 = 5
            int r9 = r0.m3097(r9)
            r10 = r7
            r11 = r10
        L1e:
            r12 = 32
            if (r10 >= r12) goto L2e
            boolean r12 = r0.m3112()
            if (r12 == 0) goto L2b
            r12 = 1
            int r12 = r12 << r10
            r11 = r11 | r12
        L2b:
            int r10 = r10 + 1
            goto L1e
        L2e:
            r10 = r7
        L2f:
            if (r10 >= r3) goto L3a
            int r12 = r0.m3097(r6)
            r4[r10] = r12
            int r10 = r10 + 1
            goto L2f
        L3a:
            r13 = r2
        L3b:
            r17 = r4
            r14 = r8
            r15 = r9
            r16 = r11
            goto L57
        L42:
            if (r2 == 0) goto L50
            int r3 = r2.f3776
            boolean r8 = r2.f3775
            int r9 = r2.f3772
            int r11 = r2.f3773
            int[] r4 = r2.f3774
            r13 = r3
            goto L3b
        L50:
            r17 = r4
            r13 = r7
            r14 = r13
            r15 = r14
            r16 = r15
        L57:
            int r18 = r0.m3097(r6)
            r2 = r7
        L5c:
            if (r7 >= r1) goto L71
            boolean r3 = r0.m3112()
            if (r3 == 0) goto L66
            int r2 = r2 + 88
        L66:
            boolean r3 = r0.m3112()
            if (r3 == 0) goto L6e
            int r2 = r2 + 8
        L6e:
            int r7 = r7 + 1
            goto L5c
        L71:
            r0.m3095(r2)
            if (r1 <= 0) goto L7b
            int r6 = r6 - r1
            int r6 = r6 * r5
            r0.m3095(r6)
        L7b:
            ʻᴵ.ٴﹶ r12 = new ʻᴵ.ٴﹶ
            r12.<init>(r13, r14, r15, r16, r17, r18)
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: p012.AbstractC0903.m3169(ʻᴵ.ʻٴ, boolean, int, ʻᴵ.ٴﹶ):ʻᴵ.ٴﹶ");
    }
}
