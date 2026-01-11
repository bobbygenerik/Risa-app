package p364;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.os.Trace;
import androidx.media3.exoplayer.upstream.Loader$UnexpectedLoaderException;
import java.io.IOException;
import p022.C1047;
import p281.ExecutorC3561;
import p305.AbstractC3731;

/* renamed from: ᵔⁱ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class HandlerC4439 extends Handler implements Runnable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final long f16580;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f16581;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public InterfaceC4436 f16582;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public boolean f16583;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public int f16584;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final /* synthetic */ C4441 f16585;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public Thread f16586;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final InterfaceC4445 f16587;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public IOException f16588;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public volatile boolean f16589;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC4439(C4441 c4441, Looper looper, InterfaceC4445 interfaceC4445, InterfaceC4436 interfaceC4436, int i, long j) {
        super(looper);
        this.f16585 = c4441;
        this.f16587 = interfaceC4445;
        this.f16582 = interfaceC4436;
        this.f16581 = i;
        this.f16580 = j;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        if (this.f16589) {
            return;
        }
        int i = message.what;
        if (i == 1) {
            m8977();
            return;
        }
        if (i == 4) {
            throw ((Error) message.obj);
        }
        this.f16585.f16595 = null;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j = elapsedRealtime - this.f16580;
        InterfaceC4436 interfaceC4436 = this.f16582;
        interfaceC4436.getClass();
        if (this.f16583) {
            interfaceC4436.mo4024(this.f16587, elapsedRealtime, j, false);
            return;
        }
        int i2 = message.what;
        if (i2 == 2) {
            try {
                interfaceC4436.mo4020(this.f16587, elapsedRealtime, j);
                return;
            } catch (RuntimeException e) {
                AbstractC3731.m7863("LoadTask", "Unexpected exception handling load completed", e);
                this.f16585.f16593 = new Loader$UnexpectedLoaderException(e);
                return;
            }
        }
        if (i2 != 3) {
            return;
        }
        IOException iOException = (IOException) message.obj;
        this.f16588 = iOException;
        int i3 = this.f16584 + 1;
        this.f16584 = i3;
        C1047 mo4023 = interfaceC4436.mo4023(this.f16587, elapsedRealtime, j, iOException, i3);
        int i4 = mo4023.f4127;
        if (i4 == 3) {
            this.f16585.f16593 = this.f16588;
            return;
        }
        if (i4 != 2) {
            if (i4 == 1) {
                this.f16584 = 1;
            }
            long j2 = mo4023.f4128;
            if (j2 == -9223372036854775807L) {
                j2 = Math.min((this.f16584 - 1) * 1000, 5000);
            }
            C4441 c4441 = this.f16585;
            AbstractC3731.m7857(c4441.f16595 == null);
            c4441.f16595 = this;
            if (j2 > 0) {
                sendEmptyMessageDelayed(1, j2);
            } else {
                m8977();
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        try {
            synchronized (this) {
                z = this.f16583;
                this.f16586 = Thread.currentThread();
            }
            if (!z) {
                Trace.beginSection("load:".concat(this.f16587.getClass().getSimpleName()));
                try {
                    this.f16587.mo5106();
                    Trace.endSection();
                } catch (Throwable th) {
                    Trace.endSection();
                    throw th;
                }
            }
            synchronized (this) {
                this.f16586 = null;
                Thread.interrupted();
            }
            if (this.f16589) {
                return;
            }
            sendEmptyMessage(2);
        } catch (IOException e) {
            if (this.f16589) {
                return;
            }
            obtainMessage(3, e).sendToTarget();
        } catch (Exception e2) {
            if (this.f16589) {
                return;
            }
            AbstractC3731.m7863("LoadTask", "Unexpected exception loading stream", e2);
            obtainMessage(3, new Loader$UnexpectedLoaderException(e2)).sendToTarget();
        } catch (OutOfMemoryError e3) {
            if (this.f16589) {
                return;
            }
            AbstractC3731.m7863("LoadTask", "OutOfMemory error loading stream", e3);
            obtainMessage(3, new Loader$UnexpectedLoaderException(e3)).sendToTarget();
        } catch (Error e4) {
            if (!this.f16589) {
                AbstractC3731.m7863("LoadTask", "Unexpected error loading stream", e4);
                obtainMessage(4, e4).sendToTarget();
            }
            throw e4;
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m8977() {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j = elapsedRealtime - this.f16580;
        InterfaceC4436 interfaceC4436 = this.f16582;
        interfaceC4436.getClass();
        interfaceC4436.mo4022(this.f16587, elapsedRealtime, j, this.f16584);
        this.f16588 = null;
        C4441 c4441 = this.f16585;
        ExecutorC3561 executorC3561 = c4441.f16594;
        HandlerC4439 handlerC4439 = c4441.f16595;
        handlerC4439.getClass();
        executorC3561.execute(handlerC4439);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m8978(boolean z) {
        this.f16589 = z;
        this.f16588 = null;
        if (hasMessages(1)) {
            this.f16583 = true;
            removeMessages(1);
            if (!z) {
                sendEmptyMessage(2);
            }
        } else {
            synchronized (this) {
                try {
                    this.f16583 = true;
                    this.f16587.mo5107();
                    Thread thread = this.f16586;
                    if (thread != null) {
                        thread.interrupt();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        if (z) {
            this.f16585.f16595 = null;
            long elapsedRealtime = SystemClock.elapsedRealtime();
            InterfaceC4436 interfaceC4436 = this.f16582;
            interfaceC4436.getClass();
            interfaceC4436.mo4024(this.f16587, elapsedRealtime, elapsedRealtime - this.f16580, true);
            this.f16582 = null;
        }
    }
}
