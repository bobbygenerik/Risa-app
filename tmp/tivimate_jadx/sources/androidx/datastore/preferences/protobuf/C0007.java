package androidx.datastore.preferences.protobuf;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import p035.AbstractC1220;

/* renamed from: androidx.datastore.preferences.protobuf.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0007 extends AbstractC0016 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public int f372;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final InputStream f373;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public int f374 = Integer.MAX_VALUE;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final byte[] f375;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f376;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public int f377;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public int f378;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f379;

    public C0007(InputStream inputStream) {
        AbstractC0013.m218(inputStream, "input");
        this.f373 = inputStream;
        this.f375 = new byte[4096];
        this.f376 = 0;
        this.f377 = 0;
        this.f372 = 0;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final long mo179() {
        return m208();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final int mo180() {
        int m188 = m188();
        return (-(m188 & 1)) ^ (m188 >>> 1);
    }

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public final boolean m181(int i) {
        InputStream inputStream = this.f373;
        int i2 = this.f377;
        int i3 = i2 + i;
        int i4 = this.f376;
        if (i3 <= i4) {
            throw new IllegalStateException(AbstractC1220.m3773(i, "refillBuffer() called when ", " bytes were already available in buffer"));
        }
        int i5 = this.f372;
        if (i <= (Integer.MAX_VALUE - i5) - i2 && i5 + i2 + i <= this.f374) {
            byte[] bArr = this.f375;
            if (i2 > 0) {
                if (i4 > i2) {
                    System.arraycopy(bArr, i2, bArr, 0, i4 - i2);
                }
                this.f372 += i2;
                this.f376 -= i2;
                this.f377 = 0;
            }
            int i6 = this.f376;
            try {
                int read = inputStream.read(bArr, i6, Math.min(bArr.length - i6, (Integer.MAX_VALUE - this.f372) - i6));
                if (read == 0 || read < -1 || read > bArr.length) {
                    throw new IllegalStateException(inputStream.getClass() + "#read(byte[]) returned invalid result: " + read + "\nThe InputStream implementation is buggy.");
                }
                if (read > 0) {
                    this.f376 += read;
                    m197();
                    if (this.f376 >= i) {
                        return true;
                    }
                    return m181(i);
                }
            } catch (InvalidProtocolBufferException e) {
                e.f353 = true;
                throw e;
            }
        }
        return false;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final double mo182() {
        return Double.longBitsToDouble(m207());
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final int mo183() {
        if (mo205()) {
            this.f378 = 0;
            return 0;
        }
        int m188 = m188();
        this.f378 = m188;
        if ((m188 >>> 3) != 0) {
            return m188;
        }
        throw new IOException("Protocol message contained an invalid tag (zero).");
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final int mo184() {
        return m188();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final String mo185() {
        int m188 = m188();
        byte[] bArr = this.f375;
        if (m188 > 0) {
            int i = this.f376;
            int i2 = this.f377;
            if (m188 <= i - i2) {
                String str = new String(bArr, i2, m188, AbstractC0013.f389);
                this.f377 += m188;
                return str;
            }
        }
        if (m188 == 0) {
            return "";
        }
        if (m188 < 0) {
            throw InvalidProtocolBufferException.m140();
        }
        if (m188 > this.f376) {
            return new String(m192(m188), AbstractC0013.f389);
        }
        m195(m188);
        String str2 = new String(bArr, this.f377, m188, AbstractC0013.f389);
        this.f377 += m188;
        return str2;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final long mo186() {
        return m207();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void mo187(int i) {
        this.f374 = i;
        m197();
    }

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final int m188() {
        int i;
        int i2 = this.f377;
        int i3 = this.f376;
        if (i3 != i2) {
            int i4 = i2 + 1;
            byte[] bArr = this.f375;
            byte b = bArr[i2];
            if (b >= 0) {
                this.f377 = i4;
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
                this.f377 = i5;
                return i;
            }
        }
        return (int) m189();
    }

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final long m189() {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            if (this.f377 == this.f376) {
                m195(1);
            }
            int i2 = this.f377;
            this.f377 = i2 + 1;
            j |= (r3 & Byte.MAX_VALUE) << i;
            if ((this.f375[i2] & 128) == 0) {
                return j;
            }
        }
        throw InvalidProtocolBufferException.m139();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final int mo190() {
        return m188();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final boolean mo191() {
        return m208() != 0;
    }

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final byte[] m192(int i) {
        byte[] m204 = m204(i);
        if (m204 != null) {
            return m204;
        }
        int i2 = this.f377;
        int i3 = this.f376;
        int i4 = i3 - i2;
        this.f372 += i3;
        this.f377 = 0;
        this.f376 = 0;
        ArrayList m200 = m200(i - i4);
        byte[] bArr = new byte[i];
        System.arraycopy(this.f375, i2, bArr, 0, i4);
        int size = m200.size();
        int i5 = 0;
        while (i5 < size) {
            Object obj = m200.get(i5);
            i5++;
            byte[] bArr2 = (byte[]) obj;
            System.arraycopy(bArr2, 0, bArr, i4, bArr2.length);
            i4 += bArr2.length;
        }
        return bArr;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final boolean mo193(int i) {
        int i2 = i & 7;
        int i3 = 0;
        if (i2 != 0) {
            if (i2 == 1) {
                m194(8);
                return true;
            }
            if (i2 == 2) {
                m194(m188());
                return true;
            }
            if (i2 == 3) {
                m231();
                mo211(((i >>> 3) << 3) | 4);
                return true;
            }
            if (i2 == 4) {
                return false;
            }
            if (i2 != 5) {
                throw InvalidProtocolBufferException.m142();
            }
            m194(4);
            return true;
        }
        int i4 = this.f376 - this.f377;
        byte[] bArr = this.f375;
        if (i4 >= 10) {
            while (i3 < 10) {
                int i5 = this.f377;
                this.f377 = i5 + 1;
                if (bArr[i5] < 0) {
                    i3++;
                }
            }
            throw InvalidProtocolBufferException.m139();
        }
        while (i3 < 10) {
            if (this.f377 == this.f376) {
                m195(1);
            }
            int i6 = this.f377;
            this.f377 = i6 + 1;
            if (bArr[i6] < 0) {
                i3++;
            }
        }
        throw InvalidProtocolBufferException.m139();
        return true;
    }

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public final void m194(int i) {
        int i2 = this.f376;
        int i3 = this.f377;
        if (i <= i2 - i3 && i >= 0) {
            this.f377 = i3 + i;
            return;
        }
        InputStream inputStream = this.f373;
        if (i < 0) {
            throw InvalidProtocolBufferException.m140();
        }
        int i4 = this.f372;
        int i5 = i4 + i3;
        int i6 = i5 + i;
        int i7 = this.f374;
        if (i6 > i7) {
            m194((i7 - i4) - i3);
            throw InvalidProtocolBufferException.m141();
        }
        this.f372 = i5;
        int i8 = i2 - i3;
        this.f376 = 0;
        this.f377 = 0;
        while (i8 < i) {
            long j = i - i8;
            try {
                try {
                    long skip = inputStream.skip(j);
                    if (skip < 0 || skip > j) {
                        throw new IllegalStateException(inputStream.getClass() + "#skip returned invalid result: " + skip + "\nThe InputStream implementation is buggy.");
                    }
                    if (skip == 0) {
                        break;
                    } else {
                        i8 += (int) skip;
                    }
                } catch (InvalidProtocolBufferException e) {
                    e.f353 = true;
                    throw e;
                }
            } catch (Throwable th) {
                this.f372 += i8;
                m197();
                throw th;
            }
        }
        this.f372 += i8;
        m197();
        if (i8 >= i) {
            return;
        }
        int i9 = this.f376;
        int i10 = i9 - this.f377;
        this.f377 = i9;
        m195(1);
        while (true) {
            int i11 = i - i10;
            int i12 = this.f376;
            if (i11 <= i12) {
                this.f377 = i11;
                return;
            } else {
                i10 += i12;
                this.f377 = i12;
                m195(1);
            }
        }
    }

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public final void m195(int i) {
        if (m181(i)) {
            return;
        }
        if (i <= (Integer.MAX_VALUE - this.f372) - this.f377) {
            throw InvalidProtocolBufferException.m141();
        }
        throw new IOException("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ˏי, reason: contains not printable characters */
    public final float mo196() {
        return Float.intBitsToFloat(m203());
    }

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public final void m197() {
        int i = this.f376 + this.f379;
        this.f376 = i;
        int i2 = this.f372 + i;
        int i3 = this.f374;
        if (i2 <= i3) {
            this.f379 = 0;
            return;
        }
        int i4 = i2 - i3;
        this.f379 = i4;
        this.f376 = i - i4;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: יـ, reason: contains not printable characters */
    public final long mo198() {
        return m207();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ـˆ, reason: contains not printable characters */
    public final int mo199() {
        return m203();
    }

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final ArrayList m200(int i) {
        ArrayList arrayList = new ArrayList();
        while (i > 0) {
            int min = Math.min(i, 4096);
            byte[] bArr = new byte[min];
            int i2 = 0;
            while (i2 < min) {
                int read = this.f373.read(bArr, i2, min - i2);
                if (read == -1) {
                    throw InvalidProtocolBufferException.m141();
                }
                this.f372 += read;
                i2 += read;
            }
            i -= min;
            arrayList.add(bArr);
        }
        return arrayList;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final String mo201() {
        int m188 = m188();
        int i = this.f377;
        int i2 = this.f376;
        int i3 = i2 - i;
        byte[] bArr = this.f375;
        if (m188 <= i3 && m188 > 0) {
            this.f377 = i + m188;
        } else {
            if (m188 == 0) {
                return "";
            }
            if (m188 < 0) {
                throw InvalidProtocolBufferException.m140();
            }
            i = 0;
            if (m188 <= i2) {
                m195(m188);
                this.f377 = m188;
            } else {
                bArr = m192(m188);
            }
        }
        return AbstractC0020.f402.ˑﹳ(bArr, i, m188);
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final long mo202() {
        return m208();
    }

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final int m203() {
        int i = this.f377;
        if (this.f376 - i < 4) {
            m195(4);
            i = this.f377;
        }
        this.f377 = i + 4;
        byte[] bArr = this.f375;
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final byte[] m204(int i) {
        if (i == 0) {
            return AbstractC0013.f388;
        }
        if (i < 0) {
            throw InvalidProtocolBufferException.m140();
        }
        int i2 = this.f372;
        int i3 = this.f377;
        int i4 = i2 + i3 + i;
        if (i4 - Integer.MAX_VALUE > 0) {
            throw new IOException("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
        }
        int i5 = this.f374;
        if (i4 > i5) {
            m194((i5 - i2) - i3);
            throw InvalidProtocolBufferException.m141();
        }
        int i6 = this.f376 - i3;
        int i7 = i - i6;
        InputStream inputStream = this.f373;
        if (i7 >= 4096) {
            try {
                if (i7 > inputStream.available()) {
                    return null;
                }
            } catch (InvalidProtocolBufferException e) {
                e.f353 = true;
                throw e;
            }
        }
        byte[] bArr = new byte[i];
        System.arraycopy(this.f375, this.f377, bArr, 0, i6);
        this.f372 += this.f376;
        this.f377 = 0;
        this.f376 = 0;
        while (i6 < i) {
            try {
                int read = inputStream.read(bArr, i6, i - i6);
                if (read == -1) {
                    throw InvalidProtocolBufferException.m141();
                }
                this.f372 += read;
                i6 += read;
            } catch (InvalidProtocolBufferException e2) {
                e2.f353 = true;
                throw e2;
            }
        }
        return bArr;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final boolean mo205() {
        return this.f377 == this.f376 && !m181(1);
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final C0054 mo206() {
        int m188 = m188();
        int i = this.f376;
        int i2 = this.f377;
        int i3 = i - i2;
        byte[] bArr = this.f375;
        if (m188 <= i3 && m188 > 0) {
            C0054 m353 = C0054.m353(bArr, i2, m188);
            this.f377 += m188;
            return m353;
        }
        if (m188 == 0) {
            return C0054.f480;
        }
        if (m188 < 0) {
            throw InvalidProtocolBufferException.m140();
        }
        byte[] m204 = m204(m188);
        if (m204 != null) {
            return C0054.m353(m204, 0, m204.length);
        }
        int i4 = this.f377;
        int i5 = this.f376;
        int i6 = i5 - i4;
        this.f372 += i5;
        this.f377 = 0;
        this.f376 = 0;
        ArrayList m200 = m200(m188 - i6);
        byte[] bArr2 = new byte[m188];
        System.arraycopy(bArr, i4, bArr2, 0, i6);
        int size = m200.size();
        int i7 = 0;
        while (i7 < size) {
            Object obj = m200.get(i7);
            i7++;
            byte[] bArr3 = (byte[]) obj;
            System.arraycopy(bArr3, 0, bArr2, i6, bArr3.length);
            i6 += bArr3.length;
        }
        C0054 c0054 = C0054.f480;
        return new C0054(bArr2);
    }

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final long m207() {
        int i = this.f377;
        if (this.f376 - i < 8) {
            m195(8);
            i = this.f377;
        }
        this.f377 = i + 8;
        byte[] bArr = this.f375;
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public final long m208() {
        long j;
        long j2;
        long j3;
        long j4;
        int i = this.f377;
        int i2 = this.f376;
        if (i2 != i) {
            int i3 = i + 1;
            byte[] bArr = this.f375;
            byte b = bArr[i];
            if (b >= 0) {
                this.f377 = i3;
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
                this.f377 = i4;
                return j;
            }
        }
        return m189();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final int mo209() {
        return m188();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public final long mo210() {
        long m208 = m208();
        return (-(m208 & 1)) ^ (m208 >>> 1);
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void mo211(int i) {
        if (this.f378 != i) {
            throw new IOException("Protocol message end-group tag did not match expected tag.");
        }
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final int mo212() {
        return m203();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final int mo213(int i) {
        if (i < 0) {
            throw InvalidProtocolBufferException.m140();
        }
        int i2 = this.f372 + this.f377 + i;
        if (i2 < 0) {
            throw new IOException("Failed to parse the message.");
        }
        int i3 = this.f374;
        if (i2 > i3) {
            throw InvalidProtocolBufferException.m141();
        }
        this.f374 = i2;
        m197();
        return i3;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int mo214() {
        return this.f372 + this.f377;
    }
}
