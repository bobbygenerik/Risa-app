package p032;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Trace;
import android.view.Surface;
import androidx.lifecycle.RunnableC0197;
import java.nio.ByteBuffer;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p421.C4994;
import p457.C5382;
import ﹳי.ʽ;

/* renamed from: ʼᵢ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1152 implements InterfaceC1171 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final InterfaceC1157 f4420;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C1155 f4421;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public boolean f4422;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C1172 f4423;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final MediaCodec f4424;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f4425 = 0;

    public C1152(MediaCodec mediaCodec, HandlerThread handlerThread, InterfaceC1157 interfaceC1157, C1155 c1155) {
        this.f4424 = mediaCodec;
        this.f4423 = new C1172(handlerThread);
        this.f4420 = interfaceC1157;
        this.f4421 = c1155;
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public static void m3584(C1152 c1152, MediaFormat mediaFormat, Surface surface, MediaCrypto mediaCrypto, int i) {
        C1155 c1155;
        C1172 c1172 = c1152.f4423;
        MediaCodec mediaCodec = c1152.f4424;
        HandlerThread handlerThread = c1172.f4549;
        AbstractC3731.m7857(c1172.f4539 == null);
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper());
        mediaCodec.setCallback(c1172, handler);
        c1172.f4539 = handler;
        Trace.beginSection("configureCodec");
        mediaCodec.configure(mediaFormat, surface, mediaCrypto, i);
        Trace.endSection();
        c1152.f4420.start();
        Trace.beginSection("startCodec");
        mediaCodec.start();
        Trace.endSection();
        if (Build.VERSION.SDK_INT >= 35 && (c1155 = c1152.f4421) != null) {
            c1155.m3605(mediaCodec);
        }
        c1152.f4425 = 1;
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public static String m3585(int i, String str) {
        StringBuilder sb = new StringBuilder(str);
        if (i == 1) {
            sb.append("Audio");
        } else if (i == 2) {
            sb.append("Video");
        } else {
            sb.append("Unknown(");
            sb.append(i);
            sb.append(")");
        }
        return sb.toString();
    }

    @Override // p032.InterfaceC1171
    public final void flush() {
        this.f4420.flush();
        this.f4424.flush();
        C1172 c1172 = this.f4423;
        synchronized (c1172.f4550) {
            c1172.f4551++;
            Handler handler = c1172.f4539;
            String str = AbstractC3712.f14481;
            handler.post(new RunnableC0197(6, c1172));
        }
        this.f4424.start();
    }

    @Override // p032.InterfaceC1171
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final MediaFormat mo3586() {
        MediaFormat mediaFormat;
        C1172 c1172 = this.f4423;
        synchronized (c1172.f4550) {
            try {
                mediaFormat = c1172.f4548;
                if (mediaFormat == null) {
                    throw new IllegalStateException();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return mediaFormat;
    }

    @Override // p032.InterfaceC1171
    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final void mo3587(C5382 c5382, Handler handler) {
        this.f4424.setOnFrameRenderedListener(new C1169(this, c5382, 0), handler);
    }

    @Override // p032.InterfaceC1171
    /* renamed from: ʽ, reason: contains not printable characters */
    public final void mo3588(Bundle bundle) {
        this.f4420.mo3606(bundle);
    }

    @Override // p032.InterfaceC1171
    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void mo3589() {
        this.f4424.detachOutputSurface();
    }

    @Override // p032.InterfaceC1171
    /* renamed from: ˈ, reason: contains not printable characters */
    public final void mo3590(int i, int i2, long j, int i3) {
        this.f4420.mo3607(i, i2, j, i3);
    }

    @Override // p032.InterfaceC1171
    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final ByteBuffer mo3591(int i) {
        return this.f4424.getOutputBuffer(i);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x002c A[Catch: all -> 0x002e, DONT_GENERATE, TryCatch #0 {all -> 0x002e, blocks: (B:4:0x000a, B:6:0x000f, B:8:0x0013, B:10:0x0017, B:12:0x0021, B:18:0x002c, B:21:0x0030, B:26:0x0048, B:29:0x003e, B:30:0x004a, B:31:0x004f, B:33:0x0050, B:34:0x0052, B:35:0x0053, B:36:0x0055, B:37:0x0056, B:38:0x0058), top: B:3:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0030 A[Catch: all -> 0x002e, TryCatch #0 {all -> 0x002e, blocks: (B:4:0x000a, B:6:0x000f, B:8:0x0013, B:10:0x0017, B:12:0x0021, B:18:0x002c, B:21:0x0030, B:26:0x0048, B:29:0x003e, B:30:0x004a, B:31:0x004f, B:33:0x0050, B:34:0x0052, B:35:0x0053, B:36:0x0055, B:37:0x0056, B:38:0x0058), top: B:3:0x000a }] */
    @Override // p032.InterfaceC1171
    /* renamed from: ˉˆ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo3592() {
        /*
            r7 = this;
            ʼᵢ.ˉʿ r0 = r7.f4420
            r0.mo3609()
            ʼᵢ.ﾞᴵ r0 = r7.f4423
            java.lang.Object r1 = r0.f4550
            monitor-enter(r1)
            java.lang.IllegalStateException r2 = r0.f4547     // Catch: java.lang.Throwable -> L2e
            r3 = 0
            if (r2 != 0) goto L56
            android.media.MediaCodec$CodecException r2 = r0.f4540     // Catch: java.lang.Throwable -> L2e
            if (r2 != 0) goto L53
            android.media.MediaCodec$CryptoException r2 = r0.f4545     // Catch: java.lang.Throwable -> L2e
            if (r2 != 0) goto L50
            long r2 = r0.f4551     // Catch: java.lang.Throwable -> L2e
            r4 = 0
            int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            r3 = 0
            r4 = 1
            if (r2 > 0) goto L28
            boolean r2 = r0.f4542     // Catch: java.lang.Throwable -> L2e
            if (r2 == 0) goto L26
            goto L28
        L26:
            r2 = r3
            goto L29
        L28:
            r2 = r4
        L29:
            r5 = -1
            if (r2 == 0) goto L30
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L2e
            return r5
        L2e:
            r0 = move-exception
            goto L59
        L30:
            ˋˋ.ʽʽ r0 = r0.f4541     // Catch: java.lang.Throwable -> L2e
            int r2 = r0.f10198     // Catch: java.lang.Throwable -> L2e
            int r6 = r0.f10196     // Catch: java.lang.Throwable -> L2e
            if (r2 != r6) goto L39
            r3 = r4
        L39:
            if (r3 == 0) goto L3c
            goto L48
        L3c:
            if (r2 == r6) goto L4a
            int[] r3 = r0.f10199     // Catch: java.lang.Throwable -> L2e
            r5 = r3[r2]     // Catch: java.lang.Throwable -> L2e
            int r2 = r2 + r4
            int r3 = r0.f10197     // Catch: java.lang.Throwable -> L2e
            r2 = r2 & r3
            r0.f10198 = r2     // Catch: java.lang.Throwable -> L2e
        L48:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L2e
            return r5
        L4a:
            java.lang.ArrayIndexOutOfBoundsException r0 = new java.lang.ArrayIndexOutOfBoundsException     // Catch: java.lang.Throwable -> L2e
            r0.<init>()     // Catch: java.lang.Throwable -> L2e
            throw r0     // Catch: java.lang.Throwable -> L2e
        L50:
            r0.f4545 = r3     // Catch: java.lang.Throwable -> L2e
            throw r2     // Catch: java.lang.Throwable -> L2e
        L53:
            r0.f4540 = r3     // Catch: java.lang.Throwable -> L2e
            throw r2     // Catch: java.lang.Throwable -> L2e
        L56:
            r0.f4547 = r3     // Catch: java.lang.Throwable -> L2e
            throw r2     // Catch: java.lang.Throwable -> L2e
        L59:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L2e
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p032.C1152.mo3592():int");
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x002c A[Catch: all -> 0x002e, DONT_GENERATE, TryCatch #0 {all -> 0x002e, blocks: (B:4:0x000a, B:6:0x000f, B:8:0x0013, B:10:0x0017, B:12:0x0021, B:18:0x002c, B:21:0x0031, B:25:0x003c, B:28:0x0040, B:30:0x004c, B:31:0x0073, B:35:0x0069, B:36:0x0075, B:37:0x007a, B:39:0x007b, B:40:0x007d, B:41:0x007e, B:42:0x0080, B:43:0x0081, B:44:0x0083), top: B:3:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0031 A[Catch: all -> 0x002e, TryCatch #0 {all -> 0x002e, blocks: (B:4:0x000a, B:6:0x000f, B:8:0x0013, B:10:0x0017, B:12:0x0021, B:18:0x002c, B:21:0x0031, B:25:0x003c, B:28:0x0040, B:30:0x004c, B:31:0x0073, B:35:0x0069, B:36:0x0075, B:37:0x007a, B:39:0x007b, B:40:0x007d, B:41:0x007e, B:42:0x0080, B:43:0x0081, B:44:0x0083), top: B:3:0x000a }] */
    @Override // p032.InterfaceC1171
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo3593(android.media.MediaCodec.BufferInfo r11) {
        /*
            r10 = this;
            ʼᵢ.ˉʿ r0 = r10.f4420
            r0.mo3609()
            ʼᵢ.ﾞᴵ r0 = r10.f4423
            java.lang.Object r1 = r0.f4550
            monitor-enter(r1)
            java.lang.IllegalStateException r2 = r0.f4547     // Catch: java.lang.Throwable -> L2e
            r3 = 0
            if (r2 != 0) goto L81
            android.media.MediaCodec$CodecException r2 = r0.f4540     // Catch: java.lang.Throwable -> L2e
            if (r2 != 0) goto L7e
            android.media.MediaCodec$CryptoException r2 = r0.f4545     // Catch: java.lang.Throwable -> L2e
            if (r2 != 0) goto L7b
            long r2 = r0.f4551     // Catch: java.lang.Throwable -> L2e
            r4 = 0
            int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            r3 = 0
            r4 = 1
            if (r2 > 0) goto L28
            boolean r2 = r0.f4542     // Catch: java.lang.Throwable -> L2e
            if (r2 == 0) goto L26
            goto L28
        L26:
            r2 = r3
            goto L29
        L28:
            r2 = r4
        L29:
            r5 = -1
            if (r2 == 0) goto L31
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L2e
            return r5
        L2e:
            r0 = move-exception
            r11 = r0
            goto L84
        L31:
            ˋˋ.ʽʽ r2 = r0.f4544     // Catch: java.lang.Throwable -> L2e
            int r6 = r2.f10198     // Catch: java.lang.Throwable -> L2e
            int r7 = r2.f10196     // Catch: java.lang.Throwable -> L2e
            if (r6 != r7) goto L3a
            r3 = r4
        L3a:
            if (r3 == 0) goto L3e
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L2e
            return r5
        L3e:
            if (r6 == r7) goto L75
            int[] r3 = r2.f10199     // Catch: java.lang.Throwable -> L2e
            r3 = r3[r6]     // Catch: java.lang.Throwable -> L2e
            int r6 = r6 + r4
            int r4 = r2.f10197     // Catch: java.lang.Throwable -> L2e
            r4 = r4 & r6
            r2.f10198 = r4     // Catch: java.lang.Throwable -> L2e
            if (r3 < 0) goto L66
            android.media.MediaFormat r2 = r0.f4548     // Catch: java.lang.Throwable -> L2e
            p305.AbstractC3731.m7868(r2)     // Catch: java.lang.Throwable -> L2e
            java.util.ArrayDeque r0 = r0.f4552     // Catch: java.lang.Throwable -> L2e
            java.lang.Object r0 = r0.remove()     // Catch: java.lang.Throwable -> L2e
            android.media.MediaCodec$BufferInfo r0 = (android.media.MediaCodec.BufferInfo) r0     // Catch: java.lang.Throwable -> L2e
            int r5 = r0.offset     // Catch: java.lang.Throwable -> L2e
            int r6 = r0.size     // Catch: java.lang.Throwable -> L2e
            long r7 = r0.presentationTimeUs     // Catch: java.lang.Throwable -> L2e
            int r9 = r0.flags     // Catch: java.lang.Throwable -> L2e
            r4 = r11
            r4.set(r5, r6, r7, r9)     // Catch: java.lang.Throwable -> L2e
            goto L73
        L66:
            r11 = -2
            if (r3 != r11) goto L73
            java.util.ArrayDeque r11 = r0.f4546     // Catch: java.lang.Throwable -> L2e
            java.lang.Object r11 = r11.remove()     // Catch: java.lang.Throwable -> L2e
            android.media.MediaFormat r11 = (android.media.MediaFormat) r11     // Catch: java.lang.Throwable -> L2e
            r0.f4548 = r11     // Catch: java.lang.Throwable -> L2e
        L73:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L2e
            return r3
        L75:
            java.lang.ArrayIndexOutOfBoundsException r11 = new java.lang.ArrayIndexOutOfBoundsException     // Catch: java.lang.Throwable -> L2e
            r11.<init>()     // Catch: java.lang.Throwable -> L2e
            throw r11     // Catch: java.lang.Throwable -> L2e
        L7b:
            r0.f4545 = r3     // Catch: java.lang.Throwable -> L2e
            throw r2     // Catch: java.lang.Throwable -> L2e
        L7e:
            r0.f4540 = r3     // Catch: java.lang.Throwable -> L2e
            throw r2     // Catch: java.lang.Throwable -> L2e
        L81:
            r0.f4547 = r3     // Catch: java.lang.Throwable -> L2e
            throw r2     // Catch: java.lang.Throwable -> L2e
        L84:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L2e
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: p032.C1152.mo3593(android.media.MediaCodec$BufferInfo):int");
    }

    @Override // p032.InterfaceC1171
    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final ByteBuffer mo3594(int i) {
        return this.f4424.getInputBuffer(i);
    }

    @Override // p032.InterfaceC1171
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final boolean mo3595(ʽ r3) {
        C1172 c1172 = this.f4423;
        synchronized (c1172.f4550) {
            c1172.f4543 = r3;
        }
        return true;
    }

    @Override // p032.InterfaceC1171
    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final void mo3596(int i, long j) {
        this.f4424.releaseOutputBuffer(i, j);
    }

    @Override // p032.InterfaceC1171
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void mo3597(int i) {
        this.f4424.setVideoScalingMode(i);
    }

    @Override // p032.InterfaceC1171
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void mo3598(int i, C4994 c4994, long j, int i2) {
        this.f4420.mo3608(i, c4994, j, i2);
    }

    @Override // p032.InterfaceC1171
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void mo3599() {
        C1155 c1155;
        C1155 c11552;
        try {
            if (this.f4425 == 1) {
                this.f4420.shutdown();
                C1172 c1172 = this.f4423;
                synchronized (c1172.f4550) {
                    c1172.f4542 = true;
                    c1172.f4549.quit();
                    c1172.m3689();
                }
            }
            this.f4425 = 2;
            if (this.f4422) {
                return;
            }
            try {
                int i = Build.VERSION.SDK_INT;
                if (i >= 30 && i < 33) {
                    this.f4424.stop();
                }
                if (i >= 35 && (c11552 = this.f4421) != null) {
                    c11552.m3602(this.f4424);
                }
                this.f4424.release();
                this.f4422 = true;
            } finally {
            }
        } catch (Throwable th) {
            if (!this.f4422) {
                try {
                    int i2 = Build.VERSION.SDK_INT;
                    if (i2 >= 30 && i2 < 33) {
                        this.f4424.stop();
                    }
                    if (i2 >= 35 && (c1155 = this.f4421) != null) {
                        c1155.m3602(this.f4424);
                    }
                    this.f4424.release();
                    this.f4422 = true;
                } finally {
                }
            }
            throw th;
        }
    }

    @Override // p032.InterfaceC1171
    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void mo3600(Surface surface) {
        this.f4424.setOutputSurface(surface);
    }

    @Override // p032.InterfaceC1171
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void mo3601(int i) {
        this.f4424.releaseOutputBuffer(i, false);
    }
}
