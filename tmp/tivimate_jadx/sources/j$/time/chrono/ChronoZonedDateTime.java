package j$.time.chrono;

import j$.time.Instant;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.time.chrono.ChronoLocalDate;
import j$.time.temporal.Temporal;

/* loaded from: classes2.dex */
public interface ChronoZonedDateTime<D extends ChronoLocalDate> extends Temporal, Comparable<ChronoZonedDateTime<?>> {
    ZoneId E();

    j a();

    j$.time.j b();

    ChronoLocalDate f();

    ZoneOffset g();

    ChronoZonedDateTime h(ZoneId zoneId);

    ChronoLocalDateTime r();

    long toEpochSecond();

    Instant toInstant();

    ChronoZonedDateTime z(ZoneId zoneId);
}
