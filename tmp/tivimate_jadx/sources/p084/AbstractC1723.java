package p084;

import androidx.media3.common.ParserException;
import java.nio.charset.StandardCharsets;
import java.util.regex.Pattern;
import p305.AbstractC3712;
import p305.C3732;

/* renamed from: ʿˎ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1723 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final Pattern f7056 = Pattern.compile("^NOTE([ \t].*)?$");

    /* renamed from: ʽ, reason: contains not printable characters */
    public static long m4668(String str) {
        String str2 = AbstractC3712.f14481;
        String[] split = str.split("\\.", 2);
        long j = 0;
        for (String str3 : split[0].split(":", -1)) {
            j = (j * 60) + Long.parseLong(str3);
        }
        long j2 = j * 1000;
        if (split.length == 2) {
            String trim = split[1].trim();
            if (trim.length() != 3) {
                throw new IllegalArgumentException("Expected 3 decimal places, got: ".concat(trim));
            }
            j2 += Long.parseLong(trim);
        }
        return j2 * 1000;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static void m4669(C3732 c3732) {
        int i = c3732.f14533;
        if (m4671(c3732)) {
            return;
        }
        c3732.m7896(i);
        throw ParserException.m741(null, "Expected WEBVTT. Got " + c3732.m7906(StandardCharsets.UTF_8));
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static float m4670(String str) {
        if (str.endsWith("%")) {
            return Float.parseFloat(str.substring(0, str.length() - 1)) / 100.0f;
        }
        throw new NumberFormatException("Percentages must end with %");
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static boolean m4671(C3732 c3732) {
        c3732.getClass();
        String m7906 = c3732.m7906(StandardCharsets.UTF_8);
        return m7906 != null && m7906.startsWith("WEBVTT");
    }
}
