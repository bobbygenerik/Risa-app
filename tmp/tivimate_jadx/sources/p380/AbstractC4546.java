package p380;

import java.lang.reflect.Method;
import p152.AbstractC2444;

/* renamed from: ᵢﹶ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4546 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final Method f17032;

    static {
        Method method;
        Method[] methods = Throwable.class.getMethods();
        int length = methods.length;
        int i = 0;
        while (true) {
            method = null;
            if (i >= length) {
                break;
            }
            Method method2 = methods[i];
            if (AbstractC2444.m5562(method2.getName(), "addSuppressed")) {
                Class<?>[] parameterTypes = method2.getParameterTypes();
                if (AbstractC2444.m5562(parameterTypes.length == 1 ? parameterTypes[0] : null, Throwable.class)) {
                    method = method2;
                    break;
                }
            }
            i++;
        }
        f17032 = method;
        int length2 = methods.length;
        for (int i2 = 0; i2 < length2 && !AbstractC2444.m5562(methods[i2].getName(), "getSuppressed"); i2++) {
        }
    }
}
