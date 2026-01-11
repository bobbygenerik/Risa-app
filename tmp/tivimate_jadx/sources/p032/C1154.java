package p032;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.view.Surface;
import java.nio.ByteBuffer;
import p421.C4994;
import p457.C5382;
import ﹳי.ʽ;

/* renamed from: ʼᵢ.ʾᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1154 implements InterfaceC1171 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C1155 f4426;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final MediaCodec f4427;

    public C1154(MediaCodec mediaCodec, C1155 c1155) {
        this.f4427 = mediaCodec;
        this.f4426 = c1155;
        if (Build.VERSION.SDK_INT < 35 || c1155 == null) {
            return;
        }
        c1155.m3605(mediaCodec);
    }

    @Override // p032.InterfaceC1171
    public final void flush() {
        this.f4427.flush();
    }

    @Override // p032.InterfaceC1171
    /* renamed from: ʼˎ */
    public final MediaFormat mo3586() {
        return this.f4427.getOutputFormat();
    }

    @Override // p032.InterfaceC1171
    /* renamed from: ʼᐧ */
    public final void mo3587(C5382 c5382, Handler handler) {
        this.f4427.setOnFrameRenderedListener(new C1169(this, c5382, 1), handler);
    }

    @Override // p032.InterfaceC1171
    /* renamed from: ʽ */
    public final void mo3588(Bundle bundle) {
        this.f4427.setParameters(bundle);
    }

    @Override // p032.InterfaceC1171
    /* renamed from: ˆʾ */
    public final void mo3589() {
        this.f4427.detachOutputSurface();
    }

    @Override // p032.InterfaceC1171
    /* renamed from: ˈ */
    public final void mo3590(int i, int i2, long j, int i3) {
        this.f4427.queueInputBuffer(i, 0, i2, j, i3);
    }

    @Override // p032.InterfaceC1171
    /* renamed from: ˉʿ */
    public final ByteBuffer mo3591(int i) {
        return this.f4427.getOutputBuffer(i);
    }

    @Override // p032.InterfaceC1171
    /* renamed from: ˉˆ */
    public final int mo3592() {
        return this.f4427.dequeueInputBuffer(0L);
    }

    @Override // p032.InterfaceC1171
    /* renamed from: ˑﹳ */
    public final int mo3593(MediaCodec.BufferInfo bufferInfo) {
        int dequeueOutputBuffer;
        do {
            dequeueOutputBuffer = this.f4427.dequeueOutputBuffer(bufferInfo, 0L);
        } while (dequeueOutputBuffer == -3);
        return dequeueOutputBuffer;
    }

    @Override // p032.InterfaceC1171
    /* renamed from: ٴﹶ */
    public final ByteBuffer mo3594(int i) {
        return this.f4427.getInputBuffer(i);
    }

    @Override // p032.InterfaceC1171
    /* renamed from: ᵎﹶ */
    public final /* synthetic */ boolean mo3595(ʽ r1) {
        return false;
    }

    @Override // p032.InterfaceC1171
    /* renamed from: ᵔʾ */
    public final void mo3596(int i, long j) {
        this.f4427.releaseOutputBuffer(i, j);
    }

    @Override // p032.InterfaceC1171
    /* renamed from: ᵔᵢ */
    public final void mo3597(int i) {
        this.f4427.setVideoScalingMode(i);
    }

    @Override // p032.InterfaceC1171
    /* renamed from: ⁱˊ */
    public final void mo3598(int i, C4994 c4994, long j, int i2) {
        this.f4427.queueSecureInputBuffer(i, 0, c4994.f18656, j, i2);
    }

    @Override // p032.InterfaceC1171
    /* renamed from: ﹳٴ */
    public final void mo3599() {
        C1155 c1155 = this.f4426;
        MediaCodec mediaCodec = this.f4427;
        try {
            int i = Build.VERSION.SDK_INT;
            if (i >= 30 && i < 33) {
                mediaCodec.stop();
            }
            if (i >= 35 && c1155 != null) {
                c1155.m3602(mediaCodec);
            }
            mediaCodec.release();
        } catch (Throwable th) {
            if (Build.VERSION.SDK_INT >= 35 && c1155 != null) {
                c1155.m3602(mediaCodec);
            }
            mediaCodec.release();
            throw th;
        }
    }

    @Override // p032.InterfaceC1171
    /* renamed from: ﾞʻ */
    public final void mo3600(Surface surface) {
        this.f4427.setOutputSurface(surface);
    }

    @Override // p032.InterfaceC1171
    /* renamed from: ﾞᴵ */
    public final void mo3601(int i) {
        this.f4427.releaseOutputBuffer(i, false);
    }
}
