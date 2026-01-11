package p122;

import p035.AbstractC1220;

/* renamed from: ˈˋ.ᐧᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2092 extends AbstractC2053 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f8183;

    public C2092(String str) {
        this.f8183 = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC2053)) {
            return false;
        }
        return this.f8183.equals(((C2092) ((AbstractC2053) obj)).f8183);
    }

    public final int hashCode() {
        return this.f8183.hashCode() ^ 1000003;
    }

    public final String toString() {
        return AbstractC1220.m3775(new StringBuilder("Log{content="), this.f8183, "}");
    }
}
