package j$.time.temporal;

import j$.time.LocalDate;

/* loaded from: classes2.dex */
public interface Temporal extends TemporalAccessor {
    /* renamed from: B */
    Temporal u(long j, ChronoUnit chronoUnit);

    Temporal c(long j, o oVar);

    Temporal d(long j, TemporalUnit temporalUnit);

    Temporal l(LocalDate localDate);

    long until(Temporal temporal, TemporalUnit temporalUnit);
}
