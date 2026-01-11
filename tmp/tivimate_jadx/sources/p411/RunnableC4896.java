package p411;

import android.os.Process;
import android.util.Log;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

/* renamed from: ﹳˎ.ˏי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC4896 implements Runnable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f18265 = 0;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f18266;

    public RunnableC4896(Runnable runnable) {
        this.f18266 = runnable;
    }

    public RunnableC4896(ExecutorService executorService) {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        this.f18266 = executorService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(10);
        switch (this.f18265) {
            case 0:
                ((Runnable) this.f18266).run();
                return;
            default:
                ExecutorService executorService = (ExecutorService) this.f18266;
                try {
                    if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                    }
                    executorService.shutdown();
                    if (executorService.awaitTermination(2L, TimeUnit.SECONDS)) {
                        return;
                    }
                    if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                    }
                    executorService.shutdownNow();
                    return;
                } catch (InterruptedException unused) {
                    Locale locale = Locale.US;
                    if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                    }
                    executorService.shutdownNow();
                    return;
                }
        }
    }
}
