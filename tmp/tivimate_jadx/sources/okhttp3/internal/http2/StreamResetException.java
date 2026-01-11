package okhttp3.internal.http2;

import java.io.IOException;

/* loaded from: classes.dex */
public final class StreamResetException extends IOException {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f3113;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public StreamResetException(int r3) {
        /*
            r2 = this;
            switch(r3) {
                case 1: goto L2d;
                case 2: goto L2a;
                case 3: goto L27;
                case 4: goto L24;
                case 5: goto L21;
                case 6: goto L1e;
                case 7: goto L1b;
                case 8: goto L18;
                case 9: goto L15;
                case 10: goto L12;
                case 11: goto Lf;
                case 12: goto Lc;
                case 13: goto L9;
                case 14: goto L6;
                default: goto L3;
            }
        L3:
            java.lang.String r0 = "null"
            goto L2f
        L6:
            java.lang.String r0 = "HTTP_1_1_REQUIRED"
            goto L2f
        L9:
            java.lang.String r0 = "INADEQUATE_SECURITY"
            goto L2f
        Lc:
            java.lang.String r0 = "ENHANCE_YOUR_CALM"
            goto L2f
        Lf:
            java.lang.String r0 = "CONNECT_ERROR"
            goto L2f
        L12:
            java.lang.String r0 = "COMPRESSION_ERROR"
            goto L2f
        L15:
            java.lang.String r0 = "CANCEL"
            goto L2f
        L18:
            java.lang.String r0 = "REFUSED_STREAM"
            goto L2f
        L1b:
            java.lang.String r0 = "FRAME_SIZE_ERROR"
            goto L2f
        L1e:
            java.lang.String r0 = "STREAM_CLOSED"
            goto L2f
        L21:
            java.lang.String r0 = "SETTINGS_TIMEOUT"
            goto L2f
        L24:
            java.lang.String r0 = "FLOW_CONTROL_ERROR"
            goto L2f
        L27:
            java.lang.String r0 = "INTERNAL_ERROR"
            goto L2f
        L2a:
            java.lang.String r0 = "PROTOCOL_ERROR"
            goto L2f
        L2d:
            java.lang.String r0 = "NO_ERROR"
        L2f:
            java.lang.String r1 = "stream was reset: "
            java.lang.String r0 = r1.concat(r0)
            r2.<init>(r0)
            r2.f3113 = r3
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.StreamResetException.<init>(int):void");
    }
}
