package j$.time.chrono;

import j$.time.temporal.ChronoUnit;
import j$.time.temporal.Temporal;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* renamed from: j$.time.chrono.f, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C5425f implements j$.time.temporal.n, Serializable {
    public static final /* synthetic */ int e = 0;
    private static final long serialVersionUID = 57387258289L;
    public final j a;
    public final int b;
    public final int c;
    public final int d;

    static {
        j$.com.android.tools.r8.a.Q(new Object[]{ChronoUnit.YEARS, ChronoUnit.MONTHS, ChronoUnit.DAYS});
    }

    public C5425f(j jVar, int i, int i2, int i3) {
        Objects.requireNonNull(jVar, "chrono");
        this.a = jVar;
        this.b = i;
        this.c = i2;
        this.d = i3;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C5425f) {
            C5425f c5425f = (C5425f) obj;
            if (this.b == c5425f.b && this.c == c5425f.c && this.d == c5425f.d && this.a.equals(c5425f.a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (Integer.rotateLeft(this.d, 16) + (Integer.rotateLeft(this.c, 8) + this.b)) ^ this.a.hashCode();
    }

    @Override // j$.time.temporal.n
    public final Temporal k(Temporal temporal) {
        Objects.requireNonNull(temporal, "temporal");
        j jVar = (j) temporal.w(j$.time.temporal.p.b);
        if (jVar != null && !this.a.equals(jVar)) {
            throw new RuntimeException("Chronology mismatch, expected: " + this.a.j() + ", actual: " + jVar.j());
        }
        if (this.c == 0) {
            int i = this.b;
            if (i != 0) {
                temporal = temporal.d(i, ChronoUnit.YEARS);
            }
        } else {
            j$.time.temporal.r t = this.a.t(j$.time.temporal.a.MONTH_OF_YEAR);
            long j = (t.a == t.b && t.c == t.d && t.d()) ? (t.d - t.a) + 1 : -1L;
            if (j > 0) {
                temporal = temporal.d((this.b * j) + this.c, ChronoUnit.MONTHS);
            } else {
                int i2 = this.b;
                if (i2 != 0) {
                    temporal = temporal.d(i2, ChronoUnit.YEARS);
                }
                temporal = temporal.d(this.c, ChronoUnit.MONTHS);
            }
        }
        int i3 = this.d;
        return i3 != 0 ? temporal.d(i3, ChronoUnit.DAYS) : temporal;
    }

    public final String toString() {
        if (this.b == 0 && this.c == 0 && this.d == 0) {
            return this.a.toString() + " P0D";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.a.toString());
        sb.append(" P");
        int i = this.b;
        if (i != 0) {
            sb.append(i);
            sb.append('Y');
        }
        int i2 = this.c;
        if (i2 != 0) {
            sb.append(i2);
            sb.append('M');
        }
        int i3 = this.d;
        if (i3 != 0) {
            sb.append(i3);
            sb.append('D');
        }
        return sb.toString();
    }

    public Object writeReplace() {
        return new C((byte) 9, this);
    }
}
