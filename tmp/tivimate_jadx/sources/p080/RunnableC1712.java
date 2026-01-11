package p080;

import android.os.Process;
import ˉᵎ.ⁱˊ;

/* renamed from: ʿʾ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC1712 implements Runnable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f7006;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Runnable f7007;

    public /* synthetic */ RunnableC1712(Runnable runnable, int i) {
        this.f7006 = i;
        this.f7007 = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7006) {
            case 0:
                Process.setThreadPriority(10);
                this.f7007.run();
                return;
            case 1:
                try {
                    this.f7007.run();
                    return;
                } catch (Exception e) {
                    ⁱˊ.ʼˎ("Executor", "Background execution failure.", e);
                    return;
                }
            default:
                this.f7007.run();
                return;
        }
    }

    public String toString() {
        switch (this.f7006) {
            case 2:
                return this.f7007.toString();
            default:
                return super.toString();
        }
    }
}
