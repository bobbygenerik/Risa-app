package p305;

import java.util.Locale;
import java.util.regex.Pattern;

/* renamed from: ᐧˎ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3715 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final byte[] f14490 = {0, 0, 0, 1};

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final String[] f14489 = {"", "A", "B", "C"};

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final Pattern f14488 = Pattern.compile("^\\D?(\\d+)$");

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0235  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x023b  */
    /* renamed from: ʽ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair m7812(p055.C1495 r33) {
        /*
            Method dump skipped, instructions count: 2134
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p305.AbstractC3715.m7812(ʽⁱ.ﹳᐧ):android.util.Pair");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0167, code lost:
    
        if (r12.equals("L60") == false) goto L28;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x026d  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0273  */
    /* renamed from: ˈ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair m7813(java.lang.String r11, java.lang.String[] r12, p055.C1446 r13) {
        /*
            Method dump skipped, instructions count: 806
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p305.AbstractC3715.m7813(java.lang.String, java.lang.String[], ʽⁱ.ʼˎ):android.util.Pair");
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static String m7814(int i, boolean z, int i2, int i3, int[] iArr, int i4) {
        Object[] objArr = {f14489[i], Integer.valueOf(i2), Integer.valueOf(i3), Character.valueOf(z ? 'H' : 'L'), Integer.valueOf(i4)};
        String str = AbstractC3712.f14481;
        StringBuilder sb = new StringBuilder(String.format(Locale.US, "hvc1.%s%d.%X.%c%d", objArr));
        int length = iArr.length;
        while (length > 0 && iArr[length - 1] == 0) {
            length--;
        }
        for (int i5 = 0; i5 < length; i5++) {
            sb.append(String.format(".%02X", Integer.valueOf(iArr[i5])));
        }
        return sb.toString();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static String m7815(int i, int i2, int i3) {
        return String.format("avc1.%02X%02X%02X", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3));
    }
}
