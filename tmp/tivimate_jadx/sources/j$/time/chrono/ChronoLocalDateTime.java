package j$.time.chrono;

import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.chrono.ChronoLocalDate;
import j$.time.temporal.Temporal;

/* loaded from: classes2.dex */
public interface ChronoLocalDateTime<D extends ChronoLocalDate> extends Temporal, j$.time.temporal.l, Comparable<ChronoLocalDateTime<?>> {
    ChronoZonedDateTime C(ZoneId zoneId);

    /* renamed from: K */
    int compareTo(ChronoLocalDateTime chronoLocalDateTime);

    j a();

    j$.time.j b();

    ChronoLocalDate f();

    long toEpochSecond(ZoneOffset zoneOffset);
}
