package p170;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.atomic.AtomicBoolean;
import p035.AbstractC1220;
import p101.InterfaceC1908;
import p174.AbstractRunnableC2657;
import p197.AbstractC2901;
import p197.C2900;
import p289.C3602;

/* renamed from: ˊﹶ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2618 extends AbstractRunnableC2657 {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final InterfaceC1908 f9921;

    public C2618(String str, InputStream inputStream, InterfaceC1908 interfaceC1908, C3602 c3602) {
        this.f10087 = new AtomicBoolean(false);
        this.f10088 = inputStream;
        this.f10090 = c3602;
        Thread thread = new Thread(this, AbstractC1220.m3771("Packet Reader for ", str));
        this.f10089 = thread;
        thread.setDaemon(true);
        this.f9921 = interfaceC1908;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int m5878() {
        byte[] bArr = new byte[4];
        m5879(bArr);
        AbstractC2901 abstractC2901 = new AbstractC2901(bArr, true, C2900.f10934);
        abstractC2901.m6410();
        byte[] bArr2 = new byte[3];
        abstractC2901.m6411(3, bArr2);
        return ((bArr2[0] << 16) & 16711680) | ((bArr2[1] << 8) & 65280) | (bArr2[2] & 255);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m5879(byte[] bArr) {
        int length = bArr.length;
        int i = 0;
        while (length > 0) {
            int read = this.f10088.read(bArr, i, length);
            if (read == -1) {
                throw new IOException(new EOFException("EOF while reading packet"));
            }
            length -= read;
            i += read;
        }
    }
}
