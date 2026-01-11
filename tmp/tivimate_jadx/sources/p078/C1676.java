package p078;

import java.io.IOException;
import java.io.OutputStream;
import p012.C0881;
import p033.C1184;
import p449.AbstractC5359;
import p449.InterfaceC5360;

/* renamed from: ʿʼ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1676 extends OutputStream {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final InterfaceC5360 f6793 = AbstractC5359.m10750(C1676.class);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public C1675 f6794;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public C1674 f6795;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public boolean f6796;

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        C1675 c1675 = this.f6794;
        while (true) {
            C0881 c0881 = c1675.f6792;
            if (c0881 == null || c0881.f3737 <= 0) {
                break;
            } else {
                m4566();
            }
        }
        c1675.f6792 = null;
        this.f6796 = true;
        this.f6795 = null;
        f6793.mo4098(Long.valueOf(c1675.f16854), "EOF, {} bytes written");
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() {
        if (this.f6796) {
            throw new IOException("Stream is closed");
        }
        C0881 c0881 = this.f6794.f6792;
        if (c0881 == null || c0881.f3737 <= 0) {
            return;
        }
        m4566();
    }

    @Override // java.io.OutputStream
    public final void write(int i) {
        if (this.f6796) {
            throw new IOException("Stream is closed");
        }
        C1675 c1675 = this.f6794;
        C0881 c0881 = c1675.f6792;
        if (c0881.f3737 == c0881.f3738.length) {
            flush();
        }
        C0881 c08812 = c1675.f6792;
        if (c08812.f3737 == c08812.f3738.length) {
            return;
        }
        c08812.m3108(new byte[]{(byte) i}, 0, 1);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0022, code lost:
    
        if (r4 != r3.length) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0025, code lost:
    
        r2.m3108(r8, r9, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0028, code lost:
    
        r9 = r9 + r1;
        r10 = r10 - r1;
     */
    @Override // java.io.OutputStream
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void write(byte[] r8, int r9, int r10) {
        /*
            r7 = this;
            ʿʼ.ᵎﹶ r0 = r7.f6794
            boolean r1 = r7.f6796
            if (r1 != 0) goto L4f
        L6:
            ʻᴵ.ʻٴ r1 = r0.f6792
            byte[] r1 = r1.f3738
            int r1 = r1.length
            int r1 = java.lang.Math.min(r10, r1)
        Lf:
            ʻᴵ.ʻٴ r2 = r0.f6792
            byte[] r3 = r2.f3738
            int r4 = r3.length
            if (r1 > r4) goto L2d
            int r4 = r2.f3737
            int r5 = r4 + r1
            int r6 = r3.length
            if (r5 <= r6) goto L21
            r7.flush()
            goto Lf
        L21:
            int r3 = r3.length
            if (r4 != r3) goto L25
            goto L28
        L25:
            r2.m3108(r8, r9, r1)
        L28:
            int r9 = r9 + r1
            int r10 = r10 - r1
            if (r10 > 0) goto L6
            return
        L2d:
            java.lang.IllegalArgumentException r8 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            java.lang.String r10 = "RingBuffer of length "
            r9.<init>(r10)
            int r10 = r3.length
            r9.append(r10)
            java.lang.String r10 = " cannot accomodate "
            r9.append(r10)
            r9.append(r1)
            java.lang.String r10 = " bytes."
            r9.append(r10)
            java.lang.String r9 = r9.toString()
            r8.<init>(r9)
            throw r8
        L4f:
            java.io.IOException r8 = new java.io.IOException
            java.lang.String r9 = "Stream is closed"
            r8.<init>(r9)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: p078.C1676.write(byte[], int, int):void");
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m4566() {
        C1674 c1674 = this.f6795;
        C1675 c1675 = this.f6794;
        c1674.getClass();
        while (true) {
            C0881 c0881 = c1675.f6792;
            if (c0881 == null || c0881.f3737 <= 0) {
                return;
            }
            C1674.f6788.mo4090(c1674.f6789, Long.valueOf(c1675.f16854), "Writing to {} from offset {}");
            C1671 c1671 = c1674.f6791;
            C1184 c1184 = c1674.f6790;
        }
    }
}
