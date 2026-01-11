package p266;

import android.text.TextUtils;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p035.AbstractC1220;

/* renamed from: ـˊ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3455 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final Pattern f13570 = Pattern.compile("bytes (\\d+)-(\\d+)/(?:\\d+|\\*)");

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final Pattern f13569 = Pattern.compile("bytes (?:(?:\\d+-\\d+)|\\*)/(\\d+)");

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static long m7360(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1L;
        }
        Matcher matcher = f13569.matcher(str);
        if (!matcher.matches()) {
            return -1L;
        }
        String group = matcher.group(1);
        group.getClass();
        return Long.parseLong(group);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static String m7361(long j, long j2) {
        if (j == 0 && j2 == -1) {
            return null;
        }
        StringBuilder m3770 = AbstractC1220.m3770(j, "bytes=", "-");
        if (j2 != -1) {
            m3770.append((j + j2) - 1);
        }
        return m3770.toString();
    }
}
