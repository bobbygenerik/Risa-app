package p135;

import p055.C1459;
import p055.C1495;
import p055.InterfaceC1465;

/* renamed from: ˉʽ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2215 implements InterfaceC1465 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f8680;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final float f8681;

    public C2215(int i, float f) {
        this.f8681 = f;
        this.f8680 = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C2215.class == obj.getClass()) {
            C2215 c2215 = (C2215) obj;
            if (this.f8681 == c2215.f8681 && this.f8680 == c2215.f8680) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((Float.valueOf(this.f8681).hashCode() + 527) * 31) + this.f8680;
    }

    public final String toString() {
        return "smta: captureFrameRate=" + this.f8681 + ", svcTemporalLayerCount=" + this.f8680;
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
