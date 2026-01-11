package p388;

import android.os.Bundle;
import android.text.Spanned;
import p305.AbstractC3712;

/* renamed from: ⁱˉ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4621 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final String f17230;

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final String f17231;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final String f17232;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final String f17233;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final String f17234;

    static {
        String str = AbstractC3712.f14481;
        f17234 = Integer.toString(0, 36);
        f17233 = Integer.toString(1, 36);
        f17230 = Integer.toString(2, 36);
        f17231 = Integer.toString(3, 36);
        f17232 = Integer.toString(4, 36);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static Bundle m9181(Spanned spanned, Object obj, int i, Bundle bundle) {
        Bundle bundle2 = new Bundle();
        bundle2.putInt(f17234, spanned.getSpanStart(obj));
        bundle2.putInt(f17233, spanned.getSpanEnd(obj));
        bundle2.putInt(f17230, spanned.getSpanFlags(obj));
        bundle2.putInt(f17231, i);
        if (bundle != null) {
            bundle2.putBundle(f17232, bundle);
        }
        return bundle2;
    }
}
