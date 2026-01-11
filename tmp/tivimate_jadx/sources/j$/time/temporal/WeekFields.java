package j$.time.temporal;

import j$.time.DayOfWeek;
import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Calendar;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class WeekFields implements Serializable {
    public static final ConcurrentHashMap g = new ConcurrentHashMap(4, 0.75f, 2);
    public static final h h;
    private static final long serialVersionUID = -1177360819670808121L;
    public final DayOfWeek a;
    public final int b;
    public final transient s c;
    public final transient s d;
    public final transient s e;
    public final transient s f;

    static {
        new WeekFields(DayOfWeek.MONDAY, 4);
        a(DayOfWeek.SUNDAY, 1);
        h = i.d;
    }

    public WeekFields(DayOfWeek dayOfWeek, int i) {
        ChronoUnit chronoUnit = ChronoUnit.DAYS;
        ChronoUnit chronoUnit2 = ChronoUnit.WEEKS;
        this.c = new s("DayOfWeek", this, chronoUnit, chronoUnit2, s.f);
        this.d = new s("WeekOfMonth", this, chronoUnit2, ChronoUnit.MONTHS, s.g);
        h hVar = i.d;
        this.e = new s("WeekOfWeekBasedYear", this, chronoUnit2, hVar, s.i);
        this.f = new s("WeekBasedYear", this, hVar, ChronoUnit.FOREVER, a.YEAR.b);
        Objects.requireNonNull(dayOfWeek, "firstDayOfWeek");
        if (i < 1 || i > 7) {
            throw new IllegalArgumentException("Minimal number of days is invalid");
        }
        this.a = dayOfWeek;
        this.b = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static WeekFields a(DayOfWeek dayOfWeek, int i) {
        String str = dayOfWeek.toString() + i;
        ConcurrentHashMap concurrentHashMap = g;
        WeekFields weekFields = (WeekFields) concurrentHashMap.get(str);
        if (weekFields != null) {
            return weekFields;
        }
        concurrentHashMap.putIfAbsent(str, new WeekFields(dayOfWeek, i));
        return (WeekFields) concurrentHashMap.get(str);
    }

    public static WeekFields of(Locale locale) {
        Objects.requireNonNull(locale, "locale");
        return a(DayOfWeek.SUNDAY.plus(r4.getFirstDayOfWeek() - 1), Calendar.getInstance(new Locale(locale.getLanguage(), locale.getCountry())).getMinimalDaysInFirstWeek());
    }

    private void readObject(ObjectInputStream objectInputStream) {
        objectInputStream.defaultReadObject();
        if (this.a == null) {
            throw new InvalidObjectException("firstDayOfWeek is null");
        }
        int i = this.b;
        if (i < 1 || i > 7) {
            throw new InvalidObjectException("Minimal number of days is invalid");
        }
    }

    private Object readResolve() {
        try {
            return a(this.a, this.b);
        } catch (IllegalArgumentException e) {
            throw new InvalidObjectException("Invalid serialized WeekFields: " + e.getMessage());
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof WeekFields) && hashCode() == obj.hashCode();
    }

    public DayOfWeek getFirstDayOfWeek() {
        return this.a;
    }

    public final int hashCode() {
        return (this.a.ordinal() * 7) + this.b;
    }

    public final String toString() {
        return "WeekFields[" + this.a + "," + this.b + "]";
    }
}
