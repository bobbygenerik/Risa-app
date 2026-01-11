package androidx.media3.exoplayer.audio;

import p055.C1495;
import p307.AbstractC3740;

/* loaded from: classes.dex */
public final class AudioSink$WriteException extends Exception {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C1495 f1217;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f1218;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final boolean f1219;

    public AudioSink$WriteException(int i, C1495 c1495, boolean z) {
        super(AbstractC3740.m7932(i, "AudioTrack write failed: "));
        this.f1219 = z;
        this.f1218 = i;
        this.f1217 = c1495;
    }
}
