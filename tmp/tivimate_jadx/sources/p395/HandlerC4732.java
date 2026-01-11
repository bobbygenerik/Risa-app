package p395;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import androidx.media3.exoplayer.drm.MediaDrmCallbackException;
import java.io.IOException;
import p012.C0894;
import p027.C1090;
import p305.AbstractC3731;

/* renamed from: ⁱᴵ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class HandlerC4732 extends Handler {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ C4717 f17881;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public boolean f17882;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC4732(C4717 c4717, Looper looper) {
        super(looper);
        this.f17881 = c4717;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        Throwable th;
        C4731 c4731 = (C4731) message.obj;
        try {
            int i = message.what;
            if (i == 1) {
                th = this.f17881.f17827.mo9147((C4716) c4731.f17877);
            } else {
                if (i != 2) {
                    throw new RuntimeException();
                }
                C4717 c4717 = this.f17881;
                th = c4717.f17827.mo9150(c4717.f17835, (C4722) c4731.f17877);
            }
        } catch (MediaDrmCallbackException e) {
            boolean m9481 = m9481(message, e);
            th = e;
            if (m9481) {
                return;
            }
        } catch (Exception e2) {
            AbstractC3731.m7859("DefaultDrmSession", "Key/provisioning request produced an unexpected exception. Not retrying.", e2);
            th = e2;
        }
        C0894 c0894 = this.f17881.f17814;
        long j = c4731.f17880;
        c0894.getClass();
        synchronized (this) {
            try {
                if (!this.f17882) {
                    this.f17881.f17829.obtainMessage(message.what, Pair.create(c4731.f17877, th)).sendToTarget();
                }
            } finally {
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean m9481(Message message, MediaDrmCallbackException mediaDrmCallbackException) {
        C4731 c4731 = (C4731) message.obj;
        if (c4731.f17879) {
            int i = c4731.f17878 + 1;
            c4731.f17878 = i;
            this.f17881.f17814.getClass();
            if (i <= 3) {
                SystemClock.elapsedRealtime();
                SystemClock.elapsedRealtime();
                long m3143 = this.f17881.f17814.m3143(new C1090(c4731.f17878, 11, mediaDrmCallbackException.getCause() instanceof IOException ? (IOException) mediaDrmCallbackException.getCause() : new IOException(mediaDrmCallbackException.getCause())));
                if (m3143 != -9223372036854775807L) {
                    synchronized (this) {
                        try {
                            if (this.f17882) {
                                return false;
                            }
                            sendMessageDelayed(Message.obtain(message), m3143);
                            return true;
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            }
        }
        return false;
    }
}
