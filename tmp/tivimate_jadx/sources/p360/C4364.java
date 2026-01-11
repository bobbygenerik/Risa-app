package p360;

import android.os.Process;

/* renamed from: ᵔٴ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4364 extends Thread {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f16202;

    public C4364(Runnable runnable) {
        super(runnable, "fonts-androidx");
        this.f16202 = 10;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(this.f16202);
        super.run();
    }
}
