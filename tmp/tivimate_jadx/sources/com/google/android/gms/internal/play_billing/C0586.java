package com.google.android.gms.internal.play_billing;

/* renamed from: com.google.android.gms.internal.play_billing.ˑˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0586 extends AbstractC0576 {
    @Override // com.google.android.gms.internal.play_billing.AbstractC0576
    /* renamed from: ʽ */
    public final void mo2163(Object obj, long j, boolean z) {
        if (AbstractC0641.f2484) {
            AbstractC0641.m2255(obj, j, z ? (byte) 1 : (byte) 0);
        } else {
            AbstractC0641.m2257(obj, j, z ? (byte) 1 : (byte) 0);
        }
    }

    @Override // com.google.android.gms.internal.play_billing.AbstractC0576
    /* renamed from: ˈ */
    public final void mo2164(Object obj, long j, byte b) {
        if (AbstractC0641.f2484) {
            AbstractC0641.m2255(obj, j, b);
        } else {
            AbstractC0641.m2257(obj, j, b);
        }
    }

    @Override // com.google.android.gms.internal.play_billing.AbstractC0576
    /* renamed from: ˑﹳ */
    public final void mo2165(Object obj, long j, double d) {
        this.f2367.putLong(obj, j, Double.doubleToLongBits(d));
    }

    @Override // com.google.android.gms.internal.play_billing.AbstractC0576
    /* renamed from: ᵎﹶ */
    public final boolean mo2166(long j, Object obj) {
        return AbstractC0641.f2484 ? AbstractC0641.m2258(j, obj) : AbstractC0641.m2263(j, obj);
    }

    @Override // com.google.android.gms.internal.play_billing.AbstractC0576
    /* renamed from: ⁱˊ */
    public final float mo2167(long j, Object obj) {
        return Float.intBitsToFloat(this.f2367.getInt(obj, j));
    }

    @Override // com.google.android.gms.internal.play_billing.AbstractC0576
    /* renamed from: ﹳٴ */
    public final double mo2168(long j, Object obj) {
        return Double.longBitsToDouble(this.f2367.getLong(obj, j));
    }

    @Override // com.google.android.gms.internal.play_billing.AbstractC0576
    /* renamed from: ﾞᴵ */
    public final void mo2169(Object obj, long j, float f) {
        this.f2367.putInt(obj, j, Float.floatToIntBits(f));
    }
}
