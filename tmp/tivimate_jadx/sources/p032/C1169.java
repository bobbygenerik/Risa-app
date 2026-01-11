package p032;

import android.media.MediaCodec;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import p457.C5382;

/* renamed from: ʼᵢ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C1169 implements MediaCodec.OnFrameRenderedListener {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ C5382 f4535;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f4536;

    public /* synthetic */ C1169(InterfaceC1171 interfaceC1171, C5382 c5382, int i) {
        this.f4536 = i;
        this.f4535 = c5382;
    }

    @Override // android.media.MediaCodec.OnFrameRenderedListener
    public final void onFrameRendered(MediaCodec mediaCodec, long j, long j2) {
        switch (this.f4536) {
            case 0:
                C5382 c5382 = this.f4535;
                Handler handler = c5382.f20503;
                if (Build.VERSION.SDK_INT < 30) {
                    handler.sendMessageAtFrontOfQueue(Message.obtain(handler, 0, (int) (j >> 32), (int) j));
                    return;
                } else {
                    c5382.m10781(j);
                    return;
                }
            default:
                C5382 c53822 = this.f4535;
                Handler handler2 = c53822.f20503;
                if (Build.VERSION.SDK_INT < 30) {
                    handler2.sendMessageAtFrontOfQueue(Message.obtain(handler2, 0, (int) (j >> 32), (int) j));
                    return;
                } else {
                    c53822.m10781(j);
                    return;
                }
        }
    }
}
