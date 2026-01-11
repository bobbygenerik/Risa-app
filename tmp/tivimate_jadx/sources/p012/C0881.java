package p012;

import java.util.Arrays;
import org.tukaani.xz.CorruptedInputException;
import p022.C1048;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p305.C3732;

/* renamed from: ʻᴵ.ʻٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0881 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f3735;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f3736;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f3737;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public byte[] f3738;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f3739;

    public C0881(int i) {
        this.f3739 = i;
        switch (i) {
            case 4:
                this.f3738 = AbstractC3712.f14480;
                return;
            default:
                return;
        }
    }

    public C0881(int i, int i2) {
        this.f3739 = 5;
        this.f3735 = i;
        this.f3736 = i2;
        this.f3738 = new byte[(i2 * 2) - 1];
        this.f3737 = 0;
    }

    public C0881(int i, byte[] bArr) {
        this.f3739 = 4;
        this.f3738 = bArr;
        this.f3737 = i;
    }

    public C0881(C1048 c1048) {
        this.f3739 = 2;
        this.f3735 = 0;
        this.f3736 = 0;
        byte[] mo3388 = c1048.mo3388(65531);
        this.f3738 = mo3388;
        this.f3737 = mo3388.length;
    }

    public C0881(byte[] bArr) {
        this.f3739 = 3;
        this.f3738 = bArr;
        this.f3735 = bArr.length;
    }

    public C0881(byte[] bArr, int i, int i2) {
        this.f3739 = 0;
        this.f3738 = bArr;
        this.f3736 = i;
        this.f3735 = i2;
        this.f3737 = 0;
        m3110();
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static final void m3088(short[] sArr) {
        Arrays.fill(sArr, (short) 1024);
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public boolean m3089(int i) {
        if (2 > i || i >= this.f3735) {
            return false;
        }
        byte[] bArr = this.f3738;
        return bArr[i] == 3 && bArr[i + (-2)] == 0 && bArr[i - 1] == 0;
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public void m3090(int i) {
        AbstractC3731.m7857(this.f3736 == 0);
        this.f3735 += i;
        m3110();
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public int m3091() {
        return (this.f3735 * 8) + this.f3736;
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public void m3092(int i, byte[] bArr) {
        AbstractC3731.m7857(this.f3736 == 0);
        System.arraycopy(this.f3738, this.f3735, bArr, 0, i);
        this.f3735 += i;
        m3110();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public void m3093() {
        if (this.f3736 == 0) {
            return;
        }
        this.f3736 = 0;
        this.f3735++;
        m3110();
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public void m3094(int i) {
        int i2 = i / 8;
        this.f3735 = i2;
        this.f3736 = i - (i2 * 8);
        m3110();
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public void m3095(int i) {
        int i2;
        switch (this.f3739) {
            case 0:
                int i3 = this.f3736;
                int i4 = i / 8;
                int i5 = i3 + i4;
                this.f3736 = i5;
                int i6 = (i - (i4 * 8)) + this.f3737;
                this.f3737 = i6;
                if (i6 > 7) {
                    this.f3736 = i5 + 1;
                    this.f3737 = i6 - 8;
                }
                while (true) {
                    i3++;
                    if (i3 > this.f3736) {
                        m3110();
                        return;
                    } else if (m3089(i3)) {
                        this.f3736++;
                        i3 += 2;
                    }
                }
            case 1:
            case 2:
            default:
                int i7 = i / 8;
                int i8 = this.f3735 + i7;
                this.f3735 = i8;
                int i9 = (i - (i7 * 8)) + this.f3736;
                this.f3736 = i9;
                if (i9 > 7) {
                    this.f3735 = i8 + 1;
                    this.f3736 = i9 - 8;
                }
                m3110();
                return;
            case 3:
                int i10 = i / 8;
                int i11 = this.f3736 + i10;
                this.f3736 = i11;
                int i12 = (i - (i10 * 8)) + this.f3737;
                this.f3737 = i12;
                boolean z = true;
                if (i12 > 7) {
                    this.f3736 = i11 + 1;
                    this.f3737 = i12 - 8;
                }
                int i13 = this.f3736;
                if (i13 < 0 || (i13 >= (i2 = this.f3735) && (i13 != i2 || this.f3737 != 0))) {
                    z = false;
                }
                AbstractC3731.m7857(z);
                return;
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public boolean m3096(int i) {
        int i2 = this.f3736;
        int i3 = i / 8;
        int i4 = i2 + i3;
        int i5 = (this.f3737 + i) - (i3 * 8);
        if (i5 > 7) {
            i4++;
            i5 -= 8;
        }
        while (true) {
            i2++;
            if (i2 > i4 || i4 >= this.f3735) {
                break;
            }
            if (m3089(i2)) {
                i4++;
                i2 += 2;
            }
        }
        int i6 = this.f3735;
        if (i4 >= i6) {
            return i4 == i6 && i5 == 0;
        }
        return true;
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public int m3097(int i) {
        switch (this.f3739) {
            case 0:
                this.f3737 += i;
                int i2 = 0;
                while (true) {
                    int i3 = this.f3737;
                    if (i3 <= 8) {
                        byte[] bArr = this.f3738;
                        int i4 = this.f3736;
                        int i5 = ((-1) >>> (32 - i)) & (i2 | ((bArr[i4] & 255) >> (8 - i3)));
                        if (i3 == 8) {
                            this.f3737 = 0;
                            this.f3736 = i4 + (m3089(i4 + 1) ? 2 : 1);
                        }
                        m3110();
                        return i5;
                    }
                    int i6 = i3 - 8;
                    this.f3737 = i6;
                    byte[] bArr2 = this.f3738;
                    int i7 = this.f3736;
                    i2 |= (bArr2[i7] & 255) << i6;
                    if (!m3089(i7 + 1)) {
                        r3 = 1;
                    }
                    this.f3736 = i7 + r3;
                }
            case 1:
            case 2:
            default:
                if (i == 0) {
                    return 0;
                }
                this.f3736 += i;
                int i8 = 0;
                while (true) {
                    int i9 = this.f3736;
                    if (i9 <= 8) {
                        byte[] bArr3 = this.f3738;
                        int i10 = this.f3735;
                        int i11 = ((-1) >>> (32 - i)) & (i8 | ((bArr3[i10] & 255) >> (8 - i9)));
                        if (i9 == 8) {
                            this.f3736 = 0;
                            this.f3735 = i10 + 1;
                        }
                        m3110();
                        return i11;
                    }
                    int i12 = i9 - 8;
                    this.f3736 = i12;
                    byte[] bArr4 = this.f3738;
                    int i13 = this.f3735;
                    this.f3735 = i13 + 1;
                    i8 |= (bArr4[i13] & 255) << i12;
                }
            case 3:
                int i14 = this.f3736;
                int min = Math.min(i, 8 - this.f3737);
                byte[] bArr5 = this.f3738;
                int i15 = i14 + 1;
                int i16 = ((bArr5[i14] & 255) >> this.f3737) & (255 >> (8 - min));
                while (min < i) {
                    i16 |= (bArr5[i15] & 255) << min;
                    min += 8;
                    i15++;
                }
                int i17 = i16 & ((-1) >>> (32 - i));
                m3095(i);
                return i17;
        }
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public long m3098(int i) {
        if (i <= 32) {
            int m3097 = m3097(i);
            String str = AbstractC3712.f14481;
            return 4294967295L & m3097;
        }
        int m30972 = m3097(i - 32);
        int m30973 = m3097(32);
        String str2 = AbstractC3712.f14481;
        return (4294967295L & m30973) | ((m30972 & 4294967295L) << 32);
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public void m3099(C3732 c3732) {
        m3101(c3732.f14532, c3732.f14534);
        m3094(c3732.f14533 * 8);
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public boolean m3100() {
        int i = this.f3736;
        int i2 = this.f3737;
        int i3 = 0;
        while (this.f3736 < this.f3735 && !m3112()) {
            i3++;
        }
        boolean z = this.f3736 == this.f3735;
        this.f3736 = i;
        this.f3737 = i2;
        return !z && m3096((i3 * 2) + 1);
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public void m3101(int i, byte[] bArr) {
        this.f3738 = bArr;
        this.f3735 = 0;
        this.f3736 = 0;
        this.f3737 = i;
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public void m3102() {
        switch (this.f3739) {
            case 0:
                int i = this.f3737 + 1;
                this.f3737 = i;
                if (i == 8) {
                    this.f3737 = 0;
                    int i2 = this.f3736;
                    this.f3736 = i2 + (m3089(i2 + 1) ? 2 : 1);
                }
                m3110();
                return;
            default:
                int i3 = this.f3736 + 1;
                this.f3736 = i3;
                if (i3 == 8) {
                    this.f3736 = 0;
                    this.f3735++;
                }
                m3110();
                return;
        }
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public void m3103() {
        int i = this.f3735;
        if (((-16777216) & i) == 0) {
            try {
                int i2 = this.f3736 << 8;
                byte[] bArr = this.f3738;
                int i3 = this.f3737;
                this.f3737 = i3 + 1;
                this.f3736 = i2 | (bArr[i3] & 255);
                this.f3735 = i << 8;
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw new CorruptedInputException();
            }
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public int m3104(short[] sArr) {
        int i = 1;
        do {
            i = m3113(sArr, i) | (i << 1);
        } while (i < sArr.length);
        return i - sArr.length;
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public void m3105(int i, byte[] bArr) {
        int i2 = i >> 3;
        for (int i3 = 0; i3 < i2; i3++) {
            byte[] bArr2 = this.f3738;
            int i4 = this.f3735;
            int i5 = i4 + 1;
            this.f3735 = i5;
            byte b = bArr2[i4];
            int i6 = this.f3736;
            byte b2 = (byte) (b << i6);
            bArr[i3] = b2;
            bArr[i3] = (byte) (((255 & bArr2[i5]) >> (8 - i6)) | b2);
        }
        int i7 = i & 7;
        if (i7 == 0) {
            return;
        }
        byte b3 = (byte) (bArr[i2] & (255 >> i7));
        bArr[i2] = b3;
        int i8 = this.f3736;
        if (i8 + i7 > 8) {
            byte[] bArr3 = this.f3738;
            int i9 = this.f3735;
            this.f3735 = i9 + 1;
            bArr[i2] = (byte) (b3 | ((bArr3[i9] & 255) << i8));
            this.f3736 = i8 - 8;
        }
        int i10 = this.f3736 + i7;
        this.f3736 = i10;
        byte[] bArr4 = this.f3738;
        int i11 = this.f3735;
        bArr[i2] = (byte) (((byte) (((255 & bArr4[i11]) >> (8 - i10)) << (8 - i7))) | bArr[i2]);
        if (i10 == 8) {
            this.f3736 = 0;
            this.f3735 = i11 + 1;
        }
        m3110();
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public int m3106() {
        AbstractC3731.m7857(this.f3736 == 0);
        return this.f3735;
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public int m3107() {
        int i = 0;
        while (!m3112()) {
            i++;
        }
        return ((1 << i) - 1) + (i > 0 ? m3097(i) : 0);
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public void m3108(byte[] bArr, int i, int i2) {
        byte[] bArr2 = this.f3738;
        if (bArr.length - i < i2) {
            throw new IllegalArgumentException("Bytes to write do not exist in source");
        }
        if (i2 > bArr2.length - this.f3737) {
            throw new IndexOutOfBoundsException("Size of bytes to be written is greater than available buffer space");
        }
        int i3 = this.f3735;
        if (i3 + i2 <= bArr2.length) {
            System.arraycopy(bArr, i, bArr2, i3, i2);
        } else {
            int length = bArr2.length - i3;
            System.arraycopy(bArr, i, bArr2, i3, length);
            System.arraycopy(bArr, i + length, bArr2, 0, i2 - length);
        }
        this.f3735 = (this.f3735 + i2) % bArr2.length;
        this.f3737 += i2;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int m3109() {
        return ((this.f3737 - this.f3735) * 8) - this.f3736;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public void m3110() {
        int i;
        int i2;
        switch (this.f3739) {
            case 0:
                int i3 = this.f3736;
                AbstractC3731.m7857(i3 >= 0 && (i3 < (i = this.f3735) || (i3 == i && this.f3737 == 0)));
                return;
            default:
                int i4 = this.f3735;
                AbstractC3731.m7857(i4 >= 0 && (i4 < (i2 = this.f3737) || (i4 == i2 && this.f3736 == 0)));
                return;
        }
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public int m3111() {
        int m3107 = m3107();
        return ((m3107 + 1) / 2) * (m3107 % 2 == 0 ? -1 : 1);
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public boolean m3112() {
        switch (this.f3739) {
            case 0:
                boolean z = (this.f3738[this.f3736] & (128 >> this.f3737)) != 0;
                m3102();
                return z;
            case 1:
            case 2:
            default:
                boolean z2 = (this.f3738[this.f3735] & (128 >> this.f3736)) != 0;
                m3102();
                return z2;
            case 3:
                boolean z3 = (((this.f3738[this.f3736] & 255) >> this.f3737) & 1) == 1;
                m3095(1);
                return z3;
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int m3113(short[] sArr, int i) {
        m3103();
        short s = sArr[i];
        int i2 = (this.f3735 >>> 11) * s;
        if (Integer.compare(this.f3736 ^ Integer.MIN_VALUE, Integer.MIN_VALUE ^ i2) < 0) {
            this.f3735 = i2;
            sArr[i] = (short) (s + ((2048 - s) >>> 5));
            return 0;
        }
        this.f3735 -= i2;
        this.f3736 -= i2;
        sArr[i] = (short) (s - (s >>> 5));
        return 1;
    }
}
