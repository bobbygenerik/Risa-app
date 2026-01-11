package p121;

import java.lang.reflect.Field;
import java.security.PrivilegedExceptionAction;
import sun.misc.Unsafe;

/* renamed from: ˈˊ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2019 implements PrivilegedExceptionAction {
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static Unsafe m5004() {
        for (Field field : Unsafe.class.getDeclaredFields()) {
            field.setAccessible(true);
            Object obj = field.get(null);
            if (Unsafe.class.isInstance(obj)) {
                return (Unsafe) Unsafe.class.cast(obj);
            }
        }
        throw new NoSuchFieldError("the Unsafe");
    }

    @Override // java.security.PrivilegedExceptionAction
    public final /* bridge */ /* synthetic */ Object run() {
        return m5004();
    }
}
