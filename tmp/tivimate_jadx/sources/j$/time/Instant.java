package j$.time;

import j$.time.format.DateTimeFormatter;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalAccessor;
import j$.time.temporal.TemporalUnit;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import p223.C3056;

/* loaded from: classes2.dex */
public final class Instant implements Temporal, j$.time.temporal.l, Comparable<Instant>, Serializable {
    public static final Instant c = new Instant(0, 0);
    private static final long serialVersionUID = -665713676816604388L;
    public final long a;
    public final int b;

    static {
        U(-31557014167219200L, 0L);
        U(31556889864403199L, 999999999L);
    }

    public Instant(long j, int i) {
        this.a = j;
        this.b = i;
    }

    public static Instant S(long j, int i) {
        if ((i | j) == 0) {
            return c;
        }
        if (j < -31557014167219200L || j > 31556889864403199L) {
            throw new RuntimeException("Instant exceeds minimum or maximum instant");
        }
        return new Instant(j, i);
    }

    public static Instant T(TemporalAccessor temporalAccessor) {
        if (temporalAccessor instanceof Instant) {
            return (Instant) temporalAccessor;
        }
        Objects.requireNonNull(temporalAccessor, "temporal");
        try {
            return U(temporalAccessor.F(j$.time.temporal.a.INSTANT_SECONDS), temporalAccessor.k(j$.time.temporal.a.NANO_OF_SECOND));
        } catch (b e) {
            throw new RuntimeException("Unable to obtain Instant from TemporalAccessor: " + temporalAccessor + " of type " + temporalAccessor.getClass().getName(), e);
        }
    }

    public static Instant U(long j, long j2) {
        return S(j$.com.android.tools.r8.a.P(j, j$.com.android.tools.r8.a.U(j2, 1000000000L)), (int) j$.com.android.tools.r8.a.T(j2, 1000000000L));
    }

    public static Instant ofEpochMilli(long j) {
        long j2 = 1000;
        return S(j$.com.android.tools.r8.a.U(j, j2), ((int) j$.com.android.tools.r8.a.T(j, j2)) * 1000000);
    }

    public static Instant ofEpochSecond(long j) {
        return S(j, 0);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new s((byte) 2, this);
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
        int i2 = e.a[((j$.time.temporal.a) oVar).ordinal()];
        if (i2 == 1) {
            i = this.b;
        } else if (i2 == 2) {
            i = this.b / 1000;
        } else {
            if (i2 != 3) {
                if (i2 == 4) {
                    return this.a;
                }
                throw new RuntimeException(c.a("Unsupported field: ", oVar));
            }
            i = this.b / 1000000;
        }
        return i;
    }

    public final Instant V(long j, long j2) {
        if ((j | j2) == 0) {
            return this;
        }
        return U(j$.com.android.tools.r8.a.P(j$.com.android.tools.r8.a.P(this.a, j), j2 / 1000000000), this.b + (j2 % 1000000000));
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: W, reason: merged with bridge method [inline-methods] */
    public final Instant d(long j, TemporalUnit temporalUnit) {
        if (!(temporalUnit instanceof ChronoUnit)) {
            return (Instant) temporalUnit.k(this, j);
        }
        switch (e.b[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return V(0L, j);
            case 2:
                return V(j / 1000000, (j % 1000000) * 1000);
            case 3:
                return V(j / 1000, (j % 1000) * 1000000);
            case 4:
                return V(j, 0L);
            case 5:
                return V(j$.com.android.tools.r8.a.V(j, 60), 0L);
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return V(j$.com.android.tools.r8.a.V(j, 3600), 0L);
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                return V(j$.com.android.tools.r8.a.V(j, 43200), 0L);
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                return V(j$.com.android.tools.r8.a.V(j, 86400), 0L);
            default:
                throw new RuntimeException("Unsupported unit: " + temporalUnit);
        }
    }

    public final long X(Instant instant) {
        long W = j$.com.android.tools.r8.a.W(instant.a, this.a);
        long j = instant.b - this.b;
        return (W <= 0 || j >= 0) ? (W >= 0 || j <= 0) ? W : W + 1 : W - 1;
    }

    public OffsetDateTime atOffset(ZoneOffset zoneOffset) {
        return OffsetDateTime.T(this, zoneOffset);
    }

    @Override // j$.time.temporal.Temporal
    public final Temporal c(long j, j$.time.temporal.o oVar) {
        if (!(oVar instanceof j$.time.temporal.a)) {
            return (Instant) oVar.B(this, j);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) oVar;
        aVar.F(j);
        int i = e.a[aVar.ordinal()];
        if (i != 1) {
            if (i == 2) {
                int i2 = ((int) j) * 1000;
                if (i2 != this.b) {
                    return S(this.a, i2);
                }
            } else if (i == 3) {
                int i3 = ((int) j) * 1000000;
                if (i3 != this.b) {
                    return S(this.a, i3);
                }
            } else {
                if (i != 4) {
                    throw new RuntimeException(c.a("Unsupported field: ", oVar));
                }
                if (j != this.a) {
                    return S(j, this.b);
                }
            }
        } else if (j != this.b) {
            return S(this.a, (int) j);
        }
        return this;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Instant instant) {
        Instant instant2 = instant;
        int compare = Long.compare(this.a, instant2.a);
        return compare != 0 ? compare : this.b - instant2.b;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final boolean e(j$.time.temporal.o oVar) {
        return oVar instanceof j$.time.temporal.a ? oVar == j$.time.temporal.a.INSTANT_SECONDS || oVar == j$.time.temporal.a.NANO_OF_SECOND || oVar == j$.time.temporal.a.MICRO_OF_SECOND || oVar == j$.time.temporal.a.MILLI_OF_SECOND : oVar != null && oVar.k(this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Instant) {
            Instant instant = (Instant) obj;
            if (this.a == instant.a && this.b == instant.b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.a;
        return (this.b * 51) + ((int) (j ^ (j >>> 32)));
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final int k(j$.time.temporal.o oVar) {
        if (!(oVar instanceof j$.time.temporal.a)) {
            return j$.time.temporal.p.d(this, oVar).a(oVar.w(this), oVar);
        }
        int i = e.a[((j$.time.temporal.a) oVar).ordinal()];
        if (i == 1) {
            return this.b;
        }
        if (i == 2) {
            return this.b / 1000;
        }
        if (i == 3) {
            return this.b / 1000000;
        }
        if (i == 4) {
            j$.time.temporal.a aVar = j$.time.temporal.a.INSTANT_SECONDS;
            aVar.b.a(this.a, aVar);
        }
        throw new RuntimeException(c.a("Unsupported field: ", oVar));
    }

    @Override // j$.time.temporal.Temporal
    public final Temporal l(LocalDate localDate) {
        localDate.getClass();
        return (Instant) j$.com.android.tools.r8.a.a(localDate, this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.r m(j$.time.temporal.o oVar) {
        return j$.time.temporal.p.d(this, oVar);
    }

    @Override // j$.time.temporal.l
    public final Temporal q(Temporal temporal) {
        return temporal.c(this.a, j$.time.temporal.a.INSTANT_SECONDS).c(this.b, j$.time.temporal.a.NANO_OF_SECOND);
    }

    public long toEpochMilli() {
        long j = this.a;
        return (j >= 0 || this.b <= 0) ? j$.com.android.tools.r8.a.P(j$.com.android.tools.r8.a.V(j, 1000), this.b / 1000000) : j$.com.android.tools.r8.a.P(j$.com.android.tools.r8.a.V(j + 1, 1000), (this.b / 1000000) - 1000);
    }

    public final String toString() {
        return DateTimeFormatter.f.format(this);
    }

    @Override // j$.time.temporal.Temporal
    public final long until(Temporal temporal, TemporalUnit temporalUnit) {
        Instant T = T(temporal);
        if (!(temporalUnit instanceof ChronoUnit)) {
            return temporalUnit.between(this, T);
        }
        switch (e.b[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return j$.com.android.tools.r8.a.P(j$.com.android.tools.r8.a.V(j$.com.android.tools.r8.a.W(T.a, this.a), 1000000000L), T.b - this.b);
            case 2:
                return j$.com.android.tools.r8.a.P(j$.com.android.tools.r8.a.V(j$.com.android.tools.r8.a.W(T.a, this.a), 1000000000L), T.b - this.b) / 1000;
            case 3:
                return j$.com.android.tools.r8.a.W(T.toEpochMilli(), toEpochMilli());
            case 4:
                return X(T);
            case 5:
                return X(T) / 60;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return X(T) / 3600;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                return X(T) / 43200;
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                return X(T) / 86400;
            default:
                throw new RuntimeException("Unsupported unit: " + temporalUnit);
        }
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final Object w(f fVar) {
        if (fVar == j$.time.temporal.p.c) {
            return ChronoUnit.NANOS;
        }
        if (fVar == j$.time.temporal.p.b || fVar == j$.time.temporal.p.a || fVar == j$.time.temporal.p.e || fVar == j$.time.temporal.p.d || fVar == j$.time.temporal.p.f || fVar == j$.time.temporal.p.g) {
            return null;
        }
        return fVar.g(this);
    }
}
