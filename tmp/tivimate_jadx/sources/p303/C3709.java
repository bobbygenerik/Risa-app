package p303;

import p152.AbstractC2444;
import p435.AbstractC5143;
import ˈˊ.ˉˆ;
import ﹳٴ.ﹳٴ;

/* renamed from: ᐧˊ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3709 implements Comparable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final long f14466;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final /* synthetic */ int f14467 = 0;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final long f14468;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final long f14469;

    static {
        int i = AbstractC3708.f14465;
        f14468 = ﹳٴ.ʼᐧ(4611686018427387903L);
        f14466 = ﹳٴ.ʼᐧ(-4611686018427387903L);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static int m7743(long j, long j2) {
        long j3 = j ^ j2;
        if (j3 < 0 || (((int) j3) & 1) == 0) {
            return AbstractC2444.m5564(j, j2);
        }
        int i = (((int) j) & 1) - (((int) j2) & 1);
        return j < 0 ? -i : i;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final boolean m7744(long j) {
        return j == f14468 || j == f14466;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final long m7745(long j, EnumC3707 enumC3707) {
        if (j == f14468) {
            return Long.MAX_VALUE;
        }
        if (j == f14466) {
            return Long.MIN_VALUE;
        }
        return enumC3707.f14464.convert(j >> 1, ((((int) j) & 1) == 0 ? EnumC3707.NANOSECONDS : EnumC3707.MILLISECONDS).f14464);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final void m7746(StringBuilder sb, int i, int i2, int i3, String str, boolean z) {
        sb.append(i);
        if (i2 != 0) {
            sb.append('.');
            String m10117 = AbstractC5143.m10117(i3, String.valueOf(i2));
            int i4 = -1;
            int length = m10117.length() - 1;
            if (length >= 0) {
                while (true) {
                    int i5 = length - 1;
                    if (m10117.charAt(length) != '0') {
                        i4 = length;
                        break;
                    } else if (i5 < 0) {
                        break;
                    } else {
                        length = i5;
                    }
                }
            }
            int i6 = i4 + 1;
            if (z || i6 >= 3) {
                sb.append((CharSequence) m10117, 0, ((i4 + 3) / 3) * 3);
            } else {
                sb.append((CharSequence) m10117, 0, i6);
            }
        }
        sb.append(str);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final long m7747(long j, long j2) {
        long j3 = 1000000;
        long j4 = j2 / j3;
        long j5 = j + j4;
        if (-4611686018426L > j5 || j5 >= 4611686018427L) {
            return ﹳٴ.ʼᐧ(ˉˆ.ˆʾ(j5, -4611686018427387903L, 4611686018427387903L));
        }
        return ﹳٴ.ᵔﹳ((j5 * j3) + (j2 - (j4 * j3)));
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return m7743(this.f14469, ((C3709) obj).f14469);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C3709) {
            return this.f14469 == ((C3709) obj).f14469;
        }
        return false;
    }

    public final int hashCode() {
        long j = this.f14469;
        return (int) (j ^ (j >>> 32));
    }

    public final String toString() {
        long j;
        int m7745;
        int i;
        long j2;
        int i2;
        int i3;
        long j3 = this.f14469;
        if (j3 == 0) {
            return "0s";
        }
        if (j3 == f14468) {
            return "Infinity";
        }
        if (j3 == f14466) {
            return "-Infinity";
        }
        boolean z = j3 < 0;
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append('-');
        }
        if (j3 < 0) {
            j3 = (((int) j3) & 1) + ((-(j3 >> 1)) << 1);
            int i4 = AbstractC3708.f14465;
        }
        long m77452 = m7745(j3, EnumC3707.DAYS);
        int m77453 = m7744(j3) ? 0 : (int) (m7745(j3, EnumC3707.HOURS) % 24);
        if (m7744(j3)) {
            j = 0;
            m7745 = 0;
        } else {
            j = 0;
            m7745 = (int) (m7745(j3, EnumC3707.MINUTES) % 60);
        }
        int m77454 = m7744(j3) ? 0 : (int) (m7745(j3, EnumC3707.SECONDS) % 60);
        if (m7744(j3)) {
            i = 1;
            i2 = 0;
        } else {
            if ((((int) j3) & 1) == 1) {
                i = 1;
                j2 = ((j3 >> 1) % 1000) * 1000000;
            } else {
                i = 1;
                j2 = (j3 >> 1) % 1000000000;
            }
            i2 = (int) j2;
        }
        int i5 = m77452 != j ? i : 0;
        int i6 = m77453 != 0 ? i : 0;
        int i7 = m7745 != 0 ? i : 0;
        int i8 = (m77454 == 0 && i2 == 0) ? 0 : i;
        if (i5 != 0) {
            sb.append(m77452);
            sb.append('d');
            i3 = i;
        } else {
            i3 = 0;
        }
        if (i6 != 0 || (i5 != 0 && (i7 != 0 || i8 != 0))) {
            int i9 = i3 + 1;
            if (i3 > 0) {
                sb.append(' ');
            }
            sb.append(m77453);
            sb.append('h');
            i3 = i9;
        }
        if (i7 != 0 || (i8 != 0 && (i6 != 0 || i5 != 0))) {
            int i10 = i3 + 1;
            if (i3 > 0) {
                sb.append(' ');
            }
            sb.append(m7745);
            sb.append('m');
            i3 = i10;
        }
        if (i8 != 0) {
            int i11 = i3 + 1;
            if (i3 > 0) {
                sb.append(' ');
            }
            if (m77454 != 0 || i5 != 0 || i6 != 0 || i7 != 0) {
                m7746(sb, m77454, i2, 9, "s", false);
            } else if (i2 >= 1000000) {
                m7746(sb, i2 / 1000000, i2 % 1000000, 6, "ms", false);
            } else if (i2 >= 1000) {
                m7746(sb, i2 / 1000, i2 % 1000, 3, "us", false);
            } else {
                sb.append(i2);
                sb.append("ns");
            }
            i3 = i11;
        }
        if (z && i3 > i) {
            sb.insert(i, '(').append(')');
        }
        return sb.toString();
    }
}
