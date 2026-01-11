package j$.time.chrono;

import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.ZoneId;
import j$.time.temporal.TemporalAccessor;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class E extends AbstractC5420a implements Serializable {
    public static final E c = new E();
    private static final long serialVersionUID = 2775954514031616474L;

    static {
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        HashMap hashMap3 = new HashMap();
        hashMap.put("en", new String[]{"BB", "BE"});
        hashMap.put("th", new String[]{"BB", "BE"});
        hashMap2.put("en", new String[]{"B.B.", "B.E."});
        hashMap2.put("th", new String[]{"พ.ศ.", "ปีก่อนคริสต์กาลที่"});
        hashMap3.put("en", new String[]{"Before Buddhist", "Budhhist Era"});
        hashMap3.put("th", new String[]{"พุทธศักราช", "ปีก่อนคริสต์กาลที่"});
    }

    private E() {
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    @Override // j$.time.chrono.j
    public final ChronoLocalDate D(TemporalAccessor temporalAccessor) {
        return temporalAccessor instanceof G ? (G) temporalAccessor : new G(LocalDate.U(temporalAccessor));
    }

    @Override // j$.time.chrono.j
    public final ChronoLocalDate L(int i, int i2, int i3) {
        return new G(LocalDate.of(i - 543, i2, i3));
    }

    @Override // j$.time.chrono.AbstractC5420a, j$.time.chrono.j
    public final ChronoLocalDate N(Map map, j$.time.format.E e) {
        return (G) super.N(map, e);
    }

    @Override // j$.time.chrono.j
    public final ChronoZonedDateTime O(Instant instant, ZoneId zoneId) {
        return i.T(this, instant, zoneId);
    }

    @Override // j$.time.chrono.j
    public final boolean R(long j) {
        return q.c.R(j - 543);
    }

    @Override // j$.time.chrono.j
    public final ChronoLocalDate i(long j) {
        return new G(LocalDate.d0(j));
    }

    @Override // j$.time.chrono.j
    public final String j() {
        return "ThaiBuddhist";
    }

    @Override // j$.time.chrono.AbstractC5420a
    public final ChronoLocalDate l() {
        return new G(LocalDate.U(LocalDate.c0(j$.com.android.tools.r8.a.e0())));
    }

    @Override // j$.time.chrono.j
    public final String n() {
        return "buddhist";
    }

    @Override // j$.time.chrono.j
    public final ChronoLocalDate p(int i, int i2) {
        return new G(LocalDate.e0(i - 543, i2));
    }

    @Override // j$.time.chrono.j
    public final j$.time.temporal.r t(j$.time.temporal.a aVar) {
        int i = D.a[aVar.ordinal()];
        if (i == 1) {
            j$.time.temporal.r rVar = j$.time.temporal.a.PROLEPTIC_MONTH.b;
            return j$.time.temporal.r.f(rVar.a + 6516, rVar.d + 6516);
        }
        if (i == 2) {
            j$.time.temporal.r rVar2 = j$.time.temporal.a.YEAR.b;
            return j$.time.temporal.r.g(1L, (-(rVar2.a + 543)) + 1, rVar2.d + 543);
        }
        if (i != 3) {
            return aVar.b;
        }
        j$.time.temporal.r rVar3 = j$.time.temporal.a.YEAR.b;
        return j$.time.temporal.r.f(rVar3.a + 543, rVar3.d + 543);
    }

    @Override // j$.time.chrono.j
    public final List v() {
        return j$.com.android.tools.r8.a.Q(H.values());
    }

    public Object writeReplace() {
        return new C((byte) 1, this);
    }

    @Override // j$.time.chrono.j
    public final k x(int i) {
        if (i == 0) {
            return H.BEFORE_BE;
        }
        if (i == 1) {
            return H.BE;
        }
        throw new RuntimeException("Invalid era: " + i);
    }

    @Override // j$.time.chrono.j
    public final int y(k kVar, int i) {
        if (kVar instanceof H) {
            return kVar == H.BE ? i : 1 - i;
        }
        throw new ClassCastException("Era must be BuddhistEra");
    }
}
