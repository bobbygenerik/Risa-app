package com.google.android.gms.internal.play_billing;

import android.support.v4.media.session.AbstractC0001;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;

/* renamed from: com.google.android.gms.internal.play_billing.ٴﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0606 extends ˈˋ.ʾˊ {

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final Logger f2413 = Logger.getLogger(C0606.class.getName());

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static final boolean f2414 = AbstractC0641.f2483;

    /* renamed from: ʽ, reason: contains not printable characters */
    public C0618 f2415;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final byte[] f2416;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f2417;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f2418;

    public C0606(int i, byte[] bArr) {
        int length = bArr.length;
        if (((length - i) | i) < 0) {
            Locale locale = Locale.US;
            throw new IllegalArgumentException(AbstractC0001.m14(length, i, "Array range is invalid. Buffer.length=", ", offset=0, length="));
        }
        this.f2416 = bArr;
        this.f2418 = 0;
        this.f2417 = i;
    }

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public static int m2198(String str) {
        int length;
        try {
            length = AbstractC0572.m2153(str);
        } catch (C0630 unused) {
            length = str.getBytes(AbstractC0634.f2471).length;
        }
        return m2199(length) + length;
    }

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public static int m2199(int i) {
        return (352 - (Integer.numberOfLeadingZeros(i) * 9)) >>> 6;
    }

    /* renamed from: ᵔי, reason: contains not printable characters */
    public static int m2200(long j) {
        return (640 - (Long.numberOfLeadingZeros(j) * 9)) >>> 6;
    }

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public final void m2201(int i, int i2) {
        m2207(i << 3);
        m2211(i2);
    }

    /* renamed from: ʿ, reason: contains not printable characters */
    public final void m2202(int i, long j) {
        m2207(i << 3);
        m2203(j);
    }

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public final void m2203(long j) {
        int i;
        int i2 = this.f2418;
        boolean z = f2414;
        int i3 = this.f2417;
        byte[] bArr = this.f2416;
        if (!z || i3 - i2 < 10) {
            long j2 = j;
            while ((j2 & (-128)) != 0) {
                i = i2 + 1;
                try {
                    bArr[i2] = (byte) (((int) j2) | 128);
                    j2 >>>= 7;
                    i2 = i;
                } catch (IndexOutOfBoundsException e) {
                    throw new zzen(i, i3, 1, e);
                }
            }
            i = i2 + 1;
            bArr[i2] = (byte) j2;
        } else {
            long j3 = j;
            while ((j3 & (-128)) != 0) {
                AbstractC0641.f2481.mo2164(bArr, AbstractC0641.f2487 + i2, (byte) (((int) j3) | 128));
                j3 >>>= 7;
                i2++;
            }
            i = i2 + 1;
            AbstractC0641.f2481.mo2164(bArr, AbstractC0641.f2487 + i2, (byte) j3);
        }
        this.f2418 = i;
    }

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final void m2204(int i, byte[] bArr) {
        try {
            System.arraycopy(bArr, 0, this.f2416, this.f2418, i);
            this.f2418 += i;
        } catch (IndexOutOfBoundsException e) {
            throw new zzen(this.f2418, this.f2417, i, e);
        }
    }

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final void m2205(int i, int i2) {
        m2207((i << 3) | 5);
        m2210(i2);
    }

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public final void m2206(int i, int i2) {
        m2207((i << 3) | i2);
    }

    /* renamed from: ˉـ, reason: contains not printable characters */
    public final void m2207(int i) {
        int i2;
        int i3 = this.f2418;
        while (true) {
            int i4 = i & (-128);
            byte[] bArr = this.f2416;
            if (i4 == 0) {
                i2 = i3 + 1;
                bArr[i3] = (byte) i;
                this.f2418 = i2;
                return;
            } else {
                i2 = i3 + 1;
                try {
                    bArr[i3] = (byte) (i | 128);
                    i >>>= 7;
                    i3 = i2;
                } catch (IndexOutOfBoundsException e) {
                    throw new zzen(i2, this.f2417, 1, e);
                }
            }
            throw new zzen(i2, this.f2417, 1, e);
        }
    }

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public final void m2208(long j) {
        int i = this.f2418;
        try {
            byte[] bArr = this.f2416;
            bArr[i] = (byte) j;
            bArr[i + 1] = (byte) (j >> 8);
            bArr[i + 2] = (byte) (j >> 16);
            bArr[i + 3] = (byte) (j >> 24);
            bArr[i + 4] = (byte) (j >> 32);
            bArr[i + 5] = (byte) (j >> 40);
            bArr[i + 6] = (byte) (j >> 48);
            bArr[i + 7] = (byte) (j >> 56);
            this.f2418 = i + 8;
        } catch (IndexOutOfBoundsException e) {
            throw new zzen(i, this.f2417, 8, e);
        }
    }

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public final void m2209(int i, long j) {
        m2207((i << 3) | 1);
        m2208(j);
    }

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public final void m2210(int i) {
        int i2 = this.f2418;
        try {
            byte[] bArr = this.f2416;
            bArr[i2] = (byte) i;
            bArr[i2 + 1] = (byte) (i >> 8);
            bArr[i2 + 2] = (byte) (i >> 16);
            bArr[i2 + 3] = (byte) (i >> 24);
            this.f2418 = i2 + 4;
        } catch (IndexOutOfBoundsException e) {
            throw new zzen(i2, this.f2417, 4, e);
        }
    }

    /* renamed from: ـˏ, reason: contains not printable characters */
    public final void m2211(int i) {
        if (i >= 0) {
            m2207(i);
        } else {
            m2203(i);
        }
    }

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public final void m2212(int i, int i2) {
        m2207(i << 3);
        m2207(i2);
    }

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public final void m2213(int i, C0585 c0585) {
        m2207((i << 3) | 2);
        m2207(c0585.mo2031());
        m2204(c0585.mo2031(), c0585.f2390);
    }

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public final void m2214(int i, String str) {
        m2207((i << 3) | 2);
        int i2 = this.f2418;
        try {
            int m2199 = m2199(str.length() * 3);
            int m21992 = m2199(str.length());
            int i3 = this.f2417;
            byte[] bArr = this.f2416;
            if (m21992 != m2199) {
                m2207(AbstractC0572.m2153(str));
                int i4 = this.f2418;
                this.f2418 = AbstractC0572.m2155(str, bArr, i4, i3 - i4);
            } else {
                int i5 = i2 + m21992;
                this.f2418 = i5;
                int m2155 = AbstractC0572.m2155(str, bArr, i5, i3 - i5);
                this.f2418 = i2;
                m2207((m2155 - i2) - m21992);
                this.f2418 = m2155;
            }
        } catch (C0630 e) {
            this.f2418 = i2;
            f2413.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) e);
            byte[] bytes = str.getBytes(AbstractC0634.f2471);
            try {
                int length = bytes.length;
                m2207(length);
                m2204(length, bytes);
            } catch (IndexOutOfBoundsException e2) {
                throw new zzen(e2);
            }
        } catch (IndexOutOfBoundsException e3) {
            throw new zzen(e3);
        }
    }
}
