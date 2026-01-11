package j$.time.chrono;

import j$.time.LocalDate;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalUnit;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.util.Arrays;
import p223.C3056;

/* loaded from: classes2.dex */
public final class o extends AbstractC5422c {
    private static final long serialVersionUID = -5207853542612002020L;
    public final transient m a;
    public final transient int b;
    public final transient int c;
    public final transient int d;

    public o(m mVar, int i, int i2, int i3) {
        mVar.V(i, i2, i3);
        this.a = mVar;
        this.b = i;
        this.c = i2;
        this.d = i3;
    }

    public o(m mVar, long j) {
        int i = (int) j;
        mVar.S();
        if (i < mVar.e || i >= mVar.f) {
            throw new RuntimeException("Hijrah date out of range");
        }
        int binarySearch = Arrays.binarySearch(mVar.d, i);
        binarySearch = binarySearch < 0 ? (-binarySearch) - 2 : binarySearch;
        int[] iArr = {mVar.U(binarySearch), ((mVar.g + binarySearch) % 12) + 1, (i - mVar.d[binarySearch]) + 1};
        this.a = mVar;
        this.b = iArr[0];
        this.c = iArr[1];
        this.d = iArr[2];
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C((byte) 6, this);
    }

    @Override // j$.time.chrono.AbstractC5422c, j$.time.chrono.ChronoLocalDate
    /* renamed from: A */
    public final ChronoLocalDate l(j$.time.temporal.l lVar) {
        return (o) super.l(lVar);
    }

    @Override // j$.time.chrono.AbstractC5422c, j$.time.temporal.Temporal
    /* renamed from: B */
    public final Temporal u(long j, ChronoUnit chronoUnit) {
        return (o) super.u(j, chronoUnit);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final long F(j$.time.temporal.o oVar) {
        if (!(oVar instanceof j$.time.temporal.a)) {
            return oVar.w(this);
        }
        switch (n.a[((j$.time.temporal.a) oVar).ordinal()]) {
            case 1:
                return this.d;
            case 2:
                return X();
            case 3:
                return ((this.d - 1) / 7) + 1;
            case 4:
                return ((int) j$.com.android.tools.r8.a.T(G() + 3, 7)) + 1;
            case 5:
                return ((this.d - 1) % 7) + 1;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return ((X() - 1) % 7) + 1;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                return G();
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                return ((X() - 1) / 7) + 1;
            case 9:
                return this.c;
            case 10:
                return ((this.b * 12) + this.c) - 1;
            case 11:
                return this.b;
            case 12:
                return this.b;
            case 13:
                return this.b <= 1 ? 0 : 1;
            default:
                throw new RuntimeException(j$.time.c.a("Unsupported field: ", oVar));
        }
    }

    @Override // j$.time.chrono.AbstractC5422c, j$.time.chrono.ChronoLocalDate
    public final long G() {
        return this.a.V(this.b, this.c, this.d);
    }

    @Override // j$.time.chrono.AbstractC5422c, j$.time.chrono.ChronoLocalDate
    public final ChronoLocalDateTime H(j$.time.j jVar) {
        return new C5424e(this, jVar);
    }

    @Override // j$.time.chrono.AbstractC5422c, j$.time.chrono.ChronoLocalDate
    public final k J() {
        return p.AH;
    }

    @Override // j$.time.chrono.AbstractC5422c, j$.time.chrono.ChronoLocalDate
    public final ChronoLocalDate M(j$.time.temporal.n nVar) {
        return (o) super.M(nVar);
    }

    @Override // j$.time.chrono.AbstractC5422c, j$.time.chrono.ChronoLocalDate
    public final int P() {
        return this.a.Y(this.b, 12);
    }

    @Override // j$.time.chrono.AbstractC5422c
    public final ChronoLocalDate W(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = this.b + ((int) j);
        int i = (int) j2;
        if (j2 == i) {
            return a0(i, this.c, this.d);
        }
        throw new ArithmeticException();
    }

    public final int X() {
        return this.a.Y(this.b, this.c - 1) + this.d;
    }

    @Override // j$.time.chrono.AbstractC5422c
    /* renamed from: Y, reason: merged with bridge method [inline-methods] */
    public final o U(long j) {
        return new o(this.a, G() + j);
    }

    @Override // j$.time.chrono.AbstractC5422c
    /* renamed from: Z, reason: merged with bridge method [inline-methods] */
    public final o V(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (this.b * 12) + (this.c - 1) + j;
        m mVar = this.a;
        long U = j$.com.android.tools.r8.a.U(j2, 12L);
        if (U >= mVar.U(0) && U <= mVar.U(mVar.d.length - 1) - 1) {
            return a0((int) U, ((int) j$.com.android.tools.r8.a.T(j2, 12L)) + 1, this.d);
        }
        throw new RuntimeException("Invalid Hijrah year: " + U);
    }

    @Override // j$.time.chrono.ChronoLocalDate
    public final j a() {
        return this.a;
    }

    public final o a0(int i, int i2, int i3) {
        int W = this.a.W(i, i2);
        if (i3 > W) {
            i3 = W;
        }
        return new o(this.a, i, i2, i3);
    }

    @Override // j$.time.chrono.AbstractC5422c, j$.time.temporal.Temporal
    /* renamed from: b0, reason: merged with bridge method [inline-methods] */
    public final o c(long j, j$.time.temporal.o oVar) {
        if (!(oVar instanceof j$.time.temporal.a)) {
            return (o) super.c(j, oVar);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) oVar;
        this.a.t(aVar).b(j, aVar);
        int i = (int) j;
        switch (n.a[aVar.ordinal()]) {
            case 1:
                return a0(this.b, this.c, i);
            case 2:
                return U(Math.min(i, P()) - X());
            case 3:
                return U((j - F(j$.time.temporal.a.ALIGNED_WEEK_OF_MONTH)) * 7);
            case 4:
                return U(j - (((int) j$.com.android.tools.r8.a.T(G() + 3, 7)) + 1));
            case 5:
                return U(j - F(j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_MONTH));
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return U(j - F(j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_YEAR));
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                return new o(this.a, j);
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                return U((j - F(j$.time.temporal.a.ALIGNED_WEEK_OF_YEAR)) * 7);
            case 9:
                return a0(this.b, i, this.d);
            case 10:
                return V(j - (((this.b * 12) + this.c) - 1));
            case 11:
                if (this.b < 1) {
                    i = 1 - i;
                }
                return a0(i, this.c, this.d);
            case 12:
                return a0(i, this.c, this.d);
            case 13:
                return a0(1 - this.b, this.c, this.d);
            default:
                throw new RuntimeException(j$.time.c.a("Unsupported field: ", oVar));
        }
    }

    @Override // j$.time.chrono.AbstractC5422c, j$.time.chrono.ChronoLocalDate, j$.time.temporal.Temporal
    public final ChronoLocalDate d(long j, TemporalUnit temporalUnit) {
        return (o) super.d(j, temporalUnit);
    }

    @Override // j$.time.chrono.AbstractC5422c, j$.time.temporal.Temporal
    public final Temporal d(long j, TemporalUnit temporalUnit) {
        return (o) super.d(j, temporalUnit);
    }

    @Override // j$.time.chrono.AbstractC5422c, j$.time.chrono.ChronoLocalDate
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof o) {
            o oVar = (o) obj;
            if (this.b == oVar.b && this.c == oVar.c && this.d == oVar.d && this.a.equals(oVar.a)) {
                return true;
            }
        }
        return false;
    }

    @Override // j$.time.chrono.AbstractC5422c, j$.time.chrono.ChronoLocalDate
    public final int hashCode() {
        int i = this.b;
        int i2 = this.c;
        int i3 = this.d;
        this.a.getClass();
        return (((i << 11) + (i2 << 6)) + i3) ^ ((i & (-2048)) ^ 2100100019);
    }

    @Override // j$.time.chrono.AbstractC5422c, j$.time.temporal.Temporal
    public final Temporal l(LocalDate localDate) {
        return (o) super.l(localDate);
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
        int i = n.a[aVar.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? this.a.t(aVar) : j$.time.temporal.r.f(1L, 5L) : j$.time.temporal.r.f(1L, P()) : j$.time.temporal.r.f(1L, this.a.W(this.b, this.c));
    }

    @Override // j$.time.chrono.AbstractC5422c, j$.time.chrono.ChronoLocalDate
    public final boolean s() {
        return this.a.R(this.b);
    }

    @Override // j$.time.chrono.AbstractC5422c, j$.time.chrono.ChronoLocalDate
    public final ChronoLocalDate u(long j, TemporalUnit temporalUnit) {
        return (o) super.u(j, temporalUnit);
    }
}
