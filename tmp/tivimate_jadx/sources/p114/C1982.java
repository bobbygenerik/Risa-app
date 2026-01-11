package p114;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Locale;
import p035.AbstractC1220;

/* renamed from: ˆﾞ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1982 implements InterfaceC1983 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final Locale[] f7841 = new Locale[0];

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f7842;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Locale[] f7843;

    static {
        new Locale("en", "XA");
        new Locale("ar", "XB");
        String[] split = "en-Latn".split("-", -1);
        if (split.length > 2) {
            new Locale(split[0], split[1], split[2]);
        } else if (split.length > 1) {
            new Locale(split[0], split[1]);
        } else {
            if (split.length != 1) {
                throw new IllegalArgumentException("Can not parse language tag: [en-Latn]");
            }
            new Locale(split[0]);
        }
    }

    public C1982(Locale... localeArr) {
        if (localeArr.length == 0) {
            this.f7843 = f7841;
            this.f7842 = "";
            return;
        }
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < localeArr.length; i++) {
            Locale locale = localeArr[i];
            if (locale == null) {
                throw new NullPointerException(AbstractC1220.m3773(i, "list[", "] is null"));
            }
            if (!hashSet.contains(locale)) {
                Locale locale2 = (Locale) locale.clone();
                arrayList.add(locale2);
                sb.append(locale2.getLanguage());
                String country = locale2.getCountry();
                if (country != null && !country.isEmpty()) {
                    sb.append('-');
                    sb.append(locale2.getCountry());
                }
                if (i < localeArr.length - 1) {
                    sb.append(',');
                }
                hashSet.add(locale2);
            }
        }
        this.f7843 = (Locale[]) arrayList.toArray(new Locale[0]);
        this.f7842 = sb.toString();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C1982)) {
            return false;
        }
        Locale[] localeArr = ((C1982) obj).f7843;
        Locale[] localeArr2 = this.f7843;
        if (localeArr2.length != localeArr.length) {
            return false;
        }
        for (int i = 0; i < localeArr2.length; i++) {
            if (!localeArr2[i].equals(localeArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // p114.InterfaceC1983
    public final Locale get(int i) {
        if (i < 0) {
            return null;
        }
        Locale[] localeArr = this.f7843;
        if (i < localeArr.length) {
            return localeArr[i];
        }
        return null;
    }

    public final int hashCode() {
        int i = 1;
        for (Locale locale : this.f7843) {
            i = (i * 31) + locale.hashCode();
        }
        return i;
    }

    @Override // p114.InterfaceC1983
    public final boolean isEmpty() {
        return this.f7843.length == 0;
    }

    @Override // p114.InterfaceC1983
    public final int size() {
        return this.f7843.length;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[");
        int i = 0;
        while (true) {
            Locale[] localeArr = this.f7843;
            if (i >= localeArr.length) {
                sb.append("]");
                return sb.toString();
            }
            sb.append(localeArr[i]);
            if (i < localeArr.length - 1) {
                sb.append(',');
            }
            i++;
        }
    }

    @Override // p114.InterfaceC1983
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object mo4968() {
        return null;
    }

    @Override // p114.InterfaceC1983
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String mo4969() {
        return this.f7842;
    }
}
