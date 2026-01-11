package p090;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import p164.C2569;
import p164.C2599;
import p164.InterfaceC2590;

/* renamed from: ʿᵢ.ʻˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1773 extends OutputStream {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f7162;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Object f7163;

    public C1773(FileOutputStream fileOutputStream) {
        this.f7162 = 0;
        this.f7163 = fileOutputStream;
    }

    public /* synthetic */ C1773(InterfaceC2590 interfaceC2590, int i) {
        this.f7162 = i;
        this.f7163 = interfaceC2590;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    private final void m4732() {
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    private final void m4733() {
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    private final void m4734() {
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        switch (this.f7162) {
            case 0:
            case 1:
                return;
            default:
                ((C2569) this.f7163).close();
                return;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() {
        switch (this.f7162) {
            case 0:
                ((FileOutputStream) this.f7163).flush();
                return;
            case 1:
                return;
            default:
                C2569 c2569 = (C2569) this.f7163;
                if (c2569.f9759) {
                    return;
                }
                c2569.flush();
                return;
        }
    }

    public String toString() {
        switch (this.f7162) {
            case 1:
                return ((C2599) this.f7163) + ".outputStream()";
            case 2:
                return ((C2569) this.f7163) + ".outputStream()";
            default:
                return super.toString();
        }
    }

    @Override // java.io.OutputStream
    public final void write(int i) {
        switch (this.f7162) {
            case 0:
                ((FileOutputStream) this.f7163).write(i);
                return;
            case 1:
                ((C2599) this.f7163).m5825(i);
                return;
            default:
                C2569 c2569 = (C2569) this.f7163;
                if (c2569.f9759) {
                    throw new IOException("closed");
                }
                c2569.f9761.m5825((byte) i);
                c2569.m5733();
                return;
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        switch (this.f7162) {
            case 0:
                ((FileOutputStream) this.f7163).write(bArr);
                return;
            default:
                super.write(bArr);
                return;
        }
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        switch (this.f7162) {
            case 0:
                ((FileOutputStream) this.f7163).write(bArr, i, i2);
                return;
            case 1:
                ((C2599) this.f7163).write(bArr, i, i2);
                return;
            default:
                C2569 c2569 = (C2569) this.f7163;
                if (c2569.f9759) {
                    throw new IOException("closed");
                }
                c2569.f9761.write(bArr, i, i2);
                c2569.m5733();
                return;
        }
    }
}
