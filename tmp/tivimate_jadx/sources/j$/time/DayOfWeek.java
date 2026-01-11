package j$.time;

import j$.time.format.E;
import j$.time.format.TextStyle;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalAccessor;
import java.util.Locale;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class DayOfWeek implements TemporalAccessor, j$.time.temporal.l {
    public static final DayOfWeek FRIDAY;
    public static final DayOfWeek MONDAY;
    public static final DayOfWeek SATURDAY;
    public static final DayOfWeek SUNDAY;
    public static final DayOfWeek THURSDAY;
    public static final DayOfWeek TUESDAY;
    public static final DayOfWeek WEDNESDAY;
    public static final DayOfWeek[] a;
    public static final /* synthetic */ DayOfWeek[] b;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [j$.time.DayOfWeek, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r11v1, types: [j$.time.DayOfWeek, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r1v1, types: [j$.time.DayOfWeek, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r3v1, types: [j$.time.DayOfWeek, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r5v1, types: [j$.time.DayOfWeek, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r7v1, types: [j$.time.DayOfWeek, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r9v1, types: [j$.time.DayOfWeek, java.lang.Enum] */
    static {
        ?? r0 = new Enum("MONDAY", 0);
        MONDAY = r0;
        ?? r1 = new Enum("TUESDAY", 1);
        TUESDAY = r1;
        ?? r3 = new Enum("WEDNESDAY", 2);
        WEDNESDAY = r3;
        ?? r5 = new Enum("THURSDAY", 3);
        THURSDAY = r5;
        ?? r7 = new Enum("FRIDAY", 4);
        FRIDAY = r7;
        ?? r9 = new Enum("SATURDAY", 5);
        SATURDAY = r9;
        ?? r11 = new Enum("SUNDAY", 6);
        SUNDAY = r11;
        b = new DayOfWeek[]{r0, r1, r3, r5, r7, r9, r11};
        a = values();
    }

    public static DayOfWeek of(int i) {
        if (i >= 1 && i <= 7) {
            return a[i - 1];
        }
        throw new RuntimeException("Invalid value for DayOfWeek: " + i);
    }

    public static DayOfWeek valueOf(String str) {
        return (DayOfWeek) Enum.valueOf(DayOfWeek.class, str);
    }

    public static DayOfWeek[] values() {
        return (DayOfWeek[]) b.clone();
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final long F(j$.time.temporal.o oVar) {
        if (oVar == j$.time.temporal.a.DAY_OF_WEEK) {
            return getValue();
        }
        if (oVar instanceof j$.time.temporal.a) {
            throw new RuntimeException(c.a("Unsupported field: ", oVar));
        }
        return oVar.w(this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final boolean e(j$.time.temporal.o oVar) {
        return oVar instanceof j$.time.temporal.a ? oVar == j$.time.temporal.a.DAY_OF_WEEK : oVar != null && oVar.k(this);
    }

    public String getDisplayName(TextStyle textStyle, Locale locale) {
        j$.time.format.u uVar = new j$.time.format.u();
        uVar.i(j$.time.temporal.a.DAY_OF_WEEK, textStyle);
        return uVar.q(locale, E.SMART, null).format(this);
    }

    public int getValue() {
        return ordinal() + 1;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final int k(j$.time.temporal.o oVar) {
        return oVar == j$.time.temporal.a.DAY_OF_WEEK ? getValue() : j$.time.temporal.p.a(this, oVar);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.r m(j$.time.temporal.o oVar) {
        return oVar == j$.time.temporal.a.DAY_OF_WEEK ? oVar.q() : j$.time.temporal.p.d(this, oVar);
    }

    public DayOfWeek plus(long j) {
        return a[((((int) (j % 7)) + 7) + ordinal()) % 7];
    }

    @Override // j$.time.temporal.l
    public final Temporal q(Temporal temporal) {
        return temporal.c(getValue(), j$.time.temporal.a.DAY_OF_WEEK);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final Object w(f fVar) {
        return fVar == j$.time.temporal.p.c ? ChronoUnit.DAYS : j$.time.temporal.p.c(this, fVar);
    }
}
