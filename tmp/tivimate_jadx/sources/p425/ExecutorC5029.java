package p425;

import android.os.Handler;
import java.util.concurrent.Executor;

/* renamed from: ﹶ.ʽﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class ExecutorC5029 implements Executor {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ Handler f18816;

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f18816.post(runnable);
    }
}
