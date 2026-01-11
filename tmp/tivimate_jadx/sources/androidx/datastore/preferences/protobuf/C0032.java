package androidx.datastore.preferences.protobuf;

import java.lang.reflect.Field;
import sun.misc.Unsafe;

/* renamed from: androidx.datastore.preferences.protobuf.ˏᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0032 extends AbstractC0046 {
    @Override // androidx.datastore.preferences.protobuf.AbstractC0046
    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean mo245(long j, Object obj) {
        return this.f447.getBoolean(obj, j);
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0046
    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void mo246(Object obj, long j, boolean z) {
        this.f447.putBoolean(obj, j, z);
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0046
    /* renamed from: ˈ, reason: contains not printable characters */
    public final double mo247(long j, Object obj) {
        return this.f447.getDouble(obj, j);
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0046
    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final void mo248(Object obj, long j, float f) {
        this.f447.putFloat(obj, j, f);
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0046
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final float mo249(long j, Object obj) {
        return this.f447.getFloat(obj, j);
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0046
    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void mo250(Object obj, long j, byte b) {
        this.f447.putByte(obj, j, b);
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0046
    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final boolean mo251() {
        if (!super.mo251()) {
            return false;
        }
        try {
            Class<?> cls = this.f447.getClass();
            Class<?> cls2 = Long.TYPE;
            cls.getMethod("getByte", Object.class, cls2);
            cls.getMethod("putByte", Object.class, cls2, Byte.TYPE);
            cls.getMethod("getBoolean", Object.class, cls2);
            cls.getMethod("putBoolean", Object.class, cls2, Boolean.TYPE);
            cls.getMethod("getFloat", Object.class, cls2);
            cls.getMethod("putFloat", Object.class, cls2, Float.TYPE);
            cls.getMethod("getDouble", Object.class, cls2);
            cls.getMethod("putDouble", Object.class, cls2, Double.TYPE);
            return true;
        } catch (Throwable th) {
            AbstractC0004.m167(th);
            return false;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0046
    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final boolean mo252() {
        Unsafe unsafe = this.f447;
        if (unsafe != null) {
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("objectFieldOffset", Field.class);
                Class<?> cls2 = Long.TYPE;
                cls.getMethod("getLong", Object.class, cls2);
                if (AbstractC0004.m163() != null) {
                    try {
                        Class<?> cls3 = this.f447.getClass();
                        cls3.getMethod("getByte", cls2);
                        cls3.getMethod("putByte", cls2, Byte.TYPE);
                        cls3.getMethod("getInt", cls2);
                        cls3.getMethod("putInt", cls2, Integer.TYPE);
                        cls3.getMethod("getLong", cls2);
                        cls3.getMethod("putLong", cls2, cls2);
                        cls3.getMethod("copyMemory", cls2, cls2, cls2);
                        cls3.getMethod("copyMemory", Object.class, cls2, Object.class, cls2, cls2);
                        return true;
                    } catch (Throwable th) {
                        AbstractC0004.m167(th);
                        return false;
                    }
                }
            } catch (Throwable th2) {
                AbstractC0004.m167(th2);
            }
        }
        return false;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0046
    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void mo253(Object obj, long j, double d) {
        this.f447.putDouble(obj, j, d);
    }
}
