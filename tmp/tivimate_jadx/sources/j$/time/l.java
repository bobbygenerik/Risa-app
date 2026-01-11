package j$.time;

import j$.time.temporal.ChronoUnit;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalAccessor;
import p223.C3056;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class l implements TemporalAccessor, j$.time.temporal.l {
    public static final l APRIL;
    public static final l AUGUST;
    public static final l DECEMBER;
    public static final l FEBRUARY;
    public static final l JANUARY;
    public static final l JULY;
    public static final l JUNE;
    public static final l MARCH;
    public static final l MAY;
    public static final l NOVEMBER;
    public static final l OCTOBER;
    public static final l SEPTEMBER;
    public static final l[] a;
    public static final /* synthetic */ l[] b;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, j$.time.l] */
    /* JADX WARN: Type inference failed for: r11v1, types: [java.lang.Enum, j$.time.l] */
    /* JADX WARN: Type inference failed for: r13v1, types: [java.lang.Enum, j$.time.l] */
    /* JADX WARN: Type inference failed for: r15v1, types: [java.lang.Enum, j$.time.l] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, j$.time.l] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Enum, j$.time.l] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, j$.time.l] */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.lang.Enum, j$.time.l] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Enum, j$.time.l] */
    /* JADX WARN: Type inference failed for: r6v3, types: [java.lang.Enum, j$.time.l] */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.Enum, j$.time.l] */
    /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.Enum, j$.time.l] */
    static {
        ?? r0 = new Enum("JANUARY", 0);
        JANUARY = r0;
        ?? r1 = new Enum("FEBRUARY", 1);
        FEBRUARY = r1;
        ?? r3 = new Enum("MARCH", 2);
        MARCH = r3;
        ?? r5 = new Enum("APRIL", 3);
        APRIL = r5;
        ?? r7 = new Enum("MAY", 4);
        MAY = r7;
        ?? r9 = new Enum("JUNE", 5);
        JUNE = r9;
        ?? r11 = new Enum("JULY", 6);
        JULY = r11;
        ?? r13 = new Enum("AUGUST", 7);
        AUGUST = r13;
        ?? r15 = new Enum("SEPTEMBER", 8);
        SEPTEMBER = r15;
        ?? r2 = new Enum("OCTOBER", 9);
        OCTOBER = r2;
        ?? r4 = new Enum("NOVEMBER", 10);
        NOVEMBER = r4;
        ?? r6 = new Enum("DECEMBER", 11);
        DECEMBER = r6;
        b = new l[]{r0, r1, r3, r5, r7, r9, r11, r13, r15, r2, r4, r6};
        a = values();
    }

    public static l V(int i) {
        if (i >= 1 && i <= 12) {
            return a[i - 1];
        }
        throw new RuntimeException("Invalid value for MonthOfYear: " + i);
    }

    public static l valueOf(String str) {
        return (l) Enum.valueOf(l.class, str);
    }

    public static l[] values() {
        return (l[]) b.clone();
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final long F(j$.time.temporal.o oVar) {
        if (oVar == j$.time.temporal.a.MONTH_OF_YEAR) {
            return getValue();
        }
        if (oVar instanceof j$.time.temporal.a) {
            throw new RuntimeException(c.a("Unsupported field: ", oVar));
        }
        return oVar.w(this);
    }

    public final int S(boolean z) {
        switch (k.a[ordinal()]) {
            case 1:
                return 32;
            case 2:
                return (z ? 1 : 0) + 91;
            case 3:
                return (z ? 1 : 0) + 152;
            case 4:
                return (z ? 1 : 0) + 244;
            case 5:
                return (z ? 1 : 0) + 305;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return 1;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                return (z ? 1 : 0) + 60;
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                return (z ? 1 : 0) + 121;
            case 9:
                return (z ? 1 : 0) + 182;
            case 10:
                return (z ? 1 : 0) + 213;
            case 11:
                return (z ? 1 : 0) + 274;
            default:
                return (z ? 1 : 0) + 335;
        }
    }

    public final int T(boolean z) {
        int i = k.a[ordinal()];
        return i != 1 ? (i == 2 || i == 3 || i == 4 || i == 5) ? 30 : 31 : z ? 29 : 28;
    }

    public final int U() {
        int i = k.a[ordinal()];
        if (i != 1) {
            return (i == 2 || i == 3 || i == 4 || i == 5) ? 30 : 31;
        }
        return 29;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final boolean e(j$.time.temporal.o oVar) {
        return oVar instanceof j$.time.temporal.a ? oVar == j$.time.temporal.a.MONTH_OF_YEAR : oVar != null && oVar.k(this);
    }

    public final int getValue() {
        return ordinal() + 1;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final int k(j$.time.temporal.o oVar) {
        return oVar == j$.time.temporal.a.MONTH_OF_YEAR ? getValue() : j$.time.temporal.p.a(this, oVar);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.r m(j$.time.temporal.o oVar) {
        return oVar == j$.time.temporal.a.MONTH_OF_YEAR ? oVar.q() : j$.time.temporal.p.d(this, oVar);
    }

    @Override // j$.time.temporal.l
    public final Temporal q(Temporal temporal) {
        if (!j$.com.android.tools.r8.a.M(temporal).equals(j$.time.chrono.q.c)) {
            throw new RuntimeException("Adjustment only supported on ISO date-time");
        }
        return temporal.c(getValue(), j$.time.temporal.a.MONTH_OF_YEAR);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final Object w(f fVar) {
        return fVar == j$.time.temporal.p.b ? j$.time.chrono.q.c : fVar == j$.time.temporal.p.c ? ChronoUnit.MONTHS : j$.time.temporal.p.c(this, fVar);
    }
}
