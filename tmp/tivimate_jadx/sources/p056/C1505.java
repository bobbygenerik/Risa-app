package p056;

import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import p121.InterfaceFutureC2031;

/* renamed from: ʽﹳ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1505 implements InterfaceFutureC2031 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final WeakReference f5957;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C1500 f5958 = new C1500(this);

    public C1505(C1508 c1508) {
        this.f5957 = new WeakReference(c1508);
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        C1508 c1508 = (C1508) this.f5957.get();
        boolean cancel = this.f5958.cancel(z);
        if (cancel && c1508 != null) {
            c1508.f5969 = null;
            c1508.f5968 = null;
            c1508.f5966.m4320(null);
        }
        return cancel;
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        return this.f5958.get();
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        return this.f5958.get(j, timeUnit);
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f5958.f5964 instanceof C1510;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.f5958.isDone();
    }

    public final String toString() {
        return this.f5958.toString();
    }

    @Override // p121.InterfaceFutureC2031
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void mo4312(Runnable runnable, Executor executor) {
        this.f5958.mo4312(runnable, executor);
    }
}
