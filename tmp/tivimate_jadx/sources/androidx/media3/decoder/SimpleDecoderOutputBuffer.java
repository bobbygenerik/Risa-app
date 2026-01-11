package androidx.media3.decoder;

import androidx.media3.decoder.ffmpeg.C0213;
import java.nio.ByteBuffer;
import p421.AbstractC5001;

/* loaded from: classes.dex */
public final class SimpleDecoderOutputBuffer extends AbstractC5001 {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final C0213 f1143;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public ByteBuffer f1144;

    public SimpleDecoderOutputBuffer(C0213 c0213) {
        super(3);
        this.f1143 = c0213;
    }

    @Override // p421.AbstractC5001
    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final void mo743() {
        this.f1143.f1187.m9847(this);
    }

    @Override // p421.AbstractC5001
    /* renamed from: ˏי, reason: contains not printable characters */
    public final void mo744() {
        this.f3828 = 0;
        this.f18690 = 0L;
        this.f18691 = 0;
        this.f18692 = false;
        ByteBuffer byteBuffer = this.f1144;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
    }
}
