package p435;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import p029.C1120;
import p029.C1125;
import p035.AbstractC1220;
import p081.C1716;
import p081.C1718;
import p137.AbstractC2305;
import p411.AbstractC4892;
import p430.AbstractC5114;
import p430.C5097;
import ʾʼ.ᵎˊ;
import ˉᵎ.ⁱˊ;
import ˏʽ.ʽ;

/* renamed from: ﹶˑ.ˆʾ */
/* loaded from: classes.dex */
public abstract class AbstractC5143 extends AbstractC5152 {
    /* renamed from: ʻʿ */
    public static String m10100(char c, String str, String str2) {
        int m10119 = m10119(str, c, 0, 6);
        return m10119 == -1 ? str2 : str.substring(m10119 + 1, str.length());
    }

    /* renamed from: ʻˋ */
    public static final int m10101(CharSequence charSequence, CharSequence charSequence2, int i, int i2, boolean z, boolean z2) {
        C1718 c1718;
        CharSequence charSequence3 = charSequence2;
        int i3 = i;
        int i4 = i2;
        if (z2) {
            int m10112 = m10112(charSequence);
            if (i3 > m10112) {
                i3 = m10112;
            }
            if (i4 < 0) {
                i4 = 0;
            }
            c1718 = new C1718(i3, i4, -1);
        } else {
            if (i3 < 0) {
                i3 = 0;
            }
            int length = charSequence.length();
            if (i4 > length) {
                i4 = length;
            }
            c1718 = new C1718(i3, i4, 1);
        }
        boolean z3 = charSequence instanceof String;
        int i5 = c1718.f7019;
        int i6 = c1718.f7021;
        int i7 = c1718.f7020;
        if (z3 && (charSequence3 instanceof String)) {
            if ((i5 > 0 && i7 <= i6) || (i5 < 0 && i6 <= i7)) {
                int i8 = i7;
                while (true) {
                    String str = (String) charSequence3;
                    String str2 = (String) charSequence;
                    int length2 = str.length();
                    if (!(!z ? str.regionMatches(0, str2, i8, length2) : str.regionMatches(z, 0, str2, i8, length2))) {
                        if (i8 == i6) {
                            break;
                        }
                        i8 += i5;
                    } else {
                        return i8;
                    }
                }
            }
        } else if ((i5 > 0 && i7 <= i6) || (i5 < 0 && i6 <= i7)) {
            int i9 = i7;
            while (!m10104(charSequence3, 0, charSequence, i9, charSequence3.length(), z)) {
                if (i9 != i6) {
                    i9 += i5;
                    charSequence3 = charSequence2;
                }
            }
            return i9;
        }
        return -1;
    }

    /* renamed from: ʻᴵ */
    public static List m10102(CharSequence charSequence, String[] strArr) {
        if (strArr.length == 1) {
            String str = strArr[0];
            if (str.length() != 0) {
                return m10133(charSequence, str);
            }
        }
        C1120 c1120 = new C1120(0, new C1125(charSequence, new ʽ(4, Arrays.asList(strArr)), 1));
        ArrayList arrayList = new ArrayList(AbstractC5114.m10060(c1120, 10));
        Iterator it = c1120.iterator();
        while (true) {
            C5153 c5153 = (C5153) it;
            if (!c5153.hasNext()) {
                return arrayList;
            }
            C1716 c1716 = (C1716) c5153.next();
            arrayList.add(charSequence.subSequence(c1716.f7020, c1716.f7021 + 1).toString());
        }
    }

    /* renamed from: ʼـ */
    public static final boolean m10104(CharSequence charSequence, int i, CharSequence charSequence2, int i2, int i3, boolean z) {
        if (i2 < 0 || i < 0 || i > charSequence.length() - i3 || i2 > charSequence2.length() - i3) {
            return false;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            if (!ⁱˊ.ˆʾ(charSequence.charAt(i + i4), charSequence2.charAt(i2 + i4), z)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: ʼᵢ */
    public static String m10105(String str, char... cArr) {
        int length = str.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            char charAt = str.charAt(!z ? i : length);
            int length2 = cArr.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length2) {
                    i2 = -1;
                    break;
                }
                if (charAt == cArr[i2]) {
                    break;
                }
                i2++;
            }
            boolean z2 = i2 >= 0;
            if (z) {
                if (!z2) {
                    break;
                }
                length--;
            } else if (z2) {
                i++;
            } else {
                z = true;
            }
        }
        return str.subSequence(i, length + 1).toString();
    }

    /* renamed from: ʽˑ */
    public static String m10106(int i, String str) {
        if (i < 0) {
            throw new IllegalArgumentException(AbstractC1220.m3773(i, "Requested character count ", " is less than zero.").toString());
        }
        int length = str.length();
        if (i > length) {
            i = length;
        }
        return str.substring(0, i);
    }

    /* renamed from: ʽᵔ */
    public static char m10107(CharSequence charSequence) {
        if (charSequence.length() != 0) {
            return charSequence.charAt(m10112(charSequence));
        }
        throw new NoSuchElementException("Char sequence is empty.");
    }

    /* renamed from: ʽⁱ */
    public static StringBuilder m10108(int i, int i2, String str, String str2) {
        if (i2 < i) {
            throw new IndexOutOfBoundsException(AbstractC4892.m9681("End index (", i2, ") is less than start index (", i, ")."));
        }
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) str, 0, i);
        sb.append((CharSequence) str2);
        sb.append((CharSequence) str, i2, str.length());
        return sb;
    }

    /* renamed from: ʾˊ */
    public static List m10109(String str) {
        C5142 c5142 = new C5142(str);
        if (!c5142.hasNext()) {
            return C5097.f19202;
        }
        Object next = c5142.next();
        if (!c5142.hasNext()) {
            return Collections.singletonList(next);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(next);
        while (c5142.hasNext()) {
            arrayList.add(c5142.next());
        }
        return arrayList;
    }

    /* renamed from: ʾﾞ */
    public static StringBuilder m10110(String str) {
        return new StringBuilder((CharSequence) str).reverse();
    }

    /* renamed from: ʿـ */
    public static String m10111(char c, String str, String str2) {
        int m10118 = m10118(str, c, 0, 6);
        return m10118 == -1 ? str2 : str.substring(m10118 + 1, str.length());
    }

    /* renamed from: ˈˏ */
    public static final int m10112(CharSequence charSequence) {
        return charSequence.length() - 1;
    }

    /* renamed from: ˊᵔ */
    public static boolean m10113(String str, CharSequence charSequence, boolean z) {
        return (!z && AbstractC2305.m5366(str) && (charSequence instanceof String)) ? AbstractC5152.m10147(str, (String) charSequence, false) : m10104(str, str.length() - charSequence.length(), charSequence, 0, charSequence.length(), z);
    }

    /* renamed from: ˋˊ */
    public static CharSequence m10114(CharSequence charSequence) {
        int length = charSequence.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean z2 = ⁱˊ.ˊʻ(charSequence.charAt(!z ? i : length));
            if (z) {
                if (!z2) {
                    break;
                }
                length--;
            } else if (z2) {
                i++;
            } else {
                z = true;
            }
        }
        return charSequence.subSequence(i, length + 1);
    }

    /* renamed from: ˎᐧ */
    public static String m10115(String str, String str2) {
        return m10122(str, str2, false) ? str.substring(str2.length()) : str;
    }

    /* renamed from: ˏᵢ */
    public static boolean m10116(CharSequence charSequence, CharSequence charSequence2, boolean z) {
        if (charSequence2 instanceof String) {
            if (m10127(charSequence, (String) charSequence2, 0, z, 2) >= 0) {
                return true;
            }
        } else if (m10101(charSequence, charSequence2, 0, charSequence.length(), z, false) >= 0) {
            return true;
        }
        return false;
    }

    /* renamed from: ˑ */
    public static String m10117(int i, String str) {
        CharSequence charSequence;
        if (i < 0) {
            throw new IllegalArgumentException(AbstractC1220.m3773(i, "Desired length ", " is less than zero."));
        }
        if (i <= str.length()) {
            charSequence = str.subSequence(0, str.length());
        } else {
            StringBuilder sb = new StringBuilder(i);
            int length = i - str.length();
            int i2 = 1;
            if (1 <= length) {
                while (true) {
                    sb.append('0');
                    if (i2 == length) {
                        break;
                    }
                    i2++;
                }
            }
            sb.append((CharSequence) str);
            charSequence = sb;
        }
        return charSequence.toString();
    }

    /* renamed from: ˑʼ */
    public static int m10118(CharSequence charSequence, char c, int i, int i2) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return !(charSequence instanceof String) ? m10131(charSequence, new char[]{c}, i, false) : ((String) charSequence).indexOf(c, i);
    }

    /* renamed from: י */
    public static int m10119(String str, char c, int i, int i2) {
        if ((i2 & 2) != 0) {
            i = m10112(str);
        }
        if (AbstractC2305.m5366(str)) {
            return str.lastIndexOf(c, i);
        }
        char[] cArr = {c};
        if (AbstractC2305.m5366(str)) {
            return str.lastIndexOf(cArr[0], i);
        }
        int m10112 = m10112(str);
        if (i > m10112) {
            i = m10112;
        }
        while (-1 < i) {
            if (ⁱˊ.ˆʾ(cArr[0], str.charAt(i), false)) {
                return i;
            }
            i--;
        }
        return -1;
    }

    /* renamed from: יˉ */
    public static String m10120(String str, char... cArr) {
        CharSequence charSequence;
        int length = str.length();
        int i = 0;
        while (true) {
            if (i >= length) {
                charSequence = "";
                break;
            }
            char charAt = str.charAt(i);
            int length2 = cArr.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length2) {
                    i2 = -1;
                    break;
                }
                if (charAt == cArr[i2]) {
                    break;
                }
                i2++;
            }
            if (!(i2 >= 0)) {
                charSequence = str.subSequence(i, str.length());
                break;
            }
            i++;
        }
        return charSequence.toString();
    }

    /* renamed from: יﹳ */
    public static String m10121(String str, String str2) {
        return m10113(str, str2, false) ? str.substring(0, str.length() - str2.length()) : str;
    }

    /* renamed from: ـˊ */
    public static boolean m10122(String str, String str2, boolean z) {
        return (!z && AbstractC2305.m5366(str) && AbstractC2305.m5366(str2)) ? AbstractC5152.m10150(str, str2, false) : m10104(str, 0, str2, 0, str2.length(), z);
    }

    /* renamed from: ـᵎ */
    public static boolean m10123(CharSequence charSequence) {
        for (int i = 0; i < charSequence.length(); i++) {
            if (!ⁱˊ.ˊʻ(charSequence.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: ـᵢ */
    public static String m10124(char c, String str, String str2) {
        int m10118 = m10118(str, c, 0, 6);
        return m10118 == -1 ? str2 : str.substring(0, m10118);
    }

    /* renamed from: ـﹶ */
    public static boolean m10125(CharSequence charSequence, char c) {
        return charSequence.length() > 0 && ⁱˊ.ˆʾ(charSequence.charAt(m10112(charSequence)), c, false);
    }

    /* renamed from: ٴᴵ */
    public static String m10126(String str, String str2) {
        int m10127 = m10127(str, str2, 0, false, 6);
        return m10127 == -1 ? str : str.substring(0, m10127);
    }

    /* renamed from: ٴﹳ */
    public static /* synthetic */ int m10127(CharSequence charSequence, String str, int i, boolean z, int i2) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return m10137(charSequence, str, i, z);
    }

    /* renamed from: ᐧˎ */
    public static List m10128(CharSequence charSequence, char[] cArr) {
        if (cArr.length == 1) {
            return m10133(charSequence, String.valueOf(cArr[0]));
        }
        C1120 c1120 = new C1120(0, new C1125(charSequence, new ᵎˊ(13, cArr), 1));
        ArrayList arrayList = new ArrayList(AbstractC5114.m10060(c1120, 10));
        Iterator it = c1120.iterator();
        while (true) {
            C5153 c5153 = (C5153) it;
            if (!c5153.hasNext()) {
                return arrayList;
            }
            C1716 c1716 = (C1716) c5153.next();
            arrayList.add(charSequence.subSequence(c1716.f7020, c1716.f7021 + 1).toString());
        }
    }

    /* renamed from: ᐧﹶ */
    public static int m10129(int i, String str, String str2) {
        int m10112 = (i & 2) != 0 ? m10112(str) : 0;
        return !AbstractC2305.m5366(str) ? m10101(str, str2, m10112, 0, false, true) : str.lastIndexOf(str2, m10112);
    }

    /* renamed from: ᴵʼ */
    public static boolean m10130(CharSequence charSequence, char c) {
        return m10118(charSequence, c, 0, 2) >= 0;
    }

    /* renamed from: ᵎʻ */
    public static final int m10131(CharSequence charSequence, char[] cArr, int i, boolean z) {
        if (!z && cArr.length == 1 && (charSequence instanceof String)) {
            int length = cArr.length;
            if (length == 0) {
                throw new NoSuchElementException("Array is empty.");
            }
            if (length != 1) {
                throw new IllegalArgumentException("Array has more than one element.");
            }
            return ((String) charSequence).indexOf(cArr[0], i);
        }
        if (i < 0) {
            i = 0;
        }
        int m10112 = m10112(charSequence);
        if (i > m10112) {
            return -1;
        }
        while (true) {
            char charAt = charSequence.charAt(i);
            for (char c : cArr) {
                if (ⁱˊ.ˆʾ(c, charAt, z)) {
                    return i;
                }
            }
            if (i == m10112) {
                return -1;
            }
            i++;
        }
    }

    /* renamed from: ᵎʿ */
    public static boolean m10132(String str, char c) {
        return str.length() > 0 && ⁱˊ.ˆʾ(str.charAt(0), c, false);
    }

    /* renamed from: ⁱˉ */
    public static final List m10133(CharSequence charSequence, String str) {
        int m10137 = m10137(charSequence, str, 0, false);
        if (m10137 == -1) {
            return Collections.singletonList(charSequence.toString());
        }
        ArrayList arrayList = new ArrayList(10);
        int i = 0;
        do {
            arrayList.add(charSequence.subSequence(i, m10137).toString());
            i = str.length() + m10137;
            m10137 = m10137(charSequence, str, i, false);
        } while (m10137 != -1);
        arrayList.add(charSequence.subSequence(i, charSequence.length()).toString());
        return arrayList;
    }

    /* renamed from: ⁱᴵ */
    public static String m10135(String str, char c) {
        int m10119 = m10119(str, c, 0, 6);
        return m10119 == -1 ? str : str.substring(0, m10119);
    }

    /* renamed from: ﹳⁱ */
    public static String m10136(String str, String str2, String str3) {
        int m10127 = m10127(str, str2, 0, false, 6);
        return m10127 == -1 ? str3 : str.substring(str2.length() + m10127, str.length());
    }

    /* renamed from: ﹳﹳ */
    public static int m10137(CharSequence charSequence, String str, int i, boolean z) {
        return (z || !(charSequence instanceof String)) ? m10101(charSequence, str, i, charSequence.length(), z, false) : ((String) charSequence).indexOf(str, i);
    }

    /* renamed from: ﹶ */
    public static String m10138(String str, String str2) {
        int m10129 = m10129(6, str, str2);
        return m10129 == -1 ? str : str.substring(str2.length() + m10129, str.length());
    }

    /* renamed from: ﹶˎ */
    public static String m10139(String str, String str2) {
        int m10129 = m10129(6, str, str2);
        return m10129 == -1 ? str : str.substring(0, m10129);
    }

    /* renamed from: ﹶᐧ */
    public static Character m10140(int i, String str) {
        if (i < 0 || i >= str.length()) {
            return null;
        }
        return Character.valueOf(str.charAt(i));
    }
}
