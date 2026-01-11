package p036;

import android.os.Looper;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.lifecycle.RunnableC0197;
import java.util.concurrent.Executor;
import ٴʽ.יـ;

/* renamed from: ʽ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ExecutorC1255 implements Executor, ViewTreeObserver.OnDrawListener, Runnable {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ AbstractActivityC1262 f4875;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public Runnable f4876;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final long f4874 = SystemClock.uptimeMillis() + 10000;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public boolean f4873 = false;

    public ExecutorC1255(AbstractActivityC1262 abstractActivityC1262) {
        this.f4875 = abstractActivityC1262;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f4876 = runnable;
        View decorView = this.f4875.getWindow().getDecorView();
        if (!this.f4873) {
            decorView.postOnAnimation(new RunnableC0197(10, this));
        } else if (Looper.myLooper() == Looper.getMainLooper()) {
            decorView.invalidate();
        } else {
            decorView.postInvalidate();
        }
    }

    @Override // android.view.ViewTreeObserver.OnDrawListener
    public final void onDraw() {
        boolean z;
        Runnable runnable = this.f4876;
        if (runnable == null) {
            if (SystemClock.uptimeMillis() > this.f4874) {
                this.f4873 = false;
                this.f4875.getWindow().getDecorView().post(this);
                return;
            }
            return;
        }
        runnable.run();
        this.f4876 = null;
        יـ r0 = this.f4875.f4905;
        synchronized (r0.ⁱˊ) {
            z = r0.ﹳٴ;
        }
        if (z) {
            this.f4873 = false;
            this.f4875.getWindow().getDecorView().post(this);
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4875.getWindow().getDecorView().getViewTreeObserver().removeOnDrawListener(this);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m3843(View view) {
        if (this.f4873) {
            return;
        }
        this.f4873 = true;
        view.getViewTreeObserver().addOnDrawListener(this);
    }
}
