package p312;

import android.text.Html;
import java.util.regex.Pattern;

/* renamed from: ᐧⁱ.ٴʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3865 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final Pattern f15046 = Pattern.compile("(&#13;)?&#10;");

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static String m8066(CharSequence charSequence) {
        return f15046.matcher(Html.escapeHtml(charSequence)).replaceAll("<br>");
    }
}
