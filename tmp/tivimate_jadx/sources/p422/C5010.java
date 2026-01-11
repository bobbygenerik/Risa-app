package p422;

import java.io.InputStream;

/* renamed from: ﹳﹳ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5010 extends C5008 {
    public C5010(InputStream inputStream) {
        super(inputStream);
        if (!inputStream.markSupported()) {
            throw new IllegalArgumentException("Cannot create SeekableByteOrderedDataInputStream with stream that does not support mark/reset");
        }
        this.f18746.mark(Integer.MAX_VALUE);
    }

    public C5010(byte[] bArr) {
        super(bArr);
        this.f18746.mark(Integer.MAX_VALUE);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m9888(long j) {
        int i = this.f18745;
        if (i > j) {
            this.f18745 = 0;
            this.f18746.reset();
        } else {
            j -= i;
        }
        m9887((int) j);
    }
}
