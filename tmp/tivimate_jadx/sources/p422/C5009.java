package p422;

import android.media.MediaDataSource;
import java.io.IOException;

/* renamed from: ﹳﹳ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5009 extends MediaDataSource {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public long f18749;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C5010 f18750;

    public C5009(C5010 c5010) {
        this.f18750 = c5010;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // android.media.MediaDataSource
    public final long getSize() {
        return -1L;
    }

    @Override // android.media.MediaDataSource
    public final int readAt(long j, byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        if (j < 0) {
            return -1;
        }
        try {
            long j2 = this.f18749;
            C5010 c5010 = this.f18750;
            if (j2 != j) {
                if (j2 >= 0 && j >= j2 + c5010.f18746.available()) {
                    return -1;
                }
                c5010.m9888(j);
                this.f18749 = j;
            }
            if (i2 > c5010.f18746.available()) {
                i2 = c5010.f18746.available();
            }
            int read = c5010.read(bArr, i, i2);
            if (read >= 0) {
                this.f18749 += read;
                return read;
            }
        } catch (IOException unused) {
        }
        this.f18749 = -1L;
        return -1;
    }
}
