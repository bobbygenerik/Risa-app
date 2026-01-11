package j$.time.temporal;

/* loaded from: classes2.dex */
public enum ChronoUnit implements TemporalUnit {
    NANOS("Nanos", j$.time.d.m(1)),
    MICROS("Micros", j$.time.d.m(1000)),
    MILLIS("Millis", j$.time.d.m(1000000)),
    SECONDS("Seconds", j$.time.d.l(1, 0)),
    MINUTES("Minutes", j$.time.d.l(60, 0)),
    HOURS("Hours", j$.time.d.l(3600, 0)),
    HALF_DAYS("HalfDays", j$.time.d.l(43200, 0)),
    DAYS("Days", j$.time.d.l(86400, 0)),
    WEEKS("Weeks", j$.time.d.l(604800, 0)),
    MONTHS("Months", j$.time.d.l(2629746, 0)),
    YEARS("Years", j$.time.d.l(31556952, 0)),
    DECADES("Decades", j$.time.d.l(315569520, 0)),
    CENTURIES("Centuries", j$.time.d.l(3155695200L, 0)),
    MILLENNIA("Millennia", j$.time.d.l(31556952000L, 0)),
    ERAS("Eras", j$.time.d.l(31556952000000000L, 0)),
    FOREVER("Forever", j$.time.d.l(j$.com.android.tools.r8.a.P(Long.MAX_VALUE, j$.com.android.tools.r8.a.U(999999999, 1000000000)), (int) j$.com.android.tools.r8.a.T(999999999, 1000000000)));

    public final String a;
    public final j$.time.d b;

    ChronoUnit(String str, j$.time.d dVar) {
        this.a = str;
        this.b = dVar;
    }

    @Override // j$.time.temporal.TemporalUnit
    public long between(Temporal temporal, Temporal temporal2) {
        return temporal.until(temporal2, this);
    }

    @Override // j$.time.temporal.TemporalUnit
    public final j$.time.d getDuration() {
        return this.b;
    }

    @Override // j$.time.temporal.TemporalUnit
    public final Temporal k(Temporal temporal, long j) {
        return temporal.d(j, this);
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.a;
    }
}
