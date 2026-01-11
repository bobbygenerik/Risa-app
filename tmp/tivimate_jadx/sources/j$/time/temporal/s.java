package j$.time.temporal;

import j$.time.chrono.ChronoLocalDate;
import j$.time.format.D;
import j$.time.format.E;
import java.util.Map;

/* loaded from: classes2.dex */
public final class s implements o {
    public static final r f = r.f(1, 7);
    public static final r g = r.g(0, 4, 6);
    public static final r h = r.g(0, 52, 54);
    public static final r i = r.g(1, 52, 53);
    public final String a;
    public final WeekFields b;
    public final TemporalUnit c;
    public final TemporalUnit d;
    public final r e;

    public s(String str, WeekFields weekFields, TemporalUnit temporalUnit, TemporalUnit temporalUnit2, r rVar) {
        this.a = str;
        this.b = weekFields;
        this.c = temporalUnit;
        this.d = temporalUnit2;
        this.e = rVar;
    }

    public static int a(int i2, int i3) {
        return ((i3 - 1) + (i2 + 7)) / 7;
    }

    @Override // j$.time.temporal.o
    public final Temporal B(Temporal temporal, long j) {
        if (this.e.a(j, this) == temporal.k(this)) {
            return temporal;
        }
        if (this.d != ChronoUnit.FOREVER) {
            return temporal.d(r0 - r1, this.c);
        }
        WeekFields weekFields = this.b;
        return e(j$.com.android.tools.r8.a.M(temporal), (int) j, temporal.k(weekFields.e), temporal.k(weekFields.c));
    }

    public final int b(TemporalAccessor temporalAccessor) {
        return p.e(temporalAccessor.k(a.DAY_OF_WEEK) - this.b.getFirstDayOfWeek().getValue()) + 1;
    }

    public final int c(TemporalAccessor temporalAccessor) {
        int b = b(temporalAccessor);
        int k = temporalAccessor.k(a.YEAR);
        a aVar = a.DAY_OF_YEAR;
        int k2 = temporalAccessor.k(aVar);
        int h2 = h(k2, b);
        int a = a(h2, k2);
        return a == 0 ? k - 1 : a >= a(h2, ((int) temporalAccessor.m(aVar).d) + this.b.b) ? k + 1 : k;
    }

    public final int d(TemporalAccessor temporalAccessor) {
        int a;
        int b = b(temporalAccessor);
        a aVar = a.DAY_OF_YEAR;
        int k = temporalAccessor.k(aVar);
        int h2 = h(k, b);
        int a2 = a(h2, k);
        return a2 == 0 ? d(j$.com.android.tools.r8.a.M(temporalAccessor).D(temporalAccessor).u(k, ChronoUnit.DAYS)) : (a2 <= 50 || a2 < (a = a(h2, ((int) temporalAccessor.m(aVar).d) + this.b.b))) ? a2 : (a2 - a) + 1;
    }

    public final ChronoLocalDate e(j$.time.chrono.j jVar, int i2, int i3, int i4) {
        ChronoLocalDate L = jVar.L(i2, 1, 1);
        int h2 = h(1, b(L));
        int i5 = i4 - 1;
        return L.d(((Math.min(i3, a(h2, L.P() + this.b.b) - 1) - 1) * 7) + i5 + (-h2), (TemporalUnit) ChronoUnit.DAYS);
    }

    public final r f(TemporalAccessor temporalAccessor, a aVar) {
        int h2 = h(temporalAccessor.k(aVar), b(temporalAccessor));
        r m = temporalAccessor.m(aVar);
        return r.f(a(h2, (int) m.a), a(h2, (int) m.d));
    }

    public final r g(TemporalAccessor temporalAccessor) {
        a aVar = a.DAY_OF_YEAR;
        if (!temporalAccessor.e(aVar)) {
            return h;
        }
        int b = b(temporalAccessor);
        int k = temporalAccessor.k(aVar);
        int h2 = h(k, b);
        int a = a(h2, k);
        if (a == 0) {
            return g(j$.com.android.tools.r8.a.M(temporalAccessor).D(temporalAccessor).u(k + 7, ChronoUnit.DAYS));
        }
        return a >= a(h2, this.b.b + ((int) temporalAccessor.m(aVar).d)) ? g(j$.com.android.tools.r8.a.M(temporalAccessor).D(temporalAccessor).d((r0 - k) + 8, (TemporalUnit) ChronoUnit.DAYS)) : r.f(1L, r1 - 1);
    }

    public final int h(int i2, int i3) {
        int e = p.e(i2 - i3);
        return e + 1 > this.b.b ? 7 - e : -e;
    }

    @Override // j$.time.temporal.o
    public final boolean isDateBased() {
        return true;
    }

    @Override // j$.time.temporal.o
    public final boolean k(TemporalAccessor temporalAccessor) {
        if (!temporalAccessor.e(a.DAY_OF_WEEK)) {
            return false;
        }
        ChronoUnit chronoUnit = ChronoUnit.WEEKS;
        TemporalUnit temporalUnit = this.d;
        if (temporalUnit == chronoUnit) {
            return true;
        }
        if (temporalUnit == ChronoUnit.MONTHS) {
            return temporalAccessor.e(a.DAY_OF_MONTH);
        }
        if (temporalUnit != ChronoUnit.YEARS && temporalUnit != WeekFields.h) {
            if (temporalUnit == ChronoUnit.FOREVER) {
                return temporalAccessor.e(a.YEAR);
            }
            return false;
        }
        return temporalAccessor.e(a.DAY_OF_YEAR);
    }

    @Override // j$.time.temporal.o
    public final r l(TemporalAccessor temporalAccessor) {
        ChronoUnit chronoUnit = ChronoUnit.WEEKS;
        TemporalUnit temporalUnit = this.d;
        if (temporalUnit == chronoUnit) {
            return this.e;
        }
        if (temporalUnit == ChronoUnit.MONTHS) {
            return f(temporalAccessor, a.DAY_OF_MONTH);
        }
        if (temporalUnit == ChronoUnit.YEARS) {
            return f(temporalAccessor, a.DAY_OF_YEAR);
        }
        if (temporalUnit == WeekFields.h) {
            return g(temporalAccessor);
        }
        if (temporalUnit == ChronoUnit.FOREVER) {
            return a.YEAR.b;
        }
        throw new IllegalStateException("unreachable, rangeUnit: " + temporalUnit + ", this: " + this);
    }

    @Override // j$.time.temporal.o
    public final TemporalAccessor m(Map map, D d, E e) {
        ChronoLocalDate chronoLocalDate;
        ChronoLocalDate chronoLocalDate2;
        a aVar;
        ChronoLocalDate chronoLocalDate3;
        long longValue = ((Long) map.get(this)).longValue();
        int O = j$.com.android.tools.r8.a.O(longValue);
        ChronoUnit chronoUnit = ChronoUnit.WEEKS;
        r rVar = this.e;
        WeekFields weekFields = this.b;
        TemporalUnit temporalUnit = this.d;
        if (temporalUnit == chronoUnit) {
            long e2 = p.e((rVar.a(longValue, this) - 1) + (weekFields.getFirstDayOfWeek().getValue() - 1)) + 1;
            map.remove(this);
            map.put(a.DAY_OF_WEEK, Long.valueOf(e2));
            return null;
        }
        a aVar2 = a.DAY_OF_WEEK;
        if (!map.containsKey(aVar2)) {
            return null;
        }
        int e3 = p.e(aVar2.b.a(((Long) map.get(aVar2)).longValue(), aVar2) - weekFields.getFirstDayOfWeek().getValue()) + 1;
        j$.time.chrono.j M = j$.com.android.tools.r8.a.M(d);
        a aVar3 = a.YEAR;
        if (!map.containsKey(aVar3)) {
            if ((temporalUnit != WeekFields.h && temporalUnit != ChronoUnit.FOREVER) || !map.containsKey(weekFields.f) || !map.containsKey(weekFields.e)) {
                return null;
            }
            s sVar = weekFields.f;
            int a = sVar.e.a(((Long) map.get(sVar)).longValue(), weekFields.f);
            if (e == E.LENIENT) {
                chronoLocalDate = e(M, a, 1, e3).d(j$.com.android.tools.r8.a.W(((Long) map.get(weekFields.e)).longValue(), 1L), (TemporalUnit) chronoUnit);
            } else {
                s sVar2 = weekFields.e;
                ChronoLocalDate e4 = e(M, a, sVar2.e.a(((Long) map.get(sVar2)).longValue(), weekFields.e), e3);
                if (e == E.STRICT && c(e4) != a) {
                    throw new RuntimeException("Strict mode rejected resolved date as it is in a different week-based-year");
                }
                chronoLocalDate = e4;
            }
            map.remove(this);
            map.remove(weekFields.f);
            map.remove(weekFields.e);
            map.remove(aVar2);
            return chronoLocalDate;
        }
        int a2 = aVar3.b.a(((Long) map.get(aVar3)).longValue(), aVar3);
        ChronoUnit chronoUnit2 = ChronoUnit.MONTHS;
        if (temporalUnit == chronoUnit2) {
            a aVar4 = a.MONTH_OF_YEAR;
            if (map.containsKey(aVar4)) {
                long longValue2 = ((Long) map.get(aVar4)).longValue();
                long j = O;
                if (e == E.LENIENT) {
                    ChronoLocalDate d2 = M.L(a2, 1, 1).d(j$.com.android.tools.r8.a.W(longValue2, 1L), (TemporalUnit) chronoUnit2);
                    int b = b(d2);
                    int k = d2.k(a.DAY_OF_MONTH);
                    chronoLocalDate3 = d2.d(j$.com.android.tools.r8.a.P(j$.com.android.tools.r8.a.V(j$.com.android.tools.r8.a.W(j, a(h(k, b), k)), 7), e3 - b(d2)), (TemporalUnit) ChronoUnit.DAYS);
                    aVar = aVar4;
                } else {
                    aVar = aVar4;
                    ChronoLocalDate L = M.L(a2, aVar.b.a(longValue2, aVar), 1);
                    long a3 = rVar.a(j, this);
                    int b2 = b(L);
                    int k2 = L.k(a.DAY_OF_MONTH);
                    ChronoLocalDate d3 = L.d((((int) (a3 - a(h(k2, b2), k2))) * 7) + (e3 - b(L)), (TemporalUnit) ChronoUnit.DAYS);
                    if (e == E.STRICT && d3.F(aVar) != longValue2) {
                        throw new RuntimeException("Strict mode rejected resolved date as it is in a different month");
                    }
                    chronoLocalDate3 = d3;
                }
                map.remove(this);
                map.remove(aVar3);
                map.remove(aVar);
                map.remove(aVar2);
                return chronoLocalDate3;
            }
        }
        if (temporalUnit != ChronoUnit.YEARS) {
            return null;
        }
        long j2 = O;
        ChronoLocalDate L2 = M.L(a2, 1, 1);
        if (e == E.LENIENT) {
            int b3 = b(L2);
            int k3 = L2.k(a.DAY_OF_YEAR);
            chronoLocalDate2 = L2.d(j$.com.android.tools.r8.a.P(j$.com.android.tools.r8.a.V(j$.com.android.tools.r8.a.W(j2, a(h(k3, b3), k3)), 7), e3 - b(L2)), (TemporalUnit) ChronoUnit.DAYS);
        } else {
            long a4 = rVar.a(j2, this);
            int b4 = b(L2);
            int k4 = L2.k(a.DAY_OF_YEAR);
            ChronoLocalDate d4 = L2.d((((int) (a4 - a(h(k4, b4), k4))) * 7) + (e3 - b(L2)), (TemporalUnit) ChronoUnit.DAYS);
            if (e == E.STRICT && d4.F(aVar3) != a2) {
                throw new RuntimeException("Strict mode rejected resolved date as it is in a different year");
            }
            chronoLocalDate2 = d4;
        }
        map.remove(this);
        map.remove(aVar3);
        map.remove(aVar2);
        return chronoLocalDate2;
    }

    @Override // j$.time.temporal.o
    public final r q() {
        return this.e;
    }

    public final String toString() {
        return this.a + "[" + this.b.toString() + "]";
    }

    @Override // j$.time.temporal.o
    public final long w(TemporalAccessor temporalAccessor) {
        int c;
        ChronoUnit chronoUnit = ChronoUnit.WEEKS;
        TemporalUnit temporalUnit = this.d;
        if (temporalUnit == chronoUnit) {
            c = b(temporalAccessor);
        } else if (temporalUnit == ChronoUnit.MONTHS) {
            int b = b(temporalAccessor);
            int k = temporalAccessor.k(a.DAY_OF_MONTH);
            c = a(h(k, b), k);
        } else if (temporalUnit == ChronoUnit.YEARS) {
            int b2 = b(temporalAccessor);
            int k2 = temporalAccessor.k(a.DAY_OF_YEAR);
            c = a(h(k2, b2), k2);
        } else if (temporalUnit == WeekFields.h) {
            c = d(temporalAccessor);
        } else {
            if (temporalUnit != ChronoUnit.FOREVER) {
                throw new IllegalStateException("unreachable, rangeUnit: " + temporalUnit + ", this: " + this);
            }
            c = c(temporalAccessor);
        }
        return c;
    }
}
