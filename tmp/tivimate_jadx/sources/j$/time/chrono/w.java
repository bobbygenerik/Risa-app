package j$.time.chrono;

import j$.time.LocalDate;
import j$.time.temporal.Temporal;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class w implements k, Serializable {
    public static final w d;
    public static final w[] e;
    private static final long serialVersionUID = 1466499369062886794L;
    public final transient int a;
    public final transient LocalDate b;
    public final transient String c;

    static {
        w wVar = new w(-1, LocalDate.of(1868, 1, 1), "Meiji");
        d = wVar;
        w wVar2 = new w(0, LocalDate.of(1912, 7, 30), "Taisho");
        w wVar3 = new w(1, LocalDate.of(1926, 12, 25), "Showa");
        w wVar4 = new w(2, LocalDate.of(1989, 1, 8), "Heisei");
        w wVar5 = new w(3, LocalDate.of(2019, 5, 1), "Reiwa");
        e = r7;
        w[] wVarArr = {wVar, wVar2, wVar3, wVar4, wVar5};
    }

    public w(int i, LocalDate localDate, String str) {
        this.a = i;
        this.b = localDate;
        this.c = str;
    }

    public static w i(LocalDate localDate) {
        if (localDate.isBefore(v.d)) {
            throw new RuntimeException("JapaneseDate before Meiji 6 are not supported");
        }
        for (int length = e.length - 1; length >= 0; length--) {
            w wVar = e[length];
            if (localDate.compareTo(wVar.b) >= 0) {
                return wVar;
            }
        }
        return null;
    }

    public static w n(int i) {
        int i2 = i + 1;
        if (i2 >= 0) {
            w[] wVarArr = e;
            if (i2 < wVarArr.length) {
                return wVarArr[i2];
            }
        }
        throw new RuntimeException("Invalid era: " + i);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new C((byte) 5, this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ long F(j$.time.temporal.o oVar) {
        return j$.com.android.tools.r8.a.m(this, oVar);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ boolean e(j$.time.temporal.o oVar) {
        return j$.com.android.tools.r8.a.p(this, oVar);
    }

    @Override // j$.time.chrono.k
    public final int getValue() {
        return this.a;
    }

    public final w j() {
        if (this == e[r0.length - 1]) {
            return null;
        }
        return n(this.a + 1);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ int k(j$.time.temporal.o oVar) {
        return j$.com.android.tools.r8.a.k(this, oVar);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.r m(j$.time.temporal.o oVar) {
        j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
        return oVar == aVar ? t.c.t(aVar) : j$.time.temporal.p.d(this, oVar);
    }

    @Override // j$.time.temporal.l
    public final Temporal q(Temporal temporal) {
        return temporal.c(getValue(), j$.time.temporal.a.ERA);
    }

    public final String toString() {
        return this.c;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final /* synthetic */ Object w(j$.time.f fVar) {
        return j$.com.android.tools.r8.a.t(this, fVar);
    }
}
