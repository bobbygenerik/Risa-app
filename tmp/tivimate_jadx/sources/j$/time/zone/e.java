package j$.time.zone;

import j$.time.DayOfWeek;
import j$.time.ZoneOffset;
import j$.time.j;
import j$.time.l;
import j$.util.Objects;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class e implements Serializable {
    private static final long serialVersionUID = 6889046316657758795L;
    public final l a;
    public final byte b;
    public final DayOfWeek c;
    public final j d;
    public final boolean e;
    public final d f;
    public final ZoneOffset g;
    public final ZoneOffset h;
    public final ZoneOffset i;

    public e(l lVar, int i, DayOfWeek dayOfWeek, j jVar, boolean z, d dVar, ZoneOffset zoneOffset, ZoneOffset zoneOffset2, ZoneOffset zoneOffset3) {
        this.a = lVar;
        this.b = (byte) i;
        this.c = dayOfWeek;
        this.d = jVar;
        this.e = z;
        this.f = dVar;
        this.g = zoneOffset;
        this.h = zoneOffset2;
        this.i = zoneOffset3;
    }

    public static e a(DataInput dataInput) {
        d dVar;
        j jVar;
        int readInt = dataInput.readInt();
        l V = l.V(readInt >>> 28);
        int i = ((264241152 & readInt) >>> 22) - 32;
        int i2 = (3670016 & readInt) >>> 19;
        DayOfWeek of = i2 == 0 ? null : DayOfWeek.of(i2);
        int i3 = (507904 & readInt) >>> 14;
        d dVar2 = d.values()[(readInt & 12288) >>> 12];
        int i4 = (readInt & 4080) >>> 4;
        int i5 = (readInt & 12) >>> 2;
        int i6 = readInt & 3;
        if (i3 == 31) {
            long readInt2 = dataInput.readInt();
            j jVar2 = j.e;
            j$.time.temporal.a.SECOND_OF_DAY.F(readInt2);
            int i7 = (int) (readInt2 / 3600);
            long j = readInt2 - (i7 * 3600);
            dVar = dVar2;
            jVar = j.T(i7, (int) (j / 60), (int) (j - (r14 * 60)), 0);
        } else {
            dVar = dVar2;
            int i8 = i3 % 24;
            j jVar3 = j.e;
            j$.time.temporal.a.HOUR_OF_DAY.F(i8);
            jVar = j.h[i8];
        }
        ZoneOffset b0 = ZoneOffset.b0(i4 == 255 ? dataInput.readInt() : (i4 - 128) * 900);
        ZoneOffset b02 = ZoneOffset.b0(i5 == 3 ? dataInput.readInt() : (i5 * 1800) + b0.b);
        ZoneOffset b03 = ZoneOffset.b0(i6 == 3 ? dataInput.readInt() : (i6 * 1800) + b0.b);
        boolean z = i3 == 24;
        Objects.requireNonNull(V, "month");
        Objects.requireNonNull(jVar, "time");
        d dVar3 = dVar;
        Objects.requireNonNull(dVar3, "timeDefnition");
        Objects.requireNonNull(b0, "standardOffset");
        Objects.requireNonNull(b02, "offsetBefore");
        Objects.requireNonNull(b03, "offsetAfter");
        if (i < -28 || i > 31 || i == 0) {
            throw new IllegalArgumentException("Day of month indicator must be between -28 and 31 inclusive excluding zero");
        }
        if (z && !jVar.equals(j.g)) {
            throw new IllegalArgumentException("Time must be midnight when end of day flag is true");
        }
        if (jVar.d == 0) {
            return new e(V, i, of, jVar, z, dVar3, b0, b02, b03);
        }
        throw new IllegalArgumentException("Time's nano-of-second must be zero");
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new a((byte) 3, this);
    }

    public final void b(DataOutput dataOutput) {
        int f0 = this.e ? 86400 : this.d.f0();
        int i = this.g.b;
        int i2 = this.h.b - i;
        int i3 = this.i.b - i;
        byte b = f0 % 3600 == 0 ? this.e ? (byte) 24 : this.d.a : (byte) 31;
        int i4 = i % 900 == 0 ? (i / 900) + 128 : 255;
        int i5 = (i2 == 0 || i2 == 1800 || i2 == 3600) ? i2 / 1800 : 3;
        int i6 = (i3 == 0 || i3 == 1800 || i3 == 3600) ? i3 / 1800 : 3;
        DayOfWeek dayOfWeek = this.c;
        dataOutput.writeInt((this.a.getValue() << 28) + ((this.b + 32) << 22) + ((dayOfWeek == null ? 0 : dayOfWeek.getValue()) << 19) + (b << 14) + (this.f.ordinal() << 12) + (i4 << 4) + (i5 << 2) + i6);
        if (b == 31) {
            dataOutput.writeInt(f0);
        }
        if (i4 == 255) {
            dataOutput.writeInt(i);
        }
        if (i5 == 3) {
            dataOutput.writeInt(this.h.b);
        }
        if (i6 == 3) {
            dataOutput.writeInt(this.i.b);
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof e) {
            e eVar = (e) obj;
            if (this.a == eVar.a && this.b == eVar.b && this.c == eVar.c && this.f == eVar.f && this.d.equals(eVar.d) && this.e == eVar.e && this.g.equals(eVar.g) && this.h.equals(eVar.h) && this.i.equals(eVar.i)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int f0 = ((this.d.f0() + (this.e ? 1 : 0)) << 15) + (this.a.ordinal() << 11) + ((this.b + 32) << 5);
        DayOfWeek dayOfWeek = this.c;
        return ((this.g.b ^ (this.f.ordinal() + (f0 + ((dayOfWeek == null ? 7 : dayOfWeek.ordinal()) << 2)))) ^ this.h.b) ^ this.i.b;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TransitionRule[");
        sb.append(this.i.b - this.h.b > 0 ? "Gap " : "Overlap ");
        sb.append(this.h);
        sb.append(" to ");
        sb.append(this.i);
        sb.append(", ");
        DayOfWeek dayOfWeek = this.c;
        if (dayOfWeek != null) {
            byte b = this.b;
            if (b == -1) {
                sb.append(dayOfWeek.name());
                sb.append(" on or before last day of ");
                sb.append(this.a.name());
            } else if (b < 0) {
                sb.append(dayOfWeek.name());
                sb.append(" on or before last day minus ");
                sb.append((-this.b) - 1);
                sb.append(" of ");
                sb.append(this.a.name());
            } else {
                sb.append(dayOfWeek.name());
                sb.append(" on or after ");
                sb.append(this.a.name());
                sb.append(' ');
                sb.append((int) this.b);
            }
        } else {
            sb.append(this.a.name());
            sb.append(' ');
            sb.append((int) this.b);
        }
        sb.append(" at ");
        sb.append(this.e ? "24:00" : this.d.toString());
        sb.append(" ");
        sb.append(this.f);
        sb.append(", standard offset ");
        sb.append(this.g);
        sb.append(']');
        return sb.toString();
    }
}
