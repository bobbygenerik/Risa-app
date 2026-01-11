package j$.time;

import j$.time.chrono.ChronoLocalDate;
import j$.time.chrono.ChronoLocalDateTime;
import j$.time.format.DateTimeFormatter;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalAccessor;
import j$.time.temporal.TemporalUnit;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import p223.C3056;

/* loaded from: classes2.dex */
public final class LocalDate implements Temporal, j$.time.temporal.l, ChronoLocalDate, Serializable {
    public static final LocalDate d = of(-999999999, 1, 1);
    public static final LocalDate e = of(999999999, 12, 31);
    private static final long serialVersionUID = 2942565459149668126L;
    public final int a;
    public final short b;
    public final short c;

    static {
        of(1970, 1, 1);
    }

    public LocalDate(int i, int i2, int i3) {
        this.a = i;
        this.b = (short) i2;
        this.c = (short) i3;
    }

    public static LocalDate T(int i, int i2, int i3) {
        int i4 = 28;
        if (i3 > 28) {
            if (i2 != 2) {
                i4 = (i2 == 4 || i2 == 6 || i2 == 9 || i2 == 11) ? 30 : 31;
            } else if (j$.time.chrono.q.c.R(i)) {
                i4 = 29;
            }
            if (i3 > i4) {
                if (i3 == 29) {
                    throw new RuntimeException("Invalid date 'February 29' as '" + i + "' is not a leap year");
                }
                throw new RuntimeException("Invalid date '" + l.V(i2).name() + " " + i3 + "'");
            }
        }
        return new LocalDate(i, i2, i3);
    }

    public static LocalDate U(TemporalAccessor temporalAccessor) {
        Objects.requireNonNull(temporalAccessor, "temporal");
        LocalDate localDate = (LocalDate) temporalAccessor.w(j$.time.temporal.p.f);
        if (localDate != null) {
            return localDate;
        }
        throw new RuntimeException("Unable to obtain LocalDate from TemporalAccessor: " + temporalAccessor + " of type " + temporalAccessor.getClass().getName());
    }

    public static LocalDate c0(a aVar) {
        Objects.requireNonNull(aVar, "clock");
        Instant ofEpochMilli = Instant.ofEpochMilli(System.currentTimeMillis());
        ZoneId zoneId = aVar.a;
        Objects.requireNonNull(ofEpochMilli, "instant");
        Objects.requireNonNull(zoneId, "zone");
        return d0(j$.com.android.tools.r8.a.U(ofEpochMilli.a + zoneId.T().d(ofEpochMilli).b, 86400));
    }

    public static LocalDate d0(long j) {
        long j2;
        j$.time.temporal.a.EPOCH_DAY.F(j);
        long j3 = 719468 + j;
        if (j3 < 0) {
            long j4 = ((j + 719469) / 146097) - 1;
            j2 = j4 * 400;
            j3 += (-j4) * 146097;
        } else {
            j2 = 0;
        }
        long j5 = ((j3 * 400) + 591) / 146097;
        long j6 = j3 - ((j5 / 400) + (((j5 / 4) + (j5 * 365)) - (j5 / 100)));
        if (j6 < 0) {
            j5--;
            j6 = j3 - ((j5 / 400) + (((j5 / 4) + (365 * j5)) - (j5 / 100)));
        }
        int i = (int) j6;
        int i2 = ((i * 5) + 2) / 153;
        int i3 = ((i2 + 2) % 12) + 1;
        int i4 = (i - (((i2 * 306) + 5) / 10)) + 1;
        long j7 = j5 + j2 + (i2 / 10);
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
        return new LocalDate(aVar.b.a(j7, aVar), i3, i4);
    }

    public static LocalDate e0(int i, int i2) {
        long j = i;
        j$.time.temporal.a.YEAR.F(j);
        j$.time.temporal.a.DAY_OF_YEAR.F(i2);
        boolean R = j$.time.chrono.q.c.R(j);
        if (i2 == 366 && !R) {
            throw new RuntimeException("Invalid date 'DayOfYear 366' as '" + i + "' is not a leap year");
        }
        l V = l.V(((i2 - 1) / 31) + 1);
        if (i2 > (V.T(R) + V.S(R)) - 1) {
            V = l.a[((((int) 1) + 12) + V.ordinal()) % 12];
        }
        return new LocalDate(i, V.getValue(), (i2 - V.S(R)) + 1);
    }

    public static LocalDate j0(int i, int i2, int i3) {
        if (i2 == 2) {
            i3 = Math.min(i3, j$.time.chrono.q.c.R((long) i) ? 29 : 28);
        } else if (i2 == 4 || i2 == 6 || i2 == 9 || i2 == 11) {
            i3 = Math.min(i3, 30);
        }
        return new LocalDate(i, i2, i3);
    }

    public static LocalDate now() {
        return c0(j$.com.android.tools.r8.a.e0());
    }

    public static LocalDate of(int i, int i2, int i3) {
        j$.time.temporal.a.YEAR.F(i);
        j$.time.temporal.a.MONTH_OF_YEAR.F(i2);
        j$.time.temporal.a.DAY_OF_MONTH.F(i3);
        return T(i, i2, i3);
    }

    public static LocalDate parse(CharSequence charSequence, DateTimeFormatter dateTimeFormatter) {
        Objects.requireNonNull(dateTimeFormatter, "formatter");
        return (LocalDate) dateTimeFormatter.a(charSequence, new f(0));
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new s((byte) 3, this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final long F(j$.time.temporal.o oVar) {
        return oVar instanceof j$.time.temporal.a ? oVar == j$.time.temporal.a.EPOCH_DAY ? G() : oVar == j$.time.temporal.a.PROLEPTIC_MONTH ? Y() : V(oVar) : oVar.w(this);
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public final long G() {
        long j = this.a;
        long j2 = this.b;
        long j3 = 365 * j;
        long j4 = (((367 * j2) - 362) / 12) + (j >= 0 ? ((j + 399) / 400) + (((3 + j) / 4) - ((99 + j) / 100)) + j3 : j3 - ((j / (-400)) + ((j / (-4)) - (j / (-100))))) + (this.c - 1);
        if (j2 > 2) {
            j4 = !s() ? j4 - 2 : j4 - 1;
        }
        return j4 - 719528;
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public final ChronoLocalDateTime H(j jVar) {
        return LocalDateTime.V(this, jVar);
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public final j$.time.chrono.k J() {
        return getYear() >= 1 ? j$.time.chrono.r.CE : j$.time.chrono.r.BCE;
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public final ChronoLocalDate M(j$.time.temporal.n nVar) {
        if (c.b(nVar)) {
            r rVar = (r) nVar;
            return g0((rVar.a * 12) + rVar.b).plusDays(rVar.c);
        }
        Objects.requireNonNull(nVar, "amountToAdd");
        return (LocalDate) ((r) nVar).k(this);
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public final int P() {
        return s() ? 366 : 365;
    }

    @Override // java.lang.Comparable
    /* renamed from: Q, reason: merged with bridge method [inline-methods] */
    public final int compareTo(ChronoLocalDate chronoLocalDate) {
        return chronoLocalDate instanceof LocalDate ? S((LocalDate) chronoLocalDate) : j$.com.android.tools.r8.a.c(this, chronoLocalDate);
    }

    public final int S(LocalDate localDate) {
        int i = this.a - localDate.a;
        if (i != 0) {
            return i;
        }
        int i2 = this.b - localDate.b;
        return i2 == 0 ? this.c - localDate.c : i2;
    }

    public final int V(j$.time.temporal.o oVar) {
        switch (g.a[((j$.time.temporal.a) oVar).ordinal()]) {
            case 1:
                return this.c;
            case 2:
                return X();
            case 3:
                return ((this.c - 1) / 7) + 1;
            case 4:
                int i = this.a;
                return i >= 1 ? i : 1 - i;
            case 5:
                return W().getValue();
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return ((this.c - 1) % 7) + 1;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                return ((X() - 1) % 7) + 1;
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                throw new RuntimeException("Invalid field 'EpochDay' for get() method, use getLong() instead");
            case 9:
                return ((X() - 1) / 7) + 1;
            case 10:
                return this.b;
            case 11:
                throw new RuntimeException("Invalid field 'ProlepticMonth' for get() method, use getLong() instead");
            case 12:
                return this.a;
            case 13:
                return this.a >= 1 ? 1 : 0;
            default:
                throw new RuntimeException(c.a("Unsupported field: ", oVar));
        }
    }

    public final DayOfWeek W() {
        return DayOfWeek.of(((int) j$.com.android.tools.r8.a.T(G() + 3, 7)) + 1);
    }

    public final int X() {
        return (l.V(this.b).S(s()) + this.c) - 1;
    }

    public final long Y() {
        return ((this.a * 12) + this.b) - 1;
    }

    public final int Z() {
        short s = this.b;
        return s != 2 ? (s == 4 || s == 6 || s == 9 || s == 11) ? 30 : 31 : s() ? 29 : 28;
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public final j$.time.chrono.j a() {
        return j$.time.chrono.q.c;
    }

    @Override // j$.time.chrono.ChronoLocalDate
    /* renamed from: a0, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final LocalDate u(long j, TemporalUnit temporalUnit) {
        return j == Long.MIN_VALUE ? d(Long.MAX_VALUE, temporalUnit).d(1L, temporalUnit) : d(-j, temporalUnit);
    }

    public LocalDateTime atStartOfDay() {
        return LocalDateTime.V(this, j.g);
    }

    public ZonedDateTime atStartOfDay(ZoneId zoneId) {
        Objects.requireNonNull(zoneId, "zone");
        LocalDateTime V = LocalDateTime.V(this, j.g);
        if (!(zoneId instanceof ZoneOffset)) {
            Object e2 = zoneId.T().e(V);
            j$.time.zone.b bVar = e2 instanceof j$.time.zone.b ? (j$.time.zone.b) e2 : null;
            if (bVar != null && bVar.k()) {
                V = bVar.b.plusSeconds(bVar.d.b - bVar.c.b);
            }
        }
        return ZonedDateTime.T(V, zoneId, null);
    }

    public final long b0(LocalDate localDate) {
        return (((localDate.Y() * 32) + localDate.c) - ((Y() * 32) + this.c)) / 32;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final boolean e(j$.time.temporal.o oVar) {
        return j$.com.android.tools.r8.a.o(this, oVar);
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof LocalDate) && S((LocalDate) obj) == 0;
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: f0, reason: merged with bridge method [inline-methods] */
    public final LocalDate d(long j, TemporalUnit temporalUnit) {
        if (!(temporalUnit instanceof ChronoUnit)) {
            return (LocalDate) temporalUnit.k(this, j);
        }
        switch (g.b[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return plusDays(j);
            case 2:
                return h0(j);
            case 3:
                return g0(j);
            case 4:
                return i0(j);
            case 5:
                return i0(j$.com.android.tools.r8.a.V(j, 10));
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return i0(j$.com.android.tools.r8.a.V(j, 100));
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                return i0(j$.com.android.tools.r8.a.V(j, 1000));
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
                return c(j$.com.android.tools.r8.a.P(F(aVar), j), aVar);
            default:
                throw new RuntimeException("Unsupported unit: " + temporalUnit);
        }
    }

    public String format(DateTimeFormatter dateTimeFormatter) {
        Objects.requireNonNull(dateTimeFormatter, "formatter");
        return dateTimeFormatter.format(this);
    }

    public final LocalDate g0(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (this.a * 12) + (this.b - 1) + j;
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
        long j3 = 12;
        return j0(aVar.b.a(j$.com.android.tools.r8.a.U(j2, j3), aVar), ((int) j$.com.android.tools.r8.a.T(j2, j3)) + 1, this.c);
    }

    public int getYear() {
        return this.a;
    }

    public final LocalDate h0(long j) {
        return plusDays(j$.com.android.tools.r8.a.V(j, 7));
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public int hashCode() {
        int i = this.a;
        return (((i << 11) + (this.b << 6)) + this.c) ^ (i & (-2048));
    }

    public final LocalDate i0(long j) {
        if (j == 0) {
            return this;
        }
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
        return j0(aVar.b.a(this.a + j, aVar), this.b, this.c);
    }

    public boolean isBefore(ChronoLocalDate chronoLocalDate) {
        return chronoLocalDate instanceof LocalDate ? S((LocalDate) chronoLocalDate) < 0 : G() < chronoLocalDate.G();
    }

    public boolean isEqual(ChronoLocalDate chronoLocalDate) {
        return chronoLocalDate instanceof LocalDate ? S((LocalDate) chronoLocalDate) == 0 : G() == chronoLocalDate.G();
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final int k(j$.time.temporal.o oVar) {
        return oVar instanceof j$.time.temporal.a ? V(oVar) : j$.time.temporal.p.a(this, oVar);
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: k0, reason: merged with bridge method [inline-methods] */
    public final LocalDate c(long j, j$.time.temporal.o oVar) {
        if (!(oVar instanceof j$.time.temporal.a)) {
            return (LocalDate) oVar.B(this, j);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) oVar;
        aVar.F(j);
        switch (g.a[aVar.ordinal()]) {
            case 1:
                int i = (int) j;
                if (this.c != i) {
                    return of(this.a, this.b, i);
                }
                return this;
            case 2:
                int i2 = (int) j;
                if (X() != i2) {
                    return e0(this.a, i2);
                }
                return this;
            case 3:
                return h0(j - F(j$.time.temporal.a.ALIGNED_WEEK_OF_MONTH));
            case 4:
                if (this.a < 1) {
                    j = 1 - j;
                }
                return m0((int) j);
            case 5:
                return plusDays(j - W().getValue());
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return plusDays(j - F(j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_MONTH));
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                return plusDays(j - F(j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_YEAR));
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                return d0(j);
            case 9:
                return h0(j - F(j$.time.temporal.a.ALIGNED_WEEK_OF_YEAR));
            case 10:
                int i3 = (int) j;
                if (this.b != i3) {
                    j$.time.temporal.a.MONTH_OF_YEAR.F(i3);
                    return j0(this.a, i3, this.c);
                }
                return this;
            case 11:
                return g0(j - Y());
            case 12:
                return m0((int) j);
            case 13:
                if (F(j$.time.temporal.a.ERA) != j) {
                    return m0(1 - this.a);
                }
                return this;
            default:
                throw new RuntimeException(c.a("Unsupported field: ", oVar));
        }
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: l0, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final LocalDate l(j$.time.temporal.l lVar) {
        return lVar instanceof LocalDate ? (LocalDate) lVar : (LocalDate) lVar.q(this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.r m(j$.time.temporal.o oVar) {
        if (!(oVar instanceof j$.time.temporal.a)) {
            return oVar.l(this);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) oVar;
        if (!aVar.isDateBased()) {
            throw new RuntimeException(c.a("Unsupported field: ", oVar));
        }
        int i = g.a[aVar.ordinal()];
        if (i == 1) {
            return j$.time.temporal.r.f(1L, Z());
        }
        if (i == 2) {
            return j$.time.temporal.r.f(1L, P());
        }
        if (i != 3) {
            return i != 4 ? aVar.b : getYear() <= 0 ? j$.time.temporal.r.f(1L, 1000000000L) : j$.time.temporal.r.f(1L, 999999999L);
        }
        return j$.time.temporal.r.f(1L, (l.V(this.b) != l.FEBRUARY || s()) ? 5L : 4L);
    }

    public final LocalDate m0(int i) {
        if (this.a == i) {
            return this;
        }
        j$.time.temporal.a.YEAR.F(i);
        return j0(i, this.b, this.c);
    }

    public LocalDate minusDays(long j) {
        return j == Long.MIN_VALUE ? plusDays(Long.MAX_VALUE).plusDays(1L) : plusDays(-j);
    }

    public LocalDate minusMonths(long j) {
        return j == Long.MIN_VALUE ? g0(Long.MAX_VALUE).g0(1L) : g0(-j);
    }

    public LocalDate plusDays(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = this.c + j;
        if (j2 > 0) {
            if (j2 <= 28) {
                return new LocalDate(this.a, this.b, (int) j2);
            }
            if (j2 <= 59) {
                long Z = Z();
                if (j2 <= Z) {
                    return new LocalDate(this.a, this.b, (int) j2);
                }
                short s = this.b;
                if (s < 12) {
                    return new LocalDate(this.a, s + 1, (int) (j2 - Z));
                }
                j$.time.temporal.a.YEAR.F(this.a + 1);
                return new LocalDate(this.a + 1, 1, (int) (j2 - Z));
            }
        }
        return d0(j$.com.android.tools.r8.a.P(G(), j));
    }

    @Override // j$.time.temporal.l
    public final Temporal q(Temporal temporal) {
        return j$.com.android.tools.r8.a.a(this, temporal);
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public final boolean s() {
        return j$.time.chrono.q.c.R(this.a);
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public final String toString() {
        int i = this.a;
        short s = this.b;
        short s2 = this.c;
        int abs = Math.abs(i);
        StringBuilder sb = new StringBuilder(10);
        if (abs >= 1000) {
            if (i > 9999) {
                sb.append('+');
            }
            sb.append(i);
        } else if (i < 0) {
            sb.append(i - 10000);
            sb.deleteCharAt(1);
        } else {
            sb.append(i + 10000);
            sb.deleteCharAt(0);
        }
        sb.append(s < 10 ? "-0" : "-");
        sb.append((int) s);
        sb.append(s2 < 10 ? "-0" : "-");
        sb.append((int) s2);
        return sb.toString();
    }

    @Override // j$.time.temporal.Temporal
    public long until(Temporal temporal, TemporalUnit temporalUnit) {
        LocalDate U = U(temporal);
        if (!(temporalUnit instanceof ChronoUnit)) {
            return temporalUnit.between(this, U);
        }
        switch (g.b[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return U.G() - G();
            case 2:
                return (U.G() - G()) / 7;
            case 3:
                return b0(U);
            case 4:
                return b0(U) / 12;
            case 5:
                return b0(U) / 120;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return b0(U) / 1200;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                return b0(U) / 12000;
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
                return U.F(aVar) - F(aVar);
            default:
                throw new RuntimeException("Unsupported unit: " + temporalUnit);
        }
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final Object w(f fVar) {
        return fVar == j$.time.temporal.p.f ? this : j$.com.android.tools.r8.a.q(this, fVar);
    }
}
