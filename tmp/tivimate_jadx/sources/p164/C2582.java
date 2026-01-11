package p164;

import com.bumptech.glide.ˈ;
import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;
import p010.AbstractC0844;
import p307.AbstractC3740;
import p435.AbstractC5143;

/* renamed from: ˊᐧ.ˉˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2582 implements InterfaceC2588 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final Inflater f9802;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public byte f9803;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final C2572 f9804;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C2586 f9805;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final CRC32 f9806;

    public C2582(InterfaceC2592 interfaceC2592) {
        C2586 c2586 = new C2586(interfaceC2592);
        this.f9805 = c2586;
        Inflater inflater = new Inflater(true);
        this.f9802 = inflater;
        this.f9804 = new C2572(c2586, inflater);
        this.f9806 = new CRC32();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static void m5784(int i, int i2, String str) {
        if (i2 == i) {
            return;
        }
        StringBuilder m3017 = AbstractC0844.m3017(str, ": actual 0x");
        m3017.append(AbstractC5143.m10117(8, ˈ.ᵎⁱ(i2)));
        m3017.append(" != expected 0x");
        m3017.append(AbstractC5143.m10117(8, ˈ.ᵎⁱ(i)));
        throw new IOException(m3017.toString());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f9804.close();
    }

    @Override // p164.InterfaceC2588
    /* renamed from: ˑﹳ */
    public final C2580 mo5762() {
        return this.f9805.f9812.mo5762();
    }

    @Override // p164.InterfaceC2588
    /* renamed from: ٴﹶ */
    public final long mo5763(C2599 c2599, long j) {
        C2582 c2582 = this;
        if (j < 0) {
            throw new IllegalArgumentException(AbstractC3740.m7926("byteCount < 0: ", j).toString());
        }
        if (j == 0) {
            return 0L;
        }
        byte b = c2582.f9803;
        CRC32 crc32 = c2582.f9806;
        C2586 c2586 = c2582.f9805;
        if (b == 0) {
            c2586.mo5802(10L);
            C2599 c25992 = c2586.f9813;
            byte m5841 = c25992.m5841(3L);
            boolean z = ((m5841 >> 1) & 1) == 1;
            if (z) {
                c2582.m5785(c25992, 0L, 10L);
            }
            m5784(8075, c2586.readShort(), "ID1ID2");
            c2586.skip(8L);
            if (((m5841 >> 2) & 1) == 1) {
                c2586.mo5802(2L);
                if (z) {
                    m5785(c25992, 0L, 2L);
                }
                long mo5793 = c25992.mo5793() & 65535;
                c2586.mo5802(mo5793);
                if (z) {
                    m5785(c25992, 0L, mo5793);
                }
                c2586.skip(mo5793);
            }
            if (((m5841 >> 3) & 1) == 1) {
                long m5792 = c2586.m5792((byte) 0, 0L, Long.MAX_VALUE);
                if (m5792 == -1) {
                    throw new EOFException();
                }
                if (z) {
                    m5785(c25992, 0L, m5792 + 1);
                }
                c2586.skip(m5792 + 1);
            }
            if (((m5841 >> 4) & 1) == 1) {
                long m57922 = c2586.m5792((byte) 0, 0L, Long.MAX_VALUE);
                if (m57922 == -1) {
                    throw new EOFException();
                }
                if (z) {
                    c2582 = this;
                    c2582.m5785(c25992, 0L, m57922 + 1);
                } else {
                    c2582 = this;
                }
                c2586.skip(m57922 + 1);
            } else {
                c2582 = this;
            }
            if (z) {
                m5784(c2586.mo5793(), (short) crc32.getValue(), "FHCRC");
                crc32.reset();
            }
            c2582.f9803 = (byte) 1;
        }
        if (c2582.f9803 == 1) {
            long j2 = c2599.f9835;
            long mo5763 = c2582.f9804.mo5763(c2599, j);
            if (mo5763 != -1) {
                c2582.m5785(c2599, j2, mo5763);
                return mo5763;
            }
            c2582.f9803 = (byte) 2;
        }
        if (c2582.f9803 == 2) {
            m5784(c2586.mo5801(), (int) crc32.getValue(), "CRC");
            m5784(c2586.mo5801(), (int) c2582.f9802.getBytesWritten(), "ISIZE");
            c2582.f9803 = (byte) 3;
            if (!c2586.mo5805()) {
                throw new IOException("gzip finished without exhausting source");
            }
        }
        return -1L;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m5785(C2599 c2599, long j, long j2) {
        C2577 c2577 = c2599.f9834;
        while (true) {
            int i = c2577.f9778;
            int i2 = c2577.f9782;
            if (j < i - i2) {
                break;
            }
            j -= i - i2;
            c2577 = c2577.f9784;
        }
        while (j2 > 0) {
            int min = (int) Math.min(c2577.f9778 - r6, j2);
            this.f9806.update(c2577.f9783, (int) (c2577.f9782 + j), min);
            j2 -= min;
            c2577 = c2577.f9784;
            j = 0;
        }
    }
}
