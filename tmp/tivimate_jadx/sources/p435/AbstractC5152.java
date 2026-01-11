package p435;

import p152.AbstractC2444;
import ˉᵎ.ⁱˊ;

/* renamed from: ﹶˑ.ᵔﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC5152 extends AbstractC5141 {
    /* renamed from: ʿ, reason: contains not printable characters */
    public static boolean m10145(String str, String str2) {
        return str == null ? str2 == null : str.equalsIgnoreCase(str2);
    }

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public static String m10146(String str, String str2, String str3, boolean z) {
        int i = 0;
        int m10137 = AbstractC5143.m10137(str, str2, 0, z);
        if (m10137 < 0) {
            return str;
        }
        int length = str2.length();
        int i2 = length >= 1 ? length : 1;
        int length2 = str3.length() + (str.length() - length);
        if (length2 < 0) {
            throw new OutOfMemoryError();
        }
        StringBuilder sb = new StringBuilder(length2);
        do {
            sb.append((CharSequence) str, i, m10137);
            sb.append(str3);
            i = m10137 + length;
            if (m10137 >= str.length()) {
                break;
            }
            m10137 = AbstractC5143.m10137(str, str2, m10137 + i2, z);
        } while (m10137 > 0);
        sb.append((CharSequence) str, i, str.length());
        return sb.toString();
    }

    /* renamed from: ˉـ, reason: contains not printable characters */
    public static boolean m10147(String str, String str2, boolean z) {
        return !z ? str.endsWith(str2) : str.regionMatches(true, str.length() - str2.length(), str2, 0, str2.length());
    }

    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public static Long m10148(String str) {
        boolean z;
        ⁱˊ.ʽ(10);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i = 0;
        char charAt = str.charAt(0);
        long j = -9223372036854775807L;
        if (AbstractC2444.m5563(charAt, 48) < 0) {
            z = true;
            if (length == 1) {
                return null;
            }
            if (charAt == '+') {
                z = false;
                i = 1;
            } else {
                if (charAt != '-') {
                    return null;
                }
                j = Long.MIN_VALUE;
                i = 1;
            }
        } else {
            z = false;
        }
        long j2 = 0;
        long j3 = -256204778801521550L;
        while (i < length) {
            int digit = Character.digit((int) str.charAt(i), 10);
            if (digit < 0) {
                return null;
            }
            if (j2 < j3) {
                if (j3 != -256204778801521550L) {
                    return null;
                }
                j3 = j / 10;
                if (j2 < j3) {
                    return null;
                }
            }
            long j4 = j2 * 10;
            long j5 = digit;
            if (j4 < j + j5) {
                return null;
            }
            j2 = j4 - j5;
            i++;
        }
        return z ? Long.valueOf(j2) : Long.valueOf(-j2);
    }

    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    public static Integer m10149(String str) {
        boolean z;
        int i;
        int i2;
        ⁱˊ.ʽ(10);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i3 = 0;
        char charAt = str.charAt(0);
        int i4 = -2147483647;
        if (AbstractC2444.m5563(charAt, 48) < 0) {
            i = 1;
            if (length == 1) {
                return null;
            }
            if (charAt == '+') {
                z = false;
            } else {
                if (charAt != '-') {
                    return null;
                }
                i4 = Integer.MIN_VALUE;
                z = true;
            }
        } else {
            z = false;
            i = 0;
        }
        int i5 = -59652323;
        while (i < length) {
            int digit = Character.digit((int) str.charAt(i), 10);
            if (digit < 0) {
                return null;
            }
            if ((i3 < i5 && (i5 != -59652323 || i3 < (i5 = i4 / 10))) || (i2 = i3 * 10) < i4 + digit) {
                return null;
            }
            i3 = i2 - digit;
            i++;
        }
        return z ? Integer.valueOf(i3) : Integer.valueOf(-i3);
    }

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public static boolean m10150(String str, String str2, boolean z) {
        if (!z) {
            return str.startsWith(str2);
        }
        int length = str2.length();
        return !z ? str.regionMatches(0, str2, 0, length) : str.regionMatches(z, 0, str2, 0, length);
    }
}
