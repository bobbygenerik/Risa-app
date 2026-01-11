package p137;

import android.content.res.Resources;
import android.widget.ThemedSpinnerAdapter;
import j$.util.Objects;

/* renamed from: ˉˆ.ᵎⁱ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2321 {
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m5418(ThemedSpinnerAdapter themedSpinnerAdapter, Resources.Theme theme) {
        if (Objects.equals(themedSpinnerAdapter.getDropDownViewTheme(), theme)) {
            return;
        }
        themedSpinnerAdapter.setDropDownViewTheme(theme);
    }
}
