package p179;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* renamed from: ˋˋ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ExecutorC2748 implements Executor {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f10485;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Handler f10486;

    public ExecutorC2748(int i) {
        this.f10485 = i;
        switch (i) {
            case 1:
                this.f10486 = new Handler(Looper.getMainLooper());
                return;
            case 2:
                this.f10486 = new Handler(Looper.getMainLooper());
                return;
            default:
                this.f10486 = new Handler(Looper.getMainLooper());
                return;
        }
    }

    public ExecutorC2748(Handler handler) {
        this.f10485 = 3;
        this.f10486 = handler;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        switch (this.f10485) {
            case 0:
                this.f10486.post(runnable);
                return;
            case 1:
                this.f10486.post(runnable);
                return;
            case 2:
                this.f10486.post(runnable);
                return;
            default:
                runnable.getClass();
                Handler handler = this.f10486;
                if (handler.post(runnable)) {
                    return;
                }
                throw new RejectedExecutionException(handler + " is shutting down");
        }
    }
}
