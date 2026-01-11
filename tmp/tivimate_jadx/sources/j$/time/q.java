package j$.time;

import j$.time.temporal.ChronoUnit;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalUnit;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import p223.C3056;

/* loaded from: classes2.dex */
public final class q implements Temporal, j$.time.temporal.l, Comparable, Serializable {
    public static final /* synthetic */ int c = 0;
    private static final long serialVersionUID = 7264499704384272492L;
    public final j a;
    public final ZoneOffset b;

    static {
        j jVar = j.e;
        ZoneOffset zoneOffset = ZoneOffset.g;
        jVar.getClass();
        new q(jVar, zoneOffset);
        j jVar2 = j.f;
        ZoneOffset zoneOffset2 = ZoneOffset.f;
        jVar2.getClass();
        new q(jVar2, zoneOffset2);
    }

    public q(j jVar, ZoneOffset zoneOffset) {
        this.a = (j) Objects.requireNonNull(jVar, "time");
        this.b = (ZoneOffset) Objects.requireNonNull(zoneOffset, "offset");
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new s((byte) 9, this);
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: B */
    public final Temporal u(long j, ChronoUnit chronoUnit) {
        return j == Long.MIN_VALUE ? d(Long.MAX_VALUE, chronoUnit).d(1L, chronoUnit) : d(-j, chronoUnit);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final long F(j$.time.temporal.o oVar) {
        return oVar instanceof j$.time.temporal.a ? oVar == j$.time.temporal.a.OFFSET_SECONDS ? this.b.b : this.a.F(oVar) : oVar.w(this);
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: S, reason: merged with bridge method [inline-methods] */
    public final q d(long j, TemporalUnit temporalUnit) {
        return temporalUnit instanceof ChronoUnit ? U(this.a.d(j, temporalUnit), this.b) : (q) temporalUnit.k(this, j);
    }

    public final long T() {
        return this.a.e0() - (this.b.b * 1000000000);
    }

    public final q U(j jVar, ZoneOffset zoneOffset) {
        return (this.a == jVar && this.b.equals(zoneOffset)) ? this : new q(jVar, zoneOffset);
    }

    @Override // j$.time.temporal.Temporal
    public final Temporal c(long j, j$.time.temporal.o oVar) {
        if (!(oVar instanceof j$.time.temporal.a)) {
            return (q) oVar.B(this, j);
        }
        if (oVar != j$.time.temporal.a.OFFSET_SECONDS) {
            return U(this.a.c(j, oVar), this.b);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) oVar;
        return U(this.a, ZoneOffset.b0(aVar.b.a(j, aVar)));
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        int compare;
        q qVar = (q) obj;
        return (this.b.equals(qVar.b) || (compare = Long.compare(T(), qVar.T())) == 0) ? this.a.compareTo(qVar.a) : compare;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final boolean e(j$.time.temporal.o oVar) {
        return oVar instanceof j$.time.temporal.a ? ((j$.time.temporal.a) oVar).S() || oVar == j$.time.temporal.a.OFFSET_SECONDS : oVar != null && oVar.k(this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof q) {
            q qVar = (q) obj;
            if (this.a.equals(qVar.a) && this.b.equals(qVar.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode() ^ this.b.b;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final int k(j$.time.temporal.o oVar) {
        return j$.time.temporal.p.a(this, oVar);
    }

    @Override // j$.time.temporal.Temporal
    public final Temporal l(LocalDate localDate) {
        localDate.getClass();
        return (q) j$.com.android.tools.r8.a.a(localDate, this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.r m(j$.time.temporal.o oVar) {
        if (!(oVar instanceof j$.time.temporal.a)) {
            return oVar.l(this);
        }
        if (oVar == j$.time.temporal.a.OFFSET_SECONDS) {
            return ((j$.time.temporal.a) oVar).b;
        }
        j jVar = this.a;
        jVar.getClass();
        return j$.time.temporal.p.d(jVar, oVar);
    }

    @Override // j$.time.temporal.l
    public final Temporal q(Temporal temporal) {
        return temporal.c(this.a.e0(), j$.time.temporal.a.NANO_OF_DAY).c(this.b.b, j$.time.temporal.a.OFFSET_SECONDS);
    }

    public final String toString() {
        return this.a.toString() + this.b.c;
    }

    @Override // j$.time.temporal.Temporal
    public final long until(Temporal temporal, TemporalUnit temporalUnit) {
        q qVar;
        if (temporal instanceof q) {
            qVar = (q) temporal;
        } else {
            try {
                qVar = new q(j.U(temporal), ZoneOffset.Y(temporal));
            } catch (b e) {
                throw new RuntimeException("Unable to obtain OffsetTime from TemporalAccessor: " + temporal + " of type " + temporal.getClass().getName(), e);
            }
        }
        if (!(temporalUnit instanceof ChronoUnit)) {
            return temporalUnit.between(this, qVar);
        }
        long T = qVar.T() - T();
        switch (p.a[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return T;
            case 2:
                return T / 1000;
            case 3:
                return T / 1000000;
            case 4:
                return T / 1000000000;
            case 5:
                return T / 60000000000L;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return T / 3600000000000L;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                return T / 43200000000000L;
            default:
                throw new RuntimeException("Unsupported unit: " + temporalUnit);
        }
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final Object w(f fVar) {
        if (fVar == j$.time.temporal.p.d || fVar == j$.time.temporal.p.e) {
            return this.b;
        }
        if (((fVar == j$.time.temporal.p.a) || (fVar == j$.time.temporal.p.b)) || fVar == j$.time.temporal.p.f) {
            return null;
        }
        return fVar == j$.time.temporal.p.g ? this.a : fVar == j$.time.temporal.p.c ? ChronoUnit.NANOS : fVar.g(this);
    }
}
