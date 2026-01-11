package p366;

import android.media.MediaDataSource;
import java.nio.ByteBuffer;

/* renamed from: ᵔﹶ.ʽʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4466 extends MediaDataSource {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ ByteBuffer f16719;

    public C4466(ByteBuffer byteBuffer) {
        this.f16719 = byteBuffer;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // android.media.MediaDataSource
    public final long getSize() {
        return this.f16719.limit();
    }

    @Override // android.media.MediaDataSource
    public final int readAt(long j, byte[] bArr, int i, int i2) {
        ByteBuffer byteBuffer = this.f16719;
        if (j >= byteBuffer.limit()) {
            return -1;
        }
        byteBuffer.position((int) j);
        int min = Math.min(i2, byteBuffer.remaining());
        byteBuffer.get(bArr, i, min);
        return min;
    }
}
