package j$.time.chrono;

import j$.time.temporal.ChronoUnit;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalUnit;
import j$.util.Objects;
import java.io.Serializable;
import p223.C3056;

/* renamed from: j$.time.chrono.c, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC5422c implements ChronoLocalDate, Temporal, j$.time.temporal.l, Serializable {
    private static final long serialVersionUID = 6282433883239719096L;

    public static ChronoLocalDate S(j jVar, Temporal temporal) {
        ChronoLocalDate chronoLocalDate = (ChronoLocalDate) temporal;
        if (jVar.equals(chronoLocalDate.a())) {
            return chronoLocalDate;
        }
        throw new ClassCastException("Chronology mismatch, expected: " + jVar.j() + ", actual: " + chronoLocalDate.a().j());
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: A */
    public ChronoLocalDate l(j$.time.temporal.l lVar) {
        return S(a(), lVar.q(this));
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public long G() {
        return F(j$.time.temporal.a.EPOCH_DAY);
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public ChronoLocalDateTime H(j$.time.j jVar) {
        return new C5424e(this, jVar);
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public k J() {
        return a().x(j$.time.temporal.p.a(this, j$.time.temporal.a.ERA));
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public ChronoLocalDate M(j$.time.temporal.n nVar) {
        return S(a(), nVar.k(this));
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public int P() {
        return s() ? 366 : 365;
    }

    @Override // java.lang.Comparable
    /* renamed from: Q */
    public final /* synthetic */ int compareTo(ChronoLocalDate chronoLocalDate) {
        return j$.com.android.tools.r8.a.c(this, chronoLocalDate);
    }

    public final long T(ChronoLocalDate chronoLocalDate) {
        if (a().t(j$.time.temporal.a.MONTH_OF_YEAR).d != 12) {
            throw new IllegalStateException("ChronoLocalDateImpl only supports Chronologies with 12 months per year");
        }
        j$.time.temporal.a aVar = j$.time.temporal.a.PROLEPTIC_MONTH;
        long F = F(aVar) * 32;
        j$.time.temporal.a aVar2 = j$.time.temporal.a.DAY_OF_MONTH;
        return (((chronoLocalDate.F(aVar) * 32) + chronoLocalDate.k(aVar2)) - (F + j$.time.temporal.p.a(this, aVar2))) / 32;
    }

    public abstract ChronoLocalDate U(long j);

    public abstract ChronoLocalDate V(long j);

    public abstract ChronoLocalDate W(long j);

    @Override // j$.time.temporal.Temporal
    public ChronoLocalDate c(long j, j$.time.temporal.o oVar) {
        if (oVar instanceof j$.time.temporal.a) {
            throw new RuntimeException(j$.time.c.a("Unsupported field: ", oVar));
        }
        return S(a(), oVar.B(this, j));
    }

    @Override // j$.time.temporal.Temporal
    public ChronoLocalDate d(long j, TemporalUnit temporalUnit) {
        boolean z = temporalUnit instanceof ChronoUnit;
        if (!z) {
            if (!z) {
                return S(a(), temporalUnit.k(this, j));
            }
            throw new RuntimeException("Unsupported unit: " + temporalUnit);
        }
        switch (AbstractC5421b.a[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return U(j);
            case 2:
                return U(j$.com.android.tools.r8.a.V(j, 7));
            case 3:
                return V(j);
            case 4:
                return W(j);
            case 5:
                return W(j$.com.android.tools.r8.a.V(j, 10));
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return W(j$.com.android.tools.r8.a.V(j, 100));
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                return W(j$.com.android.tools.r8.a.V(j, 1000));
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
                return c(j$.com.android.tools.r8.a.P(F(aVar), j), (j$.time.temporal.o) aVar);
            default:
                throw new RuntimeException("Unsupported unit: " + temporalUnit);
        }
    }

    @Override // j$.time.chrono.ChronoLocalDate, j$.time.temporal.TemporalAccessor
    public /* synthetic */ boolean e(j$.time.temporal.o oVar) {
        return j$.com.android.tools.r8.a.o(this, oVar);
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ChronoLocalDate) && j$.com.android.tools.r8.a.c(this, (ChronoLocalDate) obj) == 0;
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public int hashCode() {
        long G = G();
        return ((int) (G ^ (G >>> 32))) ^ a().hashCode();
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ int k(j$.time.temporal.o oVar) {
        return j$.time.temporal.p.a(this, oVar);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public /* synthetic */ j$.time.temporal.r m(j$.time.temporal.o oVar) {
        return j$.time.temporal.p.d(this, oVar);
    }

    @Override // j$.time.temporal.l
    public final /* synthetic */ Temporal q(Temporal temporal) {
        return j$.com.android.tools.r8.a.a(this, temporal);
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public boolean s() {
        return a().R(F(j$.time.temporal.a.YEAR));
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public final String toString() {
        long F = F(j$.time.temporal.a.YEAR_OF_ERA);
        long F2 = F(j$.time.temporal.a.MONTH_OF_YEAR);
        long F3 = F(j$.time.temporal.a.DAY_OF_MONTH);
        StringBuilder sb = new StringBuilder(30);
        sb.append(a().toString());
        sb.append(" ");
        sb.append(J());
        sb.append(" ");
        sb.append(F);
        sb.append(F2 < 10 ? "-0" : "-");
        sb.append(F2);
        sb.append(F3 < 10 ? "-0" : "-");
        sb.append(F3);
        return sb.toString();
    }

    @Override // j$.time.temporal.Temporal
    public ChronoLocalDate u(long j, TemporalUnit temporalUnit) {
        return S(a(), j$.time.temporal.p.b(this, j, temporalUnit));
    }

    @Override // j$.time.chrono.ChronoLocalDate, j$.time.temporal.Temporal
    public final long until(Temporal temporal, TemporalUnit temporalUnit) {
        Objects.requireNonNull(temporal, "endExclusive");
        ChronoLocalDate D = a().D(temporal);
        if (!(temporalUnit instanceof ChronoUnit)) {
            Objects.requireNonNull(temporalUnit, "unit");
            return temporalUnit.between(this, D);
        }
        switch (AbstractC5421b.a[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return D.G() - G();
            case 2:
                return (D.G() - G()) / 7;
            case 3:
                return T(D);
            case 4:
                return T(D) / 12;
            case 5:
                return T(D) / 120;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return T(D) / 1200;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                return T(D) / 12000;
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
                return D.F(aVar) - F(aVar);
            default:
                throw new RuntimeException("Unsupported unit: " + temporalUnit);
        }
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ Object w(j$.time.f fVar) {
        return j$.com.android.tools.r8.a.q(this, fVar);
    }
}
