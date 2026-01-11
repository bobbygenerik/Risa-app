package j$.time.chrono;

import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.ZoneId;
import j$.time.temporal.TemporalAccessor;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class y extends AbstractC5420a implements Serializable {
    public static final y c = new y();
    private static final long serialVersionUID = 1039765215346859963L;

    private y() {
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    @Override // j$.time.chrono.j
    public final ChronoLocalDate D(TemporalAccessor temporalAccessor) {
        return temporalAccessor instanceof A ? (A) temporalAccessor : new A(LocalDate.U(temporalAccessor));
    }

    @Override // j$.time.chrono.j
    public final ChronoLocalDate L(int i, int i2, int i3) {
        return new A(LocalDate.of(i + 1911, i2, i3));
    }

    @Override // j$.time.chrono.AbstractC5420a, j$.time.chrono.j
    public final ChronoLocalDate N(Map map, j$.time.format.E e) {
        return (A) super.N(map, e);
    }

    @Override // j$.time.chrono.j
    public final ChronoZonedDateTime O(Instant instant, ZoneId zoneId) {
        return i.T(this, instant, zoneId);
    }

    @Override // j$.time.chrono.j
    public final boolean R(long j) {
        return q.c.R(j + 1911);
    }

    @Override // j$.time.chrono.j
    public final ChronoLocalDate i(long j) {
        return new A(LocalDate.d0(j));
    }

    @Override // j$.time.chrono.j
    public final String j() {
        return "Minguo";
    }

    @Override // j$.time.chrono.AbstractC5420a
    public final ChronoLocalDate l() {
        return new A(LocalDate.U(LocalDate.c0(j$.com.android.tools.r8.a.e0())));
    }

    @Override // j$.time.chrono.j
    public final String n() {
        return "roc";
    }

    @Override // j$.time.chrono.j
    public final ChronoLocalDate p(int i, int i2) {
        return new A(LocalDate.e0(i + 1911, i2));
    }

    @Override // j$.time.chrono.j
    public final j$.time.temporal.r t(j$.time.temporal.a aVar) {
        int i = x.a[aVar.ordinal()];
        if (i == 1) {
            j$.time.temporal.r rVar = j$.time.temporal.a.PROLEPTIC_MONTH.b;
            return j$.time.temporal.r.f(rVar.a - 22932, rVar.d - 22932);
        }
        if (i == 2) {
            j$.time.temporal.r rVar2 = j$.time.temporal.a.YEAR.b;
            return j$.time.temporal.r.g(1L, rVar2.d - 1911, (-rVar2.a) + 1912);
        }
        if (i != 3) {
            return aVar.b;
        }
        j$.time.temporal.r rVar3 = j$.time.temporal.a.YEAR.b;
        return j$.time.temporal.r.f(rVar3.a - 1911, rVar3.d - 1911);
    }

    @Override // j$.time.chrono.j
    public final List v() {
        return j$.com.android.tools.r8.a.Q(B.values());
    }

    public Object writeReplace() {
        return new C((byte) 1, this);
    }

    @Override // j$.time.chrono.j
    public final k x(int i) {
        if (i == 0) {
            return B.BEFORE_ROC;
        }
        if (i == 1) {
            return B.ROC;
        }
        throw new RuntimeException("Invalid era: " + i);
    }

    @Override // j$.time.chrono.j
    public final int y(k kVar, int i) {
        if (kVar instanceof B) {
            return kVar == B.ROC ? i : 1 - i;
        }
        throw new ClassCastException("Era must be MinguoEra");
    }
}
