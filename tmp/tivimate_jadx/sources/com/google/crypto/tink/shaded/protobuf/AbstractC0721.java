package com.google.crypto.tink.shaded.protobuf;

import java.lang.reflect.Field;
import sun.misc.Unsafe;

/* renamed from: com.google.crypto.tink.shaded.protobuf.ˏᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0721 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Unsafe f3009;

    public AbstractC0721(Unsafe unsafe) {
        this.f3009 = unsafe;
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final Object m2533(long j, Object obj) {
        return this.f3009.getObject(obj, j);
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final void m2534(Object obj, long j, long j2) {
        this.f3009.putLong(obj, j, j2);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public abstract boolean mo2535(long j, Object obj);

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final long m2536(Field field) {
        return this.f3009.objectFieldOffset(field);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public abstract byte mo2537(long j, Object obj);

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public abstract void mo2538(Object obj, long j, double d);

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final void m2539(long j, Object obj, int i) {
        this.f3009.putInt(obj, j, i);
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public abstract double mo2540(long j, Object obj);

    /* renamed from: יـ, reason: contains not printable characters */
    public abstract boolean mo2541();

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public abstract void mo2542(Object obj, long j, boolean z);

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final int m2543(long j, Object obj) {
        return this.f3009.getInt(obj, j);
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public abstract void mo2544(Object obj, long j, float f);

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final long m2545(long j, Object obj) {
        return this.f3009.getLong(obj, j);
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final void m2546(long j, Object obj, Object obj2) {
        this.f3009.putObject(obj, j, obj2);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int m2547(Class cls) {
        return this.f3009.arrayIndexScale(cls);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int m2548(Class cls) {
        return this.f3009.arrayBaseOffset(cls);
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public boolean mo2549() {
        Unsafe unsafe = this.f3009;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            cls.getMethod("arrayBaseOffset", Class.class);
            cls.getMethod("arrayIndexScale", Class.class);
            Class<?> cls2 = Long.TYPE;
            cls.getMethod("getInt", Object.class, cls2);
            cls.getMethod("putInt", Object.class, cls2, Integer.TYPE);
            cls.getMethod("getLong", Object.class, cls2);
            cls.getMethod("putLong", Object.class, cls2, cls2);
            cls.getMethod("getObject", Object.class, cls2);
            cls.getMethod("putObject", Object.class, cls2, Object.class);
            return true;
        } catch (Throwable th) {
            AbstractC0733.m2621(th);
            return false;
        }
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public abstract void mo2550(Object obj, long j, byte b);

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public abstract float mo2551(long j, Object obj);
}
