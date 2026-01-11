package p450;

import java.io.ByteArrayOutputStream;
import java.io.FilterOutputStream;
import p207.AbstractC2934;
import p207.AbstractC2936;
import p366.C4476;
import ʽⁱ.ᵎﹶ;

/* renamed from: ﾞʽ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5361 extends FilterOutputStream {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C4476 f20400;

    public C5361(C4476 c4476, ByteArrayOutputStream byteArrayOutputStream) {
        super(byteArrayOutputStream);
        this.f20400 = c4476;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        ((FilterOutputStream) this).out.write(bArr, i, i2);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m10757(AbstractC2934 abstractC2934) {
        AbstractC2936 abstractC2936 = abstractC2934.f11101;
        write((byte) (abstractC2936.f11117 | abstractC2936.f11118.f11100 | abstractC2936.f11116.f11105));
        ᵎﹶ mo6459 = abstractC2934.f11101.mo6459(this.f20400);
        int i = mo6459.ﹶ(abstractC2934);
        if (i < 127) {
            write(i);
        } else {
            int i2 = 1;
            for (int i3 = i; i3 > 255; i3 >>= 8) {
                i2++;
            }
            write(i2 | 128);
            while (i2 > 0) {
                write(i >> ((i2 - 1) * 8));
                i2--;
            }
        }
        mo6459.ʻʿ(abstractC2934, this);
    }
}
