package p164;

import java.io.OutputStream;
import java.nio.ByteBuffer;
import p090.C1773;

/* renamed from: ˊᐧ.ʻٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2569 implements InterfaceC2590 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public boolean f9759;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final InterfaceC2576 f9760;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C2599 f9761 = new Object();

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, ˊᐧ.ﾞᴵ] */
    public C2569(InterfaceC2576 interfaceC2576) {
        this.f9760 = interfaceC2576;
    }

    @Override // p164.InterfaceC2576, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public final void close() {
        InterfaceC2576 interfaceC2576 = this.f9760;
        if (this.f9759) {
            return;
        }
        try {
            C2599 c2599 = this.f9761;
            long j = c2599.f9835;
            if (j > 0) {
                interfaceC2576.mo5741(c2599, j);
            }
            th = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            interfaceC2576.close();
        } catch (Throwable th2) {
            if (th == null) {
                th = th2;
            }
        }
        this.f9759 = true;
        if (th != null) {
            throw th;
        }
    }

    @Override // p164.InterfaceC2590, p164.InterfaceC2576, java.io.Flushable
    public final void flush() {
        if (this.f9759) {
            throw new IllegalStateException("closed");
        }
        C2599 c2599 = this.f9761;
        long j = c2599.f9835;
        InterfaceC2576 interfaceC2576 = this.f9760;
        if (j > 0) {
            interfaceC2576.mo5741(c2599, j);
        }
        interfaceC2576.flush();
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return !this.f9759;
    }

    public final String toString() {
        return "buffer(" + this.f9760 + ')';
    }

    @Override // java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer byteBuffer) {
        if (this.f9759) {
            throw new IllegalStateException("closed");
        }
        int write = this.f9761.write(byteBuffer);
        m5733();
        return write;
    }

    @Override // p164.InterfaceC2590
    public final InterfaceC2590 write(byte[] bArr) {
        if (this.f9759) {
            throw new IllegalStateException("closed");
        }
        this.f9761.write(bArr, 0, bArr.length);
        m5733();
        return this;
    }

    @Override // p164.InterfaceC2590
    public final InterfaceC2590 writeByte(int i) {
        if (this.f9759) {
            throw new IllegalStateException("closed");
        }
        this.f9761.m5825(i);
        m5733();
        return this;
    }

    @Override // p164.InterfaceC2590
    public final InterfaceC2590 writeInt(int i) {
        if (this.f9759) {
            throw new IllegalStateException("closed");
        }
        this.f9761.m5832(i);
        m5733();
        return this;
    }

    @Override // p164.InterfaceC2590
    public final InterfaceC2590 writeShort(int i) {
        if (this.f9759) {
            throw new IllegalStateException("closed");
        }
        this.f9761.m5835(i);
        m5733();
        return this;
    }

    @Override // p164.InterfaceC2590
    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final InterfaceC2590 mo5732(long j) {
        if (this.f9759) {
            throw new IllegalStateException("closed");
        }
        this.f9761.m5822(j);
        m5733();
        return this;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final InterfaceC2590 m5733() {
        if (this.f9759) {
            throw new IllegalStateException("closed");
        }
        C2599 c2599 = this.f9761;
        long m5826 = c2599.m5826();
        if (m5826 > 0) {
            this.f9760.mo5741(c2599, m5826);
        }
        return this;
    }

    @Override // p164.InterfaceC2590
    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final InterfaceC2590 mo5734(int i, int i2, String str) {
        if (this.f9759) {
            throw new IllegalStateException("closed");
        }
        this.f9761.m5824(i, i2, str);
        m5733();
        return this;
    }

    @Override // p164.InterfaceC2590
    /* renamed from: ʿ, reason: contains not printable characters */
    public final InterfaceC2590 mo5735(int i, byte[] bArr) {
        if (this.f9759) {
            throw new IllegalStateException("closed");
        }
        this.f9761.write(bArr, 0, i);
        m5733();
        return this;
    }

    @Override // p164.InterfaceC2590
    /* renamed from: ˈ, reason: contains not printable characters */
    public final C2599 mo5736() {
        return this.f9761;
    }

    @Override // p164.InterfaceC2576
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C2580 mo5737() {
        return this.f9760.mo5737();
    }

    @Override // p164.InterfaceC2590
    /* renamed from: ـﹶ, reason: contains not printable characters */
    public final OutputStream mo5738() {
        return new C1773(this, 2);
    }

    @Override // p164.InterfaceC2590
    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public final InterfaceC2590 mo5739(String str) {
        if (this.f9759) {
            throw new IllegalStateException("closed");
        }
        this.f9761.m5827(str);
        m5733();
        return this;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final long m5740(InterfaceC2588 interfaceC2588) {
        long j = 0;
        while (true) {
            long mo5763 = interfaceC2588.mo5763(this.f9761, 8192L);
            if (mo5763 == -1) {
                return j;
            }
            j += mo5763;
            m5733();
        }
    }

    @Override // p164.InterfaceC2576
    /* renamed from: ᵔי, reason: contains not printable characters */
    public final void mo5741(C2599 c2599, long j) {
        if (this.f9759) {
            throw new IllegalStateException("closed");
        }
        this.f9761.mo5741(c2599, j);
        m5733();
    }

    @Override // p164.InterfaceC2590
    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final InterfaceC2590 mo5742(C2571 c2571) {
        if (this.f9759) {
            throw new IllegalStateException("closed");
        }
        this.f9761.m5838(c2571);
        m5733();
        return this;
    }
}
