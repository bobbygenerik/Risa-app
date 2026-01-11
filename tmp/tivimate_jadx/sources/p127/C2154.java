package p127;

import androidx.media3.common.ParserException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p305.AbstractC3712;

/* renamed from: ˈـ.ˈٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2154 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C2154 f8375 = new C2154(0, -9223372036854775807L);

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final Pattern f8376 = Pattern.compile("npt[:=]([.\\d]+|now)\\s?-\\s?([.\\d]+)?");

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final long f8377;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final long f8378;

    public C2154(long j, long j2) {
        this.f8378 = j;
        this.f8377 = j2;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C2154 m5110(String str) {
        Matcher matcher = f8376.matcher(str);
        boolean matches = matcher.matches();
        Pattern pattern = AbstractC2166.f8450;
        if (!matches) {
            throw ParserException.m740(str, null);
        }
        String group = matcher.group(1);
        if (group == null) {
            throw ParserException.m740(str, null);
        }
        String str2 = AbstractC3712.f14481;
        long parseFloat = group.equals("now") ? 0L : Float.parseFloat(group) * 1000.0f;
        String group2 = matcher.group(2);
        long j = -9223372036854775807L;
        if (group2 != null) {
            try {
                long parseFloat2 = Float.parseFloat(group2) * 1000.0f;
                if (parseFloat2 >= parseFloat) {
                    j = parseFloat2;
                }
            } catch (NumberFormatException e) {
                throw ParserException.m740(group2, e);
            }
        }
        return new C2154(parseFloat, j);
    }
}
