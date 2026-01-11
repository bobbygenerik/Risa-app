package p084;

import java.util.regex.Pattern;
import p305.C3732;

/* renamed from: ʿˎ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1728 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final Pattern f7076 = Pattern.compile("\\[voice=\"([^\"]*)\"\\]");

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final Pattern f7077 = Pattern.compile("^((?:[0-9]*\\.)?[0-9]+)(px|em|%)$");

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3732 f7079 = new C3732();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final StringBuilder f7078 = new StringBuilder();

    /* renamed from: ʽ, reason: contains not printable characters */
    public static void m4673(C3732 c3732) {
        while (true) {
            for (boolean z = true; c3732.m7904() > 0 && z; z = false) {
                int i = c3732.f14533;
                byte[] bArr = c3732.f14534;
                byte b = bArr[i];
                char c = (char) b;
                if (c == '\t' || c == '\n' || c == '\f' || c == '\r' || c == ' ') {
                    c3732.m7900(1);
                } else {
                    int i2 = c3732.f14532;
                    int i3 = i + 2;
                    if (i3 <= i2) {
                        int i4 = i + 1;
                        if (b == 47 && bArr[i4] == 42) {
                            while (true) {
                                int i5 = i3 + 1;
                                if (i5 >= i2) {
                                    break;
                                }
                                if (((char) bArr[i3]) == '*' && ((char) bArr[i5]) == '/') {
                                    i3 += 2;
                                    i2 = i3;
                                } else {
                                    i3 = i5;
                                }
                            }
                            c3732.m7900(i2 - c3732.f14533);
                        }
                    }
                }
            }
            return;
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static String m4674(C3732 c3732, StringBuilder sb) {
        m4673(c3732);
        if (c3732.m7904() == 0) {
            return null;
        }
        String m4675 = m4675(c3732, sb);
        if (!m4675.isEmpty()) {
            return m4675;
        }
        return "" + ((char) c3732.m7874());
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static String m4675(C3732 c3732, StringBuilder sb) {
        boolean z = false;
        sb.setLength(0);
        int i = c3732.f14533;
        int i2 = c3732.f14532;
        while (i < i2 && !z) {
            char c = (char) c3732.f14534[i];
            if ((c < 'A' || c > 'Z') && ((c < 'a' || c > 'z') && !((c >= '0' && c <= '9') || c == '#' || c == '-' || c == '.' || c == '_'))) {
                z = true;
            } else {
                i++;
                sb.append(c);
            }
        }
        c3732.m7900(i - c3732.f14533);
        return sb.toString();
    }
}
