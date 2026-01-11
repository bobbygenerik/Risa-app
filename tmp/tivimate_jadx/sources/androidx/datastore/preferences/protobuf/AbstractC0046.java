package androidx.datastore.preferences.protobuf;

import java.lang.reflect.Field;
import sun.misc.Unsafe;

/* renamed from: androidx.datastore.preferences.protobuf.ᴵʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0046 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Unsafe f447;

    public AbstractC0046(Unsafe unsafe) {
        this.f447 = unsafe;
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final long m312(Field field) {
        return this.f447.objectFieldOffset(field);
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final void m313(long j, Object obj, Object obj2) {
        this.f447.putObject(obj, j, obj2);
    }

    /* renamed from: ʽ */
    public abstract boolean mo245(long j, Object obj);

    /* renamed from: ˆʾ */
    public abstract void mo246(Object obj, long j, boolean z);

    /* renamed from: ˈ */
    public abstract double mo247(long j, Object obj);

    /* renamed from: ˉʿ */
    public abstract void mo248(Object obj, long j, float f);

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final void m314(Object obj, long j, long j2) {
        this.f447.putLong(obj, j, j2);
    }

    /* renamed from: ˑﹳ */
    public abstract float mo249(long j, Object obj);

    /* renamed from: ٴﹶ */
    public abstract void mo250(Object obj, long j, byte b);

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final long m315(long j, Object obj) {
        return this.f447.getLong(obj, j);
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final void m316(long j, Object obj, int i) {
        this.f447.putInt(obj, j, i);
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final Object m317(long j, Object obj) {
        return this.f447.getObject(obj, j);
    }

    /* renamed from: ᵔﹳ */
    public boolean mo251() {
        Unsafe unsafe = this.f447;
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
            AbstractC0004.m167(th);
            return false;
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int m318(Class cls) {
        return this.f447.arrayIndexScale(cls);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int m319(Class cls) {
        return this.f447.arrayBaseOffset(cls);
    }

    /* renamed from: ﹳᐧ */
    public abstract boolean mo252();

    /* renamed from: ﾞʻ */
    public abstract void mo253(Object obj, long j, double d);

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int m320(long j, Object obj) {
        return this.f447.getInt(obj, j);
    }
}
