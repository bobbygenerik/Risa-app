package p013;

import java.io.Serializable;
import p152.AbstractC2444;

/* renamed from: ʻᵢ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0922 implements Serializable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Throwable f3846;

    public C0922(Throwable th) {
        this.f3846 = th;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C0922) {
            return AbstractC2444.m5562(this.f3846, ((C0922) obj).f3846);
        }
        return false;
    }

    public final int hashCode() {
        return this.f3846.hashCode();
    }

    public final String toString() {
        return "Failure(" + this.f3846 + ')';
    }
}
