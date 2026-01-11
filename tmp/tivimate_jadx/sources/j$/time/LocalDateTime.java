package j$.time;

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
public final class LocalDateTime implements Temporal, j$.time.temporal.l, ChronoLocalDateTime<LocalDate>, Serializable {
    public static final LocalDateTime c = V(LocalDate.d, j.e);
    public static final LocalDateTime d = V(LocalDate.e, j.f);
    private static final long serialVersionUID = 6207766400415563566L;
    public final LocalDate a;
    public final j b;

    public LocalDateTime(LocalDate localDate, j jVar) {
        this.a = localDate;
        this.b = jVar;
    }

    public static LocalDateTime T(TemporalAccessor temporalAccessor) {
        if (temporalAccessor instanceof LocalDateTime) {
            return (LocalDateTime) temporalAccessor;
        }
        if (temporalAccessor instanceof ZonedDateTime) {
            return ((ZonedDateTime) temporalAccessor).a;
        }
        if (temporalAccessor instanceof OffsetDateTime) {
            return ((OffsetDateTime) temporalAccessor).toLocalDateTime();
        }
        try {
            return new LocalDateTime(LocalDate.U(temporalAccessor), j.U(temporalAccessor));
        } catch (b e) {
            throw new RuntimeException("Unable to obtain LocalDateTime from TemporalAccessor: " + temporalAccessor + " of type " + temporalAccessor.getClass().getName(), e);
        }
    }

    public static LocalDateTime V(LocalDate localDate, j jVar) {
        Objects.requireNonNull(localDate, "date");
        Objects.requireNonNull(jVar, "time");
        return new LocalDateTime(localDate, jVar);
    }

    public static LocalDateTime W(long j, int i, ZoneOffset zoneOffset) {
        Objects.requireNonNull(zoneOffset, "offset");
        long j2 = i;
        j$.time.temporal.a.NANO_OF_SECOND.F(j2);
        return new LocalDateTime(LocalDate.d0(j$.com.android.tools.r8.a.U(j + zoneOffset.b, 86400)), j.X((((int) j$.com.android.tools.r8.a.T(r5, r7)) * 1000000000) + j2));
    }

    public static LocalDateTime now() {
        a e0 = j$.com.android.tools.r8.a.e0();
        Objects.requireNonNull(e0, "clock");
        Instant ofEpochMilli = Instant.ofEpochMilli(System.currentTimeMillis());
        return W(ofEpochMilli.a, ofEpochMilli.b, e0.a.T().d(ofEpochMilli));
    }

    public static LocalDateTime ofInstant(Instant instant, ZoneId zoneId) {
        Objects.requireNonNull(instant, "instant");
        Objects.requireNonNull(zoneId, "zone");
        return W(instant.a, instant.b, zoneId.T().d(instant));
    }

    public static LocalDateTime parse(CharSequence charSequence, DateTimeFormatter dateTimeFormatter) {
        Objects.requireNonNull(dateTimeFormatter, "formatter");
        return (LocalDateTime) dateTimeFormatter.a(charSequence, new f(1));
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new s((byte) 5, this);
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: B */
    public final Temporal u(long j, ChronoUnit chronoUnit) {
        return j == Long.MIN_VALUE ? d(Long.MAX_VALUE, chronoUnit).d(1L, chronoUnit) : d(-j, chronoUnit);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final long F(j$.time.temporal.o oVar) {
        return oVar instanceof j$.time.temporal.a ? ((j$.time.temporal.a) oVar).S() ? this.b.F(oVar) : this.a.F(oVar) : oVar.w(this);
    }

    @Override // java.lang.Comparable
    /* renamed from: K, reason: merged with bridge method [inline-methods] */
    public final int compareTo(ChronoLocalDateTime chronoLocalDateTime) {
        return chronoLocalDateTime instanceof LocalDateTime ? S((LocalDateTime) chronoLocalDateTime) : j$.com.android.tools.r8.a.d(this, chronoLocalDateTime);
    }

    public final int S(LocalDateTime localDateTime) {
        int S = this.a.S(localDateTime.f());
        return S == 0 ? this.b.compareTo(localDateTime.b) : S;
    }

    public final boolean U(ChronoLocalDateTime chronoLocalDateTime) {
        if (chronoLocalDateTime instanceof LocalDateTime) {
            return S((LocalDateTime) chronoLocalDateTime) < 0;
        }
        long G = f().G();
        long G2 = chronoLocalDateTime.f().G();
        if (G >= G2) {
            return G == G2 && this.b.e0() < chronoLocalDateTime.b().e0();
        }
        return true;
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: X, reason: merged with bridge method [inline-methods] */
    public final LocalDateTime d(long j, TemporalUnit temporalUnit) {
        if (!(temporalUnit instanceof ChronoUnit)) {
            return (LocalDateTime) temporalUnit.k(this, j);
        }
        switch (h.a[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return Y(this.a, 0L, 0L, 0L, j, 1);
            case 2:
                LocalDateTime plusDays = plusDays(j / 86400000000L);
                return plusDays.Y(plusDays.a, 0L, 0L, 0L, (j % 86400000000L) * 1000, 1);
            case 3:
                LocalDateTime plusDays2 = plusDays(j / 86400000);
                return plusDays2.Y(plusDays2.a, 0L, 0L, 0L, (j % 86400000) * 1000000, 1);
            case 4:
                return plusSeconds(j);
            case 5:
                return Y(this.a, 0L, j, 0L, 0L, 1);
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return Y(this.a, j, 0L, 0L, 0L, 1);
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                LocalDateTime plusDays3 = plusDays(j / 256);
                return plusDays3.Y(plusDays3.a, (j % 256) * 12, 0L, 0L, 0L, 1);
            default:
                return a0(this.a.d(j, temporalUnit), this.b);
        }
    }

    public final LocalDateTime Y(LocalDate localDate, long j, long j2, long j3, long j4, int i) {
        if ((j | j2 | j3 | j4) == 0) {
            return a0(localDate, this.b);
        }
        long j5 = i;
        long e0 = this.b.e0();
        long j6 = ((((j % 24) * 3600000000000L) + ((j2 % 1440) * 60000000000L) + ((j3 % 86400) * 1000000000) + (j4 % 86400000000000L)) * j5) + e0;
        long U = j$.com.android.tools.r8.a.U(j6, 86400000000000L) + (((j / 24) + (j2 / 1440) + (j3 / 86400) + (j4 / 86400000000000L)) * j5);
        long T = j$.com.android.tools.r8.a.T(j6, 86400000000000L);
        return a0(localDate.plusDays(U), T == e0 ? this.b : j.X(T));
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: Z, reason: merged with bridge method [inline-methods] */
    public final LocalDateTime c(long j, j$.time.temporal.o oVar) {
        return oVar instanceof j$.time.temporal.a ? ((j$.time.temporal.a) oVar).S() ? a0(this.a, this.b.c(j, oVar)) : a0(this.a.c(j, oVar), this.b) : (LocalDateTime) oVar.B(this, j);
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    public final j$.time.chrono.j a() {
        return ((LocalDate) f()).a();
    }

    public final LocalDateTime a0(LocalDate localDate, j jVar) {
        return (this.a == localDate && this.b == jVar) ? this : new LocalDateTime(localDate, jVar);
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    /* renamed from: atZone, reason: merged with bridge method [inline-methods] */
    public ZonedDateTime C(ZoneId zoneId) {
        return ZonedDateTime.T(this, zoneId, null);
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    public final j b() {
        return this.b;
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: b0, reason: merged with bridge method [inline-methods] */
    public final LocalDateTime l(j$.time.temporal.l lVar) {
        return lVar instanceof LocalDate ? a0((LocalDate) lVar, this.b) : lVar instanceof j ? a0(this.a, (j) lVar) : lVar instanceof LocalDateTime ? (LocalDateTime) lVar : (LocalDateTime) lVar.q(this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final boolean e(j$.time.temporal.o oVar) {
        if (!(oVar instanceof j$.time.temporal.a)) {
            return oVar != null && oVar.k(this);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) oVar;
        return aVar.isDateBased() || aVar.S();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LocalDateTime) {
            LocalDateTime localDateTime = (LocalDateTime) obj;
            if (this.a.equals(localDateTime.a) && this.b.equals(localDateTime.b)) {
                return true;
            }
        }
        return false;
    }

    public String format(DateTimeFormatter dateTimeFormatter) {
        Objects.requireNonNull(dateTimeFormatter, "formatter");
        return dateTimeFormatter.format(this);
    }

    public int getDayOfMonth() {
        return this.a.c;
    }

    public DayOfWeek getDayOfWeek() {
        return this.a.W();
    }

    public int getHour() {
        return this.b.a;
    }

    public int getMinute() {
        return this.b.b;
    }

    public int getMonthValue() {
        return this.a.b;
    }

    public int getYear() {
        return this.a.getYear();
    }

    public final int hashCode() {
        return this.a.hashCode() ^ this.b.hashCode();
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final int k(j$.time.temporal.o oVar) {
        return oVar instanceof j$.time.temporal.a ? ((j$.time.temporal.a) oVar).S() ? this.b.k(oVar) : this.a.k(oVar) : j$.time.temporal.p.a(this, oVar);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.r m(j$.time.temporal.o oVar) {
        if (!(oVar instanceof j$.time.temporal.a)) {
            return oVar.l(this);
        }
        if (!((j$.time.temporal.a) oVar).S()) {
            return this.a.m(oVar);
        }
        j jVar = this.b;
        jVar.getClass();
        return j$.time.temporal.p.d(jVar, oVar);
    }

    public LocalDateTime minusMinutes(long j) {
        return Y(this.a, 0L, j, 0L, 0L, -1);
    }

    public LocalDateTime plusDays(long j) {
        return a0(this.a.plusDays(j), this.b);
    }

    public LocalDateTime plusSeconds(long j) {
        return Y(this.a, 0L, 0L, j, 0L, 1);
    }

    @Override // j$.time.temporal.l
    public final Temporal q(Temporal temporal) {
        return temporal.c(((LocalDate) f()).G(), j$.time.temporal.a.EPOCH_DAY).c(b().e0(), j$.time.temporal.a.NANO_OF_DAY);
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    public final /* synthetic */ long toEpochSecond(ZoneOffset zoneOffset) {
        return j$.com.android.tools.r8.a.u(this, zoneOffset);
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    /* renamed from: toLocalDate, reason: merged with bridge method [inline-methods] */
    public LocalDate f() {
        return this.a;
    }

    public final String toString() {
        return this.a.toString() + "T" + this.b.toString();
    }

    public LocalDateTime truncatedTo(TemporalUnit temporalUnit) {
        LocalDate localDate = this.a;
        j jVar = this.b;
        jVar.getClass();
        if (temporalUnit != ChronoUnit.NANOS) {
            d duration = temporalUnit.getDuration();
            long j = duration.a;
            if (j > 86400) {
                throw new RuntimeException("Unit is too large to be used for truncation");
            }
            long j2 = duration.b;
            if (j < 0) {
                j++;
                j2 -= 1000000000;
            }
            long P = j$.com.android.tools.r8.a.P(j$.com.android.tools.r8.a.V(j, 1000000000L), j2);
            if (86400000000000L % P != 0) {
                throw new RuntimeException("Unit must divide into a standard day without remainder");
            }
            jVar = j.X((jVar.e0() / P) * P);
        }
        return a0(localDate, jVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00be, code lost:
    
        if (r0.S(r1) > 0) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00e2, code lost:
    
        if (r0.isBefore(r8.a) == false) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00ec, code lost:
    
        if (r9.b.S(r8.b) <= 0) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00ee, code lost:
    
        r0 = r0.plusDays(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00f8, code lost:
    
        return r8.a.until(r0, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00d5, code lost:
    
        if (r9.b.S(r8.b) >= 0) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00d7, code lost:
    
        r0 = r0.minusDays(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00cb, code lost:
    
        if (r0.G() > r1.G()) goto L33;
     */
    @Override // j$.time.temporal.Temporal
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long until(j$.time.temporal.Temporal r9, j$.time.temporal.TemporalUnit r10) {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.time.LocalDateTime.until(j$.time.temporal.Temporal, j$.time.temporal.TemporalUnit):long");
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final Object w(f fVar) {
        return fVar == j$.time.temporal.p.f ? this.a : j$.com.android.tools.r8.a.r(this, fVar);
    }

    public LocalDateTime withDayOfMonth(int i) {
        LocalDate localDate = this.a;
        if (localDate.c != i) {
            localDate = LocalDate.of(localDate.a, localDate.b, i);
        }
        return a0(localDate, this.b);
    }

    public LocalDateTime withHour(int i) {
        return a0(this.a, this.b.h0(i));
    }

    public LocalDateTime withMinute(int i) {
        j jVar = this.b;
        if (jVar.b != i) {
            j$.time.temporal.a.MINUTE_OF_HOUR.F(i);
            jVar = j.T(jVar.a, i, jVar.c, jVar.d);
        }
        return a0(this.a, jVar);
    }

    public LocalDateTime withMonth(int i) {
        LocalDate localDate = this.a;
        if (localDate.b != i) {
            j$.time.temporal.a.MONTH_OF_YEAR.F(i);
            localDate = LocalDate.j0(localDate.a, i, localDate.c);
        }
        return a0(localDate, this.b);
    }

    public LocalDateTime withSecond(int i) {
        j jVar = this.b;
        if (jVar.c != i) {
            j$.time.temporal.a.SECOND_OF_MINUTE.F(i);
            jVar = j.T(jVar.a, jVar.b, i, jVar.d);
        }
        return a0(this.a, jVar);
    }

    public LocalDateTime withYear(int i) {
        return a0(this.a.m0(i), this.b);
    }
}
