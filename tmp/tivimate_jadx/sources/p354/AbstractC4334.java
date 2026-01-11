package p354;

/* renamed from: ᵔʿ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4334 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public long f16125;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f16126;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final byte[] f16127;

    public AbstractC4334() {
        this.f16127 = new byte[4];
        this.f16126 = 0;
    }

    public AbstractC4334(AbstractC4334 abstractC4334) {
        this.f16127 = new byte[4];
        m8783(abstractC4334);
    }

    /* renamed from: ʼˎ */
    public void mo8762() {
        this.f16125 = 0L;
        this.f16126 = 0;
        int i = 0;
        while (true) {
            byte[] bArr = this.f16127;
            if (i >= bArr.length) {
                return;
            }
            bArr[i] = 0;
            i++;
        }
    }

    /* renamed from: ʽ */
    public abstract int mo8763(int i, byte[] bArr);

    /* renamed from: ˆʾ */
    public abstract void mo8764(AbstractC4334 abstractC4334);

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m8781() {
        long j = this.f16125 << 3;
        byte b = Byte.MIN_VALUE;
        while (true) {
            m8782(b);
            if (this.f16126 == 0) {
                mo8767(j);
                mo8770();
                return;
            }
            b = 0;
        }
    }

    /* renamed from: ˑﹳ */
    public abstract int mo8766();

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void m8782(byte b) {
        int i = this.f16126;
        int i2 = i + 1;
        this.f16126 = i2;
        byte[] bArr = this.f16127;
        bArr[i] = b;
        if (i2 == bArr.length) {
            mo8768(0, bArr);
            this.f16126 = 0;
        }
        this.f16125++;
    }

    /* renamed from: ᵎﹶ */
    public abstract void mo8767(long j);

    /* renamed from: ᵔᵢ */
    public abstract void mo8768(int i, byte[] bArr);

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m8783(AbstractC4334 abstractC4334) {
        byte[] bArr = abstractC4334.f16127;
        System.arraycopy(bArr, 0, this.f16127, 0, bArr.length);
        this.f16126 = abstractC4334.f16126;
        this.f16125 = abstractC4334.f16125;
    }

    /* renamed from: ﹳٴ */
    public abstract AbstractC4334 mo8769();

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void m8784(byte[] bArr, int i, int i2) {
        int i3 = 0;
        int max = Math.max(0, i2);
        int i4 = this.f16126;
        byte[] bArr2 = this.f16127;
        if (i4 != 0) {
            int i5 = 0;
            while (true) {
                if (i5 >= max) {
                    i3 = i5;
                    break;
                }
                int i6 = this.f16126;
                int i7 = i6 + 1;
                this.f16126 = i7;
                int i8 = i5 + 1;
                bArr2[i6] = bArr[i5 + i];
                if (i7 == 4) {
                    mo8768(0, bArr2);
                    this.f16126 = 0;
                    i3 = i8;
                    break;
                }
                i5 = i8;
            }
        }
        int i9 = ((max - i3) & (-4)) + i3;
        while (i3 < i9) {
            mo8768(i + i3, bArr);
            i3 += 4;
        }
        while (i3 < max) {
            int i10 = this.f16126;
            this.f16126 = i10 + 1;
            bArr2[i10] = bArr[i3 + i];
            i3++;
        }
        this.f16125 += max;
    }

    /* renamed from: ﾞᴵ */
    public abstract void mo8770();
}
