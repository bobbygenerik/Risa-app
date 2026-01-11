package j$.time;

import j$.util.Objects;
import java.io.Externalizable;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.StreamCorruptedException;
import p223.C3056;

/* loaded from: classes2.dex */
public final class s implements Externalizable {
    private static final long serialVersionUID = -7683839454370182990L;
    public byte a;
    public Object b;

    public s() {
    }

    public s(byte b, Object obj) {
        this.a = b;
        this.b = obj;
    }

    public static Object a(byte b, ObjectInput objectInput) {
        switch (b) {
            case 1:
                d dVar = d.c;
                long readLong = objectInput.readLong();
                long readInt = objectInput.readInt();
                return d.l(j$.com.android.tools.r8.a.P(readLong, j$.com.android.tools.r8.a.U(readInt, 1000000000L)), (int) j$.com.android.tools.r8.a.T(readInt, 1000000000L));
            case 2:
                Instant instant = Instant.c;
                return Instant.U(objectInput.readLong(), objectInput.readInt());
            case 3:
                LocalDate localDate = LocalDate.d;
                return LocalDate.of(objectInput.readInt(), objectInput.readByte(), objectInput.readByte());
            case 4:
                return j.d0(objectInput);
            case 5:
                LocalDateTime localDateTime = LocalDateTime.c;
                LocalDate localDate2 = LocalDate.d;
                return LocalDateTime.V(LocalDate.of(objectInput.readInt(), objectInput.readByte(), objectInput.readByte()), j.d0(objectInput));
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                LocalDateTime localDateTime2 = LocalDateTime.c;
                LocalDate localDate3 = LocalDate.d;
                LocalDateTime V = LocalDateTime.V(LocalDate.of(objectInput.readInt(), objectInput.readByte(), objectInput.readByte()), j.d0(objectInput));
                ZoneOffset d0 = ZoneOffset.d0(objectInput);
                ZoneId zoneId = (ZoneId) a(objectInput.readByte(), objectInput);
                Objects.requireNonNull(V, "localDateTime");
                Objects.requireNonNull(d0, "offset");
                Objects.requireNonNull(zoneId, "zone");
                if (!(zoneId instanceof ZoneOffset) || d0.equals(zoneId)) {
                    return new ZonedDateTime(V, zoneId, d0);
                }
                throw new IllegalArgumentException("ZoneId must match ZoneOffset");
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                int i = x.d;
                return ZoneId.U(objectInput.readUTF(), false);
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                return ZoneOffset.d0(objectInput);
            case 9:
                int i2 = q.c;
                return new q(j.d0(objectInput), ZoneOffset.d0(objectInput));
            case 10:
                int i3 = OffsetDateTime.c;
                LocalDate localDate4 = LocalDate.d;
                return new OffsetDateTime(LocalDateTime.V(LocalDate.of(objectInput.readInt(), objectInput.readByte(), objectInput.readByte()), j.d0(objectInput)), ZoneOffset.d0(objectInput));
            case 11:
                int i4 = u.b;
                return u.S(objectInput.readInt());
            case 12:
                int i5 = w.c;
                int readInt2 = objectInput.readInt();
                byte readByte = objectInput.readByte();
                j$.time.temporal.a.YEAR.F(readInt2);
                j$.time.temporal.a.MONTH_OF_YEAR.F(readByte);
                return new w(readInt2, readByte);
            case 13:
                int i6 = n.c;
                byte readByte2 = objectInput.readByte();
                byte readByte3 = objectInput.readByte();
                l V2 = l.V(readByte2);
                Objects.requireNonNull(V2, "month");
                j$.time.temporal.a.DAY_OF_MONTH.F(readByte3);
                if (readByte3 <= V2.U()) {
                    return new n(V2.getValue(), readByte3);
                }
                throw new RuntimeException("Illegal value for DayOfMonth field, value " + ((int) readByte3) + " is not valid for month " + V2.name());
            case 14:
                r rVar = r.d;
                return r.a(objectInput.readInt(), objectInput.readInt(), objectInput.readInt());
            default:
                throw new StreamCorruptedException("Unknown serialized type");
        }
    }

    private Object readResolve() {
        return this.b;
    }

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) {
        byte readByte = objectInput.readByte();
        this.a = readByte;
        this.b = a(readByte, objectInput);
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) {
        byte b = this.a;
        Object obj = this.b;
        objectOutput.writeByte(b);
        switch (b) {
            case 1:
                d dVar = (d) obj;
                objectOutput.writeLong(dVar.a);
                objectOutput.writeInt(dVar.b);
                return;
            case 2:
                Instant instant = (Instant) obj;
                objectOutput.writeLong(instant.a);
                objectOutput.writeInt(instant.b);
                return;
            case 3:
                LocalDate localDate = (LocalDate) obj;
                objectOutput.writeInt(localDate.a);
                objectOutput.writeByte(localDate.b);
                objectOutput.writeByte(localDate.c);
                return;
            case 4:
                ((j) obj).j0(objectOutput);
                return;
            case 5:
                LocalDateTime localDateTime = (LocalDateTime) obj;
                LocalDate localDate2 = localDateTime.a;
                objectOutput.writeInt(localDate2.a);
                objectOutput.writeByte(localDate2.b);
                objectOutput.writeByte(localDate2.c);
                localDateTime.b.j0(objectOutput);
                return;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                ZonedDateTime zonedDateTime = (ZonedDateTime) obj;
                LocalDateTime localDateTime2 = zonedDateTime.a;
                LocalDate localDate3 = localDateTime2.a;
                objectOutput.writeInt(localDate3.a);
                objectOutput.writeByte(localDate3.b);
                objectOutput.writeByte(localDate3.c);
                localDateTime2.b.j0(objectOutput);
                zonedDateTime.b.e0(objectOutput);
                zonedDateTime.c.X(objectOutput);
                return;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                objectOutput.writeUTF(((x) obj).b);
                return;
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                ((ZoneOffset) obj).e0(objectOutput);
                return;
            case 9:
                q qVar = (q) obj;
                qVar.a.j0(objectOutput);
                qVar.b.e0(objectOutput);
                return;
            case 10:
                OffsetDateTime offsetDateTime = (OffsetDateTime) obj;
                LocalDateTime localDateTime3 = offsetDateTime.a;
                LocalDate localDate4 = localDateTime3.a;
                objectOutput.writeInt(localDate4.a);
                objectOutput.writeByte(localDate4.b);
                objectOutput.writeByte(localDate4.c);
                localDateTime3.b.j0(objectOutput);
                offsetDateTime.b.e0(objectOutput);
                return;
            case 11:
                objectOutput.writeInt(((u) obj).a);
                return;
            case 12:
                w wVar = (w) obj;
                objectOutput.writeInt(wVar.a);
                objectOutput.writeByte(wVar.b);
                return;
            case 13:
                n nVar = (n) obj;
                objectOutput.writeByte(nVar.a);
                objectOutput.writeByte(nVar.b);
                return;
            case 14:
                r rVar = (r) obj;
                objectOutput.writeInt(rVar.a);
                objectOutput.writeInt(rVar.b);
                objectOutput.writeInt(rVar.c);
                return;
            default:
                throw new InvalidClassException("Unknown serialized type");
        }
    }
}
