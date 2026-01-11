package p393;

import com.bumptech.glide.ˈ;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import p013.C0907;
import p013.C0913;
import p152.C2448;
import p152.C2450;
import p152.C2456;
import p164.C2571;
import p164.C2575;
import p164.C2586;
import p164.C2594;
import p164.C2599;
import p164.InterfaceC2592;
import p307.AbstractC3740;
import p329.InterfaceC4087;
import p430.AbstractC5099;
import p430.AbstractC5103;
import p435.AbstractC5143;
import p435.AbstractC5152;
import ʻٴ.ˑﹳ;
import ˉᵎ.ⁱˊ;

/* renamed from: ⁱٴ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4707 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final char[] f17795 = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final long m9414(C2586 c2586, C2571 c2571, int i, long j) {
        C2571 c25712;
        C2599 c2599 = c2586.f9813;
        long j2 = i;
        ˈ.ᵔᵢ(c2571.mo5749(), 0, j2);
        if (c2586.f9811) {
            throw new IllegalStateException("closed");
        }
        long j3 = 0;
        int i2 = i;
        C2571 c25713 = c2571;
        loop0: while (true) {
            long m9425 = AbstractC4708.m9425(c2599, c25713, j3, j, i2);
            if (m9425 == -1) {
                long j4 = c2599.f9835;
                long j5 = (j4 - j2) + 1;
                if (j5 >= j) {
                    break;
                }
                if (j4 >= j) {
                    int max = (int) Math.max(1L, (j4 - j) + 1);
                    int min = ((int) Math.min(j2, (c2599.f9835 - j3) + 1)) - 1;
                    if (max > min) {
                        break;
                    }
                    while (true) {
                        c25712 = c2571;
                        if (!c2599.m5828(c2599.f9835 - min, c25712, min)) {
                            if (min == max) {
                                break loop0;
                            }
                            min--;
                        } else {
                            break;
                        }
                    }
                } else {
                    c25712 = c2571;
                }
                if (c2586.f9812.mo5763(c2599, 8192L) == -1) {
                    break;
                }
                j3 = Math.max(j3, j5);
                i2 = i;
                c25713 = c25712;
            } else {
                return m9425;
            }
        }
        return -1L;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final String m9415(int i) {
        ⁱˊ.ʽ(16);
        return "0x".concat(Integer.toString(i, 16));
    }

    /* JADX WARN: Type inference failed for: r10v1, types: [java.lang.Object, ˊʼ.ˏי] */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.lang.Object, ˊʼ.ᵔﹳ] */
    /* JADX WARN: Type inference failed for: r4v1, types: [java.lang.Object, ˊʼ.יـ] */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.Object, ˊʼ.יـ] */
    /* JADX WARN: Type inference failed for: r7v7, types: [java.lang.Object, ˊʼ.יـ] */
    /* JADX WARN: Type inference failed for: r8v9, types: [java.lang.Object, ˊʼ.ˏי] */
    /* JADX WARN: Type inference failed for: r9v3, types: [java.lang.Object, ˊʼ.ˏי] */
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final C4705 m9416(final C2586 c2586) {
        int mo5801 = c2586.mo5801();
        if (mo5801 != 33639248) {
            throw new IOException("bad zip: expected " + m9415(33639248) + " but was " + m9415(mo5801));
        }
        c2586.skip(4L);
        short mo5793 = c2586.mo5793();
        int i = mo5793 & 65535;
        if ((mo5793 & 1) != 0) {
            throw new IOException("unsupported zip: general purpose bit flag=" + m9415(i));
        }
        int mo57932 = c2586.mo5793() & 65535;
        int mo57933 = c2586.mo5793() & 65535;
        int mo57934 = c2586.mo5793() & 65535;
        long mo58012 = c2586.mo5801() & 4294967295L;
        final ?? obj = new Object();
        obj.f9410 = c2586.mo5801() & 4294967295L;
        final ?? obj2 = new Object();
        obj2.f9410 = c2586.mo5801() & 4294967295L;
        int mo57935 = c2586.mo5793() & 65535;
        int mo57936 = c2586.mo5793() & 65535;
        int mo57937 = 65535 & c2586.mo5793();
        c2586.skip(8L);
        final ?? obj3 = new Object();
        obj3.f9410 = c2586.mo5801() & 4294967295L;
        String mo5795 = c2586.mo5795(mo57935);
        if (AbstractC5143.m10130(mo5795, (char) 0)) {
            throw new IOException("bad zip: filename contains 0x00");
        }
        final long j = obj2.f9410 == 4294967295L ? 8 : 0L;
        if (obj.f9410 == 4294967295L) {
            j += 8;
        }
        if (obj3.f9410 == 4294967295L) {
            j += 8;
        }
        final ?? obj4 = new Object();
        final ?? obj5 = new Object();
        final ?? obj6 = new Object();
        final ?? obj7 = new Object();
        m9421(c2586, mo57936, new InterfaceC4087() { // from class: ⁱٴ.ʼˎ
            @Override // p329.InterfaceC4087
            /* renamed from: ʼˎ */
            public final Object mo3749(Object obj8, Object obj9) {
                int intValue = ((Integer) obj8).intValue();
                long longValue = ((Long) obj9).longValue();
                C2586 c25862 = c2586;
                if (intValue == 1) {
                    C2456 c2456 = C2456.this;
                    if (c2456.f9412) {
                        throw new IOException("bad zip: zip64 extra repeated");
                    }
                    c2456.f9412 = true;
                    if (longValue < j) {
                        throw new IOException("bad zip: zip64 extra too short");
                    }
                    C2450 c2450 = obj2;
                    long j2 = c2450.f9410;
                    if (j2 == 4294967295L) {
                        j2 = c25862.m5806();
                    }
                    c2450.f9410 = j2;
                    C2450 c24502 = obj;
                    c24502.f9410 = c24502.f9410 == 4294967295L ? c25862.m5806() : 0L;
                    C2450 c24503 = obj3;
                    c24503.f9410 = c24503.f9410 == 4294967295L ? c25862.m5806() : 0L;
                } else if (intValue == 10) {
                    if (longValue < 4) {
                        throw new IOException("bad zip: NTFS extra too short");
                    }
                    c25862.skip(4L);
                    AbstractC4707.m9421(c25862, (int) (longValue - 4), new C4706(obj4, c25862, obj5, obj6));
                }
                return C0907.f3832;
            }
        });
        if (j > 0 && !obj7.f9412) {
            throw new IOException("bad zip: zip64 extra required but absent");
        }
        String mo57952 = c2586.mo5795(mo57937);
        String str = C2575.f9776;
        return new C4705(ᵎˉ.ⁱˊ.ᵔᵢ("/", false).m5769(mo5795), AbstractC5152.m10147(mo5795, "/", false), mo57952, mo58012, obj.f9410, obj2.f9410, mo57932, obj3.f9410, mo57934, mo57933, (Long) obj4.f9409, (Long) obj5.f9409, (Long) obj6.f9409, 57344);
    }

    /* JADX WARN: Type inference failed for: r3v4, types: [java.lang.Object, ˊʼ.ˏי] */
    /* JADX WARN: Type inference failed for: r4v5, types: [java.lang.Object, ˊʼ.ˏי] */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.lang.Object, ˊʼ.ˏי] */
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final C4705 m9417(C2586 c2586, C4705 c4705) {
        int mo5801 = c2586.mo5801();
        if (mo5801 != 67324752) {
            throw new IOException("bad zip: expected " + m9415(67324752) + " but was " + m9415(mo5801));
        }
        c2586.skip(2L);
        short mo5793 = c2586.mo5793();
        int i = mo5793 & 65535;
        if ((mo5793 & 1) != 0) {
            throw new IOException("unsupported zip: general purpose bit flag=" + m9415(i));
        }
        c2586.skip(18L);
        int mo57932 = c2586.mo5793() & 65535;
        c2586.skip(c2586.mo5793() & 65535);
        if (c4705 == null) {
            c2586.skip(mo57932);
            return null;
        }
        ?? obj = new Object();
        ?? obj2 = new Object();
        ?? obj3 = new Object();
        m9421(c2586, mo57932, new C4706(c2586, (C2448) obj, (C2448) obj2, (C2448) obj3));
        return new C4705(c4705.f17787, c4705.f17786, c4705.f17775, c4705.f17777, c4705.f17780, c4705.f17789, c4705.f17782, c4705.f17784, c4705.f17773, c4705.f17776, c4705.f17781, c4705.f17788, c4705.f17778, (Integer) obj.f9409, (Integer) obj2.f9409, (Integer) obj3.f9409);
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static final int m9418(C2594 c2594, int i) {
        int i2;
        int[] iArr = c2594.f9827;
        int i3 = i + 1;
        int length = c2594.f9828.length - 1;
        int i4 = 0;
        while (true) {
            if (i4 <= length) {
                i2 = (i4 + length) >>> 1;
                int i5 = iArr[i2];
                if (i5 >= i3) {
                    if (i5 <= i3) {
                        break;
                    }
                    length = i2 - 1;
                } else {
                    i4 = i2 + 1;
                }
            } else {
                i2 = (-i4) - 1;
                break;
            }
        }
        return i2 >= 0 ? i2 : ~i2;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final LinkedHashMap m9419(ArrayList arrayList) {
        String str = C2575.f9776;
        C2575 c2575 = ᵎˉ.ⁱˊ.ᵔᵢ("/", false);
        C0913[] c0913Arr = {new C0913(c2575, new C4705(c2575, true, null, 0L, 0L, 0L, 0, 0L, 0, 0, null, null, null, 65532))};
        LinkedHashMap linkedHashMap = new LinkedHashMap(AbstractC5103.m10040(1));
        C0913 c0913 = c0913Arr[0];
        linkedHashMap.put(c0913.f3836, c0913.f3837);
        for (C4705 c4705 : AbstractC5099.m10016(arrayList, new ˑﹳ(16))) {
            if (((C4705) linkedHashMap.put(c4705.f17787, c4705)) == null) {
                while (true) {
                    C2575 c25752 = c4705.f17787;
                    C2575 m5767 = c25752.m5767();
                    if (m5767 != null) {
                        C4705 c47052 = (C4705) linkedHashMap.get(m5767);
                        if (c47052 != null) {
                            c47052.f17785.add(c25752);
                            break;
                        }
                        C4705 c47053 = new C4705(m5767, true, null, 0L, 0L, 0L, 0, 0L, 0, 0, null, null, null, 65532);
                        linkedHashMap.put(m5767, c47053);
                        c47053.f17785.add(c25752);
                        c4705 = c47053;
                    }
                }
            }
        }
        return linkedHashMap;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final int m9420(char c) {
        if ('0' <= c && c < ':') {
            return c - '0';
        }
        if ('a' <= c && c < 'g') {
            return c - 'W';
        }
        if ('A' <= c && c < 'G') {
            return c - '7';
        }
        throw new IllegalArgumentException("Unexpected hex digit: " + c);
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final void m9421(InterfaceC2592 interfaceC2592, int i, InterfaceC4087 interfaceC4087) {
        long j = i;
        while (j != 0) {
            if (j < 4) {
                throw new IOException("bad zip: truncated header in extra field");
            }
            int mo5793 = interfaceC2592.mo5793() & 65535;
            long mo57932 = interfaceC2592.mo5793() & 65535;
            long j2 = j - 4;
            if (j2 < mo57932) {
                throw new IOException("bad zip: truncated value in extra field");
            }
            interfaceC2592.mo5802(mo57932);
            long j3 = interfaceC2592.mo5794().f9835;
            interfaceC4087.mo3749(Integer.valueOf(mo5793), Long.valueOf(mo57932));
            long j4 = (interfaceC2592.mo5794().f9835 + mo57932) - j3;
            if (j4 < 0) {
                throw new IOException(AbstractC3740.m7932(mo5793, "unsupported zip: too many bytes processed for "));
            }
            if (j4 > 0) {
                interfaceC2592.mo5794().skip(j4);
            }
            j = j2 - mo57932;
        }
    }
}
