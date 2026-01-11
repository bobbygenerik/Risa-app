package j$.time;

import j$.time.temporal.ChronoUnit;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalAccessor;
import j$.time.temporal.TemporalUnit;
import j$.util.Objects;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import p223.C3056;

/* loaded from: classes2.dex */
public final class j implements Temporal, j$.time.temporal.l, Comparable, Serializable {
    public static final j e;
    public static final j f;
    public static final j g;
    public static final j[] h = new j[24];
    private static final long serialVersionUID = 6414437269572265201L;
    public final byte a;
    public final byte b;
    public final byte c;
    public final int d;

    static {
        int i = 0;
        while (true) {
            j[] jVarArr = h;
            if (i >= jVarArr.length) {
                j jVar = jVarArr[0];
                g = jVar;
                j jVar2 = jVarArr[12];
                e = jVar;
                f = new j(23, 59, 59, 999999999);
                return;
            }
            jVarArr[i] = new j(i, 0, 0, 0);
            i++;
        }
    }

    public j(int i, int i2, int i3, int i4) {
        this.a = (byte) i;
        this.b = (byte) i2;
        this.c = (byte) i3;
        this.d = i4;
    }

    public static j T(int i, int i2, int i3, int i4) {
        return ((i2 | i3) | i4) == 0 ? h[i] : new j(i, i2, i3, i4);
    }

    public static j U(TemporalAccessor temporalAccessor) {
        Objects.requireNonNull(temporalAccessor, "temporal");
        j jVar = (j) temporalAccessor.w(j$.time.temporal.p.g);
        if (jVar != null) {
            return jVar;
        }
        throw new RuntimeException("Unable to obtain LocalTime from TemporalAccessor: " + temporalAccessor + " of type " + temporalAccessor.getClass().getName());
    }

    public static j W(int i, int i2, int i3, int i4) {
        j$.time.temporal.a.HOUR_OF_DAY.F(i);
        j$.time.temporal.a.MINUTE_OF_HOUR.F(i2);
        j$.time.temporal.a.SECOND_OF_MINUTE.F(i3);
        j$.time.temporal.a.NANO_OF_SECOND.F(i4);
        return T(i, i2, i3, i4);
    }

    public static j X(long j) {
        j$.time.temporal.a.NANO_OF_DAY.F(j);
        int i = (int) (j / 3600000000000L);
        long j2 = j - (i * 3600000000000L);
        int i2 = (int) (j2 / 60000000000L);
        long j3 = j2 - (i2 * 60000000000L);
        int i3 = (int) (j3 / 1000000000);
        return T(i, i2, i3, (int) (j3 - (i3 * 1000000000)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v4, types: [int] */
    public static j d0(DataInput dataInput) {
        int readInt;
        int i;
        int readByte = dataInput.readByte();
        byte b = 0;
        if (readByte < 0) {
            readByte = ~readByte;
            i = 0;
            readInt = 0;
        } else {
            byte readByte2 = dataInput.readByte();
            if (readByte2 < 0) {
                ?? r5 = ~readByte2;
                readInt = 0;
                b = r5;
                i = 0;
            } else {
                byte readByte3 = dataInput.readByte();
                if (readByte3 < 0) {
                    i = ~readByte3;
                    readInt = 0;
                    b = readByte2;
                } else {
                    readInt = dataInput.readInt();
                    b = readByte2;
                    i = readByte3;
                }
            }
        }
        return W(readByte, b, i, readInt);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new s((byte) 4, this);
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: B */
    public final Temporal u(long j, ChronoUnit chronoUnit) {
        return j == Long.MIN_VALUE ? d(Long.MAX_VALUE, chronoUnit).d(1L, chronoUnit) : d(-j, chronoUnit);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final long F(j$.time.temporal.o oVar) {
        return oVar instanceof j$.time.temporal.a ? oVar == j$.time.temporal.a.NANO_OF_DAY ? e0() : oVar == j$.time.temporal.a.MICRO_OF_DAY ? e0() / 1000 : V(oVar) : oVar.w(this);
    }

    @Override // java.lang.Comparable
    /* renamed from: S, reason: merged with bridge method [inline-methods] */
    public final int compareTo(j jVar) {
        int compare = Integer.compare(this.a, jVar.a);
        return (compare == 0 && (compare = Integer.compare(this.b, jVar.b)) == 0 && (compare = Integer.compare(this.c, jVar.c)) == 0) ? Integer.compare(this.d, jVar.d) : compare;
    }

    public final int V(j$.time.temporal.o oVar) {
        switch (i.a[((j$.time.temporal.a) oVar).ordinal()]) {
            case 1:
                return this.d;
            case 2:
                throw new RuntimeException("Invalid field 'NanoOfDay' for get() method, use getLong() instead");
            case 3:
                return this.d / 1000;
            case 4:
                throw new RuntimeException("Invalid field 'MicroOfDay' for get() method, use getLong() instead");
            case 5:
                return this.d / 1000000;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return (int) (e0() / 1000000);
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                return this.c;
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                return f0();
            case 9:
                return this.b;
            case 10:
                return (this.a * 60) + this.b;
            case 11:
                return this.a % 12;
            case 12:
                int i = this.a % 12;
                if (i % 12 == 0) {
                    return 12;
                }
                return i;
            case 13:
                return this.a;
            case 14:
                byte b = this.a;
                if (b == 0) {
                    return 24;
                }
                return b;
            case 15:
                return this.a / 12;
            default:
                throw new RuntimeException(c.a("Unsupported field: ", oVar));
        }
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: Y, reason: merged with bridge method [inline-methods] */
    public final j d(long j, TemporalUnit temporalUnit) {
        if (!(temporalUnit instanceof ChronoUnit)) {
            return (j) temporalUnit.k(this, j);
        }
        switch (i.b[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return b0(j);
            case 2:
                return b0((j % 86400000000L) * 1000);
            case 3:
                return b0((j % 86400000) * 1000000);
            case 4:
                return c0(j);
            case 5:
                return a0(j);
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return Z(j);
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                return Z((j % 2) * 12);
            default:
                throw new RuntimeException("Unsupported unit: " + temporalUnit);
        }
    }

    public final j Z(long j) {
        return j == 0 ? this : T(((((int) (j % 24)) + this.a) + 24) % 24, this.b, this.c, this.d);
    }

    public final j a0(long j) {
        if (j != 0) {
            int i = (this.a * 60) + this.b;
            int i2 = ((((int) (j % 1440)) + i) + 1440) % 1440;
            if (i != i2) {
                return T(i2 / 60, i2 % 60, this.c, this.d);
            }
        }
        return this;
    }

    public final j b0(long j) {
        if (j != 0) {
            long e0 = e0();
            long j2 = (((j % 86400000000000L) + e0) + 86400000000000L) % 86400000000000L;
            if (e0 != j2) {
                return T((int) (j2 / 3600000000000L), (int) ((j2 / 60000000000L) % 60), (int) ((j2 / 1000000000) % 60), (int) (j2 % 1000000000));
            }
        }
        return this;
    }

    public final j c0(long j) {
        if (j != 0) {
            int i = (this.b * 60) + (this.a * 3600) + this.c;
            int i2 = ((((int) (j % 86400)) + i) + 86400) % 86400;
            if (i != i2) {
                return T(i2 / 3600, (i2 / 60) % 60, i2 % 60, this.d);
            }
        }
        return this;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final boolean e(j$.time.temporal.o oVar) {
        return oVar instanceof j$.time.temporal.a ? ((j$.time.temporal.a) oVar).S() : oVar != null && oVar.k(this);
    }

    public final long e0() {
        return (this.c * 1000000000) + (this.b * 60000000000L) + (this.a * 3600000000000L) + this.d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof j) {
            j jVar = (j) obj;
            if (this.a == jVar.a && this.b == jVar.b && this.c == jVar.c && this.d == jVar.d) {
                return true;
            }
        }
        return false;
    }

    public final int f0() {
        return (this.b * 60) + (this.a * 3600) + this.c;
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: g0, reason: merged with bridge method [inline-methods] */
    public final j c(long j, j$.time.temporal.o oVar) {
        if (!(oVar instanceof j$.time.temporal.a)) {
            return (j) oVar.B(this, j);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) oVar;
        aVar.F(j);
        switch (i.a[aVar.ordinal()]) {
            case 1:
                return i0((int) j);
            case 2:
                return X(j);
            case 3:
                return i0(((int) j) * 1000);
            case 4:
                return X(j * 1000);
            case 5:
                return i0(((int) j) * 1000000);
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return X(j * 1000000);
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                int i = (int) j;
                if (this.c != i) {
                    j$.time.temporal.a.SECOND_OF_MINUTE.F(i);
                    return T(this.a, this.b, i, this.d);
                }
                return this;
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                return c0(j - f0());
            case 9:
                int i2 = (int) j;
                if (this.b != i2) {
                    j$.time.temporal.a.MINUTE_OF_HOUR.F(i2);
                    return T(this.a, i2, this.c, this.d);
                }
                return this;
            case 10:
                return a0(j - ((this.a * 60) + this.b));
            case 11:
                return Z(j - (this.a % 12));
            case 12:
                if (j == 12) {
                    j = 0;
                }
                return Z(j - (this.a % 12));
            case 13:
                return h0((int) j);
            case 14:
                if (j == 24) {
                    j = 0;
                }
                return h0((int) j);
            case 15:
                return Z((j - (this.a / 12)) * 12);
            default:
                throw new RuntimeException(c.a("Unsupported field: ", oVar));
        }
    }

    public final j h0(int i) {
        if (this.a == i) {
            return this;
        }
        j$.time.temporal.a.HOUR_OF_DAY.F(i);
        return T(i, this.b, this.c, this.d);
    }

    public final int hashCode() {
        long e0 = e0();
        return (int) (e0 ^ (e0 >>> 32));
    }

    public final j i0(int i) {
        if (this.d == i) {
            return this;
        }
        j$.time.temporal.a.NANO_OF_SECOND.F(i);
        return T(this.a, this.b, this.c, i);
    }

    public final void j0(DataOutput dataOutput) {
        if (this.d != 0) {
            dataOutput.writeByte(this.a);
            dataOutput.writeByte(this.b);
            dataOutput.writeByte(this.c);
            dataOutput.writeInt(this.d);
            return;
        }
        if (this.c != 0) {
            dataOutput.writeByte(this.a);
            dataOutput.writeByte(this.b);
            dataOutput.writeByte(~this.c);
        } else if (this.b == 0) {
            dataOutput.writeByte(~this.a);
        } else {
            dataOutput.writeByte(this.a);
            dataOutput.writeByte(~this.b);
        }
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final int k(j$.time.temporal.o oVar) {
        return oVar instanceof j$.time.temporal.a ? V(oVar) : j$.time.temporal.p.a(this, oVar);
    }

    @Override // j$.time.temporal.Temporal
    public final Temporal l(LocalDate localDate) {
        localDate.getClass();
        return (j) j$.com.android.tools.r8.a.a(localDate, this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.r m(j$.time.temporal.o oVar) {
        return j$.time.temporal.p.d(this, oVar);
    }

    @Override // j$.time.temporal.l
    public final Temporal q(Temporal temporal) {
        return temporal.c(e0(), j$.time.temporal.a.NANO_OF_DAY);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(18);
        byte b = this.a;
        byte b2 = this.b;
        byte b3 = this.c;
        int i = this.d;
        sb.append(b < 10 ? "0" : "");
        sb.append((int) b);
        sb.append(b2 < 10 ? ":0" : ":");
        sb.append((int) b2);
        if (b3 > 0 || i > 0) {
            sb.append(b3 < 10 ? ":0" : ":");
            sb.append((int) b3);
            if (i > 0) {
                sb.append('.');
                if (i % 1000000 == 0) {
                    sb.append(Integer.toString((i / 1000000) + 1000).substring(1));
                } else if (i % 1000 == 0) {
                    sb.append(Integer.toString((i / 1000) + 1000000).substring(1));
                } else {
                    sb.append(Integer.toString(i + 1000000000).substring(1));
                }
            }
        }
        return sb.toString();
    }

    @Override // j$.time.temporal.Temporal
    public final long until(Temporal temporal, TemporalUnit temporalUnit) {
        j U = U(temporal);
        if (!(temporalUnit instanceof ChronoUnit)) {
            return temporalUnit.between(this, U);
        }
        long e0 = U.e0() - e0();
        switch (i.b[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return e0;
            case 2:
                return e0 / 1000;
            case 3:
                return e0 / 1000000;
            case 4:
                return e0 / 1000000000;
            case 5:
                return e0 / 60000000000L;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return e0 / 3600000000000L;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                return e0 / 43200000000000L;
            default:
                throw new RuntimeException("Unsupported unit: " + temporalUnit);
        }
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final Object w(f fVar) {
        if (fVar == j$.time.temporal.p.b || fVar == j$.time.temporal.p.a || fVar == j$.time.temporal.p.e || fVar == j$.time.temporal.p.d) {
            return null;
        }
        if (fVar == j$.time.temporal.p.g) {
            return this;
        }
        if (fVar == j$.time.temporal.p.f) {
            return null;
        }
        return fVar == j$.time.temporal.p.c ? ChronoUnit.NANOS : fVar.g(this);
    }
}
