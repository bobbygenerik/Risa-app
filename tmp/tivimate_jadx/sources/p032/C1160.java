package p032;

import android.media.MediaCodec;
import android.os.Build;
import android.os.Bundle;
import android.os.HandlerThread;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;
import p011.HandlerC0874;
import p305.AbstractC3712;
import p305.C3722;
import p421.C4994;

/* renamed from: ʼᵢ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1160 implements InterfaceC1157 {

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final ArrayDeque f4439 = new ArrayDeque();

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static final Object f4440 = new Object();

    /* renamed from: ʽ, reason: contains not printable characters */
    public HandlerC0874 f4441;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final AtomicReference f4442;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C3722 f4443;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final HandlerThread f4444;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final MediaCodec f4445;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public boolean f4446;

    public C1160(MediaCodec mediaCodec, HandlerThread handlerThread) {
        C3722 c3722 = new C3722();
        this.f4445 = mediaCodec;
        this.f4444 = handlerThread;
        this.f4443 = c3722;
        this.f4442 = new AtomicReference();
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static C1156 m3617() {
        ArrayDeque arrayDeque = f4439;
        synchronized (arrayDeque) {
            try {
                if (arrayDeque.isEmpty()) {
                    return new C1156();
                }
                return (C1156) arrayDeque.removeFirst();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static void m3618(C1156 c1156) {
        ArrayDeque arrayDeque = f4439;
        synchronized (arrayDeque) {
            arrayDeque.add(c1156);
        }
    }

    @Override // p032.InterfaceC1157
    public final void flush() {
        if (this.f4446) {
            try {
                HandlerC0874 handlerC0874 = this.f4441;
                handlerC0874.getClass();
                handlerC0874.removeCallbacksAndMessages(null);
                C3722 c3722 = this.f4443;
                synchronized (c3722) {
                    c3722.f14497 = false;
                }
                HandlerC0874 handlerC08742 = this.f4441;
                handlerC08742.getClass();
                handlerC08742.obtainMessage(3).sendToTarget();
                c3722.m7825();
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                throw new IllegalStateException(e);
            }
        }
    }

    @Override // p032.InterfaceC1157
    public final void shutdown() {
        if (this.f4446) {
            flush();
            this.f4444.quit();
        }
        this.f4446 = false;
    }

    @Override // p032.InterfaceC1157
    public final void start() {
        if (this.f4446) {
            return;
        }
        HandlerThread handlerThread = this.f4444;
        handlerThread.start();
        this.f4441 = new HandlerC0874(this, handlerThread.getLooper(), 1);
        this.f4446 = true;
    }

    @Override // p032.InterfaceC1157
    /* renamed from: ʽ */
    public final void mo3606(Bundle bundle) {
        mo3609();
        HandlerC0874 handlerC0874 = this.f4441;
        String str = AbstractC3712.f14481;
        handlerC0874.obtainMessage(4, bundle).sendToTarget();
    }

    @Override // p032.InterfaceC1157
    /* renamed from: ˈ */
    public final void mo3607(int i, int i2, long j, int i3) {
        mo3609();
        C1156 m3617 = m3617();
        m3617.f4435 = i;
        m3617.f4434 = i2;
        m3617.f4432 = j;
        m3617.f4433 = i3;
        HandlerC0874 handlerC0874 = this.f4441;
        String str = AbstractC3712.f14481;
        handlerC0874.obtainMessage(1, m3617).sendToTarget();
    }

    @Override // p032.InterfaceC1157
    /* renamed from: ⁱˊ */
    public final void mo3608(int i, C4994 c4994, long j, int i2) {
        mo3609();
        C1156 m3617 = m3617();
        m3617.f4435 = i;
        m3617.f4434 = 0;
        m3617.f4432 = j;
        m3617.f4433 = i2;
        MediaCodec.CryptoInfo cryptoInfo = m3617.f4431;
        cryptoInfo.numSubSamples = c4994.f18665;
        int[] iArr = c4994.f18659;
        int[] iArr2 = cryptoInfo.numBytesOfClearData;
        if (iArr != null) {
            if (iArr2 == null || iArr2.length < iArr.length) {
                iArr2 = Arrays.copyOf(iArr, iArr.length);
            } else {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            }
        }
        cryptoInfo.numBytesOfClearData = iArr2;
        int[] iArr3 = c4994.f18660;
        int[] iArr4 = cryptoInfo.numBytesOfEncryptedData;
        if (iArr3 != null) {
            if (iArr4 == null || iArr4.length < iArr3.length) {
                iArr4 = Arrays.copyOf(iArr3, iArr3.length);
            } else {
                System.arraycopy(iArr3, 0, iArr4, 0, iArr3.length);
            }
        }
        cryptoInfo.numBytesOfEncryptedData = iArr4;
        byte[] bArr = c4994.f18663;
        byte[] bArr2 = cryptoInfo.key;
        if (bArr != null) {
            if (bArr2 == null || bArr2.length < bArr.length) {
                bArr2 = Arrays.copyOf(bArr, bArr.length);
            } else {
                System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            }
        }
        bArr2.getClass();
        cryptoInfo.key = bArr2;
        byte[] bArr3 = c4994.f18664;
        byte[] bArr4 = cryptoInfo.iv;
        if (bArr3 != null) {
            if (bArr4 == null || bArr4.length < bArr3.length) {
                bArr4 = Arrays.copyOf(bArr3, bArr3.length);
            } else {
                System.arraycopy(bArr3, 0, bArr4, 0, bArr3.length);
            }
        }
        bArr4.getClass();
        cryptoInfo.iv = bArr4;
        cryptoInfo.mode = c4994.f18657;
        if (Build.VERSION.SDK_INT >= 24) {
            cryptoInfo.setPattern(new MediaCodec.CryptoInfo.Pattern(c4994.f18661, c4994.f18662));
        }
        HandlerC0874 handlerC0874 = this.f4441;
        String str = AbstractC3712.f14481;
        handlerC0874.obtainMessage(2, m3617).sendToTarget();
    }

    @Override // p032.InterfaceC1157
    /* renamed from: ﹳٴ */
    public final void mo3609() {
        RuntimeException runtimeException = (RuntimeException) this.f4442.getAndSet(null);
        if (runtimeException != null) {
            throw runtimeException;
        }
    }
}
