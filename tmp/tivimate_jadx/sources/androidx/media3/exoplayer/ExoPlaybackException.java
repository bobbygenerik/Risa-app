package androidx.media3.exoplayer;

import android.os.Bundle;
import androidx.media3.common.PlaybackException;
import java.io.IOException;
import p055.C1495;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p420.C4987;

/* loaded from: classes.dex */
public final class ExoPlaybackException extends PlaybackException {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final int f1206;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final String f1207;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final C4987 f1208;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final C1495 f1209;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final int f1210;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final int f1211;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final boolean f1212;

    public ExoPlaybackException(int i, Exception exc, int i2) {
        this(i, exc, i2, null, -1, null, 4, null, false);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ExoPlaybackException(int r14, java.lang.Throwable r15, int r16, java.lang.String r17, int r18, p055.C1495 r19, int r20, p420.C4987 r21, boolean r22) {
        /*
            r13 = this;
            r8 = r20
            if (r14 == 0) goto L63
            r0 = 3
            r1 = 1
            if (r14 == r1) goto L16
            if (r14 == r0) goto L13
            java.lang.String r0 = "Unexpected runtime error"
        Lc:
            r5 = r17
            r6 = r18
            r7 = r19
            goto L6b
        L13:
            java.lang.String r0 = "Remote error"
            goto Lc
        L16:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r5 = r17
            r2.append(r5)
            java.lang.String r3 = " error, index="
            r2.append(r3)
            r6 = r18
            r2.append(r6)
            java.lang.String r3 = ", format="
            r2.append(r3)
            r7 = r19
            r2.append(r7)
            java.lang.String r3 = ", format_supported="
            r2.append(r3)
            java.lang.String r3 = p305.AbstractC3712.f14481
            if (r8 == 0) goto L59
            if (r8 == r1) goto L56
            r1 = 2
            if (r8 == r1) goto L53
            if (r8 == r0) goto L50
            r0 = 4
            if (r8 != r0) goto L4a
            java.lang.String r0 = "YES"
            goto L5b
        L4a:
            java.lang.IllegalStateException r14 = new java.lang.IllegalStateException
            r14.<init>()
            throw r14
        L50:
            java.lang.String r0 = "NO_EXCEEDS_CAPABILITIES"
            goto L5b
        L53:
            java.lang.String r0 = "NO_UNSUPPORTED_DRM"
            goto L5b
        L56:
            java.lang.String r0 = "NO_UNSUPPORTED_TYPE"
            goto L5b
        L59:
            java.lang.String r0 = "NO"
        L5b:
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            goto L6b
        L63:
            r5 = r17
            r6 = r18
            r7 = r19
            java.lang.String r0 = "Source error"
        L6b:
            r1 = 0
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            if (r1 != 0) goto L78
            java.lang.String r1 = ": null"
            java.lang.String r0 = p035.AbstractC1220.m3791(r0, r1)
        L78:
            r1 = r0
            long r10 = android.os.SystemClock.elapsedRealtime()
            r0 = r13
            r4 = r14
            r2 = r15
            r3 = r16
            r9 = r21
            r12 = r22
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r12)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.ExoPlaybackException.<init>(int, java.lang.Throwable, int, java.lang.String, int, ʽⁱ.ﹳᐧ, int, ﹳᵢ.ᵢˏ, boolean):void");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExoPlaybackException(String str, Throwable th, int i, int i2, String str2, int i3, C1495 c1495, int i4, C4987 c4987, long j, boolean z) {
        super(str, th, i, j);
        Bundle bundle = Bundle.EMPTY;
        AbstractC3731.m7849(!z || i2 == 1);
        AbstractC3731.m7849(th != null || i2 == 3);
        this.f1206 = i2;
        this.f1207 = str2;
        this.f1211 = i3;
        this.f1209 = c1495;
        this.f1210 = i4;
        this.f1208 = c4987;
        this.f1212 = z;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final IOException m786() {
        AbstractC3731.m7857(this.f1206 == 0);
        Throwable cause = getCause();
        cause.getClass();
        return (IOException) cause;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ExoPlaybackException m787(C4987 c4987) {
        String message = getMessage();
        String str = AbstractC3712.f14481;
        return new ExoPlaybackException(message, getCause(), this.f1136, this.f1206, this.f1207, this.f1211, this.f1209, this.f1210, c4987, this.f1137, this.f1212);
    }
}
