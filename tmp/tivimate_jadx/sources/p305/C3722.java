package p305;

import android.os.SystemClock;

/* renamed from: ᐧˎ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3722 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public boolean f14497;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3721 f14498;

    public C3722() {
        this(C3721.f14496);
    }

    public C3722(C3721 c3721) {
        this.f14498 = c3721;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final synchronized boolean m7821(long j) {
        if (j <= 0) {
            return this.f14497;
        }
        this.f14498.getClass();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j2 = j + elapsedRealtime;
        if (j2 < elapsedRealtime) {
            m7824();
        } else {
            boolean z = false;
            while (!this.f14497 && elapsedRealtime < j2) {
                try {
                    this.f14498.getClass();
                    wait(j2 - elapsedRealtime);
                } catch (InterruptedException unused) {
                    z = true;
                }
                this.f14498.getClass();
                elapsedRealtime = SystemClock.elapsedRealtime();
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
        }
        return this.f14497;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final synchronized void m7822() {
        this.f14497 = false;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final synchronized boolean m7823() {
        if (this.f14497) {
            return false;
        }
        this.f14497 = true;
        notifyAll();
        return true;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final synchronized void m7824() {
        boolean z = false;
        while (!this.f14497) {
            try {
                this.f14498.getClass();
                wait();
            } catch (InterruptedException unused) {
                z = true;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final synchronized void m7825() {
        while (!this.f14497) {
            this.f14498.getClass();
            wait();
        }
    }
}
