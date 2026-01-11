package p392;

import java.util.Locale;
import p305.AbstractC3712;
import p307.AbstractC3740;

/* renamed from: ⁱי.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4699 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public int f17739;

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f17740;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public int f17741;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f17742;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f17743;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public long f17744;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public int f17745;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public int f17746;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f17747;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int f17748;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public int f17749;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f17750;

    public final String toString() {
        int i = this.f17748;
        int i2 = this.f17747;
        int i3 = this.f17740;
        int i4 = this.f17742;
        int i5 = this.f17743;
        int i6 = this.f17750;
        int i7 = this.f17745;
        int i8 = this.f17746;
        int i9 = this.f17739;
        int i10 = this.f17741;
        long j = this.f17744;
        int i11 = this.f17749;
        String str = AbstractC3712.f14481;
        Locale locale = Locale.US;
        StringBuilder m7944 = AbstractC3740.m7944("DecoderCounters {\n decoderInits=", i, ",\n decoderReleases=", i2, "\n queuedInputBuffers=");
        m7944.append(i3);
        m7944.append("\n skippedInputBuffers=");
        m7944.append(i4);
        m7944.append("\n renderedOutputBuffers=");
        m7944.append(i5);
        m7944.append("\n skippedOutputBuffers=");
        m7944.append(i6);
        m7944.append("\n droppedBuffers=");
        m7944.append(i7);
        m7944.append("\n droppedInputBuffers=");
        m7944.append(i8);
        m7944.append("\n maxConsecutiveDroppedBuffers=");
        m7944.append(i9);
        m7944.append("\n droppedToKeyframeEvents=");
        m7944.append(i10);
        m7944.append("\n totalVideoFrameProcessingOffsetUs=");
        m7944.append(j);
        m7944.append("\n videoFrameProcessingOffsetCount=");
        m7944.append(i11);
        m7944.append("\n}");
        return m7944.toString();
    }
}
