package p000;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import java.util.Random;

/* renamed from: ʻʻ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class ChoreographerFrameCallbackC0764 implements Choreographer.FrameCallback {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f3150 = 0;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f3151;

    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j) {
        switch (this.f3150) {
            case 0:
                (Build.VERSION.SDK_INT >= 28 ? AbstractC0760.m2786(Looper.getMainLooper()) : new Handler(Looper.getMainLooper())).postDelayed(new RunnableC0759((Context) this.f3151, 0), new Random().nextInt(Math.max(1000, 1)) + 5000);
                return;
            default:
                ((Runnable) this.f3151).run();
                return;
        }
    }
}
