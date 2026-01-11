package j$.time.chrono;

import j$.time.LocalDate;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalUnit;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;

/* loaded from: classes2.dex */
public final class A extends AbstractC5422c {
    private static final long serialVersionUID = 1300372329181994526L;
    public final transient LocalDate a;

    public A(LocalDate localDate) {
        Objects.requireNonNull(localDate, "isoDate");
        this.a = localDate;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C((byte) 7, this);
    }

    @Override // j$.time.chrono.AbstractC5422c, j$.time.chrono.ChronoLocalDate
    /* renamed from: A */
    public final ChronoLocalDate l(j$.time.temporal.l lVar) {
        return (A) super.l(lVar);
    }

    @Override // j$.time.chrono.AbstractC5422c, j$.time.temporal.Temporal
    /* renamed from: B */
    public final Temporal u(long j, ChronoUnit chronoUnit) {
        return (A) super.u(j, chronoUnit);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final long F(j$.time.temporal.o oVar) {
        if (!(oVar instanceof j$.time.temporal.a)) {
            return oVar.w(this);
        }
        int i = z.a[((j$.time.temporal.a) oVar).ordinal()];
        if (i == 4) {
            int X = X();
            if (X < 1) {
                X = 1 - X;
            }
            return X;
        }
        if (i == 5) {
            return ((X() * 12) + this.a.b) - 1;
        }
        if (i == 6) {
            return X();
        }
        if (i != 7) {
            return this.a.F(oVar);
        }
        return X() < 1 ? 0 : 1;
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
        return X() >= 1 ? B.ROC : B.BEFORE_ROC;
    }

    @Override // j$.time.chrono.AbstractC5422c, j$.time.chrono.ChronoLocalDate
    public final ChronoLocalDate M(j$.time.temporal.n nVar) {
        return (A) super.M(nVar);
    }

    @Override // j$.time.chrono.AbstractC5422c
    public final ChronoLocalDate U(long j) {
        return Z(this.a.plusDays(j));
    }

    @Override // j$.time.chrono.AbstractC5422c
    public final ChronoLocalDate V(long j) {
        return Z(this.a.g0(j));
    }

    @Override // j$.time.chrono.AbstractC5422c
    public final ChronoLocalDate W(long j) {
        return Z(this.a.i0(j));
    }

    public final int X() {
        return this.a.getYear() - 1911;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0022, code lost:
    
        if (r2 != 7) goto L20;
     */
    @Override // j$.time.chrono.AbstractC5422c, j$.time.temporal.Temporal
    /* renamed from: Y, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final j$.time.chrono.A c(long r8, j$.time.temporal.o r10) {
        /*
            r7 = this;
            boolean r0 = r10 instanceof j$.time.temporal.a
            if (r0 == 0) goto L9f
            r0 = r10
            j$.time.temporal.a r0 = (j$.time.temporal.a) r0
            long r1 = r7.F(r0)
            int r1 = (r1 > r8 ? 1 : (r1 == r8 ? 0 : -1))
            if (r1 != 0) goto L10
            return r7
        L10:
            int[] r1 = j$.time.chrono.z.a
            int r2 = r0.ordinal()
            r2 = r1[r2]
            r3 = 7
            r4 = 6
            r5 = 4
            if (r2 == r5) goto L49
            r6 = 5
            if (r2 == r6) goto L25
            if (r2 == r4) goto L49
            if (r2 == r3) goto L49
            goto L5f
        L25:
            j$.time.chrono.y r10 = j$.time.chrono.y.c
            j$.time.temporal.r r10 = r10.t(r0)
            r10.b(r8, r0)
            int r10 = r7.X()
            long r0 = (long) r10
            r2 = 12
            long r0 = r0 * r2
            j$.time.LocalDate r10 = r7.a
            short r2 = r10.b
            long r2 = (long) r2
            long r0 = r0 + r2
            r2 = 1
            long r0 = r0 - r2
            long r8 = r8 - r0
            j$.time.LocalDate r8 = r10.g0(r8)
            j$.time.chrono.A r8 = r7.Z(r8)
            return r8
        L49:
            j$.time.chrono.y r2 = j$.time.chrono.y.c
            j$.time.temporal.r r2 = r2.t(r0)
            int r2 = r2.a(r8, r0)
            int r0 = r0.ordinal()
            r0 = r1[r0]
            if (r0 == r5) goto L88
            if (r0 == r4) goto L7b
            if (r0 == r3) goto L6a
        L5f:
            j$.time.LocalDate r0 = r7.a
            j$.time.LocalDate r8 = r0.c(r8, r10)
            j$.time.chrono.A r8 = r7.Z(r8)
            return r8
        L6a:
            j$.time.LocalDate r8 = r7.a
            int r9 = r7.X()
            int r9 = 1912 - r9
            j$.time.LocalDate r8 = r8.m0(r9)
            j$.time.chrono.A r8 = r7.Z(r8)
            return r8
        L7b:
            j$.time.LocalDate r8 = r7.a
            int r2 = r2 + 1911
            j$.time.LocalDate r8 = r8.m0(r2)
            j$.time.chrono.A r8 = r7.Z(r8)
            return r8
        L88:
            j$.time.LocalDate r8 = r7.a
            int r9 = r7.X()
            r10 = 1
            if (r9 < r10) goto L94
            int r2 = r2 + 1911
            goto L96
        L94:
            int r2 = 1912 - r2
        L96:
            j$.time.LocalDate r8 = r8.m0(r2)
            j$.time.chrono.A r8 = r7.Z(r8)
            return r8
        L9f:
            j$.time.chrono.ChronoLocalDate r8 = super.c(r8, r10)
            j$.time.chrono.A r8 = (j$.time.chrono.A) r8
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.time.chrono.A.c(long, j$.time.temporal.o):j$.time.chrono.A");
    }

    public final A Z(LocalDate localDate) {
        return localDate.equals(this.a) ? this : new A(localDate);
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public final j a() {
        return y.c;
    }

    @Override // j$.time.chrono.AbstractC5422c, j$.time.chrono.ChronoLocalDate, j$.time.temporal.Temporal
    public final ChronoLocalDate d(long j, TemporalUnit temporalUnit) {
        return (A) super.d(j, temporalUnit);
    }

    @Override // j$.time.chrono.AbstractC5422c, j$.time.temporal.Temporal
    public final Temporal d(long j, TemporalUnit temporalUnit) {
        return (A) super.d(j, temporalUnit);
    }

    @Override // j$.time.chrono.AbstractC5422c, j$.time.chrono.ChronoLocalDate
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof A) {
            return this.a.equals(((A) obj).a);
        }
        return false;
    }

    @Override // j$.time.chrono.AbstractC5422c, j$.time.chrono.ChronoLocalDate
    public final int hashCode() {
        y.c.getClass();
        return this.a.hashCode() ^ (-1990173233);
    }

    @Override // j$.time.chrono.AbstractC5422c, j$.time.temporal.Temporal
    public final Temporal l(LocalDate localDate) {
        return (A) super.l(localDate);
    }

    @Override // j$.time.chrono.AbstractC5422c, j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.r m(j$.time.temporal.o oVar) {
        if (!(oVar instanceof j$.time.temporal.a)) {
            return oVar.l(this);
        }
        if (!j$.com.android.tools.r8.a.o(this, oVar)) {
            throw new RuntimeException(j$.time.c.a("Unsupported field: ", oVar));
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) oVar;
        int i = z.a[aVar.ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            return this.a.m(oVar);
        }
        if (i != 4) {
            return y.c.t(aVar);
        }
        j$.time.temporal.r rVar = j$.time.temporal.a.YEAR.b;
        return j$.time.temporal.r.f(1L, X() <= 0 ? (-rVar.a) + 1912 : rVar.d - 1911);
    }

    @Override // j$.time.chrono.AbstractC5422c, j$.time.chrono.ChronoLocalDate
    public final ChronoLocalDate u(long j, TemporalUnit temporalUnit) {
        return (A) super.u(j, temporalUnit);
    }
}
