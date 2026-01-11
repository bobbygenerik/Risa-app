package p122;

import java.util.List;

/* renamed from: ˈˋ.ˊᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2068 extends AbstractC2034 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final List f8105;

    public C2068(List list) {
        this.f8105 = list;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC2034)) {
            return false;
        }
        return this.f8105.equals(((C2068) ((AbstractC2034) obj)).f8105);
    }

    public final int hashCode() {
        return this.f8105.hashCode() ^ 1000003;
    }

    public final String toString() {
        return "RolloutsState{rolloutAssignments=" + this.f8105 + "}";
    }
}
