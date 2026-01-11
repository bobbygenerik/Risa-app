package p404;

import j$.util.DesugarCollections;
import java.util.HashMap;
import java.util.Map;

/* renamed from: ﹳʽ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4797 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C4797 f18045 = new C4797(DesugarCollections.unmodifiableMap(new HashMap()));

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Map f18046;

    public C4797(Map map) {
        this.f18046 = map;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C4797) {
            return this.f18046.equals(((C4797) obj).f18046);
        }
        return false;
    }

    public final int hashCode() {
        return this.f18046.hashCode();
    }

    public final String toString() {
        return this.f18046.toString();
    }
}
