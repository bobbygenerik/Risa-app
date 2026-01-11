package j$.time;

import j$.util.Objects;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;

/* loaded from: classes2.dex */
public final class x extends ZoneId {
    public static final /* synthetic */ int d = 0;
    private static final long serialVersionUID = 8386373296231747096L;
    public final String b;
    public final transient j$.time.zone.f c;

    public x(String str, j$.time.zone.f fVar) {
        this.b = str;
        this.c = fVar;
    }

    public static x Y(String str, boolean z) {
        j$.time.zone.f fVar;
        Objects.requireNonNull(str, "zoneId");
        int length = str.length();
        if (length < 2) {
            throw new RuntimeException("Invalid ID for region-based ZoneId, invalid format: ".concat(str));
        }
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if ((charAt < 'a' || charAt > 'z') && ((charAt < 'A' || charAt > 'Z') && ((charAt != '/' || i == 0) && ((charAt < '0' || charAt > '9' || i == 0) && ((charAt != '~' || i == 0) && ((charAt != '.' || i == 0) && ((charAt != '_' || i == 0) && ((charAt != '+' || i == 0) && (charAt != '-' || i == 0))))))))) {
                throw new RuntimeException("Invalid ID for region-based ZoneId, invalid format: ".concat(str));
            }
        }
        try {
            fVar = j$.time.zone.i.a(str);
        } catch (j$.time.zone.g e) {
            if (z) {
                throw e;
            }
            fVar = null;
        }
        return new x(str, fVar);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new s((byte) 7, this);
    }

    @Override // j$.time.ZoneId
    public final j$.time.zone.f T() {
        j$.time.zone.f fVar = this.c;
        return fVar != null ? fVar : j$.time.zone.i.a(this.b);
    }

    @Override // j$.time.ZoneId
    public final void X(DataOutput dataOutput) {
        dataOutput.writeByte(7);
        dataOutput.writeUTF(this.b);
    }

    @Override // j$.time.ZoneId
    public final String j() {
        return this.b;
    }
}
