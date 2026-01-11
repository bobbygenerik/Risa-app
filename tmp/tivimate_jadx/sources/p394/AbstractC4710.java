package p394;

import com.google.android.gms.internal.measurement.ᵎ;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.Comparator;
import p035.AbstractC1220;
import p152.AbstractC2444;
import p164.C2571;
import p164.C2583;
import p164.InterfaceC2592;
import p435.AbstractC5143;
import ٴﾞ.ˆʾ;

/* renamed from: ⁱᐧ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4710 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final byte[] f17800 = new byte[0];

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C2583 f17799 = ᵎ.ʼᐧ(new C2571[]{ˆʾ.ﹳᐧ("efbbbf"), ˆʾ.ﹳᐧ("feff"), ˆʾ.ﹳᐧ("fffe0000"), ˆʾ.ﹳᐧ("fffe"), ˆʾ.ﹳᐧ("0000feff")});

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static final String[] m9427(String[] strArr, String[] strArr2, Comparator comparator) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            int length = strArr2.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                if (comparator.compare(str, strArr2[i]) == 0) {
                    arrayList.add(str);
                    break;
                }
                i++;
            }
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final int m9428(int i, int i2, String str, String str2) {
        while (i < i2) {
            if (AbstractC5143.m10130(str2, str.charAt(i))) {
                return i;
            }
            i++;
        }
        return i2;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static final boolean m9429(String str) {
        return str.equalsIgnoreCase("Authorization") || str.equalsIgnoreCase("Cookie") || str.equalsIgnoreCase("Proxy-Authorization") || str.equalsIgnoreCase("Set-Cookie");
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final int m9430(String str, char c, int i, int i2) {
        while (i < i2) {
            if (str.charAt(i) == c) {
                return i;
            }
            i++;
        }
        return i2;
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static final int m9431(int i, String str) {
        if (str == null) {
            return i;
        }
        try {
            long parseLong = Long.parseLong(str);
            if (parseLong > 2147483647L) {
                return Integer.MAX_VALUE;
            }
            if (parseLong < 0) {
                return 0;
            }
            return (int) parseLong;
        } catch (NumberFormatException unused) {
            return i;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0033, code lost:
    
        r2 = r2 + 1;
     */
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean m9432(java.lang.String[] r7, java.lang.String[] r8, java.util.Comparator r9) {
        /*
            int r0 = r7.length
            r1 = 0
            if (r0 != 0) goto L5
            goto L36
        L5:
            if (r8 == 0) goto L36
            int r0 = r8.length
            if (r0 != 0) goto Lb
            goto L36
        Lb:
            int r0 = r7.length
            r2 = r1
        Ld:
            if (r2 >= r0) goto L36
            r3 = r7[r2]
            r4 = r1
        L12:
            int r5 = r8.length
            r6 = 1
            if (r4 >= r5) goto L18
            r5 = r6
            goto L19
        L18:
            r5 = r1
        L19:
            if (r5 == 0) goto L33
            int r5 = r4 + 1
            r4 = r8[r4]     // Catch: java.lang.ArrayIndexOutOfBoundsException -> L28
            int r4 = r9.compare(r3, r4)
            if (r4 != 0) goto L26
            return r6
        L26:
            r4 = r5
            goto L12
        L28:
            r7 = move-exception
            java.util.NoSuchElementException r8 = new java.util.NoSuchElementException
            java.lang.String r7 = r7.getMessage()
            r8.<init>(r7)
            throw r8
        L33:
            int r2 = r2 + 1
            goto Ld
        L36:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: p394.AbstractC4710.m9432(java.lang.String[], java.lang.String[], java.util.Comparator):boolean");
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static final int m9433(char c) {
        if ('0' <= c && c < ':') {
            return c - '0';
        }
        if ('a' <= c && c < 'g') {
            return c - 'W';
        }
        if ('A' > c || c >= 'G') {
            return -1;
        }
        return c - '7';
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final int m9434(int i, int i2, String str) {
        while (i < i2) {
            char charAt = str.charAt(i);
            if (charAt != '\t' && charAt != '\n' && charAt != '\f' && charAt != '\r' && charAt != ' ') {
                return i;
            }
            i++;
        }
        return i2;
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static final String m9435(int i, int i2, String str) {
        int m9434 = m9434(i, i2, str);
        return str.substring(m9434, m9436(m9434, i2, str));
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static final int m9436(int i, int i2, String str) {
        int i3 = i2 - 1;
        if (i <= i3) {
            while (true) {
                char charAt = str.charAt(i3);
                if (charAt != '\t' && charAt != '\n' && charAt != '\f' && charAt != '\r' && charAt != ' ') {
                    return i3 + 1;
                }
                if (i3 == i) {
                    break;
                }
                i3--;
            }
        }
        return i;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final void m9437(Closeable closeable) {
        try {
            closeable.close();
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception unused) {
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final void m9438(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            StringBuilder m3770 = AbstractC1220.m3770(j, "length=", ", offset=");
            m3770.append(j2);
            m3770.append(", count=");
            m3770.append(j2);
            throw new ArrayIndexOutOfBoundsException(m3770.toString());
        }
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static final int m9439(InterfaceC2592 interfaceC2592) {
        return (interfaceC2592.readByte() & 255) | ((interfaceC2592.readByte() & 255) << 16) | ((interfaceC2592.readByte() & 255) << 8);
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final int m9440(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (AbstractC2444.m5563(charAt, 31) <= 0 || AbstractC2444.m5563(charAt, 127) >= 0) {
                return i;
            }
        }
        return -1;
    }
}
