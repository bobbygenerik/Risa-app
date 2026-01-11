package p032;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.HandlerThread;
import java.util.ArrayDeque;
import p179.C2676;
import p392.C4651;
import ﹳי.ʽ;

/* renamed from: ʼᵢ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1172 extends MediaCodec.Callback {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public MediaFormat f4538;

    /* renamed from: ʽ, reason: contains not printable characters */
    public Handler f4539;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public MediaCodec.CodecException f4540;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public boolean f4542;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public ʽ f4543;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public MediaCodec.CryptoException f4545;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public IllegalStateException f4547;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public MediaFormat f4548;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final HandlerThread f4549;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public long f4551;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Object f4550 = new Object();

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C2676 f4541 = new C2676();

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C2676 f4544 = new C2676();

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final ArrayDeque f4552 = new ArrayDeque();

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final ArrayDeque f4546 = new ArrayDeque();

    public C1172(HandlerThread handlerThread) {
        this.f4549 = handlerThread;
    }

    @Override // android.media.MediaCodec.Callback
    public final void onCryptoError(MediaCodec mediaCodec, MediaCodec.CryptoException cryptoException) {
        synchronized (this.f4550) {
            this.f4545 = cryptoException;
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onError(MediaCodec mediaCodec, MediaCodec.CodecException codecException) {
        synchronized (this.f4550) {
            this.f4540 = codecException;
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onInputBufferAvailable(MediaCodec mediaCodec, int i) {
        C4651 c4651;
        synchronized (this.f4550) {
            this.f4541.m6026(i);
            ʽ r3 = this.f4543;
            if (r3 != null && (c4651 = ((AbstractC1167) r3.ʾˋ).f4505) != null) {
                c4651.m9260();
            }
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onOutputBufferAvailable(MediaCodec mediaCodec, int i, MediaCodec.BufferInfo bufferInfo) {
        C4651 c4651;
        synchronized (this.f4550) {
            try {
                MediaFormat mediaFormat = this.f4538;
                if (mediaFormat != null) {
                    this.f4544.m6026(-2);
                    this.f4546.add(mediaFormat);
                    this.f4538 = null;
                }
                this.f4544.m6026(i);
                this.f4552.add(bufferInfo);
                ʽ r5 = this.f4543;
                if (r5 != null && (c4651 = ((AbstractC1167) r5.ʾˋ).f4505) != null) {
                    c4651.m9260();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        synchronized (this.f4550) {
            this.f4544.m6026(-2);
            this.f4546.add(mediaFormat);
            this.f4538 = null;
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m3688(IllegalStateException illegalStateException) {
        synchronized (this.f4550) {
            this.f4547 = illegalStateException;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m3689() {
        ArrayDeque arrayDeque = this.f4546;
        if (!arrayDeque.isEmpty()) {
            this.f4538 = (MediaFormat) arrayDeque.getLast();
        }
        C2676 c2676 = this.f4541;
        c2676.f10196 = c2676.f10198;
        C2676 c26762 = this.f4544;
        c26762.f10196 = c26762.f10198;
        this.f4552.clear();
        arrayDeque.clear();
    }
}
