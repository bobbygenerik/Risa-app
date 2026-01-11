package p085;

import java.util.Collections;
import java.util.Map;

/* renamed from: ʿˑ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1734 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Map f7085;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f7086;

    public C1734(String str, Map map) {
        this.f7086 = str;
        this.f7085 = map;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C1734 m4681(String str) {
        return new C1734(str, Collections.EMPTY_MAP);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1734)) {
            return false;
        }
        C1734 c1734 = (C1734) obj;
        return this.f7086.equals(c1734.f7086) && this.f7085.equals(c1734.f7085);
    }

    public final int hashCode() {
        return this.f7085.hashCode() + (this.f7086.hashCode() * 31);
    }

    public final String toString() {
        return "FieldDescriptor{name=" + this.f7086 + ", properties=" + this.f7085.values() + "}";
    }
}
