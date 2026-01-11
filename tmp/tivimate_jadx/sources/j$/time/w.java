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
import p223.C3056;

/* loaded from: classes2.dex */
public final class w implements Temporal, j$.time.temporal.l, Comparable, Serializable {
    public static final /* synthetic */ int c = 0;
    private static final long serialVersionUID = 4183400860270640070L;
    public final int a;
    public final int b;

    static {
        j$.time.format.u uVar = new j$.time.format.u();
        uVar.m(j$.time.temporal.a.YEAR, 4, 10, F.EXCEEDS_PAD);
        uVar.d('-');
        uVar.l(j$.time.temporal.a.MONTH_OF_YEAR, 2);
        uVar.q(Locale.getDefault(), E.SMART, null);
    }

    public w(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new s((byte) 12, this);
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: B */
    public final Temporal u(long j, ChronoUnit chronoUnit) {
        return j == Long.MIN_VALUE ? d(Long.MAX_VALUE, chronoUnit).d(1L, chronoUnit) : d(-j, chronoUnit);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final long F(j$.time.temporal.o oVar) {
        int i;
        if (!(oVar instanceof j$.time.temporal.a)) {
            return oVar.w(this);
        }
        int i2 = v.a[((j$.time.temporal.a) oVar).ordinal()];
        if (i2 == 1) {
            i = this.b;
        } else {
            if (i2 == 2) {
                return S();
            }
            if (i2 == 3) {
                int i3 = this.a;
                if (i3 < 1) {
                    i3 = 1 - i3;
                }
                return i3;
            }
            if (i2 != 4) {
                if (i2 == 5) {
                    return this.a < 1 ? 0 : 1;
                }
                throw new RuntimeException(c.a("Unsupported field: ", oVar));
            }
            i = this.a;
        }
        return i;
    }

    public final long S() {
        return ((this.a * 12) + this.b) - 1;
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: T, reason: merged with bridge method [inline-methods] */
    public final w d(long j, TemporalUnit temporalUnit) {
        if (!(temporalUnit instanceof ChronoUnit)) {
            return (w) temporalUnit.k(this, j);
        }
        switch (v.b[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return U(j);
            case 2:
                return V(j);
            case 3:
                return V(j$.com.android.tools.r8.a.V(j, 10));
            case 4:
                return V(j$.com.android.tools.r8.a.V(j, 100));
            case 5:
                return V(j$.com.android.tools.r8.a.V(j, 1000));
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
                return c(j$.com.android.tools.r8.a.P(F(aVar), j), aVar);
            default:
                throw new RuntimeException("Unsupported unit: " + temporalUnit);
        }
    }

    public final w U(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (this.a * 12) + (this.b - 1) + j;
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
        long j3 = 12;
        return W(aVar.b.a(j$.com.android.tools.r8.a.U(j2, j3), aVar), ((int) j$.com.android.tools.r8.a.T(j2, j3)) + 1);
    }

    public final w V(long j) {
        if (j == 0) {
            return this;
        }
        j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
        return W(aVar.b.a(this.a + j, aVar), this.b);
    }

    public final w W(int i, int i2) {
        return (this.a == i && this.b == i2) ? this : new w(i, i2);
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: X, reason: merged with bridge method [inline-methods] */
    public final w c(long j, j$.time.temporal.o oVar) {
        if (!(oVar instanceof j$.time.temporal.a)) {
            return (w) oVar.B(this, j);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) oVar;
        aVar.F(j);
        int i = v.a[aVar.ordinal()];
        if (i == 1) {
            int i2 = (int) j;
            j$.time.temporal.a.MONTH_OF_YEAR.F(i2);
            return W(this.a, i2);
        }
        if (i == 2) {
            return U(j - S());
        }
        if (i == 3) {
            if (this.a < 1) {
                j = 1 - j;
            }
            int i3 = (int) j;
            j$.time.temporal.a.YEAR.F(i3);
            return W(i3, this.b);
        }
        if (i == 4) {
            int i4 = (int) j;
            j$.time.temporal.a.YEAR.F(i4);
            return W(i4, this.b);
        }
        if (i != 5) {
            throw new RuntimeException(c.a("Unsupported field: ", oVar));
        }
        if (F(j$.time.temporal.a.ERA) == j) {
            return this;
        }
        int i5 = 1 - this.a;
        j$.time.temporal.a.YEAR.F(i5);
        return W(i5, this.b);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        w wVar = (w) obj;
        int i = this.a - wVar.a;
        return i == 0 ? this.b - wVar.b : i;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final boolean e(j$.time.temporal.o oVar) {
        return oVar instanceof j$.time.temporal.a ? oVar == j$.time.temporal.a.YEAR || oVar == j$.time.temporal.a.MONTH_OF_YEAR || oVar == j$.time.temporal.a.PROLEPTIC_MONTH || oVar == j$.time.temporal.a.YEAR_OF_ERA || oVar == j$.time.temporal.a.ERA : oVar != null && oVar.k(this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof w) {
            w wVar = (w) obj;
            if (this.a == wVar.a && this.b == wVar.b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.a ^ (this.b << 27);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final int k(j$.time.temporal.o oVar) {
        return m(oVar).a(F(oVar), oVar);
    }

    @Override // j$.time.temporal.Temporal
    public final Temporal l(LocalDate localDate) {
        localDate.getClass();
        return (w) j$.com.android.tools.r8.a.a(localDate, this);
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
        return temporal.c(S(), j$.time.temporal.a.PROLEPTIC_MONTH);
    }

    public final String toString() {
        int abs = Math.abs(this.a);
        StringBuilder sb = new StringBuilder(9);
        if (abs < 1000) {
            int i = this.a;
            if (i < 0) {
                sb.append(i - 10000);
                sb.deleteCharAt(1);
            } else {
                sb.append(i + 10000);
                sb.deleteCharAt(0);
            }
        } else {
            sb.append(this.a);
        }
        sb.append(this.b < 10 ? "-0" : "-");
        sb.append(this.b);
        return sb.toString();
    }

    @Override // j$.time.temporal.Temporal
    public final long until(Temporal temporal, TemporalUnit temporalUnit) {
        w wVar;
        if (temporal instanceof w) {
            wVar = (w) temporal;
        } else {
            Objects.requireNonNull(temporal, "temporal");
            try {
                if (!j$.time.chrono.q.c.equals(j$.com.android.tools.r8.a.M(temporal))) {
                    temporal = LocalDate.U(temporal);
                }
                j$.time.temporal.a aVar = j$.time.temporal.a.YEAR;
                int k = temporal.k(aVar);
                j$.time.temporal.a aVar2 = j$.time.temporal.a.MONTH_OF_YEAR;
                int k2 = temporal.k(aVar2);
                aVar.F(k);
                aVar2.F(k2);
                wVar = new w(k, k2);
            } catch (b e) {
                throw new RuntimeException("Unable to obtain YearMonth from TemporalAccessor: " + temporal + " of type " + temporal.getClass().getName(), e);
            }
        }
        if (!(temporalUnit instanceof ChronoUnit)) {
            return temporalUnit.between(this, wVar);
        }
        long S = wVar.S() - S();
        switch (v.b[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return S;
            case 2:
                return S / 12;
            case 3:
                return S / 120;
            case 4:
                return S / 1200;
            case 5:
                return S / 12000;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                j$.time.temporal.a aVar3 = j$.time.temporal.a.ERA;
                return wVar.F(aVar3) - F(aVar3);
            default:
                throw new RuntimeException("Unsupported unit: " + temporalUnit);
        }
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final Object w(f fVar) {
        return fVar == j$.time.temporal.p.b ? j$.time.chrono.q.c : fVar == j$.time.temporal.p.c ? ChronoUnit.MONTHS : j$.time.temporal.p.c(this, fVar);
    }
}
