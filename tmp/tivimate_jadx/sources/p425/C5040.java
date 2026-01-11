package p425;

import android.media.AudioTrack;
import android.os.Handler;
import android.os.Looper;

/* renamed from: ﹶ.ـˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5040 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ C5031 f18953;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Handler f18955 = new Handler(Looper.myLooper());

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C5023 f18954 = new C5023(this);

    public C5040(C5031 c5031) {
        this.f18953 = c5031;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m9950(AudioTrack audioTrack) {
        audioTrack.unregisterStreamEventCallback(this.f18954);
        this.f18955.removeCallbacksAndMessages(null);
    }
}
