package j$.time.chrono;

import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalUnit;

/* loaded from: classes2.dex */
public interface ChronoLocalDate extends Temporal, j$.time.temporal.l, Comparable<ChronoLocalDate> {
    /* renamed from: A */
    ChronoLocalDate l(j$.time.temporal.l lVar);

    long G();

    ChronoLocalDateTime H(j$.time.j jVar);

    k J();

    ChronoLocalDate M(j$.time.temporal.n nVar);

    int P();

    /* renamed from: Q */
    int compareTo(ChronoLocalDate chronoLocalDate);

    j a();

    @Override // j$.time.temporal.Temporal
    ChronoLocalDate c(long j, j$.time.temporal.o oVar);

    @Override // j$.time.temporal.Temporal
    ChronoLocalDate d(long j, TemporalUnit temporalUnit);

    @Override // j$.time.temporal.TemporalAccessor
    boolean e(j$.time.temporal.o oVar);

    boolean equals(Object obj);

    int hashCode();

    boolean s();

    String toString();

    ChronoLocalDate u(long j, TemporalUnit temporalUnit);

    @Override // j$.time.temporal.Temporal
    long until(Temporal temporal, TemporalUnit temporalUnit);
}
