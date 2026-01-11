package j$.time.temporal;

import j$.time.DayOfWeek;
import j$.time.LocalDate;
import j$.time.format.D;
import j$.time.format.E;
import java.util.Map;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public abstract class g implements o {
    public static final g DAY_OF_QUARTER;
    public static final g QUARTER_OF_YEAR;
    public static final g WEEK_BASED_YEAR;
    public static final g WEEK_OF_WEEK_BASED_YEAR;
    public static final int[] a;
    public static final /* synthetic */ g[] b;

    static {
        g gVar = new g() { // from class: j$.time.temporal.c
            @Override // j$.time.temporal.o
            public final Temporal B(Temporal temporal, long j) {
                long w = w(temporal);
                q().b(j, this);
                a aVar = a.DAY_OF_YEAR;
                return temporal.c((j - w) + temporal.F(aVar), aVar);
            }

            @Override // j$.time.temporal.o
            public final boolean k(TemporalAccessor temporalAccessor) {
                if (!temporalAccessor.e(a.DAY_OF_YEAR) || !temporalAccessor.e(a.MONTH_OF_YEAR) || !temporalAccessor.e(a.YEAR)) {
                    return false;
                }
                g gVar2 = i.a;
                return j$.com.android.tools.r8.a.M(temporalAccessor).equals(j$.time.chrono.q.c);
            }

            @Override // j$.time.temporal.o
            public final r l(TemporalAccessor temporalAccessor) {
                if (!k(temporalAccessor)) {
                    throw new RuntimeException("Unsupported field: DayOfQuarter");
                }
                long F = temporalAccessor.F(g.QUARTER_OF_YEAR);
                if (F == 1) {
                    return j$.time.chrono.q.c.R(temporalAccessor.F(a.YEAR)) ? r.f(1L, 91L) : r.f(1L, 90L);
                }
                return F == 2 ? r.f(1L, 91L) : (F == 3 || F == 4) ? r.f(1L, 92L) : q();
            }

            @Override // j$.time.temporal.g, j$.time.temporal.o
            public final TemporalAccessor m(Map map, D d, E e) {
                LocalDate localDate;
                long j;
                a aVar = a.YEAR;
                Long l = (Long) map.get(aVar);
                o oVar = g.QUARTER_OF_YEAR;
                Long l2 = (Long) map.get(oVar);
                if (l == null || l2 == null) {
                    return null;
                }
                int a2 = aVar.b.a(l.longValue(), aVar);
                long longValue = ((Long) map.get(g.DAY_OF_QUARTER)).longValue();
                g gVar2 = i.a;
                if (!j$.com.android.tools.r8.a.M(d).equals(j$.time.chrono.q.c)) {
                    throw new RuntimeException("Resolve requires IsoChronology");
                }
                if (e == E.LENIENT) {
                    localDate = LocalDate.of(a2, 1, 1).g0(j$.com.android.tools.r8.a.V(j$.com.android.tools.r8.a.W(l2.longValue(), 1L), 3));
                    j = j$.com.android.tools.r8.a.W(longValue, 1L);
                } else {
                    LocalDate of = LocalDate.of(a2, ((oVar.q().a(l2.longValue(), oVar) - 1) * 3) + 1, 1);
                    if (longValue < 1 || longValue > 90) {
                        if (e == E.STRICT) {
                            l(of).b(longValue, this);
                        } else {
                            q().b(longValue, this);
                        }
                    }
                    localDate = of;
                    j = longValue - 1;
                }
                map.remove(this);
                map.remove(aVar);
                map.remove(oVar);
                return localDate.plusDays(j);
            }

            @Override // j$.time.temporal.o
            public final r q() {
                return r.g(1L, 90L, 92L);
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "DayOfQuarter";
            }

            @Override // j$.time.temporal.o
            public final long w(TemporalAccessor temporalAccessor) {
                if (!k(temporalAccessor)) {
                    throw new RuntimeException("Unsupported field: DayOfQuarter");
                }
                return temporalAccessor.k(a.DAY_OF_YEAR) - g.a[((temporalAccessor.k(a.MONTH_OF_YEAR) - 1) / 3) + (j$.time.chrono.q.c.R(temporalAccessor.F(a.YEAR)) ? 4 : 0)];
            }
        };
        DAY_OF_QUARTER = gVar;
        g gVar2 = new g() { // from class: j$.time.temporal.d
            @Override // j$.time.temporal.o
            public final Temporal B(Temporal temporal, long j) {
                long w = w(temporal);
                q().b(j, this);
                a aVar = a.MONTH_OF_YEAR;
                return temporal.c(((j - w) * 3) + temporal.F(aVar), aVar);
            }

            @Override // j$.time.temporal.o
            public final boolean k(TemporalAccessor temporalAccessor) {
                if (!temporalAccessor.e(a.MONTH_OF_YEAR)) {
                    return false;
                }
                g gVar3 = i.a;
                return j$.com.android.tools.r8.a.M(temporalAccessor).equals(j$.time.chrono.q.c);
            }

            @Override // j$.time.temporal.o
            public final r l(TemporalAccessor temporalAccessor) {
                if (k(temporalAccessor)) {
                    return q();
                }
                throw new RuntimeException("Unsupported field: QuarterOfYear");
            }

            @Override // j$.time.temporal.o
            public final r q() {
                return r.f(1L, 4L);
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "QuarterOfYear";
            }

            @Override // j$.time.temporal.o
            public final long w(TemporalAccessor temporalAccessor) {
                if (k(temporalAccessor)) {
                    return (temporalAccessor.F(a.MONTH_OF_YEAR) + 2) / 3;
                }
                throw new RuntimeException("Unsupported field: QuarterOfYear");
            }
        };
        QUARTER_OF_YEAR = gVar2;
        g gVar3 = new g() { // from class: j$.time.temporal.e
            @Override // j$.time.temporal.o
            public final Temporal B(Temporal temporal, long j) {
                q().b(j, this);
                return temporal.d(j$.com.android.tools.r8.a.W(j, w(temporal)), ChronoUnit.WEEKS);
            }

            @Override // j$.time.temporal.o
            public final boolean k(TemporalAccessor temporalAccessor) {
                if (!temporalAccessor.e(a.EPOCH_DAY)) {
                    return false;
                }
                g gVar4 = i.a;
                return j$.com.android.tools.r8.a.M(temporalAccessor).equals(j$.time.chrono.q.c);
            }

            @Override // j$.time.temporal.o
            public final r l(TemporalAccessor temporalAccessor) {
                if (k(temporalAccessor)) {
                    return g.U(LocalDate.U(temporalAccessor));
                }
                throw new RuntimeException("Unsupported field: WeekOfWeekBasedYear");
            }

            @Override // j$.time.temporal.g, j$.time.temporal.o
            public final TemporalAccessor m(Map map, D d, E e) {
                LocalDate c;
                long j;
                long j2;
                o oVar = g.WEEK_BASED_YEAR;
                Long l = (Long) map.get(oVar);
                a aVar = a.DAY_OF_WEEK;
                Long l2 = (Long) map.get(aVar);
                if (l == null || l2 == null) {
                    return null;
                }
                int a2 = oVar.q().a(l.longValue(), oVar);
                long longValue = ((Long) map.get(g.WEEK_OF_WEEK_BASED_YEAR)).longValue();
                g gVar4 = i.a;
                if (!j$.com.android.tools.r8.a.M(d).equals(j$.time.chrono.q.c)) {
                    throw new RuntimeException("Resolve requires IsoChronology");
                }
                LocalDate of = LocalDate.of(a2, 1, 4);
                if (e == E.LENIENT) {
                    long longValue2 = l2.longValue();
                    if (longValue2 > 7) {
                        long j3 = longValue2 - 1;
                        j = 1;
                        of = of.h0(j3 / 7);
                        j2 = j3 % 7;
                    } else {
                        j = 1;
                        if (longValue2 < 1) {
                            of = of.h0(j$.com.android.tools.r8.a.W(longValue2, 7L) / 7);
                            j2 = (longValue2 + 6) % 7;
                        }
                        c = of.h0(j$.com.android.tools.r8.a.W(longValue, j)).c(longValue2, aVar);
                    }
                    longValue2 = j2 + j;
                    c = of.h0(j$.com.android.tools.r8.a.W(longValue, j)).c(longValue2, aVar);
                } else {
                    int a3 = aVar.b.a(l2.longValue(), aVar);
                    if (longValue < 1 || longValue > 52) {
                        if (e == E.STRICT) {
                            g.U(of).b(longValue, this);
                        } else {
                            q().b(longValue, this);
                        }
                    }
                    c = of.h0(longValue - 1).c(a3, aVar);
                }
                map.remove(this);
                map.remove(oVar);
                map.remove(aVar);
                return c;
            }

            @Override // j$.time.temporal.o
            public final r q() {
                return r.g(1L, 52L, 53L);
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "WeekOfWeekBasedYear";
            }

            @Override // j$.time.temporal.o
            public final long w(TemporalAccessor temporalAccessor) {
                if (k(temporalAccessor)) {
                    return g.F(LocalDate.U(temporalAccessor));
                }
                throw new RuntimeException("Unsupported field: WeekOfWeekBasedYear");
            }
        };
        WEEK_OF_WEEK_BASED_YEAR = gVar3;
        g gVar4 = new g() { // from class: j$.time.temporal.f
            @Override // j$.time.temporal.o
            public final Temporal B(Temporal temporal, long j) {
                if (!k(temporal)) {
                    throw new RuntimeException("Unsupported field: WeekBasedYear");
                }
                int a2 = a.YEAR.b.a(j, g.WEEK_BASED_YEAR);
                LocalDate U = LocalDate.U(temporal);
                int k = U.k(a.DAY_OF_WEEK);
                int F = g.F(U);
                if (F == 53 && g.T(a2) == 52) {
                    F = 52;
                }
                return temporal.l(LocalDate.of(a2, 1, 4).plusDays(((F - 1) * 7) + (k - r6.k(r0))));
            }

            @Override // j$.time.temporal.o
            public final boolean k(TemporalAccessor temporalAccessor) {
                if (!temporalAccessor.e(a.EPOCH_DAY)) {
                    return false;
                }
                g gVar5 = i.a;
                return j$.com.android.tools.r8.a.M(temporalAccessor).equals(j$.time.chrono.q.c);
            }

            @Override // j$.time.temporal.o
            public final r l(TemporalAccessor temporalAccessor) {
                if (k(temporalAccessor)) {
                    return q();
                }
                throw new RuntimeException("Unsupported field: WeekBasedYear");
            }

            @Override // j$.time.temporal.o
            public final r q() {
                return a.YEAR.b;
            }

            @Override // java.lang.Enum
            public final String toString() {
                return "WeekBasedYear";
            }

            @Override // j$.time.temporal.o
            public final long w(TemporalAccessor temporalAccessor) {
                if (k(temporalAccessor)) {
                    return g.S(LocalDate.U(temporalAccessor));
                }
                throw new RuntimeException("Unsupported field: WeekBasedYear");
            }
        };
        WEEK_BASED_YEAR = gVar4;
        b = new g[]{gVar, gVar2, gVar3, gVar4};
        a = new int[]{0, 90, 181, 273, 0, 91, 182, 274};
    }

    public static int F(LocalDate localDate) {
        int ordinal = localDate.W().ordinal();
        int X = localDate.X() - 1;
        int i = (3 - ordinal) + X;
        int i2 = i - ((i / 7) * 7);
        int i3 = i2 - 3;
        if (i3 < -3) {
            i3 = i2 + 4;
        }
        if (X < i3) {
            if (localDate.X() != 180) {
                localDate = LocalDate.e0(localDate.a, 180);
            }
            return (int) U(localDate.i0(-1L)).d;
        }
        int i4 = ((X - i3) / 7) + 1;
        if (i4 != 53 || i3 == -3 || (i3 == -2 && localDate.s())) {
            return i4;
        }
        return 1;
    }

    public static int S(LocalDate localDate) {
        int year = localDate.getYear();
        int X = localDate.X();
        if (X <= 3) {
            return X - localDate.W().ordinal() < -2 ? year - 1 : year;
        }
        if (X >= 363) {
            return ((X - 363) - (localDate.s() ? 1 : 0)) - localDate.W().ordinal() >= 0 ? year + 1 : year;
        }
        return year;
    }

    public static int T(int i) {
        LocalDate of = LocalDate.of(i, 1, 1);
        if (of.W() != DayOfWeek.THURSDAY) {
            return (of.W() == DayOfWeek.WEDNESDAY && of.s()) ? 53 : 52;
        }
        return 53;
    }

    public static r U(LocalDate localDate) {
        return r.f(1L, T(S(localDate)));
    }

    public static g valueOf(String str) {
        return (g) Enum.valueOf(g.class, str);
    }

    public static g[] values() {
        return (g[]) b.clone();
    }

    @Override // j$.time.temporal.o
    public final boolean isDateBased() {
        return true;
    }

    public /* synthetic */ TemporalAccessor m(Map map, D d, E e) {
        return null;
    }
}
