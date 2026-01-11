package p113;

import android.net.NetworkRequest;
import p152.AbstractC2444;
import p322.C3965;

/* renamed from: ˆﹶ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1974 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final String f7829 = C3965.m8128("NetworkRequestCompat");

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Object f7830;

    public C1974(NetworkRequest networkRequest) {
        this.f7830 = networkRequest;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C1974) && AbstractC2444.m5562(this.f7830, ((C1974) obj).f7830);
    }

    public final int hashCode() {
        Object obj = this.f7830;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public final String toString() {
        return "NetworkRequestCompat(wrapped=" + this.f7830 + ')';
    }
}
