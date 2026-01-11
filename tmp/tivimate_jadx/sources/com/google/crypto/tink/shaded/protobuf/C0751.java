package com.google.crypto.tink.shaded.protobuf;

import java.util.logging.Logger;

/* renamed from: com.google.crypto.tink.shaded.protobuf.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0751 extends android.support.v4.media.session.ⁱˊ {

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public C0729 f3079;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public int f3080;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final byte[] f3081;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final int f3082;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static final Logger f3078 = Logger.getLogger(C0751.class.getName());

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public static final boolean f3077 = AbstractC0733.f3026;

    public C0751(int i, byte[] bArr) {
        if (((bArr.length - i) | i) < 0) {
            throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), 0, Integer.valueOf(i)));
        }
        this.f3081 = bArr;
        this.f3080 = 0;
        this.f3082 = i;
    }

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static int m2702(long j) {
        return m2706((j >> 63) ^ (j << 1));
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static int m2703(int i, AbstractC0744 abstractC0744) {
        int m2708 = m2708(i);
        int size = abstractC0744.size();
        return m2705(size) + size + m2708;
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static int m2704(String str) {
        int length;
        try {
            length = AbstractC0727.m2580(str);
        } catch (C0718 unused) {
            length = str.getBytes(AbstractC0702.f2979).length;
        }
        return m2705(length) + length;
    }

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static int m2705(int i) {
        return (352 - (Integer.numberOfLeadingZeros(i) * 9)) >>> 6;
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public static int m2706(long j) {
        return (640 - (Long.numberOfLeadingZeros(j) * 9)) >>> 6;
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static int m2707(int i) {
        return m2705((i >> 31) ^ (i << 1));
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static int m2708(int i) {
        return m2705(i << 3);
    }

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public final void m2709(int i, long j) {
        m2715(i, 0);
        m2716(j);
    }

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final void m2710(long j) {
        try {
            byte[] bArr = this.f3081;
            int i = this.f3080;
            int i2 = i + 1;
            this.f3080 = i2;
            bArr[i] = (byte) (((int) j) & 255);
            int i3 = i + 2;
            this.f3080 = i3;
            bArr[i2] = (byte) (((int) (j >> 8)) & 255);
            int i4 = i + 3;
            this.f3080 = i4;
            bArr[i3] = (byte) (((int) (j >> 16)) & 255);
            int i5 = i + 4;
            this.f3080 = i5;
            bArr[i4] = (byte) (((int) (j >> 24)) & 255);
            int i6 = i + 5;
            this.f3080 = i6;
            bArr[i5] = (byte) (((int) (j >> 32)) & 255);
            int i7 = i + 6;
            this.f3080 = i7;
            bArr[i6] = (byte) (((int) (j >> 40)) & 255);
            int i8 = i + 7;
            this.f3080 = i8;
            bArr[i7] = (byte) (((int) (j >> 48)) & 255);
            this.f3080 = i + 8;
            bArr[i8] = (byte) (((int) (j >> 56)) & 255);
        } catch (IndexOutOfBoundsException e) {
            throw new CodedOutputStream$OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f3080), Integer.valueOf(this.f3082), 1), e);
        }
    }

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final void m2711(int i) {
        if (i >= 0) {
            m2713(i);
        } else {
            m2716(i);
        }
    }

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final void m2712(byte b) {
        try {
            byte[] bArr = this.f3081;
            int i = this.f3080;
            this.f3080 = i + 1;
            bArr[i] = b;
        } catch (IndexOutOfBoundsException e) {
            throw new CodedOutputStream$OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f3080), Integer.valueOf(this.f3082), 1), e);
        }
    }

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public final void m2713(int i) {
        while (true) {
            int i2 = i & (-128);
            byte[] bArr = this.f3081;
            if (i2 == 0) {
                int i3 = this.f3080;
                this.f3080 = i3 + 1;
                bArr[i3] = (byte) i;
                return;
            } else {
                try {
                    int i4 = this.f3080;
                    this.f3080 = i4 + 1;
                    bArr[i4] = (byte) ((i | 128) & 255);
                    i >>>= 7;
                } catch (IndexOutOfBoundsException e) {
                    throw new CodedOutputStream$OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f3080), Integer.valueOf(this.f3082), 1), e);
                }
            }
            throw new CodedOutputStream$OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f3080), Integer.valueOf(this.f3082), 1), e);
        }
    }

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public final void m2714(int i, int i2) {
        m2715(i, 0);
        m2713(i2);
    }

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public final void m2715(int i, int i2) {
        m2713((i << 3) | i2);
    }

    /* renamed from: ـˏ, reason: contains not printable characters */
    public final void m2716(long j) {
        boolean z = f3077;
        int i = this.f3082;
        byte[] bArr = this.f3081;
        if (z && i - this.f3080 >= 10) {
            while ((j & (-128)) != 0) {
                int i2 = this.f3080;
                this.f3080 = i2 + 1;
                AbstractC0733.m2616(bArr, i2, (byte) ((((int) j) | 128) & 255));
                j >>>= 7;
            }
            int i3 = this.f3080;
            this.f3080 = i3 + 1;
            AbstractC0733.m2616(bArr, i3, (byte) j);
            return;
        }
        while ((j & (-128)) != 0) {
            try {
                int i4 = this.f3080;
                this.f3080 = i4 + 1;
                bArr[i4] = (byte) ((((int) j) | 128) & 255);
                j >>>= 7;
            } catch (IndexOutOfBoundsException e) {
                throw new CodedOutputStream$OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f3080), Integer.valueOf(i), 1), e);
            }
        }
        int i5 = this.f3080;
        this.f3080 = i5 + 1;
        bArr[i5] = (byte) j;
    }

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final void m2717(int i, int i2) {
        m2715(i, 5);
        m2718(i2);
    }

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final void m2718(int i) {
        try {
            byte[] bArr = this.f3081;
            int i2 = this.f3080;
            int i3 = i2 + 1;
            this.f3080 = i3;
            bArr[i2] = (byte) (i & 255);
            int i4 = i2 + 2;
            this.f3080 = i4;
            bArr[i3] = (byte) ((i >> 8) & 255);
            int i5 = i2 + 3;
            this.f3080 = i5;
            bArr[i4] = (byte) ((i >> 16) & 255);
            this.f3080 = i2 + 4;
            bArr[i5] = (byte) ((i >> 24) & 255);
        } catch (IndexOutOfBoundsException e) {
            throw new CodedOutputStream$OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f3080), Integer.valueOf(this.f3082), 1), e);
        }
    }

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final void m2719(byte[] bArr, int i, int i2) {
        try {
            System.arraycopy(bArr, i, this.f3081, this.f3080, i2);
            this.f3080 += i2;
        } catch (IndexOutOfBoundsException e) {
            throw new CodedOutputStream$OutOfSpaceException(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f3080), Integer.valueOf(this.f3082), Integer.valueOf(i2)), e);
        }
    }

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final void m2720(int i, long j) {
        m2715(i, 1);
        m2710(j);
    }

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public final void m2721(int i, int i2) {
        m2715(i, 0);
        m2711(i2);
    }
}
