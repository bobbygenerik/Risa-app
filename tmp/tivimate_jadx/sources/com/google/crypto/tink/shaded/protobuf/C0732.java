package com.google.crypto.tink.shaded.protobuf;

import sun.misc.Unsafe;

/* renamed from: com.google.crypto.tink.shaded.protobuf.ᐧﾞ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0732 extends AbstractC0721 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ int f3023;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0732(Unsafe unsafe, int i) {
        super(unsafe);
        this.f3023 = i;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.AbstractC0721
    /* renamed from: ʽ */
    public final boolean mo2535(long j, Object obj) {
        switch (this.f3023) {
            case 0:
                if (AbstractC0733.f3027) {
                    if (AbstractC0733.m2619(j, obj) == 0) {
                        return false;
                    }
                } else if (AbstractC0733.m2608(j, obj) == 0) {
                    return false;
                }
                return true;
            default:
                if (AbstractC0733.f3027) {
                    if (AbstractC0733.m2619(j, obj) == 0) {
                        return false;
                    }
                } else if (AbstractC0733.m2608(j, obj) == 0) {
                    return false;
                }
                return true;
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.AbstractC0721
    /* renamed from: ˈ */
    public final byte mo2537(long j, Object obj) {
        switch (this.f3023) {
            case 0:
                return AbstractC0733.f3027 ? AbstractC0733.m2619(j, obj) : AbstractC0733.m2608(j, obj);
            default:
                return AbstractC0733.f3027 ? AbstractC0733.m2619(j, obj) : AbstractC0733.m2608(j, obj);
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.AbstractC0721
    /* renamed from: ˉʿ */
    public final void mo2538(Object obj, long j, double d) {
        switch (this.f3023) {
            case 0:
                m2534(obj, j, Double.doubleToLongBits(d));
                return;
            default:
                m2534(obj, j, Double.doubleToLongBits(d));
                return;
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.AbstractC0721
    /* renamed from: ˑﹳ */
    public final double mo2540(long j, Object obj) {
        switch (this.f3023) {
            case 0:
                return Double.longBitsToDouble(m2545(j, obj));
            default:
                return Double.longBitsToDouble(m2545(j, obj));
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.AbstractC0721
    /* renamed from: יـ */
    public final boolean mo2541() {
        switch (this.f3023) {
            case 0:
                return false;
            default:
                return false;
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.AbstractC0721
    /* renamed from: ٴﹶ */
    public final void mo2542(Object obj, long j, boolean z) {
        switch (this.f3023) {
            case 0:
                if (AbstractC0733.f3027) {
                    AbstractC0733.m2622(obj, j, z ? (byte) 1 : (byte) 0);
                    return;
                } else {
                    AbstractC0733.m2613(obj, j, z ? (byte) 1 : (byte) 0);
                    return;
                }
            default:
                if (AbstractC0733.f3027) {
                    AbstractC0733.m2622(obj, j, z ? (byte) 1 : (byte) 0);
                    return;
                } else {
                    AbstractC0733.m2613(obj, j, z ? (byte) 1 : (byte) 0);
                    return;
                }
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.AbstractC0721
    /* renamed from: ᵔʾ */
    public final void mo2544(Object obj, long j, float f) {
        switch (this.f3023) {
            case 0:
                m2539(j, obj, Float.floatToIntBits(f));
                return;
            default:
                m2539(j, obj, Float.floatToIntBits(f));
                return;
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.AbstractC0721
    /* renamed from: ﾞʻ */
    public final void mo2550(Object obj, long j, byte b) {
        switch (this.f3023) {
            case 0:
                if (AbstractC0733.f3027) {
                    AbstractC0733.m2622(obj, j, b);
                    return;
                } else {
                    AbstractC0733.m2613(obj, j, b);
                    return;
                }
            default:
                if (AbstractC0733.f3027) {
                    AbstractC0733.m2622(obj, j, b);
                    return;
                } else {
                    AbstractC0733.m2613(obj, j, b);
                    return;
                }
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.AbstractC0721
    /* renamed from: ﾞᴵ */
    public final float mo2551(long j, Object obj) {
        switch (this.f3023) {
            case 0:
                return Float.intBitsToFloat(m2543(j, obj));
            default:
                return Float.intBitsToFloat(m2543(j, obj));
        }
    }
}
