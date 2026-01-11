package j$.time.chrono;

import j$.time.LocalDate;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalUnit;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import p223.C3056;

/* loaded from: classes2.dex */
public final class v extends AbstractC5422c {
    public static final LocalDate d = LocalDate.of(1873, 1, 1);
    private static final long serialVersionUID = -305327627230580483L;
    public final transient LocalDate a;
    public final transient w b;
    public final transient int c;

    public v(LocalDate localDate) {
        if (localDate.isBefore(d)) {
            throw new RuntimeException("JapaneseDate before Meiji 6 is not supported");
        }
        w i = w.i(localDate);
        this.b = i;
        this.c = (localDate.getYear() - i.b.getYear()) + 1;
        this.a = localDate;
    }

    public v(w wVar, int i, LocalDate localDate) {
        if (localDate.isBefore(d)) {
            throw new RuntimeException("JapaneseDate before Meiji 6 is not supported");
        }
        this.b = wVar;
        this.c = i;
        this.a = localDate;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C((byte) 4, this);
    }

    @Override // j$.time.chrono.AbstractC5422c, j$.time.chrono.ChronoLocalDate
    /* renamed from: A */
    public final ChronoLocalDate l(j$.time.temporal.l lVar) {
        return (v) super.l(lVar);
    }

    @Override // j$.time.chrono.AbstractC5422c, j$.time.temporal.Temporal
    /* renamed from: B */
    public final Temporal u(long j, ChronoUnit chronoUnit) {
        return (v) super.u(j, chronoUnit);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final long F(j$.time.temporal.o oVar) {
        if (!(oVar instanceof j$.time.temporal.a)) {
            return oVar.w(this);
        }
        switch (u.a[((j$.time.temporal.a) oVar).ordinal()]) {
            case 2:
                return this.c == 1 ? (this.a.X() - this.b.b.X()) + 1 : this.a.X();
            case 3:
                return this.c;
            case 4:
            case 5:
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                throw new RuntimeException(j$.time.c.a("Unsupported field: ", oVar));
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                return this.b.a;
            default:
                return this.a.F(oVar);
        }
    }

    @Override // j$.time.chrono.AbstractC5422c, j$.time.chrono.ChronoLocalDate
    public final long G() {
        return this.a.G();
    }

    @Override // j$.time.chrono.AbstractC5422c, j$.time.chrono.ChronoLocalDate
    public final ChronoLocalDateTime H(j$.time.j jVar) {
        return new C5424e(this, jVar);
    }

    @Override // j$.time.chrono.AbstractC5422c, j$.time.chrono.ChronoLocalDate
    public final k J() {
        return this.b;
    }

    @Override // j$.time.chrono.AbstractC5422c, j$.time.chrono.ChronoLocalDate
    public final ChronoLocalDate M(j$.time.temporal.n nVar) {
        return (v) super.M(nVar);
    }

    @Override // j$.time.chrono.AbstractC5422c, j$.time.chrono.ChronoLocalDate
    public final int P() {
        w j = this.b.j();
        int P = (j == null || j.b.getYear() != this.a.getYear()) ? this.a.P() : j.b.X() - 1;
        return this.c == 1 ? P - (this.b.b.X() - 1) : P;
    }

    @Override // j$.time.chrono.AbstractC5422c
    public final ChronoLocalDate U(long j) {
        return a0(this.a.plusDays(j));
    }

    @Override // j$.time.chrono.AbstractC5422c
    public final ChronoLocalDate V(long j) {
        return a0(this.a.g0(j));
    }

    @Override // j$.time.chrono.AbstractC5422c
    public final ChronoLocalDate W(long j) {
        return a0(this.a.i0(j));
    }

    public final v X(long j, ChronoUnit chronoUnit) {
        return (v) super.d(j, (TemporalUnit) chronoUnit);
    }

    @Override // j$.time.chrono.AbstractC5422c, j$.time.temporal.Temporal
    /* renamed from: Y, reason: merged with bridge method [inline-methods] */
    public final v c(long j, j$.time.temporal.o oVar) {
        if (!(oVar instanceof j$.time.temporal.a)) {
            return (v) super.c(j, oVar);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) oVar;
        if (F(aVar) == j) {
            return this;
        }
        int[] iArr = u.a;
        int i = iArr[aVar.ordinal()];
        if (i == 3 || i == 8 || i == 9) {
            t tVar = t.c;
            int a = tVar.t(aVar).a(j, aVar);
            int i2 = iArr[aVar.ordinal()];
            if (i2 == 3) {
                return a0(this.a.m0(tVar.y(this.b, a)));
            }
            if (i2 == 8) {
                return a0(this.a.m0(tVar.y(w.n(a), this.c)));
            }
            if (i2 == 9) {
                return a0(this.a.m0(a));
            }
        }
        return a0(this.a.c(j, oVar));
    }

    public final v Z(j$.time.f fVar) {
        return (v) super.l(fVar);
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public final j a() {
        return t.c;
    }

    public final v a0(LocalDate localDate) {
        return localDate.equals(this.a) ? this : new v(localDate);
    }

    @Override // j$.time.chrono.AbstractC5422c, j$.time.chrono.ChronoLocalDate, j$.time.temporal.Temporal
    public final ChronoLocalDate d(long j, TemporalUnit temporalUnit) {
        return (v) super.d(j, temporalUnit);
    }

    @Override // j$.time.chrono.AbstractC5422c, j$.time.temporal.Temporal
    public final Temporal d(long j, TemporalUnit temporalUnit) {
        return (v) super.d(j, temporalUnit);
    }

    @Override // j$.time.chrono.AbstractC5422c, j$.time.chrono.ChronoLocalDate, j$.time.temporal.TemporalAccessor
    public final boolean e(j$.time.temporal.o oVar) {
        if (oVar == j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_MONTH || oVar == j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_YEAR || oVar == j$.time.temporal.a.ALIGNED_WEEK_OF_MONTH || oVar == j$.time.temporal.a.ALIGNED_WEEK_OF_YEAR) {
            return false;
        }
        return oVar instanceof j$.time.temporal.a ? ((j$.time.temporal.a) oVar).isDateBased() : oVar != null && oVar.k(this);
    }

    @Override // j$.time.chrono.AbstractC5422c, j$.time.chrono.ChronoLocalDate
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof v) {
            return this.a.equals(((v) obj).a);
        }
        return false;
    }

    @Override // j$.time.chrono.AbstractC5422c, j$.time.chrono.ChronoLocalDate
    public final int hashCode() {
        t.c.getClass();
        return this.a.hashCode() ^ (-688086063);
    }

    @Override // j$.time.chrono.AbstractC5422c, j$.time.temporal.Temporal
    public final Temporal l(LocalDate localDate) {
        return (v) super.l(localDate);
    }

    @Override // j$.time.chrono.AbstractC5422c, j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.r m(j$.time.temporal.o oVar) {
        if (!(oVar instanceof j$.time.temporal.a)) {
            return oVar.l(this);
        }
        if (!e(oVar)) {
            throw new RuntimeException(j$.time.c.a("Unsupported field: ", oVar));
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) oVar;
        int i = u.a[aVar.ordinal()];
        if (i == 1) {
            return j$.time.temporal.r.f(1L, this.a.Z());
        }
        if (i == 2) {
            return j$.time.temporal.r.f(1L, P());
        }
        if (i != 3) {
            return t.c.t(aVar);
        }
        int year = this.b.b.getYear();
        return this.b.j() != null ? j$.time.temporal.r.f(1L, (r0.b.getYear() - year) + 1) : j$.time.temporal.r.f(1L, 999999999 - year);
    }

    @Override // j$.time.chrono.AbstractC5422c, j$.time.chrono.ChronoLocalDate
    public final ChronoLocalDate u(long j, TemporalUnit temporalUnit) {
        return (v) super.u(j, temporalUnit);
    }
}
