package androidx.media3.common;

import p035.AbstractC1220;
import p305.AbstractC3712;

/* loaded from: classes.dex */
public class PlaybackException extends Exception {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f1136;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final long f1137;

    static {
        AbstractC1220.m3785(0, 1, 2, 3, 4);
        AbstractC3712.m7802(5);
    }

    public PlaybackException(String str, Throwable th, int i, long j) {
        super(str, th);
        this.f1136 = i;
        this.f1137 = j;
    }
}
