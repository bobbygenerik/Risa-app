package androidx.media3.exoplayer.mediacodec;

import p032.C1165;
import p055.C1495;

/* loaded from: classes.dex */
public class MediaCodecRenderer$DecoderInitializationException extends Exception {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C1165 f1242;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final String f1243;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final String f1244;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final boolean f1245;

    public MediaCodecRenderer$DecoderInitializationException(String str, Throwable th, String str2, boolean z, C1165 c1165, String str3) {
        super(str, th);
        this.f1243 = str2;
        this.f1245 = z;
        this.f1242 = c1165;
        this.f1244 = str3;
    }

    public MediaCodecRenderer$DecoderInitializationException(C1495 c1495, MediaCodecUtil$DecoderQueryException mediaCodecUtil$DecoderQueryException, boolean z, int i) {
        this("Decoder init failed: [" + i + "], " + c1495, mediaCodecUtil$DecoderQueryException, c1495.f5930, z, null, "androidx.media3.exoplayer.mediacodec.MediaCodecRenderer_" + (i < 0 ? "neg_" : "") + Math.abs(i));
    }
}
