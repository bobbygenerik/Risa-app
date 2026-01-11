package j$.time.temporal;

/* loaded from: classes2.dex */
public enum h implements TemporalUnit {
    WEEK_BASED_YEARS("WeekBasedYears", j$.time.d.l(31556952, 0)),
    QUARTER_YEARS("QuarterYears", j$.time.d.l(7889238, 0));

    public final String a;
    public final j$.time.d b;

    h(String str, j$.time.d dVar) {
        this.a = str;
        this.b = dVar;
    }

    @Override // j$.time.temporal.TemporalUnit
    public final long between(Temporal temporal, Temporal temporal2) {
        if (temporal.getClass() != temporal2.getClass()) {
            return temporal.until(temporal2, this);
        }
        int i = b.a[ordinal()];
        if (i == 1) {
            g gVar = i.c;
            return j$.com.android.tools.r8.a.W(temporal2.F(gVar), temporal.F(gVar));
        }
        if (i == 2) {
            return temporal.until(temporal2, ChronoUnit.MONTHS) / 3;
        }
        throw new IllegalStateException("Unreachable");
    }

    @Override // j$.time.temporal.TemporalUnit
    public final j$.time.d getDuration() {
        return this.b;
    }

    @Override // j$.time.temporal.TemporalUnit
    public final Temporal k(Temporal temporal, long j) {
        int i = b.a[ordinal()];
        if (i == 1) {
            return temporal.c(j$.com.android.tools.r8.a.P(temporal.k(r0), j), i.c);
        }
        if (i == 2) {
            return temporal.d(j / 4, ChronoUnit.YEARS).d((j % 4) * 3, ChronoUnit.MONTHS);
        }
        throw new IllegalStateException("Unreachable");
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.a;
    }
}
