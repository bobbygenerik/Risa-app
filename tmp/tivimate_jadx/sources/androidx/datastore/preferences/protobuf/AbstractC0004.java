package androidx.datastore.preferences.protobuf;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.security.PrivilegedExceptionAction;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

/* renamed from: androidx.datastore.preferences.protobuf.ʻᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0004 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final AbstractC0046 f354;

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final boolean f355;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final boolean f356;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final boolean f357;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final Class f358;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final Unsafe f359;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final long f360;

    static {
        Unsafe m155 = m155();
        f359 = m155;
        f358 = AbstractC0009.f383;
        boolean m165 = m165(Long.TYPE);
        boolean m1652 = m165(Integer.TYPE);
        AbstractC0046 abstractC0046 = null;
        if (m155 != null) {
            if (!AbstractC0009.m215()) {
                abstractC0046 = new AbstractC0046(m155);
            } else if (m165) {
                abstractC0046 = new C0044(m155, 1);
            } else if (m1652) {
                abstractC0046 = new C0044(m155, 0);
            }
        }
        f354 = abstractC0046;
        f355 = abstractC0046 == null ? false : abstractC0046.mo252();
        f356 = abstractC0046 == null ? false : abstractC0046.mo251();
        f360 = m161(byte[].class);
        m161(boolean[].class);
        m169(boolean[].class);
        m161(int[].class);
        m169(int[].class);
        m161(long[].class);
        m169(long[].class);
        m161(float[].class);
        m169(float[].class);
        m161(double[].class);
        m169(double[].class);
        m161(Object[].class);
        m169(Object[].class);
        Field m163 = m163();
        if (m163 != null && abstractC0046 != null) {
            abstractC0046.m312(m163);
        }
        f357 = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, java.security.PrivilegedExceptionAction] */
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static Unsafe m155() {
        try {
            return (Unsafe) AccessController.doPrivileged((PrivilegedExceptionAction) new Object());
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static boolean m156(long j, Object obj) {
        return ((byte) ((f354.m320((-4) & j, obj) >>> ((int) ((j & 3) << 3))) & 255)) != 0;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static void m157(byte[] bArr, long j, byte b) {
        f354.mo250(bArr, f360 + j, b);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static Object m158(Class cls) {
        try {
            return f359.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static void m159(long j, Object obj, int i) {
        f354.m316(j, obj, i);
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public static void m160(long j, Object obj, Object obj2) {
        f354.m313(j, obj, obj2);
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static int m161(Class cls) {
        if (f356) {
            return f354.m319(cls);
        }
        return -1;
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static void m162(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int m320 = f354.m320(j2, obj);
        int i = ((~((int) j)) & 3) << 3;
        m159(j2, obj, ((255 & b) << i) | (m320 & (~(255 << i))));
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static Field m163() {
        Field field;
        Field field2;
        if (AbstractC0009.m215()) {
            try {
                field2 = Buffer.class.getDeclaredField("effectiveDirectAddress");
            } catch (Throwable unused) {
                field2 = null;
            }
            if (field2 != null) {
                return field2;
            }
        }
        try {
            field = Buffer.class.getDeclaredField("address");
        } catch (Throwable unused2) {
            field = null;
        }
        if (field == null || field.getType() != Long.TYPE) {
            return null;
        }
        return field;
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static void m164(Object obj, long j, long j2) {
        f354.m314(obj, j, j2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static boolean m165(Class cls) {
        if (!AbstractC0009.m215()) {
            return false;
        }
        try {
            Class cls2 = f358;
            Class cls3 = Boolean.TYPE;
            cls2.getMethod("peekLong", cls, cls3);
            cls2.getMethod("pokeLong", cls, Long.TYPE, cls3);
            Class cls4 = Integer.TYPE;
            cls2.getMethod("pokeInt", cls, cls4, cls3);
            cls2.getMethod("peekInt", cls, cls3);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, cls4, cls4);
            cls2.getMethod("peekByteArray", cls, byte[].class, cls4, cls4);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static boolean m166(long j, Object obj) {
        return ((byte) ((f354.m320((-4) & j, obj) >>> ((int) (((~j) & 3) << 3))) & 255)) != 0;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m167(Throwable th) {
        Logger.getLogger(AbstractC0004.class.getName()).log(Level.WARNING, "platform method missing - proto runtime falling back to safer methods: " + th);
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static void m168(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int i = (((int) j) & 3) << 3;
        m159(j2, obj, ((255 & b) << i) | (f354.m320(j2, obj) & (~(255 << i))));
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static void m169(Class cls) {
        if (f356) {
            f354.m318(cls);
        }
    }
}
