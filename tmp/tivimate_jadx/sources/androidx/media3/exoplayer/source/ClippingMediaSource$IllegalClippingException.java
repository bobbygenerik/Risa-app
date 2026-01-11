package androidx.media3.exoplayer.source;

import java.io.IOException;

/* loaded from: classes.dex */
public final class ClippingMediaSource$IllegalClippingException extends IOException {
    public ClippingMediaSource$IllegalClippingException(int i) {
        this(i, -9223372036854775807L, -9223372036854775807L);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ClippingMediaSource$IllegalClippingException(int r5, long r6, long r8) {
        /*
            r4 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "Illegal clipping: "
            r0.<init>(r1)
            if (r5 == 0) goto L3e
            r1 = 1
            if (r5 == r1) goto L3b
            r2 = 2
            if (r5 == r2) goto L12
            java.lang.String r5 = "unknown"
            goto L40
        L12:
            r2 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r5 = (r6 > r2 ? 1 : (r6 == r2 ? 0 : -1))
            if (r5 == 0) goto L20
            int r5 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1))
            if (r5 == 0) goto L20
            goto L21
        L20:
            r1 = 0
        L21:
            p305.AbstractC3731.m7857(r1)
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            java.lang.String r1 = "start exceeds end. Start time: "
            r5.<init>(r1)
            r5.append(r6)
            java.lang.String r6 = ", End time: "
            r5.append(r6)
            r5.append(r8)
            java.lang.String r5 = r5.toString()
            goto L40
        L3b:
            java.lang.String r5 = "not seekable to start"
            goto L40
        L3e:
            java.lang.String r5 = "invalid period count"
        L40:
            r0.append(r5)
            java.lang.String r5 = r0.toString()
            r4.<init>(r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.source.ClippingMediaSource$IllegalClippingException.<init>(int, long, long):void");
    }
}
