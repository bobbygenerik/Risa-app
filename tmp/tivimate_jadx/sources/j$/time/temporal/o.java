package j$.time.temporal;

import j$.time.format.D;
import j$.time.format.E;
import java.util.Map;

/* loaded from: classes2.dex */
public interface o {
    Temporal B(Temporal temporal, long j);

    boolean isDateBased();

    boolean k(TemporalAccessor temporalAccessor);

    r l(TemporalAccessor temporalAccessor);

    TemporalAccessor m(Map map, D d, E e);

    r q();

    long w(TemporalAccessor temporalAccessor);
}
