package p411;

import android.os.Looper;
import com.parse.ﹶʽ;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import p220.C3027;
import p220.C3029;
import p283.C3569;

/* renamed from: ﹳˎ.ـˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4899 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final ExecutorService f18275;

    static {
        ExecutorService unconfigurableExecutorService = Executors.unconfigurableExecutorService(new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new ﹶʽ(new AtomicLong(1L)), new ThreadPoolExecutor.DiscardPolicy()));
        TimeUnit timeUnit = TimeUnit.SECONDS;
        Runtime.getRuntime().addShutdownHook(new Thread(new RunnableC4896(unconfigurableExecutorService), "Crashlytics Shutdown Hook for awaitEvenIfOnMainThread task continuation executor"));
        f18275 = unconfigurableExecutorService;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m9697(C3029 c3029) {
        CountDownLatch countDownLatch = new CountDownLatch(1);
        c3029.f11553.m1588(new C3027(f18275, new C3569(26, countDownLatch), new C3029(), 0));
        c3029.m6568();
        if (Looper.getMainLooper() == Looper.myLooper()) {
            countDownLatch.await(3000L, TimeUnit.MILLISECONDS);
        } else {
            countDownLatch.await(4000L, TimeUnit.MILLISECONDS);
        }
        if (c3029.m6567()) {
            c3029.m6565();
        } else {
            if (c3029.f11551) {
                throw new CancellationException("Task is already canceled");
            }
            if (!c3029.m6573()) {
                throw new TimeoutException();
            }
            throw new IllegalStateException(c3029.m6563());
        }
    }
}
