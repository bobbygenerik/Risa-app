package p163;

import com.parse.ٴʼ;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.zip.CRC32;
import p010.AbstractC0844;
import p137.AbstractC2305;
import p261.C3402;
import p261.C3405;
import p261.C3406;
import p261.C3407;
import p261.C3412;
import ᵎˉ.ⁱˊ;
import ᵢ.ﹳٴ;

/* renamed from: ˊٴ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2563 extends OutputStream {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public C3406 f9734;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public C2561 f9735;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public boolean f9736;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public AbstractC2559 f9737;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public ٴʼ f9738;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public C3412 f9739;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public ﹳٴ f9740;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public ⁱˊ f9741;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public char[] f9742;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public C3405 f9743;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public long f9744;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public CRC32 f9745;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public C3407 f9746;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public boolean f9747;

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        C3406 c3406 = this.f9734;
        C2561 c2561 = this.f9735;
        if (!this.f9747) {
            m5727();
        }
        C3402 c3402 = c3406.f13350;
        C2565 c2565 = c2561.f9730;
        c3402.f13335 = AbstractC2305.m5366(c2565) ? c2565.f9749.getFilePointer() : c2561.f9731;
        ٴʼ r2 = this.f9738;
        this.f9746.getClass();
        r2.ᵔי(c3406, c2561);
        c2561.close();
        this.f9736 = true;
    }

    @Override // java.io.OutputStream
    public final void write(int i) {
        write(new byte[]{(byte) i}, 0, 1);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        if (this.f9736) {
            throw new IOException("Stream is closed");
        }
        this.f9745.update(bArr, i, i2);
        this.f9737.write(bArr, i, i2);
        this.f9744 += i2;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C3405 m5727() {
        C3406 c3406 = this.f9734;
        CRC32 crc32 = this.f9745;
        this.f9737.mo5723();
        long j = this.f9737.f9726.f9754.f9728;
        C3405 c3405 = this.f9743;
        c3405.f13369 = j;
        C3412 c3412 = this.f9739;
        c3412.f13369 = j;
        long j2 = this.f9744;
        c3405.f13379 = j2;
        c3412.f13379 = j2;
        if ((c3405.f13366 && AbstractC0844.m3021(c3405.f13381, 4)) ? AbstractC0844.m3021(c3405.f13372.f13383, 1) : true) {
            this.f9743.f13376 = crc32.getValue();
            this.f9739.f13376 = crc32.getValue();
        }
        c3406.f13351.add(this.f9739);
        c3406.f13356.f4592.add(this.f9743);
        C3412 c34122 = this.f9739;
        if (c34122.f13367) {
            ٴʼ r2 = this.f9738;
            C2561 c2561 = this.f9735;
            byte[] bArr = (byte[]) r2.ʽʽ;
            ﹳٴ r22 = (ﹳٴ) r2.ᴵˊ;
            if (c2561 == null) {
                throw new IOException("input parameters is null, cannot write extended local header");
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                r22.ˉٴ(byteArrayOutputStream, (int) 134695760);
                ﹳٴ.ᵎⁱ(c34122.f13376, bArr);
                byteArrayOutputStream.write(bArr, 0, 4);
                if (c34122.f13401) {
                    r22.ٴʼ(byteArrayOutputStream, c34122.f13369);
                    r22.ٴʼ(byteArrayOutputStream, c34122.f13379);
                } else {
                    ﹳٴ.ᵎⁱ(c34122.f13369, bArr);
                    byteArrayOutputStream.write(bArr, 0, 4);
                    ﹳٴ.ᵎⁱ(c34122.f13379, bArr);
                    byteArrayOutputStream.write(bArr, 0, 4);
                }
                c2561.write(byteArrayOutputStream.toByteArray());
                byteArrayOutputStream.close();
            } catch (Throwable th) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        this.f9744 = 0L;
        crc32.reset();
        this.f9737.close();
        this.f9747 = true;
        return this.f9743;
    }

    /* JADX WARN: Removed duplicated region for block: B:111:0x02fa A[Catch: all -> 0x02f1, TryCatch #0 {all -> 0x02f1, blocks: (B:104:0x02b2, B:106:0x02e6, B:111:0x02fa, B:112:0x0325, B:114:0x032f, B:115:0x0335, B:118:0x033e, B:120:0x0342, B:121:0x0344, B:123:0x034c, B:126:0x0353, B:127:0x0366, B:129:0x036a, B:130:0x03a5, B:161:0x030f), top: B:103:0x02b2 }] */
    /* JADX WARN: Removed duplicated region for block: B:114:0x032f A[Catch: all -> 0x02f1, TryCatch #0 {all -> 0x02f1, blocks: (B:104:0x02b2, B:106:0x02e6, B:111:0x02fa, B:112:0x0325, B:114:0x032f, B:115:0x0335, B:118:0x033e, B:120:0x0342, B:121:0x0344, B:123:0x034c, B:126:0x0353, B:127:0x0366, B:129:0x036a, B:130:0x03a5, B:161:0x030f), top: B:103:0x02b2 }] */
    /* JADX WARN: Removed duplicated region for block: B:117:0x033b  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0342 A[Catch: all -> 0x02f1, TryCatch #0 {all -> 0x02f1, blocks: (B:104:0x02b2, B:106:0x02e6, B:111:0x02fa, B:112:0x0325, B:114:0x032f, B:115:0x0335, B:118:0x033e, B:120:0x0342, B:121:0x0344, B:123:0x034c, B:126:0x0353, B:127:0x0366, B:129:0x036a, B:130:0x03a5, B:161:0x030f), top: B:103:0x02b2 }] */
    /* JADX WARN: Removed duplicated region for block: B:123:0x034c A[Catch: all -> 0x02f1, TryCatch #0 {all -> 0x02f1, blocks: (B:104:0x02b2, B:106:0x02e6, B:111:0x02fa, B:112:0x0325, B:114:0x032f, B:115:0x0335, B:118:0x033e, B:120:0x0342, B:121:0x0344, B:123:0x034c, B:126:0x0353, B:127:0x0366, B:129:0x036a, B:130:0x03a5, B:161:0x030f), top: B:103:0x02b2 }] */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0353 A[Catch: all -> 0x02f1, TryCatch #0 {all -> 0x02f1, blocks: (B:104:0x02b2, B:106:0x02e6, B:111:0x02fa, B:112:0x0325, B:114:0x032f, B:115:0x0335, B:118:0x033e, B:120:0x0342, B:121:0x0344, B:123:0x034c, B:126:0x0353, B:127:0x0366, B:129:0x036a, B:130:0x03a5, B:161:0x030f), top: B:103:0x02b2 }] */
    /* JADX WARN: Removed duplicated region for block: B:129:0x036a A[Catch: all -> 0x02f1, TryCatch #0 {all -> 0x02f1, blocks: (B:104:0x02b2, B:106:0x02e6, B:111:0x02fa, B:112:0x0325, B:114:0x032f, B:115:0x0335, B:118:0x033e, B:120:0x0342, B:121:0x0344, B:123:0x034c, B:126:0x0353, B:127:0x0366, B:129:0x036a, B:130:0x03a5, B:161:0x030f), top: B:103:0x02b2 }] */
    /* JADX WARN: Removed duplicated region for block: B:133:0x03c1  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x03fd  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0414  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x03cd  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x033c  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x030f A[Catch: all -> 0x02f1, TryCatch #0 {all -> 0x02f1, blocks: (B:104:0x02b2, B:106:0x02e6, B:111:0x02fa, B:112:0x0325, B:114:0x032f, B:115:0x0335, B:118:0x033e, B:120:0x0342, B:121:0x0344, B:123:0x034c, B:126:0x0353, B:127:0x0366, B:129:0x036a, B:130:0x03a5, B:161:0x030f), top: B:103:0x02b2 }] */
    /* JADX WARN: Type inference failed for: r3v5, types: [ˊٴ.ﹳٴ, ˊٴ.ⁱˊ] */
    /* JADX WARN: Type inference failed for: r3v9, types: [ˊٴ.ʽ, ˊٴ.ˑﹳ] */
    /* JADX WARN: Type inference failed for: r7v27, types: [java.io.OutputStream, ˊٴ.ˆʾ] */
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m5728(p261.C3411 r23) {
        /*
            Method dump skipped, instructions count: 1109
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p163.C2563.m5728(ـʽ.ﾞʻ):void");
    }
}
