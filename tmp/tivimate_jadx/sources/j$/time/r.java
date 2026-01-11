package j$.time;

import j$.time.temporal.ChronoUnit;
import j$.time.temporal.Temporal;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public final class r implements j$.time.temporal.n, Serializable {
    public static final r d = new r(0, 0, 0);
    private static final long serialVersionUID = -3587258372562876L;
    public final int a;
    public final int b;
    public final int c;

    static {
        Pattern.compile("([-+]?)P(?:([-+]?[0-9]+)Y)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)W)?(?:([-+]?[0-9]+)D)?", 2);
        j$.com.android.tools.r8.a.Q(new Object[]{ChronoUnit.YEARS, ChronoUnit.MONTHS, ChronoUnit.DAYS});
    }

    public r(int i, int i2, int i3) {
        this.a = i;
        this.b = i2;
        this.c = i3;
    }

    public static r a(int i, int i2, int i3) {
        return ((i | i2) | i3) == 0 ? d : new r(i, i2, i3);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new s((byte) 14, this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof r) {
            r rVar = (r) obj;
            if (this.a == rVar.a && this.b == rVar.b && this.c == rVar.c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Integer.rotateLeft(this.c, 16) + Integer.rotateLeft(this.b, 8) + this.a;
    }

    @Override // j$.time.temporal.n
    public final Temporal k(Temporal temporal) {
        Objects.requireNonNull(temporal, "temporal");
        j$.time.chrono.j jVar = (j$.time.chrono.j) temporal.w(j$.time.temporal.p.b);
        if (jVar != null && !j$.time.chrono.q.c.equals(jVar)) {
            throw new RuntimeException("Chronology mismatch, expected: ISO, actual: " + jVar.j());
        }
        int i = this.b;
        if (i == 0) {
            int i2 = this.a;
            if (i2 != 0) {
                temporal = temporal.d(i2, ChronoUnit.YEARS);
            }
        } else {
            long j = (this.a * 12) + i;
            if (j != 0) {
                temporal = temporal.d(j, ChronoUnit.MONTHS);
            }
        }
        int i3 = this.c;
        return i3 != 0 ? temporal.d(i3, ChronoUnit.DAYS) : temporal;
    }

    public final String toString() {
        if (this == d) {
            return "P0D";
        }
        StringBuilder sb = new StringBuilder("P");
        int i = this.a;
        if (i != 0) {
            sb.append(i);
            sb.append('Y');
        }
        int i2 = this.b;
        if (i2 != 0) {
            sb.append(i2);
            sb.append('M');
        }
        int i3 = this.c;
        if (i3 != 0) {
            sb.append(i3);
            sb.append('D');
        }
        return sb.toString();
    }
}
