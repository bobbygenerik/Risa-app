package p028;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.media.session.ⁱˊ;
import com.parse.ﹶʽ;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* renamed from: ʼᐧ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1117 extends ⁱˊ {

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final Object f4369 = new Object();

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final ExecutorService f4370 = Executors.newFixedThreadPool(4, new ﹶʽ(1));

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public volatile Handler f4371;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static Handler m3544(Looper looper) {
        if (Build.VERSION.SDK_INT >= 28) {
            return AbstractC1116.m3541(looper);
        }
        try {
            return (Handler) Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE).newInstance(looper, null, Boolean.TRUE);
        } catch (IllegalAccessException | InstantiationException | NoSuchMethodException unused) {
            return new Handler(looper);
        } catch (InvocationTargetException unused2) {
            return new Handler(looper);
        }
    }
}
