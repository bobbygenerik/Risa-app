package p447;

import java.util.Calendar;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* renamed from: ﹶﾞ.ʼᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5224 extends AbstractC5276 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public long f19649;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public String f19650;

    /* renamed from: ʼᵢ, reason: contains not printable characters */
    public final long m10244() {
        m10463();
        return this.f19649;
    }

    /* renamed from: יˉ, reason: contains not printable characters */
    public final String m10245() {
        m10463();
        return this.f19650;
    }

    @Override // p447.AbstractC5276
    /* renamed from: ﹶˎ */
    public final boolean mo10205() {
        Calendar calendar = Calendar.getInstance();
        this.f19649 = TimeUnit.MINUTES.convert(calendar.get(16) + calendar.get(15), TimeUnit.MILLISECONDS);
        Locale locale = Locale.getDefault();
        String language = locale.getLanguage();
        Locale locale2 = Locale.ENGLISH;
        String lowerCase = language.toLowerCase(locale2);
        String lowerCase2 = locale.getCountry().toLowerCase(locale2);
        StringBuilder sb = new StringBuilder(String.valueOf(lowerCase).length() + 1 + String.valueOf(lowerCase2).length());
        sb.append(lowerCase);
        sb.append("-");
        sb.append(lowerCase2);
        this.f19650 = sb.toString();
        return false;
    }
}
