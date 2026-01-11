package j$.time.chrono;

import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.ZoneId;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.TemporalAccessor;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import p223.C3056;

/* loaded from: classes2.dex */
public final class t extends AbstractC5420a implements Serializable {
    public static final t c = new t();
    private static final long serialVersionUID = 459996390165777884L;

    private t() {
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    @Override // j$.time.chrono.j
    public final ChronoLocalDate D(TemporalAccessor temporalAccessor) {
        return temporalAccessor instanceof v ? (v) temporalAccessor : new v(LocalDate.U(temporalAccessor));
    }

    @Override // j$.time.chrono.AbstractC5420a
    public final ChronoLocalDate F(Map map, j$.time.format.E e) {
        v Z;
        j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
        Long l = (Long) map.get(aVar);
        w n = l != null ? w.n(t(aVar).a(l.longValue(), aVar)) : null;
        j$.time.temporal.a aVar2 = j$.time.temporal.a.YEAR_OF_ERA;
        Long l2 = (Long) map.get(aVar2);
        int a = l2 != null ? t(aVar2).a(l2.longValue(), aVar2) : 0;
        if (n == null && l2 != null && !map.containsKey(j$.time.temporal.a.YEAR) && e != j$.time.format.E.STRICT) {
            w[] wVarArr = w.e;
            n = ((w[]) Arrays.copyOf(wVarArr, wVarArr.length))[((w[]) Arrays.copyOf(wVarArr, wVarArr.length)).length - 1];
        }
        if (l2 != null && n != null) {
            j$.time.temporal.a aVar3 = j$.time.temporal.a.MONTH_OF_YEAR;
            if (map.containsKey(aVar3)) {
                j$.time.temporal.a aVar4 = j$.time.temporal.a.DAY_OF_MONTH;
                if (map.containsKey(aVar4)) {
                    map.remove(aVar);
                    map.remove(aVar2);
                    if (e == j$.time.format.E.LENIENT) {
                        return new v(LocalDate.of((n.b.getYear() + a) - 1, 1, 1)).X(j$.com.android.tools.r8.a.W(((Long) map.remove(aVar3)).longValue(), 1L), ChronoUnit.MONTHS).X(j$.com.android.tools.r8.a.W(((Long) map.remove(aVar4)).longValue(), 1L), ChronoUnit.DAYS);
                    }
                    int a2 = t(aVar3).a(((Long) map.remove(aVar3)).longValue(), aVar3);
                    int a3 = t(aVar4).a(((Long) map.remove(aVar4)).longValue(), aVar4);
                    if (e != j$.time.format.E.SMART) {
                        LocalDate localDate = v.d;
                        Objects.requireNonNull(n, "era");
                        LocalDate of = LocalDate.of((n.b.getYear() + a) - 1, a2, a3);
                        if (of.isBefore(n.b) || n != w.i(of)) {
                            throw new RuntimeException("year, month, and day not valid for Era");
                        }
                        return new v(n, a, of);
                    }
                    if (a < 1) {
                        throw new RuntimeException("Invalid YearOfEra: " + a);
                    }
                    int year = (n.b.getYear() + a) - 1;
                    try {
                        Z = new v(LocalDate.of(year, a2, a3));
                    } catch (j$.time.b unused) {
                        Z = new v(LocalDate.of(year, a2, 1)).Z(new j$.time.f(4));
                    }
                    if (Z.b == n || j$.time.temporal.p.a(Z, j$.time.temporal.a.YEAR_OF_ERA) <= 1 || a <= 1) {
                        return Z;
                    }
                    throw new RuntimeException("Invalid YearOfEra for Era: " + n + " " + a);
                }
            }
            j$.time.temporal.a aVar5 = j$.time.temporal.a.DAY_OF_YEAR;
            if (map.containsKey(aVar5)) {
                map.remove(aVar);
                map.remove(aVar2);
                if (e == j$.time.format.E.LENIENT) {
                    return new v(LocalDate.e0((n.b.getYear() + a) - 1, 1)).X(j$.com.android.tools.r8.a.W(((Long) map.remove(aVar5)).longValue(), 1L), ChronoUnit.DAYS);
                }
                int a4 = t(aVar5).a(((Long) map.remove(aVar5)).longValue(), aVar5);
                LocalDate localDate2 = v.d;
                Objects.requireNonNull(n, "era");
                LocalDate e0 = a == 1 ? LocalDate.e0(n.b.getYear(), (n.b.X() + a4) - 1) : LocalDate.e0((n.b.getYear() + a) - 1, a4);
                if (e0.isBefore(n.b) || n != w.i(e0)) {
                    throw new RuntimeException("Invalid parameters");
                }
                return new v(n, a, e0);
            }
        }
        return null;
    }

    @Override // j$.time.chrono.j
    public final ChronoLocalDate L(int i, int i2, int i3) {
        return new v(LocalDate.of(i, i2, i3));
    }

    @Override // j$.time.chrono.AbstractC5420a, j$.time.chrono.j
    public final ChronoLocalDate N(Map map, j$.time.format.E e) {
        return (v) super.N(map, e);
    }

    @Override // j$.time.chrono.j
    public final ChronoZonedDateTime O(Instant instant, ZoneId zoneId) {
        return i.T(this, instant, zoneId);
    }

    @Override // j$.time.chrono.j
    public final boolean R(long j) {
        return q.c.R(j);
    }

    @Override // j$.time.chrono.j
    public final ChronoLocalDate i(long j) {
        return new v(LocalDate.d0(j));
    }

    @Override // j$.time.chrono.j
    public final String j() {
        return "Japanese";
    }

    @Override // j$.time.chrono.AbstractC5420a
    public final ChronoLocalDate l() {
        return new v(LocalDate.U(LocalDate.c0(j$.com.android.tools.r8.a.e0())));
    }

    @Override // j$.time.chrono.j
    public final String n() {
        return "japanese";
    }

    @Override // j$.time.chrono.j
    public final ChronoLocalDate p(int i, int i2) {
        return new v(LocalDate.e0(i, i2));
    }

    @Override // j$.time.chrono.j
    public final j$.time.temporal.r t(j$.time.temporal.a aVar) {
        switch (s.a[aVar.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
                throw new RuntimeException("Unsupported field: " + aVar);
            case 5:
                w[] wVarArr = w.e;
                int year = wVarArr[wVarArr.length - 1].b.getYear();
                int year2 = 1000000000 - wVarArr[wVarArr.length - 1].b.getYear();
                int year3 = wVarArr[0].b.getYear();
                int i = 1;
                while (true) {
                    w[] wVarArr2 = w.e;
                    if (i >= wVarArr2.length) {
                        return j$.time.temporal.r.g(1L, year2, 999999999 - year);
                    }
                    w wVar = wVarArr2[i];
                    year2 = Math.min(year2, (wVar.b.getYear() - year3) + 1);
                    year3 = wVar.b.getYear();
                    i++;
                }
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                w wVar2 = w.d;
                long j = j$.time.temporal.a.DAY_OF_YEAR.b.c;
                long j2 = j;
                for (w wVar3 : w.e) {
                    long min = Math.min(j2, (wVar3.b.P() - wVar3.b.X()) + 1);
                    j2 = wVar3.j() != null ? Math.min(min, wVar3.j().b.X() - 1) : min;
                }
                return j$.time.temporal.r.g(1L, j2, j$.time.temporal.a.DAY_OF_YEAR.b.d);
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                return j$.time.temporal.r.f(v.d.getYear(), 999999999L);
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                long j3 = w.d.a;
                w[] wVarArr3 = w.e;
                return j$.time.temporal.r.f(j3, wVarArr3[wVarArr3.length - 1].a);
            default:
                return aVar.b;
        }
    }

    @Override // j$.time.chrono.j
    public final List v() {
        w[] wVarArr = w.e;
        return j$.com.android.tools.r8.a.Q((w[]) Arrays.copyOf(wVarArr, wVarArr.length));
    }

    public Object writeReplace() {
        return new C((byte) 1, this);
    }

    @Override // j$.time.chrono.j
    public final k x(int i) {
        return w.n(i);
    }

    @Override // j$.time.chrono.j
    public final int y(k kVar, int i) {
        if (!(kVar instanceof w)) {
            throw new ClassCastException("Era must be JapaneseEra");
        }
        w wVar = (w) kVar;
        int year = (wVar.b.getYear() + i) - 1;
        if (i != 1 && (year < -999999999 || year > 999999999 || year < wVar.b.getYear() || kVar != w.i(LocalDate.of(year, 1, 1)))) {
            throw new RuntimeException("Invalid yearOfEra value");
        }
        return year;
    }
}
