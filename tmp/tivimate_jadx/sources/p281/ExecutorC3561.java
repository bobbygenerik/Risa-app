package p281;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import p275.C3507;

/* renamed from: ٴʿ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ExecutorC3561 implements Executor {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ Executor f13918;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C3507 f13919;

    public ExecutorC3561(ExecutorService executorService, C3507 c3507) {
        this.f13918 = executorService;
        this.f13919 = c3507;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f13918.execute(runnable);
    }
}
