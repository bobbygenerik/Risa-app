package p122;

import p035.AbstractC1220;

/* renamed from: ˈˋ.ﹶᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2122 extends AbstractC2087 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f8299;

    public C2122(String str) {
        this.f8299 = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC2087)) {
            return false;
        }
        return this.f8299.equals(((C2122) ((AbstractC2087) obj)).f8299);
    }

    public final int hashCode() {
        return this.f8299.hashCode() ^ 1000003;
    }

    public final String toString() {
        return AbstractC1220.m3775(new StringBuilder("User{identifier="), this.f8299, "}");
    }
}
