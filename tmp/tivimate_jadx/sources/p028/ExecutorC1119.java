package p028;

import java.util.concurrent.Executor;

/* renamed from: ʼᐧ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class ExecutorC1119 implements Executor {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f4375;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    private final void m3547(Runnable runnable) {
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        switch (this.f4375) {
            case 0:
                C1118.m3545().f4374.f4370.execute(runnable);
                return;
            case 1:
                runnable.run();
                return;
            default:
                return;
        }
    }
}
