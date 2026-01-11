package j$.time.chrono;

import j$.time.LocalDate;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalUnit;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import p223.C3056;

/* renamed from: j$.time.chrono.e, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C5424e implements ChronoLocalDateTime, Temporal, j$.time.temporal.l, Serializable {
    private static final long serialVersionUID = 4556003607393004514L;
    public final transient ChronoLocalDate a;
    public final transient j$.time.j b;

    public C5424e(ChronoLocalDate chronoLocalDate, j$.time.j jVar) {
        Objects.requireNonNull(chronoLocalDate, "date");
        Objects.requireNonNull(jVar, "time");
        this.a = chronoLocalDate;
        this.b = jVar;
    }

    public static C5424e S(j jVar, Temporal temporal) {
        C5424e c5424e = (C5424e) temporal;
        if (jVar.equals(c5424e.a.a())) {
            return c5424e;
        }
        throw new ClassCastException("Chronology mismatch, required: " + jVar.j() + ", actual: " + c5424e.a.a().j());
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C((byte) 2, this);
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: B */
    public final Temporal u(long j, ChronoUnit chronoUnit) {
        return S(this.a.a(), j$.time.temporal.p.b(this, j, chronoUnit));
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    public final ChronoZonedDateTime C(ZoneId zoneId) {
        return i.S(zoneId, null, this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final long F(j$.time.temporal.o oVar) {
        return oVar instanceof j$.time.temporal.a ? ((j$.time.temporal.a) oVar).S() ? this.b.F(oVar) : this.a.F(oVar) : oVar.w(this);
    }

    @Override // java.lang.Comparable
    /* renamed from: K */
    public final /* synthetic */ int compareTo(ChronoLocalDateTime chronoLocalDateTime) {
        return j$.com.android.tools.r8.a.d(this, chronoLocalDateTime);
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: T, reason: merged with bridge method [inline-methods] */
    public final C5424e d(long j, TemporalUnit temporalUnit) {
        if (!(temporalUnit instanceof ChronoUnit)) {
            return S(this.a.a(), temporalUnit.k(this, j));
        }
        switch (AbstractC5423d.a[((ChronoUnit) temporalUnit).ordinal()]) {
            case 1:
                return U(this.a, 0L, 0L, 0L, j);
            case 2:
                C5424e W = W(this.a.d(j / 86400000000L, (TemporalUnit) ChronoUnit.DAYS), this.b);
                return W.U(W.a, 0L, 0L, 0L, (j % 86400000000L) * 1000);
            case 3:
                C5424e W2 = W(this.a.d(j / 86400000, (TemporalUnit) ChronoUnit.DAYS), this.b);
                return W2.U(W2.a, 0L, 0L, 0L, (j % 86400000) * 1000000);
            case 4:
                return U(this.a, 0L, 0L, j, 0L);
            case 5:
                return U(this.a, 0L, j, 0L, 0L);
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return U(this.a, j, 0L, 0L, 0L);
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                C5424e W3 = W(this.a.d(j / 256, (TemporalUnit) ChronoUnit.DAYS), this.b);
                return W3.U(W3.a, (j % 256) * 12, 0L, 0L, 0L);
            default:
                return W(this.a.d(j, temporalUnit), this.b);
        }
    }

    public final C5424e U(ChronoLocalDate chronoLocalDate, long j, long j2, long j3, long j4) {
        if ((j | j2 | j3 | j4) == 0) {
            return W(chronoLocalDate, this.b);
        }
        long j5 = j / 24;
        long j6 = ((j % 24) * 3600000000000L) + ((j2 % 1440) * 60000000000L) + ((j3 % 86400) * 1000000000) + (j4 % 86400000000000L);
        long e0 = this.b.e0();
        long j7 = j6 + e0;
        long U = j$.com.android.tools.r8.a.U(j7, 86400000000000L) + j5 + (j2 / 1440) + (j3 / 86400) + (j4 / 86400000000000L);
        long T = j$.com.android.tools.r8.a.T(j7, 86400000000000L);
        return W(chronoLocalDate.d(U, (TemporalUnit) ChronoUnit.DAYS), T == e0 ? this.b : j$.time.j.X(T));
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: V, reason: merged with bridge method [inline-methods] */
    public final C5424e c(long j, j$.time.temporal.o oVar) {
        return oVar instanceof j$.time.temporal.a ? ((j$.time.temporal.a) oVar).S() ? W(this.a, this.b.c(j, oVar)) : W(this.a.c(j, oVar), this.b) : S(this.a.a(), oVar.B(this, j));
    }

    public final C5424e W(Temporal temporal, j$.time.j jVar) {
        ChronoLocalDate chronoLocalDate = this.a;
        return (chronoLocalDate == temporal && this.b == jVar) ? this : new C5424e(AbstractC5422c.S(chronoLocalDate.a(), temporal), jVar);
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    public final j a() {
        return this.a.a();
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    public final j$.time.j b() {
        return this.b;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final boolean e(j$.time.temporal.o oVar) {
        if (!(oVar instanceof j$.time.temporal.a)) {
            return oVar != null && oVar.k(this);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) oVar;
        return aVar.isDateBased() || aVar.S();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ChronoLocalDateTime) && j$.com.android.tools.r8.a.d(this, (ChronoLocalDateTime) obj) == 0;
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    public final ChronoLocalDate f() {
        return this.a;
    }

    public final int hashCode() {
        return this.a.hashCode() ^ this.b.hashCode();
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final int k(j$.time.temporal.o oVar) {
        return oVar instanceof j$.time.temporal.a ? ((j$.time.temporal.a) oVar).S() ? this.b.k(oVar) : this.a.k(oVar) : m(oVar).a(F(oVar), oVar);
    }

    @Override // j$.time.temporal.Temporal
    public final Temporal l(LocalDate localDate) {
        if (j$.time.c.b(localDate)) {
            return W(localDate, this.b);
        }
        j a = this.a.a();
        localDate.getClass();
        return S(a, (C5424e) j$.com.android.tools.r8.a.a(localDate, this));
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.r m(j$.time.temporal.o oVar) {
        if (!(oVar instanceof j$.time.temporal.a)) {
            return oVar.l(this);
        }
        if (!((j$.time.temporal.a) oVar).S()) {
            return this.a.m(oVar);
        }
        j$.time.j jVar = this.b;
        jVar.getClass();
        return j$.time.temporal.p.d(jVar, oVar);
    }

    @Override // j$.time.temporal.l
    public final Temporal q(Temporal temporal) {
        return temporal.c(f().G(), j$.time.temporal.a.EPOCH_DAY).c(b().e0(), j$.time.temporal.a.NANO_OF_DAY);
    }

    @Override // j$.time.chrono.ChronoLocalDateTime
    public final /* synthetic */ long toEpochSecond(ZoneOffset zoneOffset) {
        return j$.com.android.tools.r8.a.u(this, zoneOffset);
    }

    public final String toString() {
        return this.a.toString() + "T" + this.b.toString();
    }

    @Override // j$.time.temporal.Temporal
    public final long until(Temporal temporal, TemporalUnit temporalUnit) {
        Objects.requireNonNull(temporal, "endExclusive");
        ChronoLocalDateTime I = this.a.a().I(temporal);
        if (!(temporalUnit instanceof ChronoUnit)) {
            Objects.requireNonNull(temporalUnit, "unit");
            return temporalUnit.between(this, I);
        }
        ChronoUnit chronoUnit = (ChronoUnit) temporalUnit;
        ChronoUnit chronoUnit2 = ChronoUnit.DAYS;
        if (chronoUnit.compareTo(chronoUnit2) >= 0) {
            ChronoLocalDate f = I.f();
            if (I.b().compareTo(this.b) < 0) {
                f = f.u(1L, chronoUnit2);
            }
            return this.a.until(f, temporalUnit);
        }
        j$.time.temporal.a aVar = j$.time.temporal.a.EPOCH_DAY;
        long F = I.F(aVar) - this.a.F(aVar);
        switch (AbstractC5423d.a[chronoUnit.ordinal()]) {
            case 1:
                F = j$.com.android.tools.r8.a.V(F, 86400000000000L);
                break;
            case 2:
                F = j$.com.android.tools.r8.a.V(F, 86400000000L);
                break;
            case 3:
                F = j$.com.android.tools.r8.a.V(F, 86400000L);
                break;
            case 4:
                F = j$.com.android.tools.r8.a.V(F, 86400);
                break;
            case 5:
                F = j$.com.android.tools.r8.a.V(F, 1440);
                break;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                F = j$.com.android.tools.r8.a.V(F, 24);
                break;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                F = j$.com.android.tools.r8.a.V(F, 2);
                break;
        }
        return j$.com.android.tools.r8.a.P(F, this.b.until(I.b(), temporalUnit));
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ Object w(j$.time.f fVar) {
        return j$.com.android.tools.r8.a.r(this, fVar);
    }
}
