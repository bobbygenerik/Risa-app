package j$.time.chrono;

import j$.time.DayOfWeek;
import j$.time.Instant;
import j$.time.ZoneId;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.TemporalAccessor;
import j$.time.temporal.TemporalUnit;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Locale;
import java.util.Map;

/* renamed from: j$.time.chrono.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC5420a implements j {
    public static final ConcurrentHashMap a = new ConcurrentHashMap();
    public static final ConcurrentHashMap b = new ConcurrentHashMap();

    static {
        new Locale("ja", "JP", "JP");
    }

    public static void k(Map map, j$.time.temporal.a aVar, long j) {
        Long l = (Long) map.get(aVar);
        if (l == null || l.longValue() == j) {
            map.put(aVar, Long.valueOf(j));
            return;
        }
        throw new RuntimeException("Conflict found: " + aVar + " " + l + " differs from " + aVar + " " + j);
    }

    public static j m(j jVar, String str) {
        String n;
        j jVar2 = (j) a.putIfAbsent(str, jVar);
        if (jVar2 == null && (n = jVar.n()) != null) {
            b.putIfAbsent(n, jVar);
        }
        return jVar2;
    }

    public static ChronoLocalDate q(ChronoLocalDate chronoLocalDate, long j, long j2, long j3) {
        long j4;
        ChronoLocalDate d = chronoLocalDate.d(j, (TemporalUnit) ChronoUnit.MONTHS);
        ChronoUnit chronoUnit = ChronoUnit.WEEKS;
        ChronoLocalDate d2 = d.d(j2, (TemporalUnit) chronoUnit);
        if (j3 <= 7) {
            if (j3 < 1) {
                d2 = d2.d(j$.com.android.tools.r8.a.W(j3, 7L) / 7, (TemporalUnit) chronoUnit);
                j4 = (j3 + 6) % 7;
            }
            return d2.l(new j$.time.temporal.m(DayOfWeek.of((int) j3).getValue(), 0));
        }
        long j5 = j3 - 1;
        d2 = d2.d(j5 / 7, (TemporalUnit) chronoUnit);
        j4 = j5 % 7;
        j3 = j4 + 1;
        return d2.l(new j$.time.temporal.m(DayOfWeek.of((int) j3).getValue(), 0));
    }

    public ChronoLocalDate B(Map map, j$.time.format.E e) {
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
        int a2 = t(aVar).a(((Long) map.remove(aVar)).longValue(), aVar);
        if (e == j$.time.format.E.LENIENT) {
            long W = j$.com.android.tools.r8.a.W(((Long) map.remove(j$.time.temporal.a.MONTH_OF_YEAR)).longValue(), 1L);
            return L(a2, 1, 1).d(W, (TemporalUnit) ChronoUnit.MONTHS).d(j$.com.android.tools.r8.a.W(((Long) map.remove(j$.time.temporal.a.DAY_OF_MONTH)).longValue(), 1L), (TemporalUnit) ChronoUnit.DAYS);
        }
        j$.time.temporal.a aVar2 = j$.time.temporal.a.MONTH_OF_YEAR;
        int a3 = t(aVar2).a(((Long) map.remove(aVar2)).longValue(), aVar2);
        j$.time.temporal.a aVar3 = j$.time.temporal.a.DAY_OF_MONTH;
        int a4 = t(aVar3).a(((Long) map.remove(aVar3)).longValue(), aVar3);
        if (e != j$.time.format.E.SMART) {
            return L(a2, a3, a4);
        }
        try {
            return L(a2, a3, a4);
        } catch (j$.time.b unused) {
            return L(a2, a3, 1).l(new j$.time.f(4));
        }
    }

    public ChronoLocalDate F(Map map, j$.time.format.E e) {
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR_OF_ERA;
        Long l = (Long) map.remove(aVar);
        if (l == null) {
            j$.time.temporal.a aVar2 = j$.time.temporal.a.ERA;
            if (!map.containsKey(aVar2)) {
                return null;
            }
            t(aVar2).b(((Long) map.get(aVar2)).longValue(), aVar2);
            return null;
        }
        Long l2 = (Long) map.remove(j$.time.temporal.a.ERA);
        int a2 = e != j$.time.format.E.LENIENT ? t(aVar).a(l.longValue(), aVar) : j$.com.android.tools.r8.a.O(l.longValue());
        if (l2 != null) {
            k(map, j$.time.temporal.a.YEAR, y(x(t(r2).a(l2.longValue(), r2)), a2));
            return null;
        }
        j$.time.temporal.a aVar3 = j$.time.temporal.a.YEAR;
        if (map.containsKey(aVar3)) {
            k(map, aVar3, y(p(t(aVar3).a(((Long) map.get(aVar3)).longValue(), aVar3), 1).J(), a2));
            return null;
        }
        if (e == j$.time.format.E.STRICT) {
            map.put(aVar, l);
            return null;
        }
        if (v().isEmpty()) {
            k(map, aVar3, a2);
            return null;
        }
        k(map, aVar3, y((k) r9.get(r9.size() - 1), a2));
        return null;
    }

    @Override // j$.time.chrono.j
    public ChronoLocalDateTime I(TemporalAccessor temporalAccessor) {
        try {
            return D(temporalAccessor).H(j$.time.j.U(temporalAccessor));
        } catch (j$.time.b e) {
            throw new RuntimeException("Unable to obtain ChronoLocalDateTime from TemporalAccessor: " + temporalAccessor.getClass(), e);
        }
    }

    @Override // j$.time.chrono.j
    public ChronoLocalDate N(Map map, j$.time.format.E e) {
        j$.time.temporal.a aVar = j$.time.temporal.a.EPOCH_DAY;
        if (map.containsKey(aVar)) {
            return i(((Long) map.remove(aVar)).longValue());
        }
        w(map, e);
        ChronoLocalDate F = F(map, e);
        if (F != null) {
            return F;
        }
        j$.time.temporal.a aVar2 = j$.time.temporal.a.YEAR;
        if (!map.containsKey(aVar2)) {
            return null;
        }
        j$.time.temporal.a aVar3 = j$.time.temporal.a.MONTH_OF_YEAR;
        if (map.containsKey(aVar3)) {
            if (map.containsKey(j$.time.temporal.a.DAY_OF_MONTH)) {
                return B(map, e);
            }
            j$.time.temporal.a aVar4 = j$.time.temporal.a.ALIGNED_WEEK_OF_MONTH;
            if (map.containsKey(aVar4)) {
                j$.time.temporal.a aVar5 = j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_MONTH;
                if (map.containsKey(aVar5)) {
                    int a2 = t(aVar2).a(((Long) map.remove(aVar2)).longValue(), aVar2);
                    if (e == j$.time.format.E.LENIENT) {
                        long W = j$.com.android.tools.r8.a.W(((Long) map.remove(aVar3)).longValue(), 1L);
                        return L(a2, 1, 1).d(W, (TemporalUnit) ChronoUnit.MONTHS).d(j$.com.android.tools.r8.a.W(((Long) map.remove(aVar4)).longValue(), 1L), (TemporalUnit) ChronoUnit.WEEKS).d(j$.com.android.tools.r8.a.W(((Long) map.remove(aVar5)).longValue(), 1L), (TemporalUnit) ChronoUnit.DAYS);
                    }
                    int a3 = t(aVar3).a(((Long) map.remove(aVar3)).longValue(), aVar3);
                    int a4 = t(aVar4).a(((Long) map.remove(aVar4)).longValue(), aVar4);
                    ChronoLocalDate d = L(a2, a3, 1).d((t(aVar5).a(((Long) map.remove(aVar5)).longValue(), aVar5) - 1) + ((a4 - 1) * 7), (TemporalUnit) ChronoUnit.DAYS);
                    if (e != j$.time.format.E.STRICT || d.k(aVar3) == a3) {
                        return d;
                    }
                    throw new RuntimeException("Strict mode rejected resolved date as it is in a different month");
                }
                j$.time.temporal.a aVar6 = j$.time.temporal.a.DAY_OF_WEEK;
                if (map.containsKey(aVar6)) {
                    int a5 = t(aVar2).a(((Long) map.remove(aVar2)).longValue(), aVar2);
                    if (e == j$.time.format.E.LENIENT) {
                        return q(L(a5, 1, 1), j$.com.android.tools.r8.a.W(((Long) map.remove(aVar3)).longValue(), 1L), j$.com.android.tools.r8.a.W(((Long) map.remove(aVar4)).longValue(), 1L), j$.com.android.tools.r8.a.W(((Long) map.remove(aVar6)).longValue(), 1L));
                    }
                    int a6 = t(aVar3).a(((Long) map.remove(aVar3)).longValue(), aVar3);
                    ChronoLocalDate l = L(a5, a6, 1).d((t(aVar4).a(((Long) map.remove(aVar4)).longValue(), aVar4) - 1) * 7, (TemporalUnit) ChronoUnit.DAYS).l(new j$.time.temporal.m(DayOfWeek.of(t(aVar6).a(((Long) map.remove(aVar6)).longValue(), aVar6)).getValue(), 0));
                    if (e != j$.time.format.E.STRICT || l.k(aVar3) == a6) {
                        return l;
                    }
                    throw new RuntimeException("Strict mode rejected resolved date as it is in a different month");
                }
            }
        }
        j$.time.temporal.a aVar7 = j$.time.temporal.a.DAY_OF_YEAR;
        if (map.containsKey(aVar7)) {
            int a7 = t(aVar2).a(((Long) map.remove(aVar2)).longValue(), aVar2);
            if (e != j$.time.format.E.LENIENT) {
                return p(a7, t(aVar7).a(((Long) map.remove(aVar7)).longValue(), aVar7));
            }
            return p(a7, 1).d(j$.com.android.tools.r8.a.W(((Long) map.remove(aVar7)).longValue(), 1L), (TemporalUnit) ChronoUnit.DAYS);
        }
        j$.time.temporal.a aVar8 = j$.time.temporal.a.ALIGNED_WEEK_OF_YEAR;
        if (!map.containsKey(aVar8)) {
            return null;
        }
        j$.time.temporal.a aVar9 = j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_YEAR;
        if (map.containsKey(aVar9)) {
            int a8 = t(aVar2).a(((Long) map.remove(aVar2)).longValue(), aVar2);
            if (e == j$.time.format.E.LENIENT) {
                return p(a8, 1).d(j$.com.android.tools.r8.a.W(((Long) map.remove(aVar8)).longValue(), 1L), (TemporalUnit) ChronoUnit.WEEKS).d(j$.com.android.tools.r8.a.W(((Long) map.remove(aVar9)).longValue(), 1L), (TemporalUnit) ChronoUnit.DAYS);
            }
            int a9 = t(aVar8).a(((Long) map.remove(aVar8)).longValue(), aVar8);
            ChronoLocalDate d2 = p(a8, 1).d((t(aVar9).a(((Long) map.remove(aVar9)).longValue(), aVar9) - 1) + ((a9 - 1) * 7), (TemporalUnit) ChronoUnit.DAYS);
            if (e != j$.time.format.E.STRICT || d2.k(aVar2) == a8) {
                return d2;
            }
            throw new RuntimeException("Strict mode rejected resolved date as it is in a different year");
        }
        j$.time.temporal.a aVar10 = j$.time.temporal.a.DAY_OF_WEEK;
        if (!map.containsKey(aVar10)) {
            return null;
        }
        int a10 = t(aVar2).a(((Long) map.remove(aVar2)).longValue(), aVar2);
        if (e == j$.time.format.E.LENIENT) {
            return q(p(a10, 1), 0L, j$.com.android.tools.r8.a.W(((Long) map.remove(aVar8)).longValue(), 1L), j$.com.android.tools.r8.a.W(((Long) map.remove(aVar10)).longValue(), 1L));
        }
        ChronoLocalDate l2 = p(a10, 1).d((t(aVar8).a(((Long) map.remove(aVar8)).longValue(), aVar8) - 1) * 7, (TemporalUnit) ChronoUnit.DAYS).l(new j$.time.temporal.m(DayOfWeek.of(t(aVar10).a(((Long) map.remove(aVar10)).longValue(), aVar10)).getValue(), 0));
        if (e != j$.time.format.E.STRICT || l2.k(aVar2) == a10) {
            return l2;
        }
        throw new RuntimeException("Strict mode rejected resolved date as it is in a different year");
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return j().compareTo(((j) obj).j());
    }

    @Override // j$.time.chrono.j
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof AbstractC5420a) && j().compareTo(((AbstractC5420a) obj).j()) == 0;
    }

    @Override // j$.time.chrono.j
    public final int hashCode() {
        return getClass().hashCode() ^ j().hashCode();
    }

    public abstract /* synthetic */ ChronoLocalDate l();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v6, types: [j$.time.chrono.ChronoZonedDateTime] */
    @Override // j$.time.chrono.j
    public ChronoZonedDateTime o(TemporalAccessor temporalAccessor) {
        try {
            ZoneId S = ZoneId.S(temporalAccessor);
            try {
                temporalAccessor = O(Instant.T(temporalAccessor), S);
                return temporalAccessor;
            } catch (j$.time.b unused) {
                return i.S(S, null, C5424e.S(this, I(temporalAccessor)));
            }
        } catch (j$.time.b e) {
            throw new RuntimeException("Unable to obtain ChronoZonedDateTime from TemporalAccessor: " + temporalAccessor.getClass(), e);
        }
    }

    @Override // j$.time.chrono.j
    public final String toString() {
        return j();
    }

    public void w(Map map, j$.time.format.E e) {
        j$.time.temporal.a aVar = j$.time.temporal.a.PROLEPTIC_MONTH;
        Long l = (Long) map.remove(aVar);
        if (l != null) {
            if (e != j$.time.format.E.LENIENT) {
                aVar.F(l.longValue());
            }
            ChronoLocalDate c = l().c(1L, (j$.time.temporal.o) j$.time.temporal.a.DAY_OF_MONTH).c(l.longValue(), (j$.time.temporal.o) aVar);
            k(map, j$.time.temporal.a.MONTH_OF_YEAR, c.k(r0));
            k(map, j$.time.temporal.a.YEAR, c.k(r0));
        }
    }
}
