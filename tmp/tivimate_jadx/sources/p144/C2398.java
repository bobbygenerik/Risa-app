package p144;

import p137.AbstractC2305;
import p152.AbstractC2444;

/* renamed from: ˉᴵ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2398 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f9262;

    public C2398(String str) {
        this.f9262 = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C2398) && AbstractC2444.m5562(this.f9262, ((C2398) obj).f9262);
    }

    public final int hashCode() {
        return this.f9262.hashCode();
    }

    public final String toString() {
        return AbstractC2305.m5384(new StringBuilder("SessionDetails(sessionId="), this.f9262, ')');
    }
}
