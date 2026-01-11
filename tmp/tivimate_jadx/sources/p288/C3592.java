package p288;

import java.io.InputStream;
import java.io.PushbackInputStream;
import java.util.zip.Inflater;

/* renamed from: ٴـ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3592 extends AbstractC3590 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public Inflater f14033;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public byte[] f14034;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public int f14035;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public byte[] f14036;

    @Override // p288.AbstractC3590, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        Inflater inflater = this.f14033;
        if (inflater != null) {
            inflater.end();
        }
        super.close();
    }

    @Override // p288.AbstractC3590, java.io.InputStream
    public final int read() {
        byte[] bArr = this.f14036;
        if (read(bArr, 0, bArr.length) == -1) {
            return -1;
        }
        return bArr[0];
    }

    @Override // p288.AbstractC3590, java.io.InputStream
    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x003d, code lost:
    
        throw new java.io.EOFException("Unexpected end of input stream");
     */
    @Override // p288.AbstractC3590, java.io.InputStream
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int read(byte[] r6, int r7, int r8) {
        /*
            r5 = this;
        L0:
            java.util.zip.Inflater r0 = r5.f14033     // Catch: java.util.zip.DataFormatException -> L3e
            int r0 = r0.inflate(r6, r7, r8)     // Catch: java.util.zip.DataFormatException -> L3e
            if (r0 != 0) goto L41
            java.util.zip.Inflater r0 = r5.f14033     // Catch: java.util.zip.DataFormatException -> L3e
            boolean r0 = r0.finished()     // Catch: java.util.zip.DataFormatException -> L3e
            r1 = -1
            if (r0 != 0) goto L40
            java.util.zip.Inflater r0 = r5.f14033     // Catch: java.util.zip.DataFormatException -> L3e
            boolean r0 = r0.needsDictionary()     // Catch: java.util.zip.DataFormatException -> L3e
            if (r0 == 0) goto L1a
            goto L40
        L1a:
            java.util.zip.Inflater r0 = r5.f14033     // Catch: java.util.zip.DataFormatException -> L3e
            boolean r0 = r0.needsInput()     // Catch: java.util.zip.DataFormatException -> L3e
            if (r0 == 0) goto L0
            byte[] r0 = r5.f14034     // Catch: java.util.zip.DataFormatException -> L3e
            int r2 = r0.length     // Catch: java.util.zip.DataFormatException -> L3e
            ٴـ.ⁱˊ r3 = r5.f14027     // Catch: java.util.zip.DataFormatException -> L3e
            r4 = 0
            int r2 = r3.read(r0, r4, r2)     // Catch: java.util.zip.DataFormatException -> L3e
            r5.f14035 = r2     // Catch: java.util.zip.DataFormatException -> L3e
            if (r2 == r1) goto L36
            java.util.zip.Inflater r1 = r5.f14033     // Catch: java.util.zip.DataFormatException -> L3e
            r1.setInput(r0, r4, r2)     // Catch: java.util.zip.DataFormatException -> L3e
            goto L0
        L36:
            java.io.EOFException r6 = new java.io.EOFException     // Catch: java.util.zip.DataFormatException -> L3e
            java.lang.String r7 = "Unexpected end of input stream"
            r6.<init>(r7)     // Catch: java.util.zip.DataFormatException -> L3e
            throw r6     // Catch: java.util.zip.DataFormatException -> L3e
        L3e:
            r6 = move-exception
            goto L42
        L40:
            return r1
        L41:
            return r0
        L42:
            java.io.IOException r7 = new java.io.IOException
            r7.<init>(r6)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: p288.C3592.read(byte[], int, int):int");
    }

    @Override // p288.AbstractC3590
    /* renamed from: ʽ */
    public final void mo7550(InputStream inputStream, int i) {
        Inflater inflater = this.f14033;
        if (inflater != null) {
            inflater.end();
            this.f14033 = null;
        }
        super.mo7550(inputStream, i);
    }

    @Override // p288.AbstractC3590
    /* renamed from: ᵎﹶ */
    public final int mo7551(PushbackInputStream pushbackInputStream) {
        int remaining = this.f14033.getRemaining();
        if (remaining > 0) {
            pushbackInputStream.unread(this.f14027.f14054, this.f14035 - remaining, remaining);
        }
        return remaining;
    }
}
