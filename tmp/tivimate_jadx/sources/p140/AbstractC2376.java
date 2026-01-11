package p140;

import android.media.MediaCodec;
import android.os.Build;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.TimeUnit;
import p221.ScheduledExecutorServiceC3044;

/* renamed from: ˉˏ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC2376 {
    /* renamed from: ʽ, reason: contains not printable characters */
    public static /* synthetic */ void m5450(ExecutorServiceC2374 executorServiceC2374) {
        boolean isTerminated;
        if ((Build.VERSION.SDK_INT <= 23 || executorServiceC2374 != ForkJoinPool.commonPool()) && !(isTerminated = executorServiceC2374.isTerminated())) {
            executorServiceC2374.shutdown();
            boolean z = false;
            while (!isTerminated) {
                try {
                    isTerminated = executorServiceC2374.awaitTermination(1L, TimeUnit.DAYS);
                } catch (InterruptedException unused) {
                    if (!z) {
                        executorServiceC2374.shutdownNow();
                        z = true;
                    }
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static void m5451(ScheduledExecutorServiceC3044 scheduledExecutorServiceC3044) {
        if ((Build.VERSION.SDK_INT <= 23 || scheduledExecutorServiceC3044 != ForkJoinPool.commonPool()) && !scheduledExecutorServiceC3044.f11588.isTerminated()) {
            scheduledExecutorServiceC3044.shutdown();
            throw null;
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static /* synthetic */ void m5452(ExecutorService executorService) {
        boolean isTerminated;
        if ((Build.VERSION.SDK_INT <= 23 || executorService != ForkJoinPool.commonPool()) && !(isTerminated = executorService.isTerminated())) {
            executorService.shutdown();
            boolean z = false;
            while (!isTerminated) {
                try {
                    isTerminated = executorService.awaitTermination(1L, TimeUnit.DAYS);
                } catch (InterruptedException unused) {
                    if (!z) {
                        executorService.shutdownNow();
                        z = true;
                    }
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static /* synthetic */ MediaCodec.CryptoInfo.Pattern m5453() {
        return new MediaCodec.CryptoInfo.Pattern(0, 0);
    }
}
