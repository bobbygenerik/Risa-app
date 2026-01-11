package p127;

import android.os.Handler;
import android.os.HandlerThread;
import androidx.lifecycle.RunnableC0197;
import j$.util.Objects;
import java.io.Closeable;
import java.io.OutputStream;

/* renamed from: ˈـ.ʼʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2144 implements Closeable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final Handler f8331;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final OutputStream f8332;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final HandlerThread f8333;

    public C2144(C2173 c2173, OutputStream outputStream) {
        this.f8332 = outputStream;
        HandlerThread handlerThread = new HandlerThread("ExoPlayer:RtspMessageChannel:Sender");
        this.f8333 = handlerThread;
        handlerThread.start();
        this.f8331 = new Handler(handlerThread.getLooper());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        HandlerThread handlerThread = this.f8333;
        Objects.requireNonNull(handlerThread);
        this.f8331.post(new RunnableC0197(17, handlerThread));
        try {
            handlerThread.join();
        } catch (InterruptedException unused) {
            handlerThread.interrupt();
        }
    }
}
