package p114;

import android.os.Build;
import com.google.android.gms.internal.measurement.AbstractC0473;
import java.util.Locale;

/* renamed from: ˆﾞ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1981 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C1981 f7839 = m4967(new Locale[0]);

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC1983 f7840;

    public C1981(InterfaceC1983 interfaceC1983) {
        this.f7840 = interfaceC1983;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static C1981 m4966(String str) {
        if (str == null || str.isEmpty()) {
            return f7839;
        }
        String[] split = str.split(",", -1);
        int length = split.length;
        Locale[] localeArr = new Locale[length];
        for (int i = 0; i < length; i++) {
            String str2 = split[i];
            int i2 = AbstractC1985.f7846;
            localeArr[i] = Locale.forLanguageTag(str2);
        }
        return m4967(localeArr);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C1981 m4967(Locale... localeArr) {
        return Build.VERSION.SDK_INT >= 24 ? new C1981(new C1987(AbstractC0473.m1916(localeArr))) : new C1981(new C1982(localeArr));
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C1981) {
            return this.f7840.equals(((C1981) obj).f7840);
        }
        return false;
    }

    public final int hashCode() {
        return this.f7840.hashCode();
    }

    public final String toString() {
        return this.f7840.toString();
    }
}
