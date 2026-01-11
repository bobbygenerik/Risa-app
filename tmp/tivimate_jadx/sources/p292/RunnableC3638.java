package p292;

import java.io.IOException;
import java.util.concurrent.atomic.AtomicInteger;
import p208.C2937;
import p208.InterfaceC2954;
import p271.AbstractC3480;
import ʽٴ.ˈ;

/* renamed from: ٴᵎ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC3638 implements Runnable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ C3632 f14229;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final InterfaceC2954 f14230;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public volatile AtomicInteger f14231 = new AtomicInteger(0);

    public RunnableC3638(C3632 c3632, InterfaceC2954 interfaceC2954) {
        this.f14229 = c3632;
        this.f14230 = interfaceC2954;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C2937 c2937;
        String str = "OkHttp " + this.f14229.f14216.f11226.m6469();
        C3632 c3632 = this.f14229;
        Thread currentThread = Thread.currentThread();
        String name = currentThread.getName();
        currentThread.setName(str);
        try {
            c3632.f14211.m5779();
            boolean z = false;
            try {
                try {
                    try {
                        this.f14230.mo6488(c3632.m7613());
                        c2937 = c3632.f14208;
                    } catch (IOException e) {
                        e = e;
                        z = true;
                        if (z) {
                            AbstractC3480 abstractC3480 = AbstractC3480.f13658;
                            AbstractC3480.f13658.mo7402("Callback failure for " + C3632.m7607(c3632), 4, e);
                        } else {
                            this.f14230.mo6489(e);
                        }
                        c2937 = c3632.f14208;
                        c2937.f11144.ˏי(this);
                    } catch (Throwable th) {
                        th = th;
                        z = true;
                        c3632.cancel();
                        if (!z) {
                            IOException iOException = new IOException("canceled due to " + th);
                            ˈ.ⁱˊ(iOException, th);
                            this.f14230.mo6489(iOException);
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    c3632.f14208.f11144.ˏי(this);
                    throw th2;
                }
            } catch (IOException e2) {
                e = e2;
            } catch (Throwable th3) {
                th = th3;
            }
            c2937.f11144.ˏי(this);
        } finally {
            currentThread.setName(name);
        }
    }
}
