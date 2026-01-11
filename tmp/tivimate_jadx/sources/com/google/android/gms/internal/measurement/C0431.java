package com.google.android.gms.internal.measurement;

/* renamed from: com.google.android.gms.internal.measurement.ᐧᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0431 extends AbstractC0372 {
    @Override // com.google.android.gms.internal.measurement.AbstractC0372
    /* renamed from: ʽ */
    public final void mo1702(Object obj, long j, boolean z) {
        if (AbstractC0504.f2271) {
            AbstractC0504.m1988(obj, j, z ? (byte) 1 : (byte) 0);
        } else {
            AbstractC0504.m1990(obj, j, z ? (byte) 1 : (byte) 0);
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC0372
    /* renamed from: ˈ */
    public final float mo1703(long j, Object obj) {
        return Float.intBitsToFloat(this.f2033.getInt(obj, j));
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC0372
    /* renamed from: ˑﹳ */
    public final void mo1704(Object obj, long j, float f) {
        this.f2033.putInt(obj, j, Float.floatToIntBits(f));
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC0372
    /* renamed from: ᵎﹶ */
    public final void mo1705(Object obj, long j, double d) {
        this.f2033.putLong(obj, j, Double.doubleToLongBits(d));
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC0372
    /* renamed from: ⁱˊ */
    public final boolean mo1706(long j, Object obj) {
        return AbstractC0504.f2271 ? AbstractC0504.m1996(j, obj) : AbstractC0504.m1992(j, obj);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC0372
    /* renamed from: ﹳٴ */
    public final void mo1707(Object obj, long j, byte b) {
        if (AbstractC0504.f2271) {
            AbstractC0504.m1988(obj, j, b);
        } else {
            AbstractC0504.m1990(obj, j, b);
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC0372
    /* renamed from: ﾞᴵ */
    public final double mo1708(long j, Object obj) {
        return Double.longBitsToDouble(this.f2033.getLong(obj, j));
    }
}
