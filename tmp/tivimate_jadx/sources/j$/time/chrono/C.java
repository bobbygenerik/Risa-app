package j$.time.chrono;

import j$.time.LocalDate;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.Externalizable;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.StreamCorruptedException;
import p223.C3056;

/* loaded from: classes2.dex */
public final class C implements Externalizable {
    private static final long serialVersionUID = -6103370247208168577L;
    public byte a;
    public Object b;

    public C() {
    }

    public C(byte b, Object obj) {
        this.a = b;
        this.b = obj;
    }

    private Object readResolve() {
        return this.b;
    }

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) {
        Object Y;
        byte readByte = objectInput.readByte();
        this.a = readByte;
        switch (readByte) {
            case 1:
                ConcurrentHashMap concurrentHashMap = AbstractC5420a.a;
                Y = j$.com.android.tools.r8.a.Y(objectInput.readUTF());
                break;
            case 2:
                Y = ((ChronoLocalDate) objectInput.readObject()).H((j$.time.j) objectInput.readObject());
                break;
            case 3:
                Y = ((ChronoLocalDateTime) objectInput.readObject()).C((ZoneOffset) objectInput.readObject()).z((ZoneId) objectInput.readObject());
                break;
            case 4:
                LocalDate localDate = v.d;
                int readInt = objectInput.readInt();
                byte readByte2 = objectInput.readByte();
                byte readByte3 = objectInput.readByte();
                t.c.getClass();
                Y = new v(LocalDate.of(readInt, readByte2, readByte3));
                break;
            case 5:
                w wVar = w.d;
                Y = w.n(objectInput.readByte());
                break;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                m mVar = (m) objectInput.readObject();
                int readInt2 = objectInput.readInt();
                byte readByte4 = objectInput.readByte();
                byte readByte5 = objectInput.readByte();
                mVar.getClass();
                Y = new o(mVar, readInt2, readByte4, readByte5);
                break;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                int readInt3 = objectInput.readInt();
                byte readByte6 = objectInput.readByte();
                byte readByte7 = objectInput.readByte();
                y.c.getClass();
                Y = new A(LocalDate.of(readInt3 + 1911, readByte6, readByte7));
                break;
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                int readInt4 = objectInput.readInt();
                byte readByte8 = objectInput.readByte();
                byte readByte9 = objectInput.readByte();
                E.c.getClass();
                Y = new G(LocalDate.of(readInt4 - 543, readByte8, readByte9));
                break;
            case 9:
                int i = C5425f.e;
                Y = new C5425f(j$.com.android.tools.r8.a.Y(objectInput.readUTF()), objectInput.readInt(), objectInput.readInt(), objectInput.readInt());
                break;
            default:
                throw new StreamCorruptedException("Unknown serialized type");
        }
        this.b = Y;
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) {
        byte b = this.a;
        Object obj = this.b;
        objectOutput.writeByte(b);
        switch (b) {
            case 1:
                objectOutput.writeUTF(((AbstractC5420a) obj).j());
                return;
            case 2:
                C5424e c5424e = (C5424e) obj;
                objectOutput.writeObject(c5424e.a);
                objectOutput.writeObject(c5424e.b);
                return;
            case 3:
                i iVar = (i) obj;
                objectOutput.writeObject(iVar.a);
                objectOutput.writeObject(iVar.b);
                objectOutput.writeObject(iVar.c);
                return;
            case 4:
                v vVar = (v) obj;
                vVar.getClass();
                objectOutput.writeInt(j$.time.temporal.p.a(vVar, j$.time.temporal.a.YEAR));
                objectOutput.writeByte(j$.time.temporal.p.a(vVar, j$.time.temporal.a.MONTH_OF_YEAR));
                objectOutput.writeByte(j$.time.temporal.p.a(vVar, j$.time.temporal.a.DAY_OF_MONTH));
                return;
            case 5:
                objectOutput.writeByte(((w) obj).a);
                return;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                o oVar = (o) obj;
                objectOutput.writeObject(oVar.a);
                objectOutput.writeInt(j$.time.temporal.p.a(oVar, j$.time.temporal.a.YEAR));
                objectOutput.writeByte(j$.time.temporal.p.a(oVar, j$.time.temporal.a.MONTH_OF_YEAR));
                objectOutput.writeByte(j$.time.temporal.p.a(oVar, j$.time.temporal.a.DAY_OF_MONTH));
                return;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                A a = (A) obj;
                a.getClass();
                objectOutput.writeInt(j$.time.temporal.p.a(a, j$.time.temporal.a.YEAR));
                objectOutput.writeByte(j$.time.temporal.p.a(a, j$.time.temporal.a.MONTH_OF_YEAR));
                objectOutput.writeByte(j$.time.temporal.p.a(a, j$.time.temporal.a.DAY_OF_MONTH));
                return;
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                G g = (G) obj;
                g.getClass();
                objectOutput.writeInt(j$.time.temporal.p.a(g, j$.time.temporal.a.YEAR));
                objectOutput.writeByte(j$.time.temporal.p.a(g, j$.time.temporal.a.MONTH_OF_YEAR));
                objectOutput.writeByte(j$.time.temporal.p.a(g, j$.time.temporal.a.DAY_OF_MONTH));
                return;
            case 9:
                C5425f c5425f = (C5425f) obj;
                objectOutput.writeUTF(c5425f.a.j());
                objectOutput.writeInt(c5425f.b);
                objectOutput.writeInt(c5425f.c);
                objectOutput.writeInt(c5425f.d);
                return;
            default:
                throw new InvalidClassException("Unknown serialized type");
        }
    }
}
