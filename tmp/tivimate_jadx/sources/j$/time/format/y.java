package j$.time.format;

import j$.time.ZoneId;
import j$.time.chrono.ChronoLocalDate;
import j$.time.temporal.TemporalAccessor;
import j$.util.Objects;

/* loaded from: classes2.dex */
public final class y {
    public final TemporalAccessor a;
    public final DateTimeFormatter b;
    public int c;

    public y(TemporalAccessor temporalAccessor, DateTimeFormatter dateTimeFormatter) {
        j$.time.chrono.j jVar = dateTimeFormatter.e;
        if (jVar != null) {
            j$.time.chrono.j jVar2 = (j$.time.chrono.j) temporalAccessor.w(j$.time.temporal.p.b);
            ZoneId zoneId = (ZoneId) temporalAccessor.w(j$.time.temporal.p.a);
            ChronoLocalDate chronoLocalDate = null;
            jVar = Objects.equals(jVar, jVar2) ? null : jVar;
            Objects.equals(null, zoneId);
            if (jVar != null) {
                j$.time.chrono.j jVar3 = jVar != null ? jVar : jVar2;
                if (jVar != null) {
                    if (temporalAccessor.e(j$.time.temporal.a.EPOCH_DAY)) {
                        chronoLocalDate = jVar3.D(temporalAccessor);
                    } else if (jVar != j$.time.chrono.q.c || jVar2 != null) {
                        for (j$.time.temporal.a aVar : j$.time.temporal.a.values()) {
                            if (aVar.isDateBased() && temporalAccessor.e(aVar)) {
                                throw new RuntimeException("Unable to apply override chronology '" + jVar + "' because the temporal object being formatted contains date fields but does not represent a whole date: " + temporalAccessor);
                            }
                        }
                    }
                }
                temporalAccessor = new x(chronoLocalDate, temporalAccessor, jVar3, zoneId);
            }
        }
        this.a = temporalAccessor;
        this.b = dateTimeFormatter;
    }

    public final Long a(j$.time.temporal.o oVar) {
        int i = this.c;
        TemporalAccessor temporalAccessor = this.a;
        if (i <= 0 || temporalAccessor.e(oVar)) {
            return Long.valueOf(temporalAccessor.F(oVar));
        }
        return null;
    }

    public final Object b(j$.time.f fVar) {
        TemporalAccessor temporalAccessor = this.a;
        Object w = temporalAccessor.w(fVar);
        if (w != null || this.c != 0) {
            return w;
        }
        throw new RuntimeException("Unable to extract " + fVar + " from temporal " + temporalAccessor);
    }

    public final String toString() {
        return this.a.toString();
    }
}
