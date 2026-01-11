package p164;

import java.io.EOFException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import p307.AbstractC3740;
import p393.AbstractC4707;
import p393.AbstractC4708;
import p435.AbstractC5154;

/* renamed from: ˊᐧ.ـˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2586 implements InterfaceC2592 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public boolean f9811;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final InterfaceC2588 f9812;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C2599 f9813 = new Object();

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, ˊᐧ.ﾞᴵ] */
    public C2586(InterfaceC2588 interfaceC2588) {
        this.f9812 = interfaceC2588;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public final void close() {
        if (this.f9811) {
            return;
        }
        this.f9811 = true;
        this.f9812.close();
        this.f9813.m5836();
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return !this.f9811;
    }

    @Override // java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer byteBuffer) {
        C2599 c2599 = this.f9813;
        if (c2599.f9835 == 0 && this.f9812.mo5763(c2599, 8192L) == -1) {
            return -1;
        }
        return c2599.read(byteBuffer);
    }

    @Override // p164.InterfaceC2592
    public final byte readByte() {
        mo5802(1L);
        return this.f9813.readByte();
    }

    @Override // p164.InterfaceC2592
    public final int readInt() {
        mo5802(4L);
        return this.f9813.readInt();
    }

    @Override // p164.InterfaceC2592
    public final short readShort() {
        mo5802(2L);
        return this.f9813.readShort();
    }

    @Override // p164.InterfaceC2592
    public final boolean request(long j) {
        C2599 c2599;
        if (j < 0) {
            throw new IllegalArgumentException(AbstractC3740.m7926("byteCount < 0: ", j).toString());
        }
        if (this.f9811) {
            throw new IllegalStateException("closed");
        }
        do {
            c2599 = this.f9813;
            if (c2599.f9835 >= j) {
                return true;
            }
        } while (this.f9812.mo5763(c2599, 8192L) != -1);
        return false;
    }

    @Override // p164.InterfaceC2592
    public final void skip(long j) {
        if (this.f9811) {
            throw new IllegalStateException("closed");
        }
        while (j > 0) {
            C2599 c2599 = this.f9813;
            if (c2599.f9835 == 0 && this.f9812.mo5763(c2599, 8192L) == -1) {
                throw new EOFException();
            }
            long min = Math.min(j, c2599.f9835);
            c2599.skip(min);
            j -= min;
        }
    }

    public final String toString() {
        return "buffer(" + this.f9812 + ')';
    }

    @Override // p164.InterfaceC2592
    /* renamed from: ʻˋ, reason: contains not printable characters */
    public final String mo5791(Charset charset) {
        InterfaceC2588 interfaceC2588 = this.f9812;
        C2599 c2599 = this.f9813;
        c2599.m5834(interfaceC2588);
        return c2599.m5831(c2599.f9835, charset);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final long m5792(byte b, long j, long j2) {
        if (this.f9811) {
            throw new IllegalStateException("closed");
        }
        if (0 > j2) {
            throw new IllegalArgumentException(AbstractC3740.m7926("fromIndex=0 toIndex=", j2).toString());
        }
        long j3 = 0;
        while (j3 < j2) {
            C2599 c2599 = this.f9813;
            byte b2 = b;
            long j4 = j2;
            long m5829 = c2599.m5829(b2, j3, j4);
            if (m5829 == -1) {
                long j5 = c2599.f9835;
                if (j5 >= j4 || this.f9812.mo5763(c2599, 8192L) == -1) {
                    break;
                }
                j3 = Math.max(j3, j5);
                b = b2;
                j2 = j4;
            } else {
                return m5829;
            }
        }
        return -1L;
    }

    @Override // p164.InterfaceC2592
    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final short mo5793() {
        mo5802(2L);
        return this.f9813.mo5793();
    }

    @Override // p164.InterfaceC2592
    /* renamed from: ˈ, reason: contains not printable characters */
    public final C2599 mo5794() {
        return this.f9813;
    }

    @Override // p164.InterfaceC2592
    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final String mo5795(long j) {
        mo5802(j);
        C2599 c2599 = this.f9813;
        c2599.getClass();
        return c2599.m5831(j, AbstractC5154.f19435);
    }

    @Override // p164.InterfaceC2592
    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final long mo5796(C2571 c2571) {
        return AbstractC4707.m9414(this, c2571, c2571.mo5749(), Long.MAX_VALUE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v0, types: [java.lang.Object, ˊᐧ.ﾞᴵ] */
    @Override // p164.InterfaceC2592
    /* renamed from: ˊˋ, reason: contains not printable characters */
    public final String mo5797(long j) {
        if (j < 0) {
            throw new IllegalArgumentException(AbstractC3740.m7926("limit < 0: ", j).toString());
        }
        long j2 = j == Long.MAX_VALUE ? Long.MAX_VALUE : j + 1;
        long m5792 = m5792((byte) 10, 0L, j2);
        C2599 c2599 = this.f9813;
        if (m5792 != -1) {
            return AbstractC4708.m9422(c2599, m5792);
        }
        if (j2 < Long.MAX_VALUE && request(j2) && c2599.m5841(j2 - 1) == 13 && request(j2 + 1) && c2599.m5841(j2) == 10) {
            return AbstractC4708.m9422(c2599, j2);
        }
        ?? obj = new Object();
        c2599.m5830(obj, 0L, Math.min(32, c2599.f9835));
        throw new EOFException("\\n not found: limit=" + Math.min(c2599.f9835, j) + " content=" + obj.mo5799(obj.f9835).mo5751() + (char) 8230);
    }

    @Override // p164.InterfaceC2592
    /* renamed from: ˏי, reason: contains not printable characters */
    public final boolean mo5798(C2571 c2571) {
        int mo5749 = c2571.mo5749();
        if (this.f9811) {
            throw new IllegalStateException("closed");
        }
        if (mo5749 >= 0 && mo5749 <= c2571.mo5749()) {
            return mo5749 == 0 || AbstractC4707.m9414(this, c2571, mo5749, 1L) != -1;
        }
        return false;
    }

    @Override // p164.InterfaceC2588
    /* renamed from: ˑﹳ */
    public final C2580 mo5762() {
        return this.f9812.mo5762();
    }

    @Override // p164.InterfaceC2592
    /* renamed from: יـ, reason: contains not printable characters */
    public final C2571 mo5799(long j) {
        mo5802(j);
        return this.f9813.mo5799(j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x002c, code lost:
    
        return -1;
     */
    @Override // p164.InterfaceC2592
    /* renamed from: ـˏ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo5800(p164.C2583 r7) {
        /*
            r6 = this;
            boolean r0 = r6.f9811
            if (r0 != 0) goto L2d
        L4:
            r0 = 1
            ˊᐧ.ﾞᴵ r1 = r6.f9813
            int r0 = p393.AbstractC4708.m9423(r1, r7, r0)
            r2 = -2
            r3 = -1
            if (r0 == r2) goto L1e
            if (r0 == r3) goto L2c
            ˊᐧ.ʼˎ[] r7 = r7.f9807
            r7 = r7[r0]
            int r7 = r7.mo5749()
            long r2 = (long) r7
            r1.skip(r2)
            return r0
        L1e:
            ˊᐧ.ᴵˊ r0 = r6.f9812
            r4 = 8192(0x2000, double:4.0474E-320)
            long r0 = r0.mo5763(r1, r4)
            r4 = -1
            int r0 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r0 != 0) goto L4
        L2c:
            return r3
        L2d:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "closed"
            r7.<init>(r0)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: p164.C2586.mo5800(ˊᐧ.ˏי):int");
    }

    @Override // p164.InterfaceC2592
    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final int mo5801() {
        mo5802(4L);
        return this.f9813.mo5801();
    }

    @Override // p164.InterfaceC2588
    /* renamed from: ٴﹶ */
    public final long mo5763(C2599 c2599, long j) {
        if (j < 0) {
            throw new IllegalArgumentException(AbstractC3740.m7926("byteCount < 0: ", j).toString());
        }
        if (this.f9811) {
            throw new IllegalStateException("closed");
        }
        C2599 c25992 = this.f9813;
        if (c25992.f9835 == 0) {
            if (j == 0) {
                return 0L;
            }
            if (this.f9812.mo5763(c25992, 8192L) == -1) {
                return -1L;
            }
        }
        return c25992.mo5763(c2599, Math.min(j, c25992.f9835));
    }

    @Override // p164.InterfaceC2592
    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    public final void mo5802(long j) {
        if (!request(j)) {
            throw new EOFException();
        }
    }

    @Override // p164.InterfaceC2592
    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final String mo5803() {
        return mo5797(Long.MAX_VALUE);
    }

    @Override // p164.InterfaceC2592
    /* renamed from: ᵎʻ, reason: contains not printable characters */
    public final InputStream mo5804() {
        return new C2584(1, this);
    }

    @Override // p164.InterfaceC2592
    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final boolean mo5805() {
        if (this.f9811) {
            throw new IllegalStateException("closed");
        }
        C2599 c2599 = this.f9813;
        return c2599.mo5805() && this.f9812.mo5763(c2599, 8192L) == -1;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final long m5806() {
        char c;
        char c2;
        char c3;
        char c4;
        long j;
        mo5802(8L);
        C2599 c2599 = this.f9813;
        long j2 = c2599.f9835;
        if (j2 < 8) {
            throw new EOFException();
        }
        C2577 c2577 = c2599.f9834;
        int i = c2577.f9782;
        int i2 = c2577.f9778;
        if (i2 - i < 8) {
            j = ((c2599.readInt() & 4294967295L) << 32) | (4294967295L & c2599.readInt());
            c2 = '8';
            c4 = '\b';
            c3 = '(';
            c = 24;
        } else {
            byte[] bArr = c2577.f9783;
            c = 24;
            c2 = '8';
            c3 = '(';
            c4 = '\b';
            int i3 = i + 7;
            long j3 = ((bArr[i] & 255) << 56) | ((bArr[i + 1] & 255) << 48) | ((bArr[i + 2] & 255) << 40) | ((bArr[i + 3] & 255) << 32) | ((bArr[i + 4] & 255) << 24) | ((bArr[i + 5] & 255) << 16) | ((bArr[i + 6] & 255) << 8);
            int i4 = i + 8;
            long j4 = j3 | (bArr[i3] & 255);
            c2599.f9835 = j2 - 8;
            if (i4 == i2) {
                c2599.f9834 = c2577.m5776();
                AbstractC2570.m5744(c2577);
            } else {
                c2577.f9782 = i4;
            }
            j = j4;
        }
        return ((j & 255) << c2) | (((-72057594037927936L) & j) >>> c2) | ((71776119061217280L & j) >>> c3) | ((280375465082880L & j) >>> c) | ((1095216660480L & j) >>> c4) | ((4278190080L & j) << c4) | ((16711680 & j) << c) | ((65280 & j) << c3);
    }

    @Override // p164.InterfaceC2592
    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final long mo5807(C2571 c2571) {
        if (this.f9811) {
            throw new IllegalStateException("closed");
        }
        long j = 0;
        while (true) {
            C2599 c2599 = this.f9813;
            long m5840 = c2599.m5840(c2571, j);
            if (m5840 != -1) {
                return m5840;
            }
            long j2 = c2599.f9835;
            if (this.f9812.mo5763(c2599, 8192L) == -1) {
                return -1L;
            }
            j = Math.max(j, j2);
        }
    }

    @Override // p164.InterfaceC2592
    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public final String mo5808() {
        long m5792 = m5792((byte) 10, 0L, Long.MAX_VALUE);
        C2599 c2599 = this.f9813;
        if (m5792 != -1) {
            return AbstractC4708.m9422(c2599, m5792);
        }
        long j = c2599.f9835;
        if (j != 0) {
            return mo5795(j);
        }
        return null;
    }

    @Override // p164.InterfaceC2592
    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public final long mo5809(C2599 c2599) {
        C2599 c25992;
        long j = 0;
        while (true) {
            InterfaceC2588 interfaceC2588 = this.f9812;
            c25992 = this.f9813;
            if (interfaceC2588.mo5763(c25992, 8192L) == -1) {
                break;
            }
            long m5826 = c25992.m5826();
            if (m5826 > 0) {
                j += m5826;
                c2599.mo5741(c25992, m5826);
            }
        }
        long j2 = c25992.f9835;
        if (j2 <= 0) {
            return j;
        }
        long j3 = j + j2;
        c2599.mo5741(c25992, j2);
        return j3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0031, code lost:
    
        if (r0 == 0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0034, code lost:
    
        ˉᵎ.ⁱˊ.ʽ(16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0048, code lost:
    
        throw new java.lang.NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x".concat(java.lang.Integer.toString(r2, 16)));
     */
    @Override // p164.InterfaceC2592
    /* renamed from: ﹳﹳ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo5810() {
        /*
            r6 = this;
            r0 = 1
            r6.mo5802(r0)
            r0 = 0
        L6:
            int r1 = r0 + 1
            long r2 = (long) r1
            boolean r2 = r6.request(r2)
            ˊᐧ.ﾞᴵ r3 = r6.f9813
            if (r2 == 0) goto L49
            long r4 = (long) r0
            byte r2 = r3.m5841(r4)
            r4 = 48
            if (r2 < r4) goto L1e
            r4 = 57
            if (r2 <= r4) goto L2f
        L1e:
            r4 = 97
            if (r2 < r4) goto L26
            r4 = 102(0x66, float:1.43E-43)
            if (r2 <= r4) goto L2f
        L26:
            r4 = 65
            if (r2 < r4) goto L31
            r4 = 70
            if (r2 <= r4) goto L2f
            goto L31
        L2f:
            r0 = r1
            goto L6
        L31:
            if (r0 == 0) goto L34
            goto L49
        L34:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            r1 = 16
            ˉᵎ.ⁱˊ.ʽ(r1)
            java.lang.String r1 = java.lang.Integer.toString(r2, r1)
            java.lang.String r2 = "Expected leading [0-9a-fA-F] character but was 0x"
            java.lang.String r1 = r2.concat(r1)
            r0.<init>(r1)
            throw r0
        L49:
            long r0 = r3.mo5810()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p164.C2586.mo5810():long");
    }
}
