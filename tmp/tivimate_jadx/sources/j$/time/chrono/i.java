package j$.time.chrono;

import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.LocalDateTime;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.temporal.ChronoUnit;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalUnit;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.List;

/* loaded from: classes2.dex */
public final class i implements ChronoZonedDateTime, Serializable {
    private static final long serialVersionUID = -5261813987200935591L;
    public final transient C5424e a;
    public final transient ZoneOffset b;
    public final transient ZoneId c;

    public i(ZoneId zoneId, ZoneOffset zoneOffset, C5424e c5424e) {
        this.a = (C5424e) Objects.requireNonNull(c5424e, "dateTime");
        this.b = (ZoneOffset) Objects.requireNonNull(zoneOffset, "offset");
        this.c = (ZoneId) Objects.requireNonNull(zoneId, "zone");
    }

    public static i S(ZoneId zoneId, ZoneOffset zoneOffset, C5424e c5424e) {
        Objects.requireNonNull(c5424e, "localDateTime");
        Objects.requireNonNull(zoneId, "zone");
        if (zoneId instanceof ZoneOffset) {
            return new i(zoneId, (ZoneOffset) zoneId, c5424e);
        }
        j$.time.zone.f T = zoneId.T();
        LocalDateTime T2 = LocalDateTime.T(c5424e);
        List f = T.f(T2);
        if (f.size() == 1) {
            zoneOffset = (ZoneOffset) f.get(0);
        } else if (f.size() == 0) {
            Object e = T.e(T2);
            j$.time.zone.b bVar = e instanceof j$.time.zone.b ? (j$.time.zone.b) e : null;
            c5424e = c5424e.U(c5424e.a, 0L, 0L, j$.time.d.l(bVar.d.b - bVar.c.b, 0).a, 0L);
            zoneOffset = bVar.d;
        } else {
            if (zoneOffset == null || !f.contains(zoneOffset)) {
                zoneOffset = (ZoneOffset) f.get(0);
            }
            c5424e = c5424e;
        }
        Objects.requireNonNull(zoneOffset, "offset");
        return new i(zoneId, zoneOffset, c5424e);
    }

    public static i T(j jVar, Instant instant, ZoneId zoneId) {
        ZoneOffset d = zoneId.T().d(instant);
        Objects.requireNonNull(d, "offset");
        return new i(zoneId, d, (C5424e) jVar.I(LocalDateTime.W(instant.a, instant.b, d)));
    }

    public static i q(j jVar, Temporal temporal) {
        i iVar = (i) temporal;
        if (jVar.equals(iVar.a())) {
            return iVar;
        }
        throw new ClassCastException("Chronology mismatch, required: " + jVar.j() + ", actual: " + iVar.a().j());
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C((byte) 3, this);
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: B */
    public final Temporal u(long j, ChronoUnit chronoUnit) {
        return q(a(), j$.time.temporal.p.b(this, j, chronoUnit));
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final ZoneId E() {
        return this.c;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final long F(j$.time.temporal.o oVar) {
        if (!(oVar instanceof j$.time.temporal.a)) {
            return oVar.w(this);
        }
        int i = AbstractC5426g.a[((j$.time.temporal.a) oVar).ordinal()];
        return i != 1 ? i != 2 ? ((C5424e) r()).F(oVar) : g().b : toEpochSecond();
    }

    @Override // j$.time.temporal.Temporal
    /* renamed from: U, reason: merged with bridge method [inline-methods] */
    public final i d(long j, TemporalUnit temporalUnit) {
        if (!(temporalUnit instanceof ChronoUnit)) {
            return q(a(), temporalUnit.k(this, j));
        }
        return q(a(), this.a.d(j, temporalUnit).q(this));
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final j a() {
        return f().a();
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final j$.time.j b() {
        return ((C5424e) r()).b();
    }

    @Override // j$.time.temporal.Temporal
    public final Temporal c(long j, j$.time.temporal.o oVar) {
        if (!(oVar instanceof j$.time.temporal.a)) {
            return q(a(), oVar.B(this, j));
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) oVar;
        int i = AbstractC5427h.a[aVar.ordinal()];
        if (i == 1) {
            return d(j - j$.com.android.tools.r8.a.v(this), ChronoUnit.SECONDS);
        }
        if (i != 2) {
            return S(this.c, this.b, this.a.c(j, oVar));
        }
        ZoneOffset b0 = ZoneOffset.b0(aVar.b.a(j, aVar));
        C5424e c5424e = this.a;
        c5424e.getClass();
        return T(a(), Instant.U(j$.com.android.tools.r8.a.u(c5424e, b0), c5424e.b.d), this.c);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(ChronoZonedDateTime<?> chronoZonedDateTime) {
        return j$.com.android.tools.r8.a.e(this, chronoZonedDateTime);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final boolean e(j$.time.temporal.o oVar) {
        if (oVar instanceof j$.time.temporal.a) {
            return true;
        }
        return oVar != null && oVar.k(this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ChronoZonedDateTime) && j$.com.android.tools.r8.a.e(this, (ChronoZonedDateTime) obj) == 0;
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final ChronoLocalDate f() {
        return ((C5424e) r()).f();
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final ZoneOffset g() {
        return this.b;
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final ChronoZonedDateTime h(ZoneId zoneId) {
        Objects.requireNonNull(zoneId, "zone");
        if (this.c.equals(zoneId)) {
            return this;
        }
        C5424e c5424e = this.a;
        ZoneOffset zoneOffset = this.b;
        c5424e.getClass();
        return T(a(), Instant.U(j$.com.android.tools.r8.a.u(c5424e, zoneOffset), c5424e.b.d), zoneId);
    }

    public final int hashCode() {
        return (this.a.hashCode() ^ this.b.b) ^ Integer.rotateLeft(this.c.hashCode(), 3);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ int k(j$.time.temporal.o oVar) {
        return j$.com.android.tools.r8.a.j(this, oVar);
    }

    @Override // j$.time.temporal.Temporal
    public final Temporal l(LocalDate localDate) {
        return q(a(), localDate.q(this));
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.r m(j$.time.temporal.o oVar) {
        return oVar instanceof j$.time.temporal.a ? (oVar == j$.time.temporal.a.INSTANT_SECONDS || oVar == j$.time.temporal.a.OFFSET_SECONDS) ? ((j$.time.temporal.a) oVar).b : ((C5424e) r()).m(oVar) : oVar.l(this);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final ChronoLocalDateTime r() {
        return this.a;
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final /* synthetic */ long toEpochSecond() {
        return j$.com.android.tools.r8.a.v(this);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final Instant toInstant() {
        return Instant.U(toEpochSecond(), b().d);
    }

    public final String toString() {
        String str = this.a.toString() + this.b.c;
        ZoneOffset zoneOffset = this.b;
        ZoneId zoneId = this.c;
        if (zoneOffset == zoneId) {
            return str;
        }
        return str + "[" + zoneId.toString() + "]";
    }

    @Override // j$.time.temporal.Temporal
    public final long until(Temporal temporal, TemporalUnit temporalUnit) {
        Objects.requireNonNull(temporal, "endExclusive");
        ChronoZonedDateTime o = a().o(temporal);
        if (temporalUnit instanceof ChronoUnit) {
            return this.a.until(o.h(this.b).r(), temporalUnit);
        }
        Objects.requireNonNull(temporalUnit, "unit");
        return temporalUnit.between(this, o);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ Object w(j$.time.f fVar) {
        return j$.com.android.tools.r8.a.s(this, fVar);
    }

    @Override // j$.time.chrono.ChronoZonedDateTime
    public final ChronoZonedDateTime z(ZoneId zoneId) {
        return S(zoneId, this.b, this.a);
    }
}
