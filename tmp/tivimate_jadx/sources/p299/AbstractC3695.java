package p299;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import p013.C0922;

/* renamed from: ᐧʼ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3695 {
    private static volatile Choreographer choreographer;

    static {
        Object c0922;
        try {
            c0922 = new C3694(m7734(Looper.getMainLooper()), false);
        } catch (Throwable th) {
            c0922 = new C0922(th);
        }
        if (c0922 instanceof C0922) {
            c0922 = null;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final Handler m7734(Looper looper) {
        if (Build.VERSION.SDK_INT >= 28) {
            return (Handler) Handler.class.getDeclaredMethod("createAsync", Looper.class).invoke(null, looper);
        }
        try {
            return (Handler) Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE).newInstance(looper, null, Boolean.TRUE);
        } catch (NoSuchMethodException unused) {
            return new Handler(looper);
        }
    }
}
