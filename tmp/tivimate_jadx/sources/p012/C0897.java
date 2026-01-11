package p012;

import p055.C1459;
import p055.C1495;
import p055.InterfaceC1465;
import p305.AbstractC3731;

/* renamed from: ʻᴵ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0897 implements InterfaceC1465 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final float f3778;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final float f3779;

    public C0897(float f, float f2) {
        AbstractC3731.m7843("Invalid latitude or longitude", f >= -90.0f && f <= 90.0f && f2 >= -180.0f && f2 <= 180.0f);
        this.f3779 = f;
        this.f3778 = f2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C0897.class == obj.getClass()) {
            C0897 c0897 = (C0897) obj;
            if (this.f3779 == c0897.f3779 && this.f3778 == c0897.f3778) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Float.valueOf(this.f3778).hashCode() + ((Float.valueOf(this.f3779).hashCode() + 527) * 31);
    }

    public final String toString() {
        return "xyz: latitude=" + this.f3779 + ", longitude=" + this.f3778;
    }

    @Override // p055.InterfaceC1465
    /* renamed from: ʽ */
    public final /* synthetic */ byte[] mo2790() {
        return null;
    }

    @Override // p055.InterfaceC1465
    /* renamed from: ⁱˊ */
    public final /* synthetic */ C1495 mo2791() {
        return null;
    }

    @Override // p055.InterfaceC1465
    /* renamed from: ﹳٴ */
    public final /* synthetic */ void mo2792(C1459 c1459) {
    }
}
