package p425;

import androidx.media3.common.audio.AudioProcessor$UnhandledAudioFormatException;
import java.nio.ByteBuffer;
import p076.AbstractC1655;
import p076.C1661;
import p305.AbstractC3712;
import p305.AbstractC3731;

/* renamed from: ﹶ.ʽʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5028 extends AbstractC1655 {

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public byte[] f18802;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public int f18804;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public boolean f18808;

    /* renamed from: יـ, reason: contains not printable characters */
    public byte[] f18810;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public int f18812;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public long f18813;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public int f18814 = 0;

    /* renamed from: ˏי, reason: contains not printable characters */
    public int f18809 = 0;

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public int f18805 = 0;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final long f18815 = 100000;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final float f18803 = 0.2f;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final long f18807 = 2000000;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final int f18811 = 10;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final short f18806 = 1024;

    public C5028() {
        byte[] bArr = AbstractC3712.f14480;
        this.f18810 = bArr;
        this.f18802 = bArr;
    }

    @Override // p076.AbstractC1655
    /* renamed from: ʼˎ */
    public final void mo4515() {
        if (this.f18805 > 0) {
            m9894(true);
            this.f18814 = 0;
        }
    }

    @Override // p076.AbstractC1655, p076.InterfaceC1662
    /* renamed from: ʽ */
    public final boolean mo4516() {
        return super.mo4516() && this.f18808;
    }

    @Override // p076.AbstractC1655
    /* renamed from: ˆʾ */
    public final void mo4517() {
        this.f18808 = false;
        byte[] bArr = AbstractC3712.f14480;
        this.f18810 = bArr;
        this.f18802 = bArr;
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final void m9894(boolean z) {
        int length;
        int m9896;
        int i = this.f18805;
        byte[] bArr = this.f18810;
        if (i == bArr.length || z) {
            if (this.f18814 == 0) {
                if (z) {
                    m9895(i, 3);
                    length = i;
                } else {
                    AbstractC3731.m7857(i >= bArr.length / 2);
                    length = this.f18810.length / 2;
                    m9895(length, 0);
                }
                m9896 = length;
            } else if (z) {
                int length2 = i - (bArr.length / 2);
                int length3 = (bArr.length / 2) + length2;
                int m98962 = m9896(length2) + (this.f18810.length / 2);
                m9895(m98962, 2);
                m9896 = m98962;
                length = length3;
            } else {
                length = i - (bArr.length / 2);
                m9896 = m9896(length);
                m9895(m9896, 1);
            }
            AbstractC3731.m7848("bytesConsumed is not aligned to frame size: %s" + length, length % this.f18812 == 0);
            AbstractC3731.m7857(i >= m9896);
            this.f18805 -= length;
            int i2 = this.f18809 + length;
            this.f18809 = i2;
            this.f18809 = i2 % this.f18810.length;
            this.f18814 = (m9896 / this.f18812) + this.f18814;
            this.f18813 += (length - m9896) / r2;
        }
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final void m9895(int i, int i2) {
        if (i == 0) {
            return;
        }
        AbstractC3731.m7849(this.f18805 >= i);
        if (i2 == 2) {
            int i3 = this.f18809;
            int i4 = this.f18805;
            int i5 = i3 + i4;
            byte[] bArr = this.f18810;
            if (i5 <= bArr.length) {
                System.arraycopy(bArr, i5 - i, this.f18802, 0, i);
            } else {
                int length = i4 - (bArr.length - i3);
                if (length >= i) {
                    System.arraycopy(bArr, length - i, this.f18802, 0, i);
                } else {
                    int i6 = i - length;
                    System.arraycopy(bArr, bArr.length - i6, this.f18802, 0, i6);
                    System.arraycopy(this.f18810, 0, this.f18802, i6, length);
                }
            }
        } else {
            int i7 = this.f18809;
            int i8 = i7 + i;
            byte[] bArr2 = this.f18810;
            if (i8 <= bArr2.length) {
                System.arraycopy(bArr2, i7, this.f18802, 0, i);
            } else {
                int length2 = bArr2.length - i7;
                System.arraycopy(bArr2, i7, this.f18802, 0, length2);
                System.arraycopy(this.f18810, 0, this.f18802, length2, i - length2);
            }
        }
        AbstractC3731.m7843("sizeToOutput is not aligned to frame size: " + i, i % this.f18812 == 0);
        AbstractC3731.m7857(this.f18809 < this.f18810.length);
        byte[] bArr3 = this.f18802;
        AbstractC3731.m7843("byteOutput size is not aligned to frame size " + i, i % this.f18812 == 0);
        if (i2 != 3) {
            for (int i9 = 0; i9 < i; i9 += 2) {
                int i10 = i9 + 1;
                int i11 = (bArr3[i10] << 8) | (bArr3[i9] & 255);
                int i12 = this.f18811;
                if (i2 == 0) {
                    i12 = ((((i9 * 1000) / (i - 1)) * (i12 - 100)) / 1000) + 100;
                } else if (i2 == 2) {
                    i12 += (((i9 * 1000) * (100 - i12)) / (i - 1)) / 1000;
                }
                int i13 = (i11 * i12) / 100;
                if (i13 >= 32767) {
                    bArr3[i9] = -1;
                    bArr3[i10] = Byte.MAX_VALUE;
                } else if (i13 <= -32768) {
                    bArr3[i9] = 0;
                    bArr3[i10] = Byte.MIN_VALUE;
                } else {
                    bArr3[i9] = (byte) (i13 & 255);
                    bArr3[i10] = (byte) (i13 >> 8);
                }
            }
        }
        m4520(i).put(bArr3, 0, i).flip();
    }

    @Override // p076.AbstractC1655
    /* renamed from: ᵔᵢ */
    public final void mo4522() {
        if (mo4516()) {
            int i = this.f6708.f6760 * 2;
            this.f18812 = i;
            int i2 = ((((int) ((this.f18815 * r0.f6761) / 1000000)) / 2) / i) * i * 2;
            if (this.f18810.length != i2) {
                this.f18810 = new byte[i2];
                this.f18802 = new byte[i2];
            }
        }
        this.f18804 = 0;
        this.f18813 = 0L;
        this.f18814 = 0;
        this.f18809 = 0;
        this.f18805 = 0;
    }

    @Override // p076.AbstractC1655
    /* renamed from: ﹳٴ */
    public final C1661 mo4524(C1661 c1661) {
        if (c1661.f6758 == 2) {
            return c1661.f6761 == -1 ? C1661.f6757 : c1661;
        }
        throw new AudioProcessor$UnhandledAudioFormatException(c1661);
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final int m9896(int i) {
        int length = ((((int) ((this.f18807 * this.f6708.f6761) / 1000000)) - this.f18814) * this.f18812) - (this.f18810.length / 2);
        AbstractC3731.m7857(length >= 0);
        int min = (int) Math.min((i * this.f18803) + 0.5f, length);
        int i2 = this.f18812;
        return (min / i2) * i2;
    }

    @Override // p076.InterfaceC1662
    /* renamed from: ﾞᴵ */
    public final void mo4546(ByteBuffer byteBuffer) {
        int limit;
        int position;
        while (byteBuffer.hasRemaining() && !this.f6706.hasRemaining()) {
            int i = this.f18804;
            short s = this.f18806;
            if (i == 0) {
                int limit2 = byteBuffer.limit();
                byteBuffer.limit(Math.min(limit2, byteBuffer.position() + this.f18810.length));
                int limit3 = byteBuffer.limit() - 1;
                while (true) {
                    if (limit3 < byteBuffer.position()) {
                        position = byteBuffer.position();
                        break;
                    }
                    if (Math.abs((byteBuffer.get(limit3) << 8) | (byteBuffer.get(limit3 - 1) & 255)) > s) {
                        int i2 = this.f18812;
                        position = ((limit3 / i2) * i2) + i2;
                        break;
                    }
                    limit3 -= 2;
                }
                if (position == byteBuffer.position()) {
                    this.f18804 = 1;
                } else {
                    byteBuffer.limit(Math.min(position, byteBuffer.capacity()));
                    m4520(byteBuffer.remaining()).put(byteBuffer).flip();
                }
                byteBuffer.limit(limit2);
            } else {
                if (i != 1) {
                    throw new IllegalStateException();
                }
                AbstractC3731.m7857(this.f18809 < this.f18810.length);
                int limit4 = byteBuffer.limit();
                int position2 = byteBuffer.position() + 1;
                while (true) {
                    if (position2 >= byteBuffer.limit()) {
                        limit = byteBuffer.limit();
                        break;
                    }
                    if (Math.abs((byteBuffer.get(position2) << 8) | (byteBuffer.get(position2 - 1) & 255)) > s) {
                        int i3 = this.f18812;
                        limit = (position2 / i3) * i3;
                        break;
                    }
                    position2 += 2;
                }
                int position3 = limit - byteBuffer.position();
                int i4 = this.f18809;
                int i5 = this.f18805;
                int i6 = i4 + i5;
                byte[] bArr = this.f18810;
                if (i6 < bArr.length) {
                    i4 = bArr.length;
                } else {
                    i6 = i5 - (bArr.length - i4);
                }
                int i7 = i4 - i6;
                boolean z = limit < limit4;
                int min = Math.min(position3, i7);
                byteBuffer.limit(byteBuffer.position() + min);
                byteBuffer.get(this.f18810, i6, min);
                int i8 = this.f18805 + min;
                this.f18805 = i8;
                AbstractC3731.m7857(i8 <= this.f18810.length);
                boolean z2 = z && position3 < i7;
                m9894(z2);
                if (z2) {
                    this.f18804 = 0;
                    this.f18814 = 0;
                }
                byteBuffer.limit(limit4);
            }
        }
    }
}
