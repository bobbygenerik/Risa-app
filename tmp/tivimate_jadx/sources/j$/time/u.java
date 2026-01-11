package j$.time;

import j$.time.format.E;
import j$.time.format.F;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalUnit;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class u implements Temporal, j$.time.temporal.l, Comparable, Serializable {
    public static final /* synthetic */ int b = 0;
    private static final long serialVersionUID = -23038383694477807L;
    public final int a;

    static {
        j$.time.format.u uVar = new j$.time.format.u();
        uVar.m(j$.time.temporal.a.YEAR, 4, 10, F.EXCEEDS_PAD);
        uVar.q(Locale.getDefault(), E.SMART, null);
    }

    public u(int i) {
        this.a = i;
    }

    public static u S(int i) {
        j$.time.temporal.a.YEAR.F(i);
        return new u(i);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new s((byte) 11, this);
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
        int i = t.a[((j$.time.temporal.a) oVar).ordinal()];
        if (i == 1) {
            int i2 = this.a;
            if (i2 < 1) {
                i2 = 1 - i2;
            }
            return i2;
        }
        if (i == 2) {
            return this.a;
        }
        if (i == 3) {
            return this.a < 1 ? 0 : 1;
        }
        throw new RuntimeException(c.a("Unsupported field: ", oVar));
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: T, reason: merged with bridge method [inline-methods] */
    public final u d(long j, TemporalUnit temporalUnit) {
        if (!(temporalUnit instanceof ChronoUnit)) {
            return (u) temporalUnit.k(this, j);
        }
        int i = t.b[((ChronoUnit) temporalUnit).ordinal()];
        if (i == 1) {
            return U(j);
        }
        if (i == 2) {
            return U(j$.com.android.tools.r8.a.V(j, 10));
        }
        if (i == 3) {
            return U(j$.com.android.tools.r8.a.V(j, 100));
        }
        if (i == 4) {
            return U(j$.com.android.tools.r8.a.V(j, 1000));
        }
        if (i == 5) {
            j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
            return c(j$.com.android.tools.r8.a.P(F(aVar), j), aVar);
        }
        throw new RuntimeException("Unsupported unit: " + temporalUnit);
    }

    public final u U(long j) {
        if (j == 0) {
            return this;
        }
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
        return S(aVar.b.a(this.a + j, aVar));
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: V, reason: merged with bridge method [inline-methods] */
    public final u c(long j, j$.time.temporal.o oVar) {
        if (!(oVar instanceof j$.time.temporal.a)) {
            return (u) oVar.B(this, j);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) oVar;
        aVar.F(j);
        int i = t.a[aVar.ordinal()];
        if (i == 1) {
            if (this.a < 1) {
                j = 1 - j;
            }
            return S((int) j);
        }
        if (i == 2) {
            return S((int) j);
        }
        if (i == 3) {
            return F(j$.time.temporal.a.ERA) == j ? this : S(1 - this.a);
        }
        throw new RuntimeException(c.a("Unsupported field: ", oVar));
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.a - ((u) obj).a;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final boolean e(j$.time.temporal.o oVar) {
        return oVar instanceof j$.time.temporal.a ? oVar == j$.time.temporal.a.YEAR || oVar == j$.time.temporal.a.YEAR_OF_ERA || oVar == j$.time.temporal.a.ERA : oVar != null && oVar.k(this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof u) && this.a == ((u) obj).a;
    }

    public final int hashCode() {
        return this.a;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final int k(j$.time.temporal.o oVar) {
        return m(oVar).a(F(oVar), oVar);
    }

    @Override // j$.time.temporal.Temporal
    public final Temporal l(LocalDate localDate) {
        localDate.getClass();
        return (u) j$.com.android.tools.r8.a.a(localDate, this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.r m(j$.time.temporal.o oVar) {
        if (oVar == j$.time.temporal.a.YEAR_OF_ERA) {
            return j$.time.temporal.r.f(1L, this.a <= 0 ? 1000000000L : 999999999L);
        }
        return j$.time.temporal.p.d(this, oVar);
    }

    @Override // j$.time.temporal.l
    public final Temporal q(Temporal temporal) {
        if (!j$.com.android.tools.r8.a.M(temporal).equals(j$.time.chrono.q.c)) {
            throw new RuntimeException("Adjustment only supported on ISO date-time");
        }
        return temporal.c(this.a, j$.time.temporal.a.YEAR);
    }

    public final String toString() {
        return Integer.toString(this.a);
    }

    @Override // j$.time.temporal.Temporal
    public final long until(Temporal temporal, TemporalUnit temporalUnit) {
        u S;
        if (temporal instanceof u) {
            S = (u) temporal;
        } else {
            Objects.requireNonNull(temporal, "temporal");
            try {
                if (!j$.time.chrono.q.c.equals(j$.com.android.tools.r8.a.M(temporal))) {
                    temporal = LocalDate.U(temporal);
                }
                S = S(temporal.k(j$.time.temporal.a.YEAR));
            } catch (b e) {
                throw new RuntimeException("Unable to obtain Year from TemporalAccessor: " + temporal + " of type " + temporal.getClass().getName(), e);
            }
        }
        if (!(temporalUnit instanceof ChronoUnit)) {
            return temporalUnit.between(this, S);
        }
        long j = S.a - this.a;
        int i = t.b[((ChronoUnit) temporalUnit).ordinal()];
        if (i == 1) {
            return j;
        }
        if (i == 2) {
            return j / 10;
        }
        if (i == 3) {
            return j / 100;
        }
        if (i == 4) {
            return j / 1000;
        }
        if (i == 5) {
            j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
            return S.F(aVar) - F(aVar);
        }
        throw new RuntimeException("Unsupported unit: " + temporalUnit);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final Object w(f fVar) {
        return fVar == j$.time.temporal.p.b ? j$.time.chrono.q.c : fVar == j$.time.temporal.p.c ? ChronoUnit.YEARS : j$.time.temporal.p.c(this, fVar);
    }
}
