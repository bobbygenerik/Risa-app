package p082;

import p394.AbstractC4710;
import p435.AbstractC5143;

/* renamed from: ʿˉ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1719 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final char[] f7022 = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final boolean m4656(int i, int i2, String str) {
        int i3 = i + 2;
        return i3 < i2 && str.charAt(i) == '%' && AbstractC4710.m9433(str.charAt(i + 1)) != -1 && AbstractC4710.m9433(str.charAt(i3)) != -1;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, ˊᐧ.ﾞᴵ] */
    /* renamed from: ˈ, reason: contains not printable characters */
    public static String m4657(int i, int i2, int i3, String str) {
        int i4;
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = str.length();
        }
        boolean z = (i3 & 4) == 0;
        int i5 = i;
        while (i5 < i2) {
            char charAt = str.charAt(i5);
            if (charAt == '%' || (charAt == '+' && z)) {
                ?? obj = new Object();
                obj.m5824(i, i5, str);
                while (i5 < i2) {
                    int codePointAt = str.codePointAt(i5);
                    if (codePointAt != 37 || (i4 = i5 + 2) >= i2) {
                        if (codePointAt == 43 && z) {
                            obj.m5825(32);
                            i5++;
                        }
                        obj.m5842(codePointAt);
                        i5 += Character.charCount(codePointAt);
                    } else {
                        int m9433 = AbstractC4710.m9433(str.charAt(i5 + 1));
                        int m94332 = AbstractC4710.m9433(str.charAt(i4));
                        if (m9433 != -1 && m94332 != -1) {
                            obj.m5825((m9433 << 4) + m94332);
                            i5 = Character.charCount(codePointAt) + i4;
                        }
                        obj.m5842(codePointAt);
                        i5 += Character.charCount(codePointAt);
                    }
                }
                return obj.m5843();
            }
            i5++;
        }
        return str.substring(i, i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5, types: [ˊᐧ.ﾞᴵ] */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.Object, ˊᐧ.ﾞᴵ] */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static String m4658(String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4, int i3) {
        int i4 = 0;
        int i5 = (i3 & 1) != 0 ? 0 : i;
        int length = (i3 & 2) != 0 ? str.length() : i2;
        boolean z5 = (i3 & 8) != 0 ? false : z;
        boolean z6 = (i3 & 16) != 0 ? false : z2;
        boolean z7 = (i3 & 64) != 0 ? false : z4;
        int i6 = i5;
        while (i6 < length) {
            int codePointAt = str.codePointAt(i6);
            if (codePointAt < 32 || codePointAt == 127 || ((codePointAt >= 128 && !z7) || AbstractC5143.m10130(str2, (char) codePointAt) || ((codePointAt == 37 && (!z5 || (z6 && !m4656(i6, length, str)))) || (codePointAt == 43 && z3)))) {
                ?? obj = new Object();
                obj.m5824(i5, i6, str);
                ?? r2 = 0;
                while (i6 < length) {
                    int codePointAt2 = str.codePointAt(i6);
                    if (!z5 || (codePointAt2 != 9 && codePointAt2 != 10 && codePointAt2 != 12 && codePointAt2 != 13)) {
                        if (codePointAt2 == 32 && str2 == " !\"#$&'()+,/:;<=>?@[\\]^`{|}~") {
                            obj.m5824(i4, 1, "+");
                        } else if (codePointAt2 == 43 && z3) {
                            String str3 = z5 ? "+" : "%2B";
                            obj.m5824(i4, str3.length(), str3);
                        } else {
                            if (codePointAt2 >= 32 && codePointAt2 != 127) {
                                if ((codePointAt2 < 128 || z7) && !AbstractC5143.m10130(str2, (char) codePointAt2) && (codePointAt2 != 37 || (z5 && (!z6 || m4656(i6, length, str))))) {
                                    obj.m5842(codePointAt2);
                                }
                            }
                            if (r2 == 0) {
                                r2 = new Object();
                            }
                            r2.m5842(codePointAt2);
                            while (!r2.mo5805()) {
                                byte readByte = r2.readByte();
                                obj.m5825(37);
                                char[] cArr = f7022;
                                obj.m5825(cArr[((readByte & 255) >> 4) & 15]);
                                obj.m5825(cArr[readByte & 15]);
                            }
                        }
                    }
                    i6 += Character.charCount(codePointAt2);
                    i4 = 0;
                    r2 = r2;
                }
                return obj.m5843();
            }
            i6 += Character.charCount(codePointAt);
        }
        return str.substring(i5, length);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static String m4659(String str, int i, int i2, String str2, int i3) {
        int i4 = (i3 & 1) != 0 ? 0 : i;
        if ((i3 & 2) != 0) {
            i2 = str.length();
        }
        return m4658(str, i4, i2, str2, (i3 & 8) == 0, (i3 & 16) == 0, (i3 & 32) == 0, (i3 & 64) == 0, 128);
    }
}
