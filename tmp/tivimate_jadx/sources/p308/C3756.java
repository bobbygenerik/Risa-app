package p308;

import java.util.ArrayList;

/* renamed from: ᐧٴ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3756 extends AbstractC3763 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ArrayList f14619;

    public C3756(ArrayList arrayList) {
        this.f14619 = arrayList;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC3763)) {
            return false;
        }
        return this.f14619.equals(((C3756) ((AbstractC3763) obj)).f14619);
    }

    public final int hashCode() {
        return this.f14619.hashCode() ^ 1000003;
    }

    public final String toString() {
        return "BatchedLogRequest{logRequests=" + this.f14619 + "}";
    }
}
