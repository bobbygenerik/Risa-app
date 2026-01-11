package io.antmedia.rtmp_client;

import java.io.IOException;
import p307.AbstractC3740;

/* loaded from: classes.dex */
public class RtmpClient {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public long f3105;

    /* loaded from: classes.dex */
    public static class RtmpIOException extends IOException {
        public RtmpIOException(int i) {
            super(AbstractC3740.m7932(i, "RTMP error: "));
        }
    }

    static {
        System.loadLibrary("rtmp-jni");
    }

    private native long nativeAlloc();

    private native void nativeClose(long j);

    private native int nativeOpen(String str, boolean z, long j, int i, int i2);

    private native int nativeRead(byte[] bArr, int i, int i2, long j);

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int m2731(byte[] bArr, int i, int i2) {
        int nativeRead = nativeRead(bArr, i, i2, this.f3105);
        if (nativeRead >= 0 || nativeRead == -1) {
            return nativeRead;
        }
        throw new RtmpIOException(nativeRead);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m2732(String str) {
        long nativeAlloc = nativeAlloc();
        this.f3105 = nativeAlloc;
        if (nativeAlloc == 0) {
            throw new RtmpIOException(-2);
        }
        int nativeOpen = nativeOpen(str, false, nativeAlloc, 10000, 10000);
        if (nativeOpen == 0) {
            return;
        }
        this.f3105 = 0L;
        throw new RtmpIOException(nativeOpen);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m2733() {
        nativeClose(this.f3105);
        this.f3105 = 0L;
    }
}
