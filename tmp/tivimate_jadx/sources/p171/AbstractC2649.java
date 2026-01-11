package p171;

import android.support.v4.media.session.AbstractC0001;
import android.util.Base64;
import androidx.media3.common.ParserException;
import java.io.EOFException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import p012.C0881;
import p027.C1099;
import p055.C1468;
import p055.C1476;
import p062.C1560;
import p094.C1860;
import p223.C3056;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p305.C3732;
import p307.AbstractC3740;
import p326.C4060;
import p377.C4539;
import ˉˆ.ʿ;
import ﹶﾞ.ⁱי;

/* renamed from: ˊﾞ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2649 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final int[] f10063 = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, 8000, 7350};

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final int[] f10062 = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final int[] f10046 = {1, 2, 3, 6};

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final int[] f10050 = {48000, 44100, 32000};

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final int[] f10054 = {24000, 22050, 16000};

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final int[] f10066 = {2, 1, 2, 3, 3, 4, 4, 5};

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final int[] f10058 = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, 320, 384, 448, 512, 576, 640};

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static final int[] f10060 = {69, 87, 104, 121, 139, 174, 208, 243, 278, 348, 417, 487, 557, 696, 835, 975, 1114, 1253, 1393};

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static final int[] f10044 = {2002, 2000, 1920, 1601, 1600, 1001, 1000, 960, 800, 800, 480, 400, 400, 2048};

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static final int[] f10049 = {1, 2, 2, 2, 2, 3, 3, 4, 4, 5, 6, 6, 6, 7, 8, 8};

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static final int[] f10057 = {-1, 8000, 16000, 32000, -1, -1, 11025, 22050, 44100, -1, -1, 12000, 24000, 48000, -1, -1};

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static final int[] f10065 = {64, 112, 128, 192, 224, 256, 384, 448, 512, 640, 768, 896, 1024, 1152, 1280, 1536, 1920, 2048, 2304, 2560, 2688, 2816, 2823, 2944, 3072, 3840, 4096, 6144, 7680};

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static final int[] f10051 = {8000, 16000, 32000, 64000, 128000, 22050, 44100, 88200, 176400, 352800, 12000, 24000, 48000, 96000, 192000, 384000};

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static final int[] f10059 = {5, 8, 10, 12};

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public static final int[] f10052 = {6, 9, 12, 15};

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public static final int[] f10045 = {2, 4, 6, 8};

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public static final int[] f10061 = {9, 11, 13, 16};

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public static final int[] f10064 = {5, 8, 10, 12};

    /* renamed from: יـ, reason: contains not printable characters */
    public static final String[] f10055 = {"audio/mpeg-L1", "audio/mpeg-L2", "audio/mpeg"};

    /* renamed from: ˏי, reason: contains not printable characters */
    public static final int[] f10053 = {44100, 48000, 32000};

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public static final int[] f10047 = {32000, 64000, 96000, 128000, 160000, 192000, 224000, 256000, 288000, 320000, 352000, 384000, 416000, 448000};

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public static final int[] f10042 = {32000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 144000, 160000, 176000, 192000, 224000, 256000};

    /* renamed from: ـˆ, reason: contains not printable characters */
    public static final int[] f10056 = {32000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000, 384000};

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public static final int[] f10048 = {32000, 40000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000};

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public static final int[] f10043 = {8000, 16000, 24000, 32000, 40000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 144000, 160000};

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public static C1476 m5902(InterfaceC2622 interfaceC2622, boolean z) {
        C1560 c1560 = z ? null : C1860.f7471;
        C3732 c3732 = new C3732(10);
        C1476 c1476 = null;
        int i = 0;
        while (true) {
            try {
                interfaceC2622.mo4576(c3732.f14534, 0, 10);
                c3732.m7896(0);
                if (c3732.m7894() != 4801587) {
                    break;
                }
                c3732.m7900(3);
                int m7881 = c3732.m7881();
                int i2 = m7881 + 10;
                if (c1476 == null) {
                    byte[] bArr = new byte[i2];
                    System.arraycopy(c3732.f14534, 0, bArr, 0, 10);
                    interfaceC2622.mo4576(bArr, 10, m7881);
                    c1476 = new C1860(c1560).m4809(i2, bArr);
                } else {
                    interfaceC2622.mo4590(m7881);
                }
                i += i2;
            } catch (EOFException unused) {
            }
        }
        interfaceC2622.mo4600();
        interfaceC2622.mo4590(i);
        if (c1476 == null || c1476.f5773.length == 0) {
            return null;
        }
        return c1476;
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public static ʿ m5903(C3732 c3732, boolean z, boolean z2) {
        if (z) {
            m5908(3, c3732, false);
        }
        c3732.m7890((int) c3732.m7876(), StandardCharsets.UTF_8);
        long m7876 = c3732.m7876();
        String[] strArr = new String[(int) m7876];
        for (int i = 0; i < m7876; i++) {
            strArr[i] = c3732.m7890((int) c3732.m7876(), StandardCharsets.UTF_8);
        }
        if (z2 && (c3732.m7874() & 1) == 0) {
            throw ParserException.m741(null, "framing bit expected to be set");
        }
        return new ʿ(7, strArr);
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static void m5904(int i, C3732 c3732) {
        c3732.m7886(7);
        byte[] bArr = c3732.f14534;
        bArr[0] = -84;
        bArr[1] = 64;
        bArr[2] = -1;
        bArr[3] = -1;
        bArr[4] = (byte) ((i >> 16) & 255);
        bArr[5] = (byte) ((i >> 8) & 255);
        bArr[6] = (byte) (i & 255);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0030, code lost:
    
        if (r9.m3112() != false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0032, code lost:
    
        r2 = r9.m3097(10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x003c, code lost:
    
        if (r9.m3112() == false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0042, code lost:
    
        if (r9.m3097(3) <= 0) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0044, code lost:
    
        r9.m3095(2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0051, code lost:
    
        if (r9.m3112() == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0053, code lost:
    
        r5 = 48000;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0056, code lost:
    
        r9 = r9.m3097(4);
        r8 = p171.AbstractC2649.f10044;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x005c, code lost:
    
        if (r5 != 44100) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0060, code lost:
    
        if (r9 != 13) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0062, code lost:
    
        r9 = r8[r9];
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0098, code lost:
    
        return new p012.C0888(r5, r0, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0065, code lost:
    
        if (r5 != 48000) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0069, code lost:
    
        if (r9 >= 14) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x006b, code lost:
    
        r6 = r8[r9];
        r2 = r2 % 5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0072, code lost:
    
        if (r2 == 1) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0076, code lost:
    
        if (r2 == 2) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0078, code lost:
    
        if (r2 == 3) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x007a, code lost:
    
        if (r2 == 4) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x007d, code lost:
    
        if (r9 == 3) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x007f, code lost:
    
        if (r9 == 8) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0081, code lost:
    
        if (r9 != 11) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0083, code lost:
    
        r9 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0090, code lost:
    
        r9 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0086, code lost:
    
        if (r9 == 8) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0088, code lost:
    
        if (r9 != 11) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x008b, code lost:
    
        if (r9 == 3) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x008d, code lost:
    
        if (r9 != 8) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0092, code lost:
    
        r9 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0055, code lost:
    
        r5 = 44100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0027, code lost:
    
        if (r9.m3097(2) == 3) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0029, code lost:
    
        r9.m3097(2);
     */
    /* renamed from: ʼᐧ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p012.C0888 m5905(p012.C0881 r9) {
        /*
            r0 = 16
            int r1 = r9.m3097(r0)
            int r0 = r9.m3097(r0)
            r2 = 65535(0xffff, float:9.1834E-41)
            r3 = 4
            if (r0 != r2) goto L18
            r0 = 24
            int r0 = r9.m3097(r0)
            r2 = 7
            goto L19
        L18:
            r2 = r3
        L19:
            int r0 = r0 + r2
            r2 = 44097(0xac41, float:6.1793E-41)
            if (r1 != r2) goto L21
            int r0 = r0 + 2
        L21:
            r1 = 2
            int r2 = r9.m3097(r1)
            r4 = 3
            if (r2 != r4) goto L32
        L29:
            r9.m3097(r1)
            boolean r2 = r9.m3112()
            if (r2 != 0) goto L29
        L32:
            r2 = 10
            int r2 = r9.m3097(r2)
            boolean r5 = r9.m3112()
            if (r5 == 0) goto L47
            int r5 = r9.m3097(r4)
            if (r5 <= 0) goto L47
            r9.m3095(r1)
        L47:
            boolean r5 = r9.m3112()
            r6 = 44100(0xac44, float:6.1797E-41)
            r7 = 48000(0xbb80, float:6.7262E-41)
            if (r5 == 0) goto L55
            r5 = r7
            goto L56
        L55:
            r5 = r6
        L56:
            int r9 = r9.m3097(r3)
            int[] r8 = p171.AbstractC2649.f10044
            if (r5 != r6) goto L65
            r6 = 13
            if (r9 != r6) goto L65
            r9 = r8[r9]
            goto L93
        L65:
            if (r5 != r7) goto L92
            r6 = 14
            if (r9 >= r6) goto L92
            r6 = r8[r9]
            int r2 = r2 % 5
            r7 = 8
            r8 = 1
            if (r2 == r8) goto L8b
            r8 = 11
            if (r2 == r1) goto L86
            if (r2 == r4) goto L8b
            if (r2 == r3) goto L7d
            goto L90
        L7d:
            if (r9 == r4) goto L83
            if (r9 == r7) goto L83
            if (r9 != r8) goto L90
        L83:
            int r9 = r6 + 1
            goto L93
        L86:
            if (r9 == r7) goto L83
            if (r9 != r8) goto L90
            goto L83
        L8b:
            if (r9 == r4) goto L83
            if (r9 != r7) goto L90
            goto L83
        L90:
            r9 = r6
            goto L93
        L92:
            r9 = 0
        L93:
            ʻᴵ.ˆʾ r1 = new ʻᴵ.ˆʾ
            r1.<init>(r5, r0, r9)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: p171.AbstractC2649.m5905(ʻᴵ.ʻٴ):ʻᴵ.ˆʾ");
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static ArrayList m5906(byte[] bArr) {
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(bArr);
        arrayList.add(ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(((((bArr[11] & 255) << 8) | (bArr[10] & 255)) * 1000000000) / 48000).array());
        arrayList.add(ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(80000000L).array());
        return arrayList;
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public static C1476 m5907(List list) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            String str = (String) list.get(i);
            String str2 = AbstractC3712.f14481;
            String[] split = str.split("=", 2);
            if (split.length != 2) {
                AbstractC3731.m7850("VorbisUtil", "Failed to parse Vorbis comment: ".concat(str));
            } else if (split[0].equals("METADATA_BLOCK_PICTURE")) {
                try {
                    arrayList.add(C4539.m9114(new C3732(Base64.decode(split[1], 0))));
                } catch (RuntimeException e) {
                    AbstractC3731.m7859("VorbisUtil", "Failed to parse vorbis picture", e);
                }
            } else {
                arrayList.add(new C4060(split[0], split[1]));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new C1476(arrayList);
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static boolean m5908(int i, C3732 c3732, boolean z) {
        if (c3732.m7904() < 7) {
            if (z) {
                return false;
            }
            throw ParserException.m741(null, "too short header: " + c3732.m7904());
        }
        if (c3732.m7874() != i) {
            if (z) {
                return false;
            }
            throw ParserException.m741(null, "expected header type " + Integer.toHexString(i));
        }
        if (c3732.m7874() == 118 && c3732.m7874() == 111 && c3732.m7874() == 114 && c3732.m7874() == 98 && c3732.m7874() == 105 && c3732.m7874() == 115) {
            return true;
        }
        if (z) {
            return false;
        }
        throw ParserException.m741(null, "expected characters 'vorbis'");
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public static ⁱי m5909(C3732 c3732) {
        c3732.m7900(1);
        int m7894 = c3732.m7894();
        long j = c3732.f14533 + m7894;
        int i = m7894 / 18;
        long[] jArr = new long[i];
        long[] jArr2 = new long[i];
        int i2 = 0;
        while (true) {
            if (i2 >= i) {
                break;
            }
            long m7889 = c3732.m7889();
            if (m7889 == -1) {
                jArr = Arrays.copyOf(jArr, i2);
                jArr2 = Arrays.copyOf(jArr2, i2);
                break;
            }
            jArr[i2] = m7889;
            jArr2[i2] = c3732.m7889();
            c3732.m7900(2);
            i2++;
        }
        c3732.m7900((int) (j - c3732.f14533));
        return new ⁱי(jArr, jArr2, 23, false);
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static int m5910(int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        if ((i & (-2097152)) != -2097152 || (i2 = (i >>> 19) & 3) == 1 || (i3 = (i >>> 17) & 3) == 0 || (i4 = (i >>> 12) & 15) == 0 || i4 == 15 || (i5 = (i >>> 10) & 3) == 3) {
            return -1;
        }
        int i6 = f10053[i5];
        if (i2 == 2) {
            i6 /= 2;
        } else if (i2 == 0) {
            i6 /= 4;
        }
        int i7 = (i >>> 9) & 1;
        if (i3 == 3) {
            return ((((i2 == 3 ? f10047[i4 - 1] : f10042[i4 - 1]) * 12) / i6) + i7) * 4;
        }
        int i8 = i2 == 3 ? i3 == 2 ? f10056[i4 - 1] : f10048[i4 - 1] : f10043[i4 - 1];
        if (i2 == 3) {
            return ((i8 * 144) / i6) + i7;
        }
        return (((i3 == 1 ? 72 : 144) * i8) / i6) + i7;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static boolean m5911(C3732 c3732, C2635 c2635, int i, C1468 c1468) {
        long m7880 = c3732.m7880();
        long j = m7880 >>> 16;
        if (j != i) {
            return false;
        }
        boolean z = (j & 1) == 1;
        int i2 = (int) ((m7880 >> 12) & 15);
        int i3 = (int) ((m7880 >> 8) & 15);
        int i4 = (int) ((m7880 >> 4) & 15);
        int i5 = (int) ((m7880 >> 1) & 7);
        boolean z2 = (m7880 & 1) == 1;
        if (i4 <= 7) {
            if (i4 != c2635.f9994 - 1) {
                return false;
            }
        } else if (i4 > 10 || c2635.f9994 != 2) {
            return false;
        }
        if (!(i5 == 0 || i5 == c2635.f9988) || z2) {
            return false;
        }
        try {
            long m7887 = c3732.m7887();
            if (!z) {
                m7887 *= c2635.f9996;
            }
            c1468.f5751 = m7887;
            int m5917 = m5917(i2, c3732);
            if (m5917 == -1 || m5917 > c2635.f9996) {
                return false;
            }
            int i6 = c2635.f9992;
            if (i3 != 0) {
                if (i3 <= 11) {
                    if (i3 != c2635.f9999) {
                        return false;
                    }
                } else if (i3 != 12) {
                    if (i3 > 14) {
                        return false;
                    }
                    int m7895 = c3732.m7895();
                    if (i3 == 14) {
                        m7895 *= 10;
                    }
                    if (m7895 != i6) {
                        return false;
                    }
                } else if (c3732.m7874() * 1000 != i6) {
                    return false;
                }
            }
            int m7874 = c3732.m7874();
            int i7 = c3732.f14533;
            byte[] bArr = c3732.f14534;
            int i8 = i7 - 1;
            int i9 = 0;
            for (int i10 = c3732.f14533; i10 < i8; i10++) {
                i9 = AbstractC3712.f14482[i9 ^ (bArr[i10] & 255)];
            }
            String str = AbstractC3712.f14481;
            return m7874 == i9;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static long m5912(byte b, byte b2) {
        int i;
        int i2 = b & 255;
        int i3 = b & 3;
        if (i3 != 0) {
            i = 2;
            if (i3 != 1 && i3 != 2) {
                i = b2 & 63;
            }
        } else {
            i = 1;
        }
        int i4 = i2 >> 3;
        return i * (i4 >= 16 ? 2500 << r6 : i4 >= 12 ? 10000 << (i4 & 1) : (i4 & 3) == 3 ? 60000 : 10000 << r6);
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public static C2648 m5913(C0881 c0881) {
        int m5921;
        int i;
        int i2;
        int i3;
        String str;
        int i4;
        int i5;
        int m3097;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int m3091 = c0881.m3091();
        c0881.m3095(40);
        boolean z = c0881.m3097(5) > 10;
        c0881.m3094(m3091);
        int[] iArr = f10066;
        int[] iArr2 = f10050;
        if (z) {
            c0881.m3095(16);
            int m30972 = c0881.m3097(2);
            if (m30972 == 0) {
                r8 = 0;
            } else if (m30972 == 1) {
                r8 = 1;
            } else if (m30972 == 2) {
                r8 = 2;
            }
            c0881.m3095(3);
            m5921 = (c0881.m3097(11) + 1) * 2;
            int m30973 = c0881.m3097(2);
            if (m30973 == 3) {
                i6 = f10054[c0881.m3097(2)];
                m3097 = 3;
                i7 = 6;
            } else {
                m3097 = c0881.m3097(2);
                int i12 = f10046[m3097];
                i6 = iArr2[m30973];
                i7 = i12;
            }
            i3 = i7 * 256;
            int i13 = (m5921 * i6) / (i7 * 32);
            int m30974 = c0881.m3097(3);
            boolean m3112 = c0881.m3112();
            i2 = iArr[m30974] + (m3112 ? 1 : 0);
            c0881.m3095(10);
            if (c0881.m3112()) {
                c0881.m3095(8);
            }
            if (m30974 == 0) {
                c0881.m3095(5);
                if (c0881.m3112()) {
                    c0881.m3095(8);
                }
            }
            if (r8 == 1 && c0881.m3112()) {
                c0881.m3095(16);
            }
            if (c0881.m3112()) {
                if (m30974 > 2) {
                    c0881.m3095(2);
                }
                if ((m30974 & 1) == 0 || m30974 <= 2) {
                    i9 = 6;
                } else {
                    i9 = 6;
                    c0881.m3095(6);
                }
                if ((m30974 & 4) != 0) {
                    c0881.m3095(i9);
                }
                if (m3112 && c0881.m3112()) {
                    c0881.m3095(5);
                }
                if (r8 == 0) {
                    if (c0881.m3112()) {
                        i10 = 6;
                        c0881.m3095(6);
                    } else {
                        i10 = 6;
                    }
                    if (m30974 == 0 && c0881.m3112()) {
                        c0881.m3095(i10);
                    }
                    if (c0881.m3112()) {
                        c0881.m3095(i10);
                    }
                    int m30975 = c0881.m3097(2);
                    if (m30975 == 1) {
                        c0881.m3095(5);
                        i11 = 2;
                    } else {
                        if (m30975 == 2) {
                            c0881.m3095(12);
                        } else if (m30975 == 3) {
                            int m30976 = c0881.m3097(5);
                            if (c0881.m3112()) {
                                c0881.m3095(5);
                                if (c0881.m3112()) {
                                    c0881.m3095(4);
                                }
                                if (c0881.m3112()) {
                                    c0881.m3095(4);
                                }
                                if (c0881.m3112()) {
                                    c0881.m3095(4);
                                }
                                if (c0881.m3112()) {
                                    c0881.m3095(4);
                                }
                                if (c0881.m3112()) {
                                    c0881.m3095(4);
                                }
                                if (c0881.m3112()) {
                                    c0881.m3095(4);
                                }
                                if (c0881.m3112()) {
                                    c0881.m3095(4);
                                }
                                if (c0881.m3112()) {
                                    if (c0881.m3112()) {
                                        c0881.m3095(4);
                                    }
                                    if (c0881.m3112()) {
                                        c0881.m3095(4);
                                    }
                                }
                            }
                            if (c0881.m3112()) {
                                c0881.m3095(5);
                                if (c0881.m3112()) {
                                    c0881.m3095(7);
                                    if (c0881.m3112()) {
                                        c0881.m3095(8);
                                        i11 = 2;
                                        c0881.m3095((m30976 + i11) * 8);
                                        c0881.m3093();
                                    }
                                }
                            }
                            i11 = 2;
                            c0881.m3095((m30976 + i11) * 8);
                            c0881.m3093();
                        }
                        i11 = 2;
                    }
                    if (m30974 < i11) {
                        if (c0881.m3112()) {
                            c0881.m3095(14);
                        }
                        if (m30974 == 0 && c0881.m3112()) {
                            c0881.m3095(14);
                        }
                    }
                    if (c0881.m3112()) {
                        if (m3097 == 0) {
                            c0881.m3095(5);
                        } else {
                            for (int i14 = 0; i14 < i7; i14++) {
                                if (c0881.m3112()) {
                                    c0881.m3095(5);
                                }
                            }
                        }
                    }
                }
            }
            if (c0881.m3112()) {
                c0881.m3095(5);
                if (m30974 == 2) {
                    c0881.m3095(4);
                }
                if (m30974 >= 6) {
                    c0881.m3095(2);
                }
                if (c0881.m3112()) {
                    c0881.m3095(8);
                }
                if (m30974 == 0 && c0881.m3112()) {
                    c0881.m3095(8);
                }
                if (m30973 < 3) {
                    c0881.m3102();
                }
            }
            if (r8 == 0 && m3097 != 3) {
                c0881.m3102();
            }
            if (r8 == 2 && (m3097 == 3 || c0881.m3112())) {
                i8 = 6;
                c0881.m3095(6);
            } else {
                i8 = 6;
            }
            str = (c0881.m3112() && c0881.m3097(i8) == 1 && c0881.m3097(8) == 1) ? "audio/eac3-joc" : "audio/eac3";
            i5 = i6;
            i4 = i13;
        } else {
            c0881.m3095(32);
            int m30977 = c0881.m3097(2);
            String str2 = m30977 == 3 ? null : "audio/ac3";
            int m30978 = c0881.m3097(6);
            int i15 = f10058[m30978 / 2] * 1000;
            m5921 = m5921(m30977, m30978);
            c0881.m3095(8);
            int m30979 = c0881.m3097(3);
            if ((m30979 & 1) == 0 || m30979 == 1) {
                i = 2;
            } else {
                i = 2;
                c0881.m3095(2);
            }
            if ((m30979 & 4) != 0) {
                c0881.m3095(i);
            }
            if (m30979 == i) {
                c0881.m3095(i);
            }
            r8 = m30977 < 3 ? iArr2[m30977] : -1;
            i2 = iArr[m30979] + (c0881.m3112() ? 1 : 0);
            i3 = 1536;
            str = str2;
            i4 = i15;
            i5 = r8;
        }
        return new C2648(str, i2, i5, m5921, i3, i4);
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public static int m5914(C0881 c0881, int[] iArr) {
        int i = 0;
        for (int i2 = 0; i2 < 3 && c0881.m3112(); i2++) {
            i++;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < i; i4++) {
            i3 += 1 << iArr[i4];
        }
        return c0881.m3097(iArr[i]) + i3;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static void m5915(String str, boolean z) {
        if (!z) {
            throw ParserException.m741(null, str);
        }
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public static void m5916(C0881 c0881, C2623 c2623) {
        c0881.m3095(2);
        boolean m3112 = c0881.m3112();
        int m3097 = c0881.m3097(8);
        for (int i = 0; i < m3097; i++) {
            c0881.m3095(2);
            if (c0881.m3112()) {
                c0881.m3095(5);
            }
            if (m3112) {
                c0881.m3095(24);
            } else {
                if (c0881.m3112()) {
                    if (!c0881.m3112()) {
                        c0881.m3095(4);
                    }
                    c2623.f9932 = c0881.m3097(6) + 1;
                }
                c0881.m3095(4);
            }
        }
        if (c0881.m3112()) {
            c0881.m3095(3);
            if (c0881.m3112()) {
                m5923(c0881);
            }
        }
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public static int m5917(int i, C3732 c3732) {
        switch (i) {
            case 1:
                return 192;
            case 2:
            case 3:
            case 4:
            case 5:
                return 576 << (i - 2);
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return c3732.m7874() + 1;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                return c3732.m7895() + 1;
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return 256 << (i - 8);
            default:
                return -1;
        }
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static int m5918(int i) {
        if (i == 20) {
            return 63750;
        }
        if (i == 30) {
            return 2250000;
        }
        switch (i) {
            case 5:
                return 80000;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return 768000;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                return 192000;
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                return 2250000;
            case 9:
                return 40000;
            case 10:
                return 100000;
            case 11:
                return 16000;
            case 12:
                return 7000;
            default:
                switch (i) {
                    case 14:
                        return 3062500;
                    case 15:
                        return 8000;
                    case 16:
                        return 256000;
                    case 17:
                        return 336000;
                    case 18:
                        return 768000;
                    default:
                        return -2147483647;
                }
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static void m5919(long j, C3732 c3732, InterfaceC2639[] interfaceC2639Arr) {
        int m7874 = c3732.m7874();
        if ((m7874 & 64) != 0) {
            c3732.m7900(1);
            int i = (m7874 & 31) * 3;
            int i2 = c3732.f14533;
            for (InterfaceC2639 interfaceC2639 : interfaceC2639Arr) {
                c3732.m7896(i2);
                interfaceC2639.mo4109(i, c3732);
                AbstractC3731.m7857(j != -9223372036854775807L);
                interfaceC2639.mo4112(j, 1, i, 0, null);
            }
        }
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static int m5920(C0881 c0881) {
        int m3097 = c0881.m3097(4);
        if (m3097 == 15) {
            if (c0881.m3109() >= 24) {
                return c0881.m3097(24);
            }
            throw ParserException.m741(null, "AAC header insufficient data");
        }
        if (m3097 < 13) {
            return f10063[m3097];
        }
        throw ParserException.m741(null, "AAC header wrong Sampling Frequency Index");
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static int m5921(int i, int i2) {
        int i3 = i2 / 2;
        if (i < 0 || i >= 3 || i2 < 0 || i3 >= 19) {
            return -1;
        }
        int i4 = f10050[i];
        if (i4 == 44100) {
            return ((i2 % 2) + f10060[i3]) * 2;
        }
        int i5 = f10058[i3];
        return i4 == 32000 ? i5 * 6 : i5 * 4;
    }

    /* JADX WARN: Type inference failed for: r12v2, types: [ʼٴ.ˑﹳ, java.lang.Object] */
    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public static C1099 m5922(C0881 c0881, boolean z) {
        int m3097 = c0881.m3097(5);
        if (m3097 == 31) {
            m3097 = c0881.m3097(6) + 32;
        }
        int m5920 = m5920(c0881);
        int m30972 = c0881.m3097(4);
        String m7932 = AbstractC3740.m7932(m3097, "mp4a.40.");
        if (m3097 == 5 || m3097 == 29) {
            m5920 = m5920(c0881);
            int m30973 = c0881.m3097(5);
            if (m30973 == 31) {
                m30973 = c0881.m3097(6) + 32;
            }
            m3097 = m30973;
            if (m3097 == 22) {
                m30972 = c0881.m3097(4);
            }
        }
        if (z) {
            if (m3097 != 1 && m3097 != 2 && m3097 != 3 && m3097 != 4 && m3097 != 6 && m3097 != 7 && m3097 != 17) {
                switch (m3097) {
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                        break;
                    default:
                        throw ParserException.m739("Unsupported audio object type: " + m3097);
                }
            }
            if (c0881.m3112()) {
                AbstractC3731.m7850("AacUtil", "Unexpected frameLengthFlag = 1");
            }
            if (c0881.m3112()) {
                c0881.m3095(14);
            }
            boolean m3112 = c0881.m3112();
            if (m30972 == 0) {
                throw new UnsupportedOperationException();
            }
            if (m3097 == 6 || m3097 == 20) {
                c0881.m3095(3);
            }
            if (m3112) {
                if (m3097 == 22) {
                    c0881.m3095(16);
                }
                if (m3097 == 17 || m3097 == 19 || m3097 == 20 || m3097 == 23) {
                    c0881.m3095(3);
                }
                c0881.m3095(1);
            }
            switch (m3097) {
                case 17:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                    int m30974 = c0881.m3097(2);
                    if (m30974 == 2 || m30974 == 3) {
                        throw ParserException.m739("Unsupported epConfig: " + m30974);
                    }
            }
        }
        int i = f10062[m30972];
        if (i == -1) {
            throw ParserException.m741(null, null);
        }
        ?? obj = new Object();
        obj.f4291 = m5920;
        obj.f4290 = i;
        obj.f4289 = m7932;
        return obj;
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public static void m5923(C0881 c0881) {
        int m3097 = c0881.m3097(6);
        if (m3097 < 2 || m3097 > 42) {
            throw ParserException.m739(String.format("Invalid language tag bytes number: %d. Must be between 2 and 42.", Integer.valueOf(m3097)));
        }
        c0881.m3095(m3097 * 8);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static byte[] m5924(int i, int i2, int i3) {
        return new byte[]{(byte) (((i << 3) & 248) | ((i2 >> 1) & 7)), (byte) (((i2 << 7) & 128) | ((i3 << 3) & 120))};
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static byte[] m5925(int i, int i2) {
        int i3 = -1;
        for (int i4 = 0; i4 < 13; i4++) {
            if (i == f10063[i4]) {
                i3 = i4;
            }
        }
        int i5 = -1;
        for (int i6 = 0; i6 < 16; i6++) {
            if (i2 == f10062[i6]) {
                i5 = i6;
            }
        }
        if (i == -1 || i5 == -1) {
            throw new IllegalArgumentException(AbstractC0001.m14(i, i2, "Invalid sample rate or number of channels: ", ", "));
        }
        return m5924(2, i3, i5);
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public static void m5926(C0881 c0881, C2623 c2623) {
        int m3097 = c0881.m3097(5);
        c0881.m3095(2);
        if (c0881.m3112()) {
            c0881.m3095(5);
        }
        if (m3097 >= 7 && m3097 <= 10) {
            c0881.m3102();
        }
        if (c0881.m3112()) {
            int m30972 = c0881.m3097(3);
            if (c2623.f9936 == -1 && m3097 >= 0 && m3097 <= 15 && (m30972 == 0 || m30972 == 1)) {
                c2623.f9936 = m3097;
            }
            if (c0881.m3112()) {
                m5923(c0881);
            }
        }
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static C0881 m5927(byte[] bArr) {
        byte b = bArr[0];
        if (b == Byte.MAX_VALUE || b == 100 || b == 64 || b == 113) {
            return new C0881(bArr.length, bArr);
        }
        byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
        byte b2 = copyOf[0];
        if (b2 == -2 || b2 == -1 || b2 == 37 || b2 == -14 || b2 == -24) {
            for (int i = 0; i < copyOf.length - 1; i += 2) {
                byte b3 = copyOf[i];
                int i2 = i + 1;
                copyOf[i] = copyOf[i2];
                copyOf[i2] = b3;
            }
        }
        C0881 c0881 = new C0881(copyOf.length, copyOf);
        if (copyOf[0] == 31) {
            C0881 c08812 = new C0881(copyOf.length, copyOf);
            while (c08812.m3109() >= 16) {
                c08812.m3095(2);
                int m3097 = c08812.m3097(14) & 16383;
                int min = Math.min(8 - c0881.f3736, 14);
                int i3 = c0881.f3736;
                int i4 = (8 - i3) - min;
                byte[] bArr2 = c0881.f3738;
                int i5 = c0881.f3735;
                byte b4 = (byte) (((65280 >> i3) | ((1 << i4) - 1)) & bArr2[i5]);
                bArr2[i5] = b4;
                int i6 = 14 - min;
                bArr2[i5] = (byte) (b4 | ((m3097 >>> i6) << i4));
                int i7 = i5 + 1;
                while (i6 > 8) {
                    c0881.f3738[i7] = (byte) (m3097 >>> (i6 - 8));
                    i6 -= 8;
                    i7++;
                }
                int i8 = 8 - i6;
                byte[] bArr3 = c0881.f3738;
                byte b5 = (byte) (bArr3[i7] & ((1 << i8) - 1));
                bArr3[i7] = b5;
                bArr3[i7] = (byte) (((m3097 & ((1 << i6) - 1)) << i8) | b5);
                c0881.m3095(14);
                c0881.m3110();
            }
        }
        c0881.m3101(copyOf.length, copyOf);
        return c0881;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static void m5928(long j, C3732 c3732, InterfaceC2639[] interfaceC2639Arr) {
        int i;
        while (true) {
            if (c3732.m7904() <= 1) {
                return;
            }
            int i2 = 0;
            while (true) {
                if (c3732.m7904() == 0) {
                    i = -1;
                    break;
                }
                int m7874 = c3732.m7874();
                i2 += m7874;
                if (m7874 != 255) {
                    i = i2;
                    break;
                }
            }
            int i3 = 0;
            while (true) {
                if (c3732.m7904() == 0) {
                    i3 = -1;
                    break;
                }
                int m78742 = c3732.m7874();
                i3 += m78742;
                if (m78742 != 255) {
                    break;
                }
            }
            int i4 = c3732.f14533 + i3;
            if (i3 == -1 || i3 > c3732.m7904()) {
                AbstractC3731.m7850("CeaUtil", "Skipping remainder of malformed SEI NAL unit.");
                i4 = c3732.f14532;
            } else if (i == 4 && i3 >= 8) {
                int m78743 = c3732.m7874();
                int m7895 = c3732.m7895();
                int m7893 = m7895 == 49 ? c3732.m7893() : 0;
                int m78744 = c3732.m7874();
                if (m7895 == 47) {
                    c3732.m7900(1);
                }
                boolean z = m78743 == 181 && (m7895 == 49 || m7895 == 47) && m78744 == 3;
                if (m7895 == 49) {
                    z &= m7893 == 1195456820;
                }
                if (z) {
                    m5919(j, c3732, interfaceC2639Arr);
                }
            }
            c3732.m7896(i4);
        }
    }
}
