package com.google.crypto.tink.shaded.protobuf;

import java.lang.reflect.Field;
import sun.misc.Unsafe;

/* renamed from: com.google.crypto.tink.shaded.protobuf.ᐧᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0731 extends AbstractC0721 {
    @Override // com.google.crypto.tink.shaded.protobuf.AbstractC0721
    /* renamed from: ʽ */
    public final boolean mo2535(long j, Object obj) {
        return this.f3009.getBoolean(obj, j);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.AbstractC0721
    /* renamed from: ˈ */
    public final byte mo2537(long j, Object obj) {
        return this.f3009.getByte(obj, j);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.AbstractC0721
    /* renamed from: ˉʿ */
    public final void mo2538(Object obj, long j, double d) {
        this.f3009.putDouble(obj, j, d);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.AbstractC0721
    /* renamed from: ˑﹳ */
    public final double mo2540(long j, Object obj) {
        return this.f3009.getDouble(obj, j);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.AbstractC0721
    /* renamed from: יـ */
    public final boolean mo2541() {
        Unsafe unsafe = this.f3009;
        if (unsafe != null) {
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("objectFieldOffset", Field.class);
                Class<?> cls2 = Long.TYPE;
                cls.getMethod("getLong", Object.class, cls2);
                if (AbstractC0733.m2615() != null) {
                    try {
                        Class<?> cls3 = this.f3009.getClass();
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
                        AbstractC0733.m2621(th);
                        return false;
                    }
                }
            } catch (Throwable th2) {
                AbstractC0733.m2621(th2);
            }
        }
        return false;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.AbstractC0721
    /* renamed from: ٴﹶ */
    public final void mo2542(Object obj, long j, boolean z) {
        this.f3009.putBoolean(obj, j, z);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.AbstractC0721
    /* renamed from: ᵔʾ */
    public final void mo2544(Object obj, long j, float f) {
        this.f3009.putFloat(obj, j, f);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.AbstractC0721
    /* renamed from: ﹳᐧ */
    public final boolean mo2549() {
        if (!super.mo2549()) {
            return false;
        }
        try {
            Class<?> cls = this.f3009.getClass();
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
            AbstractC0733.m2621(th);
            return false;
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.AbstractC0721
    /* renamed from: ﾞʻ */
    public final void mo2550(Object obj, long j, byte b) {
        this.f3009.putByte(obj, j, b);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.AbstractC0721
    /* renamed from: ﾞᴵ */
    public final float mo2551(long j, Object obj) {
        return this.f3009.getFloat(obj, j);
    }
}
