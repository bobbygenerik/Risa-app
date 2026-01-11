package androidx.datastore.preferences.protobuf;

import sun.misc.Unsafe;

/* renamed from: androidx.datastore.preferences.protobuf.ᐧᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0044 extends AbstractC0046 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ int f446;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0044(Unsafe unsafe, int i) {
        super(unsafe);
        this.f446 = i;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0046
    /* renamed from: ʽ */
    public final boolean mo245(long j, Object obj) {
        switch (this.f446) {
            case 0:
                return AbstractC0004.f357 ? AbstractC0004.m166(j, obj) : AbstractC0004.m156(j, obj);
            default:
                return AbstractC0004.f357 ? AbstractC0004.m166(j, obj) : AbstractC0004.m156(j, obj);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0046
    /* renamed from: ˆʾ */
    public final void mo246(Object obj, long j, boolean z) {
        switch (this.f446) {
            case 0:
                if (AbstractC0004.f357) {
                    AbstractC0004.m162(obj, j, z ? (byte) 1 : (byte) 0);
                    return;
                } else {
                    AbstractC0004.m168(obj, j, z ? (byte) 1 : (byte) 0);
                    return;
                }
            default:
                if (AbstractC0004.f357) {
                    AbstractC0004.m162(obj, j, z ? (byte) 1 : (byte) 0);
                    return;
                } else {
                    AbstractC0004.m168(obj, j, z ? (byte) 1 : (byte) 0);
                    return;
                }
        }
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0046
    /* renamed from: ˈ */
    public final double mo247(long j, Object obj) {
        switch (this.f446) {
            case 0:
                return Double.longBitsToDouble(m315(j, obj));
            default:
                return Double.longBitsToDouble(m315(j, obj));
        }
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0046
    /* renamed from: ˉʿ */
    public final void mo248(Object obj, long j, float f) {
        switch (this.f446) {
            case 0:
                m316(j, obj, Float.floatToIntBits(f));
                return;
            default:
                m316(j, obj, Float.floatToIntBits(f));
                return;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0046
    /* renamed from: ˑﹳ */
    public final float mo249(long j, Object obj) {
        switch (this.f446) {
            case 0:
                return Float.intBitsToFloat(m320(j, obj));
            default:
                return Float.intBitsToFloat(m320(j, obj));
        }
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0046
    /* renamed from: ٴﹶ */
    public final void mo250(Object obj, long j, byte b) {
        switch (this.f446) {
            case 0:
                if (AbstractC0004.f357) {
                    AbstractC0004.m162(obj, j, b);
                    return;
                } else {
                    AbstractC0004.m168(obj, j, b);
                    return;
                }
            default:
                if (AbstractC0004.f357) {
                    AbstractC0004.m162(obj, j, b);
                    return;
                } else {
                    AbstractC0004.m168(obj, j, b);
                    return;
                }
        }
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0046
    /* renamed from: ﹳᐧ */
    public final boolean mo252() {
        switch (this.f446) {
            case 0:
                return false;
            default:
                return false;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0046
    /* renamed from: ﾞʻ */
    public final void mo253(Object obj, long j, double d) {
        switch (this.f446) {
            case 0:
                m314(obj, j, Double.doubleToLongBits(d));
                return;
            default:
                m314(obj, j, Double.doubleToLongBits(d));
                return;
        }
    }
}
