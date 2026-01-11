package p163;

import java.util.zip.Deflater;

/* renamed from: ˊٴ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2562 extends AbstractC2559 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public Deflater f9732;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public byte[] f9733;

    @Override // p163.AbstractC2559, java.io.OutputStream
    public final void write(int i) {
        write(new byte[]{(byte) i}, 0, 1);
    }

    @Override // p163.AbstractC2559, java.io.OutputStream
    public final void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    @Override // p163.AbstractC2559, java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        Deflater deflater = this.f9732;
        deflater.setInput(bArr, i, i2);
        while (!deflater.needsInput()) {
            byte[] bArr2 = this.f9733;
            int deflate = deflater.deflate(bArr2, 0, bArr2.length);
            if (deflate > 0) {
                super.write(bArr2, 0, deflate);
            }
        }
    }

    @Override // p163.AbstractC2559
    /* renamed from: ʽ */
    public final void mo5723() {
        Deflater deflater = this.f9732;
        if (!deflater.finished()) {
            deflater.finish();
            while (!deflater.finished()) {
                byte[] bArr = this.f9733;
                int deflate = deflater.deflate(bArr, 0, bArr.length);
                if (deflate > 0) {
                    super.write(bArr, 0, deflate);
                }
            }
        }
        deflater.end();
        super.mo5723();
    }
}
