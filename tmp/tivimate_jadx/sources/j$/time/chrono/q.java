package j$.time.chrono;

import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.LocalDateTime;
import j$.time.ZoneId;
import j$.time.ZonedDateTime;
import j$.time.temporal.TemporalAccessor;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class q extends AbstractC5420a implements Serializable {
    public static final q c = new q();
    private static final long serialVersionUID = -1440403870442975015L;

    private q() {
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    @Override // j$.time.chrono.AbstractC5420a
    public final ChronoLocalDate B(Map map, j$.time.format.E e) {
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
        int a = aVar.b.a(((Long) map.remove(aVar)).longValue(), aVar);
        boolean z = true;
        if (e == j$.time.format.E.LENIENT) {
            return LocalDate.of(a, 1, 1).g0(j$.com.android.tools.r8.a.W(((Long) map.remove(j$.time.temporal.a.MONTH_OF_YEAR)).longValue(), 1L)).plusDays(j$.com.android.tools.r8.a.W(((Long) map.remove(j$.time.temporal.a.DAY_OF_MONTH)).longValue(), 1L));
        }
        j$.time.temporal.a aVar2 = j$.time.temporal.a.MONTH_OF_YEAR;
        int a2 = aVar2.b.a(((Long) map.remove(aVar2)).longValue(), aVar2);
        j$.time.temporal.a aVar3 = j$.time.temporal.a.DAY_OF_MONTH;
        int a3 = aVar3.b.a(((Long) map.remove(aVar3)).longValue(), aVar3);
        if (e == j$.time.format.E.SMART) {
            if (a2 == 4 || a2 == 6 || a2 == 9 || a2 == 11) {
                a3 = Math.min(a3, 30);
            } else if (a2 == 2) {
                j$.time.l lVar = j$.time.l.FEBRUARY;
                long j = a;
                int i = j$.time.u.b;
                if ((3 & j) != 0 || (j % 100 == 0 && j % 400 != 0)) {
                    z = false;
                }
                a3 = Math.min(a3, lVar.T(z));
            }
        }
        return LocalDate.of(a, a2, a3);
    }

    @Override // j$.time.chrono.j
    public final ChronoLocalDate D(TemporalAccessor temporalAccessor) {
        return LocalDate.U(temporalAccessor);
    }

    @Override // j$.time.chrono.AbstractC5420a
    public final ChronoLocalDate F(Map map, j$.time.format.E e) {
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR_OF_ERA;
        Long l = (Long) map.remove(aVar);
        if (l == null) {
            j$.time.temporal.a aVar2 = j$.time.temporal.a.ERA;
            if (!map.containsKey(aVar2)) {
                return null;
            }
            aVar2.F(((Long) map.get(aVar2)).longValue());
            return null;
        }
        if (e != j$.time.format.E.LENIENT) {
            aVar.F(l.longValue());
        }
        Long l2 = (Long) map.remove(j$.time.temporal.a.ERA);
        if (l2 != null) {
            if (l2.longValue() == 1) {
                AbstractC5420a.k(map, j$.time.temporal.a.YEAR, l.longValue());
                return null;
            }
            if (l2.longValue() == 0) {
                AbstractC5420a.k(map, j$.time.temporal.a.YEAR, j$.com.android.tools.r8.a.W(1L, l.longValue()));
                return null;
            }
            throw new RuntimeException("Invalid value for era: " + l2);
        }
        j$.time.temporal.a aVar3 = j$.time.temporal.a.YEAR;
        Long l3 = (Long) map.get(aVar3);
        if (e != j$.time.format.E.STRICT) {
            AbstractC5420a.k(map, aVar3, (l3 == null || l3.longValue() > 0) ? l.longValue() : j$.com.android.tools.r8.a.W(1L, l.longValue()));
            return null;
        }
        if (l3 == null) {
            map.put(aVar, l);
            return null;
        }
        long longValue = l3.longValue();
        long longValue2 = l.longValue();
        if (longValue <= 0) {
            longValue2 = j$.com.android.tools.r8.a.W(1L, longValue2);
        }
        AbstractC5420a.k(map, aVar3, longValue2);
        return null;
    }

    @Override // j$.time.chrono.AbstractC5420a, j$.time.chrono.j
    public final ChronoLocalDateTime I(TemporalAccessor temporalAccessor) {
        return LocalDateTime.T(temporalAccessor);
    }

    @Override // j$.time.chrono.j
    public final ChronoLocalDate L(int i, int i2, int i3) {
        return LocalDate.of(i, i2, i3);
    }

    @Override // j$.time.chrono.AbstractC5420a, j$.time.chrono.j
    public final ChronoLocalDate N(Map map, j$.time.format.E e) {
        return (LocalDate) super.N(map, e);
    }

    @Override // j$.time.chrono.j
    public final ChronoZonedDateTime O(Instant instant, ZoneId zoneId) {
        return ZonedDateTime.ofInstant(instant, zoneId);
    }

    @Override // j$.time.chrono.j
    public final boolean R(long j) {
        if ((3 & j) == 0) {
            return j % 100 != 0 || j % 400 == 0;
        }
        return false;
    }

    @Override // j$.time.chrono.j
    public final ChronoLocalDate i(long j) {
        return LocalDate.d0(j);
    }

    @Override // j$.time.chrono.j
    public final String j() {
        return "ISO";
    }

    @Override // j$.time.chrono.AbstractC5420a
    public final ChronoLocalDate l() {
        j$.time.a e0 = j$.com.android.tools.r8.a.e0();
        Objects.requireNonNull(e0, "clock");
        return LocalDate.U(LocalDate.c0(e0));
    }

    @Override // j$.time.chrono.j
    public final String n() {
        return "iso8601";
    }

    @Override // j$.time.chrono.AbstractC5420a, j$.time.chrono.j
    public final ChronoZonedDateTime o(TemporalAccessor temporalAccessor) {
        return ZonedDateTime.S(temporalAccessor);
    }

    @Override // j$.time.chrono.j
    public final ChronoLocalDate p(int i, int i2) {
        return LocalDate.e0(i, i2);
    }

    @Override // j$.time.chrono.j
    public final j$.time.temporal.r t(j$.time.temporal.a aVar) {
        return aVar.b;
    }

    @Override // j$.time.chrono.j
    public final List v() {
        return j$.com.android.tools.r8.a.Q(r.values());
    }

    @Override // j$.time.chrono.AbstractC5420a
    public final void w(Map map, j$.time.format.E e) {
        j$.time.temporal.a aVar = j$.time.temporal.a.PROLEPTIC_MONTH;
        Long l = (Long) map.remove(aVar);
        if (l != null) {
            if (e != j$.time.format.E.LENIENT) {
                aVar.F(l.longValue());
            }
            AbstractC5420a.k(map, j$.time.temporal.a.MONTH_OF_YEAR, ((int) j$.com.android.tools.r8.a.T(l.longValue(), r4)) + 1);
            AbstractC5420a.k(map, j$.time.temporal.a.YEAR, j$.com.android.tools.r8.a.U(l.longValue(), 12));
        }
    }

    public Object writeReplace() {
        return new C((byte) 1, this);
    }

    @Override // j$.time.chrono.j
    public final k x(int i) {
        if (i == 0) {
            return r.BCE;
        }
        if (i == 1) {
            return r.CE;
        }
        throw new RuntimeException("Invalid era: " + i);
    }

    @Override // j$.time.chrono.j
    public final int y(k kVar, int i) {
        if (kVar instanceof r) {
            return kVar == r.CE ? i : 1 - i;
        }
        throw new ClassCastException("Era must be IsoEra");
    }
}
