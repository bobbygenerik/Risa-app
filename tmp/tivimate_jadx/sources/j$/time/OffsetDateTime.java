package j$.time;

import j$.time.format.DateTimeFormatter;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalAccessor;
import j$.time.temporal.TemporalUnit;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class OffsetDateTime implements Temporal, j$.time.temporal.l, Comparable<OffsetDateTime>, Serializable {
    public static final /* synthetic */ int c = 0;
    private static final long serialVersionUID = 2287754244819255394L;
    public final LocalDateTime a;
    public final ZoneOffset b;

    static {
        LocalDateTime localDateTime = LocalDateTime.c;
        ZoneOffset zoneOffset = ZoneOffset.g;
        localDateTime.getClass();
        new OffsetDateTime(localDateTime, zoneOffset);
        LocalDateTime localDateTime2 = LocalDateTime.d;
        ZoneOffset zoneOffset2 = ZoneOffset.f;
        localDateTime2.getClass();
        new OffsetDateTime(localDateTime2, zoneOffset2);
    }

    public OffsetDateTime(LocalDateTime localDateTime, ZoneOffset zoneOffset) {
        this.a = (LocalDateTime) Objects.requireNonNull(localDateTime, "dateTime");
        this.b = (ZoneOffset) Objects.requireNonNull(zoneOffset, "offset");
    }

    public static OffsetDateTime S(TemporalAccessor temporalAccessor) {
        if (temporalAccessor instanceof OffsetDateTime) {
            return (OffsetDateTime) temporalAccessor;
        }
        try {
            ZoneOffset Y = ZoneOffset.Y(temporalAccessor);
            LocalDate localDate = (LocalDate) temporalAccessor.w(j$.time.temporal.p.f);
            j jVar = (j) temporalAccessor.w(j$.time.temporal.p.g);
            return (localDate == null || jVar == null) ? T(Instant.T(temporalAccessor), Y) : new OffsetDateTime(LocalDateTime.V(localDate, jVar), Y);
        } catch (b e) {
            throw new RuntimeException("Unable to obtain OffsetDateTime from TemporalAccessor: " + temporalAccessor + " of type " + temporalAccessor.getClass().getName(), e);
        }
    }

    public static OffsetDateTime T(Instant instant, ZoneId zoneId) {
        Objects.requireNonNull(instant, "instant");
        Objects.requireNonNull(zoneId, "zone");
        ZoneOffset d = zoneId.T().d(instant);
        return new OffsetDateTime(LocalDateTime.W(instant.a, instant.b, d), d);
    }

    public static OffsetDateTime parse(CharSequence charSequence, DateTimeFormatter dateTimeFormatter) {
        Objects.requireNonNull(dateTimeFormatter, "formatter");
        return (OffsetDateTime) dateTimeFormatter.a(charSequence, new f(2));
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new s((byte) 10, this);
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: B */
    public final Temporal u(long j, ChronoUnit chronoUnit) {
        return j == Long.MIN_VALUE ? d(Long.MAX_VALUE, chronoUnit).d(1L, chronoUnit) : d(-j, chronoUnit);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final long F(j$.time.temporal.o oVar) {
        if (!(oVar instanceof j$.time.temporal.a)) {
            return oVar.w(this);
        }
        int i = o.a[((j$.time.temporal.a) oVar).ordinal()];
        return i != 1 ? i != 2 ? this.a.F(oVar) : this.b.b : toEpochSecond();
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: U, reason: merged with bridge method [inline-methods] */
    public final OffsetDateTime d(long j, TemporalUnit temporalUnit) {
        return temporalUnit instanceof ChronoUnit ? V(this.a.d(j, temporalUnit), this.b) : (OffsetDateTime) temporalUnit.k(this, j);
    }

    public final OffsetDateTime V(LocalDateTime localDateTime, ZoneOffset zoneOffset) {
        return (this.a == localDateTime && this.b.equals(zoneOffset)) ? this : new OffsetDateTime(localDateTime, zoneOffset);
    }

    @Override // j$.time.temporal.Temporal
    public final Temporal c(long j, j$.time.temporal.o oVar) {
        if (!(oVar instanceof j$.time.temporal.a)) {
            return (OffsetDateTime) oVar.B(this, j);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) oVar;
        int i = o.a[aVar.ordinal()];
        return i != 1 ? i != 2 ? V(this.a.c(j, oVar), this.b) : V(this.a, ZoneOffset.b0(aVar.b.a(j, aVar))) : T(Instant.U(j, this.a.b.d), this.b);
    }

    @Override // java.lang.Comparable
    public final int compareTo(OffsetDateTime offsetDateTime) {
        int compare;
        OffsetDateTime offsetDateTime2 = offsetDateTime;
        if (this.b.equals(offsetDateTime2.b)) {
            compare = toLocalDateTime().compareTo(offsetDateTime2.toLocalDateTime());
        } else {
            compare = Long.compare(toEpochSecond(), offsetDateTime2.toEpochSecond());
            if (compare == 0) {
                compare = this.a.b.d - offsetDateTime2.a.b.d;
            }
        }
        return compare == 0 ? toLocalDateTime().compareTo(offsetDateTime2.toLocalDateTime()) : compare;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final boolean e(j$.time.temporal.o oVar) {
        if (oVar instanceof j$.time.temporal.a) {
            return true;
        }
        return oVar != null && oVar.k(this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof OffsetDateTime) {
            OffsetDateTime offsetDateTime = (OffsetDateTime) obj;
            if (this.a.equals(offsetDateTime.a) && this.b.equals(offsetDateTime.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode() ^ this.b.b;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final int k(j$.time.temporal.o oVar) {
        if (!(oVar instanceof j$.time.temporal.a)) {
            return j$.time.temporal.p.a(this, oVar);
        }
        int i = o.a[((j$.time.temporal.a) oVar).ordinal()];
        if (i != 1) {
            return i != 2 ? this.a.k(oVar) : this.b.b;
        }
        throw new RuntimeException("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
    }

    @Override // j$.time.temporal.Temporal
    public final Temporal l(LocalDate localDate) {
        if (c.b(localDate)) {
            return V(this.a.l(localDate), this.b);
        }
        localDate.getClass();
        return (OffsetDateTime) j$.com.android.tools.r8.a.a(localDate, this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.r m(j$.time.temporal.o oVar) {
        return oVar instanceof j$.time.temporal.a ? (oVar == j$.time.temporal.a.INSTANT_SECONDS || oVar == j$.time.temporal.a.OFFSET_SECONDS) ? ((j$.time.temporal.a) oVar).b : this.a.m(oVar) : oVar.l(this);
    }

    @Override // j$.time.temporal.l
    public final Temporal q(Temporal temporal) {
        return temporal.c(this.a.f().G(), j$.time.temporal.a.EPOCH_DAY).c(this.a.b.e0(), j$.time.temporal.a.NANO_OF_DAY).c(this.b.b, j$.time.temporal.a.OFFSET_SECONDS);
    }

    public long toEpochSecond() {
        LocalDateTime localDateTime = this.a;
        ZoneOffset zoneOffset = this.b;
        localDateTime.getClass();
        return j$.com.android.tools.r8.a.u(localDateTime, zoneOffset);
    }

    public LocalDateTime toLocalDateTime() {
        return this.a;
    }

    public final String toString() {
        return this.a.toString() + this.b.c;
    }

    @Override // j$.time.temporal.Temporal
    public final long until(Temporal temporal, TemporalUnit temporalUnit) {
        OffsetDateTime S = S(temporal);
        if (!(temporalUnit instanceof ChronoUnit)) {
            return temporalUnit.between(this, S);
        }
        ZoneOffset zoneOffset = this.b;
        if (!zoneOffset.equals(S.b)) {
            S = new OffsetDateTime(S.a.plusSeconds(zoneOffset.b - S.b.b), zoneOffset);
        }
        return this.a.until(S.a, temporalUnit);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final Object w(f fVar) {
        if (fVar == j$.time.temporal.p.d || fVar == j$.time.temporal.p.e) {
            return this.b;
        }
        if (fVar == j$.time.temporal.p.a) {
            return null;
        }
        return fVar == j$.time.temporal.p.f ? this.a.f() : fVar == j$.time.temporal.p.g ? this.a.b : fVar == j$.time.temporal.p.b ? j$.time.chrono.q.c : fVar == j$.time.temporal.p.c ? ChronoUnit.NANOS : fVar.g(this);
    }
}
