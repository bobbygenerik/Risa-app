package com.google.android.gms.internal.measurement;

import android.support.v4.media.session.AbstractC0001;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;

/* renamed from: com.google.android.gms.internal.measurement.ʼˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0260 extends ﹳˋ.ʽʽ {

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public static final Logger f1753 = Logger.getLogger(C0260.class.getName());

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public static final boolean f1754 = AbstractC0504.f2270;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public C0425 f1755;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final int f1756;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public int f1757;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final byte[] f1758;

    public C0260(int i, byte[] bArr) {
        int length = bArr.length;
        if (((length - i) | i) < 0) {
            Locale locale = Locale.US;
            throw new IllegalArgumentException(AbstractC0001.m14(length, i, "Array range is invalid. Buffer.length=", ", offset=0, length="));
        }
        this.f1758 = bArr;
        this.f1757 = 0;
        this.f1756 = i;
    }

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static int m1205(long j) {
        return (640 - (Long.numberOfLeadingZeros(j) * 9)) >>> 6;
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public static int m1206(String str) {
        int length;
        try {
            length = AbstractC0377.m1724(str);
        } catch (C0301 unused) {
            length = str.getBytes(AbstractC0405.f2135).length;
        }
        return m1207(length) + length;
    }

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public static int m1207(int i) {
        return (352 - (Integer.numberOfLeadingZeros(i) * 9)) >>> 6;
    }

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public final void m1208(long j) {
        int i;
        int i2 = this.f1757;
        int i3 = this.f1756;
        byte[] bArr = this.f1758;
        if (!f1754 || i3 - i2 < 10) {
            long j2 = j;
            while ((j2 & (-128)) != 0) {
                int i4 = i2 + 1;
                try {
                    bArr[i2] = (byte) (((int) j2) | 128);
                    j2 >>>= 7;
                    i2 = i4;
                } catch (IndexOutOfBoundsException e) {
                    e = e;
                    i = i4;
                    throw new zzll(i, i3, 1, e);
                }
            }
            i = i2 + 1;
            try {
                bArr[i2] = (byte) j2;
            } catch (IndexOutOfBoundsException e2) {
                e = e2;
                throw new zzll(i, i3, 1, e);
            }
        } else {
            long j3 = j;
            while ((j3 & (-128)) != 0) {
                AbstractC0504.f2268.mo1707(bArr, AbstractC0504.f2274 + i2, (byte) (((int) j3) | 128));
                j3 >>>= 7;
                i2++;
            }
            i = i2 + 1;
            AbstractC0504.f2268.mo1707(bArr, AbstractC0504.f2274 + i2, (byte) j3);
        }
        this.f1757 = i;
    }

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final void m1209(int i, long j) {
        m1214((i << 3) | 1);
        m1216(j);
    }

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final void m1210(byte b) {
        int i = this.f1757;
        try {
            int i2 = i + 1;
            try {
                this.f1758[i] = b;
                this.f1757 = i2;
            } catch (IndexOutOfBoundsException e) {
                e = e;
                i = i2;
                throw new zzll(i, this.f1756, 1, e);
            }
        } catch (IndexOutOfBoundsException e2) {
            e = e2;
        }
    }

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public final void m1211(String str) {
        int i = this.f1757;
        try {
            int m1207 = m1207(str.length() * 3);
            int m12072 = m1207(str.length());
            int i2 = this.f1756;
            byte[] bArr = this.f1758;
            if (m12072 != m1207) {
                m1214(AbstractC0377.m1724(str));
                int i3 = this.f1757;
                this.f1757 = AbstractC0377.m1722(str, bArr, i3, i2 - i3);
            } else {
                int i4 = i + m12072;
                this.f1757 = i4;
                int m1722 = AbstractC0377.m1722(str, bArr, i4, i2 - i4);
                this.f1757 = i;
                m1214((m1722 - i) - m12072);
                this.f1757 = m1722;
            }
        } catch (C0301 e) {
            this.f1757 = i;
            f1753.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) e);
            byte[] bytes = str.getBytes(AbstractC0405.f2135);
            try {
                int length = bytes.length;
                m1214(length);
                m1222(length, bytes);
            } catch (IndexOutOfBoundsException e2) {
                throw new zzll(e2);
            }
        } catch (IndexOutOfBoundsException e3) {
            throw new zzll(e3);
        }
    }

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final void m1212(int i, int i2) {
        m1214((i << 3) | i2);
    }

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public final void m1213(int i) {
        int i2 = this.f1757;
        try {
            byte[] bArr = this.f1758;
            bArr[i2] = (byte) i;
            bArr[i2 + 1] = (byte) (i >> 8);
            bArr[i2 + 2] = (byte) (i >> 16);
            bArr[i2 + 3] = (byte) (i >> 24);
            this.f1757 = i2 + 4;
        } catch (IndexOutOfBoundsException e) {
            throw new zzll(i2, this.f1756, 4, e);
        }
    }

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public final void m1214(int i) {
        int i2;
        int i3 = this.f1757;
        while (true) {
            int i4 = i & (-128);
            byte[] bArr = this.f1758;
            if (i4 == 0) {
                i2 = i3 + 1;
                bArr[i3] = (byte) i;
                this.f1757 = i2;
                return;
            } else {
                i2 = i3 + 1;
                try {
                    bArr[i3] = (byte) (i | 128);
                    i >>>= 7;
                    i3 = i2;
                } catch (IndexOutOfBoundsException e) {
                    throw new zzll(i2, this.f1756, 1, e);
                }
            }
            throw new zzll(i2, this.f1756, 1, e);
        }
    }

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public final void m1215(int i) {
        if (i >= 0) {
            m1214(i);
        } else {
            m1208(i);
        }
    }

    /* renamed from: ـˏ, reason: contains not printable characters */
    public final void m1216(long j) {
        int i = this.f1757;
        try {
            byte[] bArr = this.f1758;
            bArr[i] = (byte) j;
            bArr[i + 1] = (byte) (j >> 8);
            bArr[i + 2] = (byte) (j >> 16);
            bArr[i + 3] = (byte) (j >> 24);
            bArr[i + 4] = (byte) (j >> 32);
            bArr[i + 5] = (byte) (j >> 40);
            bArr[i + 6] = (byte) (j >> 48);
            bArr[i + 7] = (byte) (j >> 56);
            this.f1757 = i + 8;
        } catch (IndexOutOfBoundsException e) {
            throw new zzll(i, this.f1756, 8, e);
        }
    }

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final void m1217(int i, int i2) {
        m1214(i << 3);
        m1214(i2);
    }

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final void m1218(int i, int i2) {
        m1214((i << 3) | 5);
        m1213(i2);
    }

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final void m1219(int i, int i2) {
        m1214(i << 3);
        m1215(i2);
    }

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final void m1220(int i, long j) {
        m1214(i << 3);
        m1208(j);
    }

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public final void m1221(C0364 c0364) {
        m1214(c0364.mo1236());
        m1222(c0364.mo1236(), c0364.f2020);
    }

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public final void m1222(int i, byte[] bArr) {
        try {
            System.arraycopy(bArr, 0, this.f1758, this.f1757, i);
            this.f1757 += i;
        } catch (IndexOutOfBoundsException e) {
            throw new zzll(this.f1757, this.f1756, i, e);
        }
    }
}
