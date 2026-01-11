package j$.time;

import j$.time.format.E;
import j$.time.temporal.Temporal;
import j$.time.temporal.TemporalAccessor;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class n implements TemporalAccessor, j$.time.temporal.l, Comparable, Serializable {
    public static final /* synthetic */ int c = 0;
    private static final long serialVersionUID = -939150713474957432L;
    public final int a;
    public final int b;

    static {
        j$.time.format.u uVar = new j$.time.format.u();
        uVar.e("--");
        uVar.l(j$.time.temporal.a.MONTH_OF_YEAR, 2);
        uVar.d('-');
        uVar.l(j$.time.temporal.a.DAY_OF_MONTH, 2);
        uVar.q(Locale.getDefault(), E.SMART, null);
    }

    public n(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new s((byte) 13, this);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final long F(j$.time.temporal.o oVar) {
        int i;
        if (!(oVar instanceof j$.time.temporal.a)) {
            return oVar.w(this);
        }
        int i2 = m.a[((j$.time.temporal.a) oVar).ordinal()];
        if (i2 == 1) {
            i = this.b;
        } else {
            if (i2 != 2) {
                throw new RuntimeException(c.a("Unsupported field: ", oVar));
            }
            i = this.a;
        }
        return i;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        n nVar = (n) obj;
        int i = this.a - nVar.a;
        return i == 0 ? this.b - nVar.b : i;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final boolean e(j$.time.temporal.o oVar) {
        return oVar instanceof j$.time.temporal.a ? oVar == j$.time.temporal.a.MONTH_OF_YEAR || oVar == j$.time.temporal.a.DAY_OF_MONTH : oVar != null && oVar.k(this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof n) {
            n nVar = (n) obj;
            if (this.a == nVar.a && this.b == nVar.b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.a << 6) + this.b;
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final int k(j$.time.temporal.o oVar) {
        return m(oVar).a(F(oVar), oVar);
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final j$.time.temporal.r m(j$.time.temporal.o oVar) {
        if (oVar == j$.time.temporal.a.MONTH_OF_YEAR) {
            return oVar.q();
        }
        if (oVar != j$.time.temporal.a.DAY_OF_MONTH) {
            return j$.time.temporal.p.d(this, oVar);
        }
        l V = l.V(this.a);
        V.getClass();
        int i = k.a[V.ordinal()];
        return j$.time.temporal.r.g(1L, i != 1 ? (i == 2 || i == 3 || i == 4 || i == 5) ? 30 : 31 : 28, l.V(this.a).U());
    }

    @Override // j$.time.temporal.l
    public final Temporal q(Temporal temporal) {
        if (!j$.com.android.tools.r8.a.M(temporal).equals(j$.time.chrono.q.c)) {
            throw new RuntimeException("Adjustment only supported on ISO date-time");
        }
        Temporal c2 = temporal.c(this.a, j$.time.temporal.a.MONTH_OF_YEAR);
        j$.time.temporal.a aVar = j$.time.temporal.a.DAY_OF_MONTH;
        return c2.c(Math.min(c2.m(aVar).d, this.b), aVar);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(10);
        sb.append("--");
        sb.append(this.a < 10 ? "0" : "");
        sb.append(this.a);
        sb.append(this.b < 10 ? "-0" : "-");
        sb.append(this.b);
        return sb.toString();
    }

    @Override // j$.time.temporal.TemporalAccessor
    public final Object w(f fVar) {
        return fVar == j$.time.temporal.p.b ? j$.time.chrono.q.c : j$.time.temporal.p.c(this, fVar);
    }
}
