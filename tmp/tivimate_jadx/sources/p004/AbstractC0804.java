package p004;

import j$.util.Objects;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.UUID;
import p002.C0767;
import p012.AbstractC0905;
import p012.C0901;
import p017.AbstractC0993;
import p055.AbstractC1464;
import p055.C1476;
import p055.C1490;
import p055.InterfaceC1465;
import p094.AbstractC1863;
import p094.C1866;
import p094.C1867;
import p094.C1873;
import p137.AbstractC2305;
import p171.InterfaceC2622;
import p171.InterfaceC2642;
import p305.AbstractC3731;
import p305.C3732;
import p307.AbstractC3740;
import p346.C4274;

/* renamed from: ʻˆ.יـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0804 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final int[] f3424 = {1769172845, 1769172786, 1769172787, 1769172788, 1769172789, 1769172790, 1769172793, 1635148593, 1752589105, 1751479857, 1635135537, 1836069937, 1836069938, 862401121, 862401122, 862417462, 862417718, 862414134, 862414646, 1295275552, 1295270176, 1714714144, 1801741417, 1295275600, 1903435808, 1297305174, 1684175153, 1769172332, 1885955686};

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static AbstractC1863 m2924(int i, String str, C3732 c3732, boolean z, boolean z2) {
        int m2933 = m2933(c3732);
        if (z2) {
            m2933 = Math.min(1, m2933);
        }
        if (m2933 >= 0) {
            return z ? new C1866(str, null, AbstractC0993.m3260(Integer.toString(m2933))) : new C1867("und", str, Integer.toString(m2933));
        }
        AbstractC3731.m7850("MetadataUtil", "Failed to parse uint8 attribute: " + AbstractC0905.m3171(i));
        return null;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static String m2925(ArrayList arrayList) {
        int size = arrayList.size();
        boolean z = false;
        String str = null;
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            String str2 = ((C0805) obj).f3431.f3415.f5930;
            if (AbstractC1464.m4256(str2)) {
                return "video/mp4";
            }
            if (AbstractC1464.m4258(str2)) {
                z = true;
            } else if (AbstractC1464.m4255(str2)) {
                if (Objects.equals(str2, "image/heic")) {
                    str = "image/heif";
                } else if (Objects.equals(str2, "image/avif")) {
                    str = "image/avif";
                }
            }
        }
        return z ? "audio/mp4" : str != null ? str : "application/mp4";
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static C0767 m2926(byte[] bArr) {
        UUID[] uuidArr;
        C3732 c3732 = new C3732(bArr);
        if (c3732.f14532 < 32) {
            return null;
        }
        c3732.m7896(0);
        int m7904 = c3732.m7904();
        int m7893 = c3732.m7893();
        if (m7893 != m7904) {
            AbstractC3731.m7850("PsshAtomUtil", "Advertised atom size (" + m7893 + ") does not match buffer size: " + m7904);
            return null;
        }
        int m78932 = c3732.m7893();
        if (m78932 != 1886614376) {
            AbstractC2305.m5373(m78932, "Atom type is not pssh: ", "PsshAtomUtil");
            return null;
        }
        int m2944 = AbstractC0809.m2944(c3732.m7893());
        if (m2944 > 1) {
            AbstractC2305.m5373(m2944, "Unsupported pssh version: ", "PsshAtomUtil");
            return null;
        }
        UUID uuid = new UUID(c3732.m7889(), c3732.m7889());
        if (m2944 == 1) {
            int m7878 = c3732.m7878();
            uuidArr = new UUID[m7878];
            for (int i = 0; i < m7878; i++) {
                uuidArr[i] = new UUID(c3732.m7889(), c3732.m7889());
            }
        } else {
            uuidArr = null;
        }
        int m78782 = c3732.m7878();
        int m79042 = c3732.m7904();
        if (m78782 == m79042) {
            byte[] bArr2 = new byte[m78782];
            c3732.m7875(bArr2, 0, m78782);
            return new C0767(uuid, m2944, bArr2, uuidArr);
        }
        AbstractC3731.m7850("PsshAtomUtil", "Atom data size (" + m78782 + ") does not match the bytes left: " + m79042);
        return null;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static boolean m2927(int i, boolean z) {
        if ((i >>> 8) == 3368816) {
            return true;
        }
        if (i == 1751476579 && z) {
            return true;
        }
        for (int i2 = 0; i2 < 29; i2++) {
            if (f3424[i2] == i) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static void m2928(int i, C1476 c1476, C1490 c1490, C1476 c14762, C1476... c1476Arr) {
        if (c14762 == null) {
            c14762 = new C1476(new InterfaceC1465[0]);
        }
        if (c1476 != null) {
            int i2 = 0;
            while (true) {
                InterfaceC1465[] interfaceC1465Arr = c1476.f5773;
                if (i2 >= interfaceC1465Arr.length) {
                    break;
                }
                InterfaceC1465 interfaceC1465 = interfaceC1465Arr[i2];
                if (interfaceC1465 instanceof C0901) {
                    C0901 c0901 = (C0901) interfaceC1465;
                    if (!c0901.f3818.equals("com.android.capture.fps")) {
                        c14762 = c14762.m4282(c0901);
                    } else if (i == 2) {
                        c14762 = c14762.m4282(c0901);
                    }
                }
                i2++;
            }
        }
        for (C1476 c14763 : c1476Arr) {
            c14762 = c14762.m4281(c14763);
        }
        if (c14762.f5773.length > 0) {
            c1490.f5871 = c14762;
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static C1867 m2929(int i, C3732 c3732) {
        int m7893 = c3732.m7893();
        if (c3732.m7893() == 1684108385) {
            c3732.m7900(8);
            String m7879 = c3732.m7879(m7893 - 16);
            return new C1867("und", m7879, m7879);
        }
        AbstractC3731.m7850("MetadataUtil", "Failed to parse comment attribute: " + AbstractC0905.m3171(i));
        return null;
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static byte[] m2930(UUID uuid, byte[] bArr) {
        C0767 m2926 = m2926(bArr);
        if (m2926 == null) {
            return null;
        }
        UUID uuid2 = (UUID) m2926.f3161;
        if (uuid.equals(uuid2)) {
            return (byte[]) m2926.f3162;
        }
        AbstractC3731.m7850("PsshAtomUtil", "UUID mismatch. Expected: " + uuid + ", got: " + uuid2 + ".");
        return null;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static C1866 m2931(int i, String str, C3732 c3732) {
        int m7893 = c3732.m7893();
        if (c3732.m7893() == 1684108385 && m7893 >= 22) {
            c3732.m7900(10);
            int m7895 = c3732.m7895();
            if (m7895 > 0) {
                String m7932 = AbstractC3740.m7932(m7895, "");
                int m78952 = c3732.m7895();
                if (m78952 > 0) {
                    m7932 = m7932 + "/" + m78952;
                }
                return new C1866(str, null, AbstractC0993.m3260(m7932));
            }
        }
        AbstractC3731.m7850("MetadataUtil", "Failed to parse index/count attribute: " + AbstractC0905.m3171(i));
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.Object, ˊﾞ.ᴵᵔ] */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.lang.Object, ˊﾞ.ᴵᵔ] */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.lang.Object, ˊﾞ.ᴵᵔ] */
    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static InterfaceC2642 m2932(InterfaceC2622 interfaceC2622, boolean z, boolean z2) {
        InterfaceC2642 interfaceC2642;
        int i;
        long j;
        int i2;
        int i3;
        int i4;
        int[] iArr;
        long length = interfaceC2622.getLength();
        long j2 = -1;
        long j3 = 4096;
        if (length != -1 && length <= 4096) {
            j3 = length;
        }
        int i5 = (int) j3;
        C3732 c3732 = new C3732(64);
        int i6 = 0;
        int i7 = 0;
        boolean z3 = false;
        while (i7 < i5) {
            c3732.m7886(8);
            boolean z4 = true;
            if (!interfaceC2622.mo4572(c3732.f14534, i6, 8, true)) {
                break;
            }
            long m7880 = c3732.m7880();
            int m7893 = c3732.m7893();
            if (m7880 == 1) {
                j = j2;
                interfaceC2622.mo4576(c3732.f14534, 8, 8);
                i3 = 16;
                c3732.m7891(16);
                m7880 = c3732.m7889();
                i2 = i7;
            } else {
                j = j2;
                if (m7880 == 0) {
                    long length2 = interfaceC2622.getLength();
                    if (length2 != j) {
                        i2 = i7;
                        m7880 = (length2 - interfaceC2622.mo4577()) + 8;
                        i3 = 8;
                    }
                }
                i2 = i7;
                i3 = 8;
            }
            long j4 = m7880;
            long j5 = i3;
            if (j4 < j5) {
                return new Object();
            }
            int i8 = i2 + i3;
            interfaceC2642 = null;
            if (m7893 == 1836019574) {
                i5 += (int) j4;
                if (length != -1 && i5 > length) {
                    i5 = (int) length;
                }
                i7 = i8;
                j2 = j;
                i6 = 0;
            } else {
                if (m7893 == 1836019558 || m7893 == 1836475768) {
                    i = 1;
                    break;
                }
                if (m7893 == 1835295092) {
                    z3 = true;
                }
                long j6 = length;
                if ((i8 + j4) - j5 >= i5) {
                    i = 0;
                    break;
                }
                int i9 = (int) (j4 - j5);
                i7 = i8 + i9;
                if (m7893 != 1718909296) {
                    i4 = 0;
                    if (i9 != 0) {
                        interfaceC2622.mo4590(i9);
                    }
                } else {
                    if (i9 < 8) {
                        return new Object();
                    }
                    c3732.m7886(i9);
                    i4 = 0;
                    interfaceC2622.mo4576(c3732.f14534, 0, i9);
                    if (m2927(c3732.m7893(), z2)) {
                        z3 = true;
                    }
                    c3732.m7900(4);
                    int m7904 = c3732.m7904() / 4;
                    if (!z3 && m7904 > 0) {
                        iArr = new int[m7904];
                        int i10 = 0;
                        while (true) {
                            if (i10 >= m7904) {
                                z4 = z3;
                                break;
                            }
                            int m78932 = c3732.m7893();
                            iArr[i10] = m78932;
                            if (m2927(m78932, z2)) {
                                break;
                            }
                            i10++;
                        }
                    } else {
                        z4 = z3;
                        iArr = null;
                    }
                    if (!z4) {
                        ?? obj = new Object();
                        if (iArr == null) {
                            int i11 = C4274.f15850;
                            return obj;
                        }
                        int i12 = C4274.f15850;
                        if (iArr.length == 0) {
                            return obj;
                        }
                        new C4274(Arrays.copyOf(iArr, iArr.length));
                        return obj;
                    }
                    z3 = z4;
                }
                i6 = i4;
                j2 = j;
                length = j6;
            }
        }
        interfaceC2642 = null;
        i = i6;
        return !z3 ? C0808.f3441 : z != i ? i != 0 ? C0808.f3443 : C0808.f3442 : interfaceC2642;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static int m2933(C3732 c3732) {
        int m7893 = c3732.m7893();
        if (c3732.m7893() == 1684108385) {
            c3732.m7900(8);
            int i = m7893 - 16;
            if (i == 1) {
                return c3732.m7874();
            }
            if (i == 2) {
                return c3732.m7895();
            }
            if (i == 3) {
                return c3732.m7894();
            }
            if (i == 4 && (c3732.m7901() & 128) == 0) {
                return c3732.m7878();
            }
        }
        AbstractC3731.m7850("MetadataUtil", "Failed to parse data atom to int");
        return -1;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static C0901 m2934(C1476 c1476, String str) {
        int i = 0;
        while (true) {
            InterfaceC1465[] interfaceC1465Arr = c1476.f5773;
            if (i >= interfaceC1465Arr.length) {
                return null;
            }
            InterfaceC1465 interfaceC1465 = interfaceC1465Arr[i];
            if (interfaceC1465 instanceof C0901) {
                C0901 c0901 = (C0901) interfaceC1465;
                if (c0901.f3818.equals(str)) {
                    return c0901;
                }
            }
            i++;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static byte[] m2935(UUID uuid, UUID[] uuidArr, byte[] bArr) {
        int length = (bArr != null ? bArr.length : 0) + 32;
        if (uuidArr != null) {
            length += (uuidArr.length * 16) + 4;
        }
        ByteBuffer allocate = ByteBuffer.allocate(length);
        allocate.putInt(length);
        allocate.putInt(1886614376);
        allocate.putInt(uuidArr != null ? 16777216 : 0);
        allocate.putLong(uuid.getMostSignificantBits());
        allocate.putLong(uuid.getLeastSignificantBits());
        if (uuidArr != null) {
            allocate.putInt(uuidArr.length);
            for (UUID uuid2 : uuidArr) {
                allocate.putLong(uuid2.getMostSignificantBits());
                allocate.putLong(uuid2.getLeastSignificantBits());
            }
        }
        if (bArr == null || bArr.length == 0) {
            allocate.putInt(0);
        } else {
            allocate.putInt(bArr.length);
            allocate.put(bArr);
        }
        return allocate.array();
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static C1866 m2936(int i, String str, C3732 c3732) {
        int m7893 = c3732.m7893();
        if (c3732.m7893() == 1684108385) {
            c3732.m7900(8);
            return new C1866(str, null, AbstractC0993.m3260(c3732.m7879(m7893 - 16)));
        }
        AbstractC3731.m7850("MetadataUtil", "Failed to parse text attribute: " + AbstractC0905.m3171(i));
        return null;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static C1873 m2937(C3732 c3732) {
        int m7893 = c3732.m7893();
        if (c3732.m7893() != 1684108385) {
            AbstractC3731.m7850("MetadataUtil", "Failed to parse cover art attribute");
            return null;
        }
        int m78932 = c3732.m7893();
        byte[] bArr = AbstractC0809.f3444;
        int i = m78932 & 16777215;
        String str = i == 13 ? "image/jpeg" : i == 14 ? "image/png" : null;
        if (str == null) {
            AbstractC2305.m5373(i, "Unrecognized cover art flags: ", "MetadataUtil");
            return null;
        }
        c3732.m7900(4);
        int i2 = m7893 - 16;
        byte[] bArr2 = new byte[i2];
        c3732.m7875(bArr2, 0, i2);
        return new C1873(str, null, 3, bArr2);
    }
}
