package p306;

import android.graphics.PointF;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p305.AbstractC3712;
import p305.AbstractC3731;

/* renamed from: ᐧˏ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3735 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final Pattern f14539;

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final Pattern f14540;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final Pattern f14541;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final Pattern f14542 = Pattern.compile("\\{([^}]*)\\}");

    static {
        String str = AbstractC3712.f14481;
        Locale locale = Locale.US;
        f14541 = Pattern.compile(String.format(locale, "\\\\pos\\((%1$s),(%1$s)\\)", "\\s*\\d+(?:\\.\\d+)?\\s*"));
        f14539 = Pattern.compile(String.format(locale, "\\\\move\\(%1$s,%1$s,(%1$s),(%1$s)(?:,%1$s,%1$s)?\\)", "\\s*\\d+(?:\\.\\d+)?\\s*"));
        f14540 = Pattern.compile("\\\\an(\\d+)");
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static PointF m7908(String str) {
        String group;
        String group2;
        Matcher matcher = f14541.matcher(str);
        Matcher matcher2 = f14539.matcher(str);
        boolean find = matcher.find();
        boolean find2 = matcher2.find();
        if (find) {
            if (find2) {
                AbstractC3731.m7845("SsaStyle.Overrides", "Override has both \\pos(x,y) and \\move(x1,y1,x2,y2); using \\pos values. override='" + str + "'");
            }
            group = matcher.group(1);
            group2 = matcher.group(2);
        } else {
            if (!find2) {
                return null;
            }
            group = matcher2.group(1);
            group2 = matcher2.group(2);
        }
        group.getClass();
        float parseFloat = Float.parseFloat(group.trim());
        group2.getClass();
        return new PointF(parseFloat, Float.parseFloat(group2.trim()));
    }
}
