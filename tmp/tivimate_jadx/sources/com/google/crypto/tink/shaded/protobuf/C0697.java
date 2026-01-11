package com.google.crypto.tink.shaded.protobuf;

import androidx.datastore.preferences.protobuf.AbstractC0016;
import java.io.IOException;
import java.util.Arrays;

/* renamed from: com.google.crypto.tink.shaded.protobuf.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0697 extends AbstractC0016 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public int f2967 = Integer.MAX_VALUE;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final byte[] f2968;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f2969;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f2970;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final int f2971;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public int f2972;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f2973;

    public C0697(byte[] bArr, int i, int i2, boolean z) {
        this.f2968 = bArr;
        this.f2969 = i2 + i;
        this.f2973 = i;
        this.f2971 = i;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ʻٴ */
    public final long mo179() {
        return m2476();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ʼʼ */
    public final int mo180() {
        return AbstractC0016.m225(m2475());
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ʼᐧ */
    public final double mo182() {
        return Double.longBitsToDouble(m2477());
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ʽʽ */
    public final int mo183() {
        if (mo205()) {
            this.f2972 = 0;
            return 0;
        }
        int m2475 = m2475();
        this.f2972 = m2475;
        if ((m2475 >>> 3) != 0) {
            return m2475;
        }
        throw InvalidProtocolBufferException.m2466();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ʽﹳ */
    public final int mo184() {
        return m2475();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ʾˋ */
    public final String mo185() {
        int m2475 = m2475();
        if (m2475 > 0) {
            int i = this.f2969;
            int i2 = this.f2973;
            if (m2475 <= i - i2) {
                String str = new String(this.f2968, i2, m2475, AbstractC0702.f2979);
                this.f2973 += m2475;
                return str;
            }
        }
        if (m2475 == 0) {
            return "";
        }
        if (m2475 < 0) {
            throw InvalidProtocolBufferException.m2463();
        }
        throw InvalidProtocolBufferException.m2464();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ʾᵎ */
    public final long mo186() {
        return m2477();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ˆʾ */
    public final void mo187(int i) {
        this.f2967 = i;
        m2473();
    }

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final void m2473() {
        int i = this.f2969 + this.f2970;
        this.f2969 = i;
        int i2 = i - this.f2971;
        int i3 = this.f2967;
        if (i2 <= i3) {
            this.f2970 = 0;
            return;
        }
        int i4 = i2 - i3;
        this.f2970 = i4;
        this.f2969 = i - i4;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ˈٴ */
    public final int mo190() {
        return m2475();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ˉʿ */
    public final boolean mo191() {
        return m2476() != 0;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ˉˆ */
    public final C0740 mo230() {
        byte[] bArr;
        int m2475 = m2475();
        byte[] bArr2 = this.f2968;
        if (m2475 > 0) {
            int i = this.f2969;
            int i2 = this.f2973;
            if (m2475 <= i - i2) {
                C0740 m2694 = AbstractC0744.m2694(bArr2, i2, m2475);
                this.f2973 += m2475;
                return m2694;
            }
        }
        if (m2475 == 0) {
            return AbstractC0744.f3063;
        }
        if (m2475 > 0) {
            int i3 = this.f2969;
            int i4 = this.f2973;
            if (m2475 <= i3 - i4) {
                int i5 = m2475 + i4;
                this.f2973 = i5;
                bArr = Arrays.copyOfRange(bArr2, i4, i5);
                C0740 c0740 = AbstractC0744.f3063;
                return new C0740(bArr);
            }
        }
        if (m2475 > 0) {
            throw InvalidProtocolBufferException.m2464();
        }
        if (m2475 != 0) {
            throw InvalidProtocolBufferException.m2463();
        }
        bArr = AbstractC0702.f2978;
        C0740 c07402 = AbstractC0744.f3063;
        return new C0740(bArr);
    }

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final int m2474() {
        int i = this.f2973;
        if (this.f2969 - i < 4) {
            throw InvalidProtocolBufferException.m2464();
        }
        this.f2973 = i + 4;
        byte[] bArr = this.f2968;
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ˏי */
    public final float mo196() {
        return Float.intBitsToFloat(m2474());
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: יـ */
    public final long mo198() {
        return m2477();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ـˆ */
    public final int mo199() {
        return m2474();
    }

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final int m2475() {
        int i;
        int i2 = this.f2973;
        int i3 = this.f2969;
        if (i3 != i2) {
            int i4 = i2 + 1;
            byte[] bArr = this.f2968;
            byte b = bArr[i2];
            if (b >= 0) {
                this.f2973 = i4;
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
                this.f2973 = i5;
                return i;
            }
        }
        return (int) m2478();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ᴵˊ */
    public final String mo201() {
        int m2475 = m2475();
        if (m2475 > 0) {
            int i = this.f2969;
            int i2 = this.f2973;
            if (m2475 <= i - i2) {
                String str = AbstractC0727.f3014.ˑﹳ(this.f2968, i2, m2475);
                this.f2973 += m2475;
                return str;
            }
        }
        if (m2475 == 0) {
            return "";
        }
        if (m2475 <= 0) {
            throw InvalidProtocolBufferException.m2463();
        }
        throw InvalidProtocolBufferException.m2464();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ᴵᵔ */
    public final long mo202() {
        return m2476();
    }

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final long m2476() {
        long j;
        long j2;
        long j3;
        long j4;
        int i = this.f2973;
        int i2 = this.f2969;
        if (i2 != i) {
            int i3 = i + 1;
            byte[] bArr = this.f2968;
            byte b = bArr[i];
            if (b >= 0) {
                this.f2973 = i3;
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
                this.f2973 = i4;
                return j;
            }
        }
        return m2478();
    }

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final long m2477() {
        int i = this.f2973;
        if (this.f2969 - i < 8) {
            throw InvalidProtocolBufferException.m2464();
        }
        this.f2973 = i + 8;
        byte[] bArr = this.f2968;
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ᵎﹶ */
    public final boolean mo205() {
        return this.f2973 == this.f2969;
    }

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final long m2478() {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            int i2 = this.f2973;
            if (i2 == this.f2969) {
                throw InvalidProtocolBufferException.m2464();
            }
            this.f2973 = i2 + 1;
            j |= (r3 & Byte.MAX_VALUE) << i;
            if ((this.f2968[i2] & 128) == 0) {
                return j;
            }
        }
        throw InvalidProtocolBufferException.m2462();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ᵔﹳ */
    public final int mo209() {
        return m2475();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ᵢˏ */
    public final long mo210() {
        return AbstractC0016.m226(m2476());
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ⁱˊ */
    public final void mo211(int i) {
        if (this.f2972 != i) {
            throw new IOException("Protocol message end-group tag did not match expected tag.");
        }
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ﹳᐧ */
    public final int mo212() {
        return m2474();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ﾞʻ */
    public final int mo213(int i) {
        if (i < 0) {
            throw InvalidProtocolBufferException.m2463();
        }
        int mo214 = mo214() + i;
        if (mo214 < 0) {
            throw InvalidProtocolBufferException.m2467();
        }
        int i2 = this.f2967;
        if (mo214 > i2) {
            throw InvalidProtocolBufferException.m2464();
        }
        this.f2967 = mo214;
        m2473();
        return i2;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ﾞᴵ */
    public final int mo214() {
        return this.f2973 - this.f2971;
    }
}
