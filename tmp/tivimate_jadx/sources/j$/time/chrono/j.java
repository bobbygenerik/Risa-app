package j$.time.chrono;

import j$.time.Instant;
import j$.time.ZoneId;
import j$.time.temporal.TemporalAccessor;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public interface j extends Comparable {
    ChronoLocalDate D(TemporalAccessor temporalAccessor);

    ChronoLocalDateTime I(TemporalAccessor temporalAccessor);

    ChronoLocalDate L(int i, int i2, int i3);

    ChronoLocalDate N(Map map, j$.time.format.E e);

    ChronoZonedDateTime O(Instant instant, ZoneId zoneId);

    boolean R(long j);

    boolean equals(Object obj);

    int hashCode();

    ChronoLocalDate i(long j);

    String j();

    String n();

    ChronoZonedDateTime o(TemporalAccessor temporalAccessor);

    ChronoLocalDate p(int i, int i2);

    j$.time.temporal.r t(j$.time.temporal.a aVar);

    String toString();

    List v();

    k x(int i);

    int y(k kVar, int i);
}
