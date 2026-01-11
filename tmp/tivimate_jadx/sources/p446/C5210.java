package p446;

import java.lang.ref.WeakReference;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* renamed from: ﹶﹶ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5210 extends Thread {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final WeakReference f19564;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final long f19566;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final CountDownLatch f19563 = new CountDownLatch(1);

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public boolean f19565 = false;

    public C5210(C5211 c5211, long j) {
        this.f19564 = new WeakReference(c5211);
        this.f19566 = j;
        start();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        C5211 c5211;
        WeakReference weakReference = this.f19564;
        try {
            if (this.f19563.await(this.f19566, TimeUnit.MILLISECONDS) || (c5211 = (C5211) weakReference.get()) == null) {
                return;
            }
            c5211.m10187();
            this.f19565 = true;
        } catch (InterruptedException unused) {
            C5211 c52112 = (C5211) weakReference.get();
            if (c52112 != null) {
                c52112.m10187();
                this.f19565 = true;
            }
        }
    }
}
