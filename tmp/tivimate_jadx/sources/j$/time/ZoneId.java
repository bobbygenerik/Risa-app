package j$.time;

import j$.time.temporal.TemporalAccessor;
import j$.util.Objects;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.TimeZone;

/* loaded from: classes2.dex */
public abstract class ZoneId implements Serializable {
    public static final Map a;
    private static final long serialVersionUID = 8352817235686L;

    static {
        Map.Entry[] entryArr = {j$.com.android.tools.r8.a.R("ACT", "Australia/Darwin"), j$.com.android.tools.r8.a.R("AET", "Australia/Sydney"), j$.com.android.tools.r8.a.R("AGT", "America/Argentina/Buenos_Aires"), j$.com.android.tools.r8.a.R("ART", "Africa/Cairo"), j$.com.android.tools.r8.a.R("AST", "America/Anchorage"), j$.com.android.tools.r8.a.R("BET", "America/Sao_Paulo"), j$.com.android.tools.r8.a.R("BST", "Asia/Dhaka"), j$.com.android.tools.r8.a.R("CAT", "Africa/Harare"), j$.com.android.tools.r8.a.R("CNT", "America/St_Johns"), j$.com.android.tools.r8.a.R("CST", "America/Chicago"), j$.com.android.tools.r8.a.R("CTT", "Asia/Shanghai"), j$.com.android.tools.r8.a.R("EAT", "Africa/Addis_Ababa"), j$.com.android.tools.r8.a.R("ECT", "Europe/Paris"), j$.com.android.tools.r8.a.R("IET", "America/Indiana/Indianapolis"), j$.com.android.tools.r8.a.R("IST", "Asia/Kolkata"), j$.com.android.tools.r8.a.R("JST", "Asia/Tokyo"), j$.com.android.tools.r8.a.R("MIT", "Pacific/Apia"), j$.com.android.tools.r8.a.R("NET", "Asia/Yerevan"), j$.com.android.tools.r8.a.R("NST", "Pacific/Auckland"), j$.com.android.tools.r8.a.R("PLT", "Asia/Karachi"), j$.com.android.tools.r8.a.R("PNT", "America/Phoenix"), j$.com.android.tools.r8.a.R("PRT", "America/Puerto_Rico"), j$.com.android.tools.r8.a.R("PST", "America/Los_Angeles"), j$.com.android.tools.r8.a.R("SST", "Pacific/Guadalcanal"), j$.com.android.tools.r8.a.R("VST", "Asia/Ho_Chi_Minh"), j$.com.android.tools.r8.a.R("EST", "-05:00"), j$.com.android.tools.r8.a.R("MST", "-07:00"), j$.com.android.tools.r8.a.R("HST", "-10:00")};
        HashMap hashMap = new HashMap(28);
        for (int i = 0; i < 28; i++) {
            Map.Entry entry = entryArr[i];
            Object requireNonNull = Objects.requireNonNull(entry.getKey());
            if (hashMap.put(requireNonNull, Objects.requireNonNull(entry.getValue())) != null) {
                throw new IllegalArgumentException("duplicate key: " + requireNonNull);
            }
        }
        a = Collections.unmodifiableMap(hashMap);
    }

    public ZoneId() {
        if (getClass() != ZoneOffset.class && getClass() != x.class) {
            throw new AssertionError("Invalid subclass");
        }
    }

    public static ZoneId S(TemporalAccessor temporalAccessor) {
        ZoneId zoneId = (ZoneId) temporalAccessor.w(j$.time.temporal.p.e);
        if (zoneId != null) {
            return zoneId;
        }
        throw new RuntimeException("Unable to obtain ZoneId from TemporalAccessor: " + temporalAccessor + " of type " + temporalAccessor.getClass().getName());
    }

    public static ZoneId U(String str, boolean z) {
        Objects.requireNonNull(str, "zoneId");
        return (str.length() <= 1 || str.startsWith("+") || str.startsWith("-")) ? ZoneOffset.Z(str) : (str.startsWith("UTC") || str.startsWith("GMT")) ? W(str, 3, z) : str.startsWith("UT") ? W(str, 2, z) : x.Y(str, z);
    }

    public static ZoneId V(String str, ZoneOffset zoneOffset) {
        Objects.requireNonNull(str, "prefix");
        Objects.requireNonNull(zoneOffset, "offset");
        if (str.isEmpty()) {
            return zoneOffset;
        }
        if (!str.equals("GMT") && !str.equals("UTC") && !str.equals("UT")) {
            throw new IllegalArgumentException("prefix should be GMT, UTC or UT, is: ".concat(str));
        }
        if (zoneOffset.b != 0) {
            str = str.concat(zoneOffset.c);
        }
        return new x(str, zoneOffset.T());
    }

    public static ZoneId W(String str, int i, boolean z) {
        String substring = str.substring(0, i);
        if (str.length() == i) {
            return V(substring, ZoneOffset.UTC);
        }
        if (str.charAt(i) != '+' && str.charAt(i) != '-') {
            return x.Y(str, z);
        }
        try {
            ZoneOffset Z = ZoneOffset.Z(str.substring(i));
            return Z == ZoneOffset.UTC ? V(substring, Z) : V(substring, Z);
        } catch (b e) {
            throw new RuntimeException("Invalid ID for offset-based ZoneId: ".concat(str), e);
        }
    }

    public static ZoneId of(String str) {
        return U(str, true);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public static ZoneId systemDefault() {
        String id = TimeZone.getDefault().getID();
        Map map = a;
        Objects.requireNonNull(id, "zoneId");
        Objects.requireNonNull(map, "aliasMap");
        Object obj = (String) map.get(id);
        if (obj == null) {
            obj = Objects.requireNonNull(id, "defaultObj");
        }
        return of((String) obj);
    }

    private Object writeReplace() {
        return new s((byte) 7, this);
    }

    public abstract j$.time.zone.f T();

    public abstract void X(DataOutput dataOutput);

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ZoneId) {
            return j().equals(((ZoneId) obj).j());
        }
        return false;
    }

    public int hashCode() {
        return j().hashCode();
    }

    public abstract String j();

    public String toString() {
        return j();
    }
}
