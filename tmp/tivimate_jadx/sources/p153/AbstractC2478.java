package p153;

import android.os.Looper;
import java.util.Arrays;
import java.util.Iterator;
import java.util.ServiceConfigurationError;
import p029.AbstractC1127;
import p029.C1124;
import p029.C1129;
import p299.AbstractC3695;
import p299.C3694;
import p299.C3697;

/* renamed from: ˊʽ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2478 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C3694 f9460;

    /* JADX WARN: Multi-variable type inference failed */
    static {
        String str;
        int i = AbstractC2472.f9448;
        Object obj = null;
        try {
            str = System.getProperty("kotlinx.coroutines.fast.service.loader");
        } catch (SecurityException unused) {
            str = null;
        }
        if (str != null) {
            Boolean.parseBoolean(str);
        }
        try {
            Iterator it = AbstractC1127.m3552(new C1129(new C1124(1, Arrays.asList(new Object()).iterator()))).iterator();
            if (it.hasNext()) {
                obj = it.next();
                if (it.hasNext()) {
                    ((C3697) obj).getClass();
                    do {
                        ((C3697) it.next()).getClass();
                    } while (it.hasNext());
                }
            }
            if (((C3697) obj) == null) {
                throw new IllegalStateException("Module with the Main dispatcher is missing. Add dependency providing the Main dispatcher, e.g. 'kotlinx-coroutines-android' and ensure it has the same version as 'kotlinx-coroutines-core'");
            }
            Looper mainLooper = Looper.getMainLooper();
            if (mainLooper == null) {
                throw new IllegalStateException("The main looper is not available");
            }
            f9460 = new C3694(AbstractC3695.m7734(mainLooper), false);
        } catch (Throwable th) {
            throw new ServiceConfigurationError(th.getMessage(), th);
        }
    }
}
