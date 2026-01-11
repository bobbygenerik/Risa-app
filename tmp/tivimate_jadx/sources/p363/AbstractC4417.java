package p363;

import android.content.res.Configuration;
import android.os.LocaleList;
import p114.C1981;

/* renamed from: ᵔᵢ.ˏי, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4417 {
    /* renamed from: ʽ, reason: contains not printable characters */
    public static void m8920(C1981 c1981) {
        LocaleList.setDefault(LocaleList.forLanguageTags(c1981.f7840.mo4969()));
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static void m8921(Configuration configuration, C1981 c1981) {
        configuration.setLocales(LocaleList.forLanguageTags(c1981.f7840.mo4969()));
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static C1981 m8922(Configuration configuration) {
        return C1981.m4966(configuration.getLocales().toLanguageTags());
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m8923(Configuration configuration, Configuration configuration2, Configuration configuration3) {
        LocaleList locales = configuration.getLocales();
        LocaleList locales2 = configuration2.getLocales();
        if (locales.equals(locales2)) {
            return;
        }
        configuration3.setLocales(locales2);
        configuration3.locale = configuration2.locale;
    }
}
