package p457;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.view.Choreographer;
import p305.AbstractC3712;
import p305.AbstractC3731;

/* renamed from: ﾞˏ.ʼʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ChoreographerFrameCallbackC5381 implements Choreographer.FrameCallback, Handler.Callback {

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final ChoreographerFrameCallbackC5381 f20498 = new ChoreographerFrameCallbackC5381();

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public Choreographer f20499;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public volatile long f20500 = -9223372036854775807L;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public int f20501;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Handler f20502;

    public ChoreographerFrameCallbackC5381() {
        HandlerThread handlerThread = new HandlerThread("ExoPlayer:FrameReleaseChoreographer");
        handlerThread.start();
        Looper looper = handlerThread.getLooper();
        String str = AbstractC3712.f14481;
        Handler handler = new Handler(looper, this);
        this.f20502 = handler;
        handler.sendEmptyMessage(1);
    }

    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j) {
        this.f20500 = j;
        Choreographer choreographer = this.f20499;
        choreographer.getClass();
        choreographer.postFrameCallbackDelayed(this, 500L);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 1) {
            try {
                this.f20499 = Choreographer.getInstance();
            } catch (RuntimeException e) {
                AbstractC3731.m7859("VideoFrameReleaseHelper", "Vsync sampling disabled due to platform error", e);
            }
            return true;
        }
        if (i == 2) {
            Choreographer choreographer = this.f20499;
            if (choreographer != null) {
                int i2 = this.f20501 + 1;
                this.f20501 = i2;
                if (i2 == 1) {
                    choreographer.postFrameCallback(this);
                }
            }
            return true;
        }
        if (i != 3) {
            return false;
        }
        Choreographer choreographer2 = this.f20499;
        if (choreographer2 != null) {
            int i3 = this.f20501 - 1;
            this.f20501 = i3;
            if (i3 == 0) {
                choreographer2.removeFrameCallback(this);
                this.f20500 = -9223372036854775807L;
            }
        }
        return true;
    }
}
