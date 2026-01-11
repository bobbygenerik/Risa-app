package com.google.crypto.tink.shaded.protobuf;

import androidx.datastore.preferences.protobuf.AbstractC0016;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import p035.AbstractC1220;

/* renamed from: com.google.crypto.tink.shaded.protobuf.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0706 extends AbstractC0016 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public int f2986;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final ByteArrayInputStream f2987;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public int f2988 = Integer.MAX_VALUE;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final byte[] f2989;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f2990;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public int f2991;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public int f2992;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f2993;

    public C0706(ByteArrayInputStream byteArrayInputStream) {
        Charset charset = AbstractC0702.f2979;
        this.f2987 = byteArrayInputStream;
        this.f2989 = new byte[4096];
        this.f2990 = 0;
        this.f2991 = 0;
        this.f2986 = 0;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ʻٴ */
    public final long mo179() {
        return m2508();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ʼʼ */
    public final int mo180() {
        return AbstractC0016.m225(m2498());
    }

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public final boolean m2497(int i) {
        ByteArrayInputStream byteArrayInputStream = this.f2987;
        int i2 = this.f2991;
        int i3 = i2 + i;
        int i4 = this.f2990;
        if (i3 <= i4) {
            throw new IllegalStateException(AbstractC1220.m3773(i, "refillBuffer() called when ", " bytes were already available in buffer"));
        }
        int i5 = this.f2986;
        if (i <= (Integer.MAX_VALUE - i5) - i2 && i5 + i2 + i <= this.f2988) {
            byte[] bArr = this.f2989;
            if (i2 > 0) {
                if (i4 > i2) {
                    System.arraycopy(bArr, i2, bArr, 0, i4 - i2);
                }
                this.f2986 += i2;
                this.f2990 -= i2;
                this.f2991 = 0;
            }
            int i6 = this.f2990;
            try {
                int read = byteArrayInputStream.read(bArr, i6, Math.min(bArr.length - i6, (Integer.MAX_VALUE - this.f2986) - i6));
                if (read == 0 || read < -1 || read > bArr.length) {
                    throw new IllegalStateException(byteArrayInputStream.getClass() + "#read(byte[]) returned invalid result: " + read + "\nThe InputStream implementation is buggy.");
                }
                if (read > 0) {
                    this.f2990 += read;
                    m2503();
                    if (this.f2990 >= i) {
                        return true;
                    }
                    return m2497(i);
                }
            } catch (InvalidProtocolBufferException e) {
                e.f2962 = true;
                throw e;
            }
        }
        return false;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ʼᐧ */
    public final double mo182() {
        return Double.longBitsToDouble(m2507());
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ʽʽ */
    public final int mo183() {
        if (mo205()) {
            this.f2992 = 0;
            return 0;
        }
        int m2498 = m2498();
        this.f2992 = m2498;
        if ((m2498 >>> 3) != 0) {
            return m2498;
        }
        throw InvalidProtocolBufferException.m2466();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ʽﹳ */
    public final int mo184() {
        return m2498();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ʾˋ */
    public final String mo185() {
        int m2498 = m2498();
        byte[] bArr = this.f2989;
        if (m2498 > 0) {
            int i = this.f2990;
            int i2 = this.f2991;
            if (m2498 <= i - i2) {
                String str = new String(bArr, i2, m2498, AbstractC0702.f2979);
                this.f2991 += m2498;
                return str;
            }
        }
        if (m2498 == 0) {
            return "";
        }
        if (m2498 < 0) {
            throw InvalidProtocolBufferException.m2463();
        }
        if (m2498 > this.f2990) {
            return new String(m2500(m2498), AbstractC0702.f2979);
        }
        m2502(m2498);
        String str2 = new String(bArr, this.f2991, m2498, AbstractC0702.f2979);
        this.f2991 += m2498;
        return str2;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ʾᵎ */
    public final long mo186() {
        return m2507();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ˆʾ */
    public final void mo187(int i) {
        this.f2988 = i;
        m2503();
    }

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final int m2498() {
        int i;
        int i2 = this.f2991;
        int i3 = this.f2990;
        if (i3 != i2) {
            int i4 = i2 + 1;
            byte[] bArr = this.f2989;
            byte b = bArr[i2];
            if (b >= 0) {
                this.f2991 = i4;
                return b;
            }
            if (i3 - i4 >= 9) {
                int i5 = i2 + 2;
                int i6 = (bArr[i4] << 7) ^ b;
                if (i6 < 0) {
                    i = i6 ^ (-128);
                } else {
                    int i7 = i2 + 3;
                    int i8 = (bArr[i5] << 14) ^ i6;
                    if (i8 >= 0) {
                        i = i8 ^ 16256;
                    } else {
                        int i9 = i2 + 4;
                        int i10 = i8 ^ (bArr[i7] << 21);
                        if (i10 < 0) {
                            i = (-2080896) ^ i10;
                        } else {
                            i7 = i2 + 5;
                            byte b2 = bArr[i9];
                            int i11 = (i10 ^ (b2 << 28)) ^ 266354560;
                            if (b2 < 0) {
                                i9 = i2 + 6;
                                if (bArr[i7] < 0) {
                                    i7 = i2 + 7;
                                    if (bArr[i9] < 0) {
                                        i9 = i2 + 8;
                                        if (bArr[i7] < 0) {
                                            i7 = i2 + 9;
                                            if (bArr[i9] < 0) {
                                                int i12 = i2 + 10;
                                                if (bArr[i7] >= 0) {
                                                    i5 = i12;
                                                    i = i11;
                                                }
                                            }
                                        }
                                    }
                                }
                                i = i11;
                            }
                            i = i11;
                        }
                        i5 = i9;
                    }
                    i5 = i7;
                }
                this.f2991 = i5;
                return i;
            }
        }
        return (int) m2499();
    }

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final long m2499() {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            if (this.f2991 == this.f2990) {
                m2502(1);
            }
            int i2 = this.f2991;
            this.f2991 = i2 + 1;
            j |= (r3 & Byte.MAX_VALUE) << i;
            if ((this.f2989[i2] & 128) == 0) {
                return j;
            }
        }
        throw InvalidProtocolBufferException.m2462();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ˈٴ */
    public final int mo190() {
        return m2498();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ˉʿ */
    public final boolean mo191() {
        return m2508() != 0;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ˉˆ */
    public final C0740 mo230() {
        int m2498 = m2498();
        int i = this.f2990;
        int i2 = this.f2991;
        int i3 = i - i2;
        byte[] bArr = this.f2989;
        if (m2498 <= i3 && m2498 > 0) {
            C0740 m2694 = AbstractC0744.m2694(bArr, i2, m2498);
            this.f2991 += m2498;
            return m2694;
        }
        if (m2498 == 0) {
            return AbstractC0744.f3063;
        }
        if (m2498 < 0) {
            throw InvalidProtocolBufferException.m2463();
        }
        byte[] m2506 = m2506(m2498);
        if (m2506 != null) {
            return AbstractC0744.m2694(m2506, 0, m2506.length);
        }
        int i4 = this.f2991;
        int i5 = this.f2990;
        int i6 = i5 - i4;
        this.f2986 += i5;
        this.f2991 = 0;
        this.f2990 = 0;
        ArrayList m2504 = m2504(m2498 - i6);
        byte[] bArr2 = new byte[m2498];
        System.arraycopy(bArr, i4, bArr2, 0, i6);
        int size = m2504.size();
        int i7 = 0;
        while (i7 < size) {
            Object obj = m2504.get(i7);
            i7++;
            byte[] bArr3 = (byte[]) obj;
            System.arraycopy(bArr3, 0, bArr2, i6, bArr3.length);
            i6 += bArr3.length;
        }
        C0740 c0740 = AbstractC0744.f3063;
        return new C0740(bArr2);
    }

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final byte[] m2500(int i) {
        byte[] m2506 = m2506(i);
        if (m2506 != null) {
            return m2506;
        }
        int i2 = this.f2991;
        int i3 = this.f2990;
        int i4 = i3 - i2;
        this.f2986 += i3;
        this.f2991 = 0;
        this.f2990 = 0;
        ArrayList m2504 = m2504(i - i4);
        byte[] bArr = new byte[i];
        System.arraycopy(this.f2989, i2, bArr, 0, i4);
        int size = m2504.size();
        int i5 = 0;
        while (i5 < size) {
            Object obj = m2504.get(i5);
            i5++;
            byte[] bArr2 = (byte[]) obj;
            System.arraycopy(bArr2, 0, bArr, i4, bArr2.length);
            i4 += bArr2.length;
        }
        return bArr;
    }

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public final void m2501(int i) {
        int i2 = this.f2990;
        int i3 = this.f2991;
        int i4 = i2 - i3;
        if (i <= i4 && i >= 0) {
            this.f2991 = i3 + i;
            return;
        }
        ByteArrayInputStream byteArrayInputStream = this.f2987;
        if (i < 0) {
            throw InvalidProtocolBufferException.m2463();
        }
        int i5 = this.f2986;
        int i6 = i5 + i3;
        int i7 = i6 + i;
        int i8 = this.f2988;
        if (i7 > i8) {
            m2501((i8 - i5) - i3);
            throw InvalidProtocolBufferException.m2464();
        }
        this.f2986 = i6;
        this.f2990 = 0;
        this.f2991 = 0;
        while (i4 < i) {
            long j = i - i4;
            try {
                try {
                    long skip = byteArrayInputStream.skip(j);
                    if (skip < 0 || skip > j) {
                        throw new IllegalStateException(byteArrayInputStream.getClass() + "#skip returned invalid result: " + skip + "\nThe InputStream implementation is buggy.");
                    }
                    if (skip == 0) {
                        break;
                    } else {
                        i4 += (int) skip;
                    }
                } catch (InvalidProtocolBufferException e) {
                    e.f2962 = true;
                    throw e;
                }
            } catch (Throwable th) {
                this.f2986 += i4;
                m2503();
                throw th;
            }
        }
        this.f2986 += i4;
        m2503();
        if (i4 >= i) {
            return;
        }
        int i9 = this.f2990;
        int i10 = i9 - this.f2991;
        this.f2991 = i9;
        m2502(1);
        while (true) {
            int i11 = i - i10;
            int i12 = this.f2990;
            if (i11 <= i12) {
                this.f2991 = i11;
                return;
            } else {
                i10 += i12;
                this.f2991 = i12;
                m2502(1);
            }
        }
    }

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public final void m2502(int i) {
        if (m2497(i)) {
            return;
        }
        if (i <= (Integer.MAX_VALUE - this.f2986) - this.f2991) {
            throw InvalidProtocolBufferException.m2464();
        }
        throw new IOException("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ˏי */
    public final float mo196() {
        return Float.intBitsToFloat(m2505());
    }

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public final void m2503() {
        int i = this.f2990 + this.f2993;
        this.f2990 = i;
        int i2 = this.f2986 + i;
        int i3 = this.f2988;
        if (i2 <= i3) {
            this.f2993 = 0;
            return;
        }
        int i4 = i2 - i3;
        this.f2993 = i4;
        this.f2990 = i - i4;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: יـ */
    public final long mo198() {
        return m2507();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ـˆ */
    public final int mo199() {
        return m2505();
    }

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final ArrayList m2504(int i) {
        ArrayList arrayList = new ArrayList();
        while (i > 0) {
            int min = Math.min(i, 4096);
            byte[] bArr = new byte[min];
            int i2 = 0;
            while (i2 < min) {
                int read = this.f2987.read(bArr, i2, min - i2);
                if (read == -1) {
                    throw InvalidProtocolBufferException.m2464();
                }
                this.f2986 += read;
                i2 += read;
            }
            i -= min;
            arrayList.add(bArr);
        }
        return arrayList;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ᴵˊ */
    public final String mo201() {
        int m2498 = m2498();
        int i = this.f2991;
        int i2 = this.f2990;
        int i3 = i2 - i;
        byte[] bArr = this.f2989;
        if (m2498 <= i3 && m2498 > 0) {
            this.f2991 = i + m2498;
        } else {
            if (m2498 == 0) {
                return "";
            }
            if (m2498 < 0) {
                throw InvalidProtocolBufferException.m2463();
            }
            i = 0;
            if (m2498 <= i2) {
                m2502(m2498);
                this.f2991 = m2498;
            } else {
                bArr = m2500(m2498);
            }
        }
        return AbstractC0727.f3014.ˑﹳ(bArr, i, m2498);
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ᴵᵔ */
    public final long mo202() {
        return m2508();
    }

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final int m2505() {
        int i = this.f2991;
        if (this.f2990 - i < 4) {
            m2502(4);
            i = this.f2991;
        }
        this.f2991 = i + 4;
        byte[] bArr = this.f2989;
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final byte[] m2506(int i) {
        if (i == 0) {
            return AbstractC0702.f2978;
        }
        if (i < 0) {
            throw InvalidProtocolBufferException.m2463();
        }
        int i2 = this.f2986;
        int i3 = this.f2991;
        int i4 = i2 + i3 + i;
        if (i4 - Integer.MAX_VALUE > 0) {
            throw new IOException("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
        }
        int i5 = this.f2988;
        if (i4 > i5) {
            m2501((i5 - i2) - i3);
            throw InvalidProtocolBufferException.m2464();
        }
        int i6 = this.f2990 - i3;
        int i7 = i - i6;
        ByteArrayInputStream byteArrayInputStream = this.f2987;
        if (i7 >= 4096) {
            try {
                if (i7 > byteArrayInputStream.available()) {
                    return null;
                }
            } catch (InvalidProtocolBufferException e) {
                e.f2962 = true;
                throw e;
            }
        }
        byte[] bArr = new byte[i];
        System.arraycopy(this.f2989, this.f2991, bArr, 0, i6);
        this.f2986 += this.f2990;
        this.f2991 = 0;
        this.f2990 = 0;
        while (i6 < i) {
            try {
                int read = byteArrayInputStream.read(bArr, i6, i - i6);
                if (read == -1) {
                    throw InvalidProtocolBufferException.m2464();
                }
                this.f2986 += read;
                i6 += read;
            } catch (InvalidProtocolBufferException e2) {
                e2.f2962 = true;
                throw e2;
            }
        }
        return bArr;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ᵎﹶ */
    public final boolean mo205() {
        return this.f2991 == this.f2990 && !m2497(1);
    }

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final long m2507() {
        int i = this.f2991;
        if (this.f2990 - i < 8) {
            m2502(8);
            i = this.f2991;
        }
        this.f2991 = i + 8;
        byte[] bArr = this.f2989;
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public final long m2508() {
        long j;
        long j2;
        long j3;
        long j4;
        int i = this.f2991;
        int i2 = this.f2990;
        if (i2 != i) {
            int i3 = i + 1;
            byte[] bArr = this.f2989;
            byte b = bArr[i];
            if (b >= 0) {
                this.f2991 = i3;
                return b;
            }
            if (i2 - i3 >= 9) {
                int i4 = i + 2;
                int i5 = (bArr[i3] << 7) ^ b;
                if (i5 < 0) {
                    j = i5 ^ (-128);
                } else {
                    int i6 = i + 3;
                    int i7 = (bArr[i4] << 14) ^ i5;
                    if (i7 >= 0) {
                        j = i7 ^ 16256;
                        i4 = i6;
                    } else {
                        int i8 = i + 4;
                        int i9 = i7 ^ (bArr[i6] << 21);
                        if (i9 < 0) {
                            j4 = (-2080896) ^ i9;
                        } else {
                            long j5 = i9;
                            i4 = i + 5;
                            long j6 = j5 ^ (bArr[i8] << 28);
                            if (j6 >= 0) {
                                j3 = 266354560;
                            } else {
                                i8 = i + 6;
                                long j7 = j6 ^ (bArr[i4] << 35);
                                if (j7 < 0) {
                                    j2 = -34093383808L;
                                } else {
                                    i4 = i + 7;
                                    j6 = j7 ^ (bArr[i8] << 42);
                                    if (j6 >= 0) {
                                        j3 = 4363953127296L;
                                    } else {
                                        i8 = i + 8;
                                        j7 = j6 ^ (bArr[i4] << 49);
                                        if (j7 < 0) {
                                            j2 = -558586000294016L;
                                        } else {
                                            i4 = i + 9;
                                            long j8 = (j7 ^ (bArr[i8] << 56)) ^ 71499008037633920L;
                                            if (j8 < 0) {
                                                int i10 = i + 10;
                                                if (bArr[i4] >= 0) {
                                                    i4 = i10;
                                                }
                                            }
                                            j = j8;
                                        }
                                    }
                                }
                                j4 = j2 ^ j7;
                            }
                            j = j3 ^ j6;
                        }
                        i4 = i8;
                        j = j4;
                    }
                }
                this.f2991 = i4;
                return j;
            }
        }
        return m2499();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ᵔﹳ */
    public final int mo209() {
        return m2498();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ᵢˏ */
    public final long mo210() {
        return AbstractC0016.m226(m2508());
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ⁱˊ */
    public final void mo211(int i) {
        if (this.f2992 != i) {
            throw new IOException("Protocol message end-group tag did not match expected tag.");
        }
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ﹳᐧ */
    public final int mo212() {
        return m2505();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ﾞʻ */
    public final int mo213(int i) {
        if (i < 0) {
            throw InvalidProtocolBufferException.m2463();
        }
        int i2 = this.f2986 + this.f2991 + i;
        if (i2 < 0) {
            throw InvalidProtocolBufferException.m2467();
        }
        int i3 = this.f2988;
        if (i2 > i3) {
            throw InvalidProtocolBufferException.m2464();
        }
        this.f2988 = i2;
        m2503();
        return i3;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ﾞᴵ */
    public final int mo214() {
        return this.f2986 + this.f2991;
    }
}
