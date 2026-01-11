package j$.time.temporal;

import j$.util.Objects;

/* loaded from: classes2.dex */
public abstract class p {
    public static final j$.time.f a = new j$.time.f(5);
    public static final j$.time.f b = new j$.time.f(6);
    public static final j$.time.f c = new j$.time.f(7);
    public static final j$.time.f d = new j$.time.f(8);
    public static final j$.time.f e = new j$.time.f(9);
    public static final j$.time.f f = new j$.time.f(10);
    public static final j$.time.f g = new j$.time.f(11);

    public static int a(TemporalAccessor temporalAccessor, o oVar) {
        r m = temporalAccessor.m(oVar);
        if (!m.d()) {
            throw new RuntimeException("Invalid field " + oVar + " for get() method, use getLong() instead");
        }
        long F = temporalAccessor.F(oVar);
        if (m.e(F)) {
            return (int) F;
        }
        throw new RuntimeException("Invalid value for " + oVar + " (valid values " + m + "): " + F);
    }

    public static Temporal b(Temporal temporal, long j, TemporalUnit temporalUnit) {
        long j2;
        if (j == Long.MIN_VALUE) {
            temporal = temporal.d(Long.MAX_VALUE, temporalUnit);
            j2 = 1;
        } else {
            j2 = -j;
        }
        return temporal.d(j2, temporalUnit);
    }

    public static Object c(TemporalAccessor temporalAccessor, j$.time.f fVar) {
        if (fVar == a || fVar == b || fVar == c) {
            return null;
        }
        return fVar.g(temporalAccessor);
    }

    public static r d(TemporalAccessor temporalAccessor, o oVar) {
        if (!(oVar instanceof a)) {
            Objects.requireNonNull(oVar, "field");
            return oVar.l(temporalAccessor);
        }
        if (temporalAccessor.e(oVar)) {
            return ((a) oVar).b;
        }
        throw new RuntimeException(j$.time.c.a("Unsupported field: ", oVar));
    }

    public static /* synthetic */ int e(int i) {
        int i2 = i % 7;
        if (i2 == 0) {
            return 0;
        }
        return (((i ^ 7) >> 31) | 1) > 0 ? i2 : i2 + 7;
    }
}
