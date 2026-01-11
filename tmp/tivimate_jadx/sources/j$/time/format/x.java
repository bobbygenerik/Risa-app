package j$.time.format;

import j$.time.ZoneId;
import j$.time.chrono.ChronoLocalDate;
import j$.time.temporal.TemporalAccessor;

/* loaded from: classes2.dex */
public final class x implements TemporalAccessor {
    public final /* synthetic */ ChronoLocalDate a;
    public final /* synthetic */ TemporalAccessor b;
    public final /* synthetic */ j$.time.chrono.j c;
    public final /* synthetic */ ZoneId d;

    public x(ChronoLocalDate chronoLocalDate, TemporalAccessor temporalAccessor, j$.time.chrono.j jVar, ZoneId zoneId) {
        this.a = chronoLocalDate;
        this.b = temporalAccessor;
        this.c = jVar;
        this.d = zoneId;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final long F(j$.time.temporal.o oVar) {
        ChronoLocalDate chronoLocalDate = this.a;
        return (chronoLocalDate == null || !oVar.isDateBased()) ? this.b.F(oVar) : chronoLocalDate.F(oVar);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final boolean e(j$.time.temporal.o oVar) {
        ChronoLocalDate chronoLocalDate = this.a;
        return (chronoLocalDate == null || !oVar.isDateBased()) ? this.b.e(oVar) : chronoLocalDate.e(oVar);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ int k(j$.time.temporal.o oVar) {
        return j$.time.temporal.p.a(this, oVar);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.r m(j$.time.temporal.o oVar) {
        ChronoLocalDate chronoLocalDate = this.a;
        return (chronoLocalDate == null || !oVar.isDateBased()) ? this.b.m(oVar) : chronoLocalDate.m(oVar);
    }

    public final String toString() {
        String str;
        String str2 = "";
        j$.time.chrono.j jVar = this.c;
        if (jVar != null) {
            str = " with chronology " + jVar;
        } else {
            str = "";
        }
        ZoneId zoneId = this.d;
        if (zoneId != null) {
            str2 = " with zone " + zoneId;
        }
        return this.b + str + str2;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final Object w(j$.time.f fVar) {
        return fVar == j$.time.temporal.p.b ? this.c : fVar == j$.time.temporal.p.a ? this.d : fVar == j$.time.temporal.p.c ? this.b.w(fVar) : fVar.g(this);
    }
}
