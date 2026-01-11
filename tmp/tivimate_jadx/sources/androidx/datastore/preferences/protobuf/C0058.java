package androidx.datastore.preferences.protobuf;

import java.io.IOException;
import java.util.Arrays;

/* renamed from: androidx.datastore.preferences.protobuf.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0058 extends AbstractC0016 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public int f491 = Integer.MAX_VALUE;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final byte[] f492;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f493;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f494;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final int f495;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public int f496;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f497;

    public C0058(byte[] bArr, int i, int i2, boolean z) {
        this.f492 = bArr;
        this.f493 = i2 + i;
        this.f497 = i;
        this.f495 = i;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ʻٴ */
    public final long mo179() {
        return m363();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ʼʼ */
    public final int mo180() {
        int m362 = m362();
        return (-(m362 & 1)) ^ (m362 >>> 1);
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ʼᐧ */
    public final double mo182() {
        return Double.longBitsToDouble(m364());
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ʽʽ */
    public final int mo183() {
        if (mo205()) {
            this.f496 = 0;
            return 0;
        }
        int m362 = m362();
        this.f496 = m362;
        if ((m362 >>> 3) != 0) {
            return m362;
        }
        throw new IOException("Protocol message contained an invalid tag (zero).");
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ʽﹳ */
    public final int mo184() {
        return m362();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ʾˋ */
    public final String mo185() {
        int m362 = m362();
        if (m362 > 0) {
            int i = this.f493;
            int i2 = this.f497;
            if (m362 <= i - i2) {
                String str = new String(this.f492, i2, m362, AbstractC0013.f389);
                this.f497 += m362;
                return str;
            }
        }
        if (m362 == 0) {
            return "";
        }
        if (m362 < 0) {
            throw InvalidProtocolBufferException.m140();
        }
        throw InvalidProtocolBufferException.m141();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ʾᵎ */
    public final long mo186() {
        return m364();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ˆʾ */
    public final void mo187(int i) {
        this.f491 = i;
        m360();
    }

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final void m360() {
        int i = this.f493 + this.f494;
        this.f493 = i;
        int i2 = i - this.f495;
        int i3 = this.f491;
        if (i2 <= i3) {
            this.f494 = 0;
            return;
        }
        int i4 = i2 - i3;
        this.f494 = i4;
        this.f493 = i - i4;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ˈٴ */
    public final int mo190() {
        return m362();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ˉʿ */
    public final boolean mo191() {
        return m363() != 0;
    }

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final int m361() {
        int i = this.f497;
        if (this.f493 - i < 4) {
            throw InvalidProtocolBufferException.m141();
        }
        this.f497 = i + 4;
        byte[] bArr = this.f492;
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ˊʻ */
    public final boolean mo193(int i) {
        int i2 = i & 7;
        int i3 = 0;
        if (i2 != 0) {
            if (i2 == 1) {
                m366(8);
                return true;
            }
            if (i2 == 2) {
                m366(m362());
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
            m366(4);
            return true;
        }
        int i4 = this.f493 - this.f497;
        byte[] bArr = this.f492;
        if (i4 >= 10) {
            while (i3 < 10) {
                int i5 = this.f497;
                this.f497 = i5 + 1;
                if (bArr[i5] < 0) {
                    i3++;
                }
            }
            throw InvalidProtocolBufferException.m139();
        }
        while (i3 < 10) {
            int i6 = this.f497;
            if (i6 == this.f493) {
                throw InvalidProtocolBufferException.m141();
            }
            this.f497 = i6 + 1;
            if (bArr[i6] < 0) {
                i3++;
            }
        }
        throw InvalidProtocolBufferException.m139();
        return true;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ˏי */
    public final float mo196() {
        return Float.intBitsToFloat(m361());
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: יـ */
    public final long mo198() {
        return m364();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ـˆ */
    public final int mo199() {
        return m361();
    }

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final int m362() {
        int i;
        int i2 = this.f497;
        int i3 = this.f493;
        if (i3 != i2) {
            int i4 = i2 + 1;
            byte[] bArr = this.f492;
            byte b = bArr[i2];
            if (b >= 0) {
                this.f497 = i4;
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
                this.f497 = i5;
                return i;
            }
        }
        return (int) m365();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ᴵˊ */
    public final String mo201() {
        int m362 = m362();
        if (m362 > 0) {
            int i = this.f493;
            int i2 = this.f497;
            if (m362 <= i - i2) {
                String str = AbstractC0020.f402.ˑﹳ(this.f492, i2, m362);
                this.f497 += m362;
                return str;
            }
        }
        if (m362 == 0) {
            return "";
        }
        if (m362 <= 0) {
            throw InvalidProtocolBufferException.m140();
        }
        throw InvalidProtocolBufferException.m141();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ᴵᵔ */
    public final long mo202() {
        return m363();
    }

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final long m363() {
        long j;
        long j2;
        long j3;
        long j4;
        int i = this.f497;
        int i2 = this.f493;
        if (i2 != i) {
            int i3 = i + 1;
            byte[] bArr = this.f492;
            byte b = bArr[i];
            if (b >= 0) {
                this.f497 = i3;
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
                this.f497 = i4;
                return j;
            }
        }
        return m365();
    }

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final long m364() {
        int i = this.f497;
        if (this.f493 - i < 8) {
            throw InvalidProtocolBufferException.m141();
        }
        this.f497 = i + 8;
        byte[] bArr = this.f492;
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ᵎﹶ */
    public final boolean mo205() {
        return this.f497 == this.f493;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ᵔʾ */
    public final C0054 mo206() {
        byte[] bArr;
        int m362 = m362();
        byte[] bArr2 = this.f492;
        if (m362 > 0) {
            int i = this.f493;
            int i2 = this.f497;
            if (m362 <= i - i2) {
                C0054 m353 = C0054.m353(bArr2, i2, m362);
                this.f497 += m362;
                return m353;
            }
        }
        if (m362 == 0) {
            return C0054.f480;
        }
        if (m362 > 0) {
            int i3 = this.f493;
            int i4 = this.f497;
            if (m362 <= i3 - i4) {
                int i5 = m362 + i4;
                this.f497 = i5;
                bArr = Arrays.copyOfRange(bArr2, i4, i5);
                C0054 c0054 = C0054.f480;
                return new C0054(bArr);
            }
        }
        if (m362 > 0) {
            throw InvalidProtocolBufferException.m141();
        }
        if (m362 != 0) {
            throw InvalidProtocolBufferException.m140();
        }
        bArr = AbstractC0013.f388;
        C0054 c00542 = C0054.f480;
        return new C0054(bArr);
    }

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final long m365() {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            int i2 = this.f497;
            if (i2 == this.f493) {
                throw InvalidProtocolBufferException.m141();
            }
            this.f497 = i2 + 1;
            j |= (r3 & Byte.MAX_VALUE) << i;
            if ((this.f492[i2] & 128) == 0) {
                return j;
            }
        }
        throw InvalidProtocolBufferException.m139();
    }

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public final void m366(int i) {
        if (i >= 0) {
            int i2 = this.f493;
            int i3 = this.f497;
            if (i <= i2 - i3) {
                this.f497 = i3 + i;
                return;
            }
        }
        if (i >= 0) {
            throw InvalidProtocolBufferException.m141();
        }
        throw InvalidProtocolBufferException.m140();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ᵔﹳ */
    public final int mo209() {
        return m362();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ᵢˏ */
    public final long mo210() {
        long m363 = m363();
        return (-(m363 & 1)) ^ (m363 >>> 1);
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ⁱˊ */
    public final void mo211(int i) {
        if (this.f496 != i) {
            throw new IOException("Protocol message end-group tag did not match expected tag.");
        }
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ﹳᐧ */
    public final int mo212() {
        return m361();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ﾞʻ */
    public final int mo213(int i) {
        if (i < 0) {
            throw InvalidProtocolBufferException.m140();
        }
        int mo214 = mo214() + i;
        if (mo214 < 0) {
            throw new IOException("Failed to parse the message.");
        }
        int i2 = this.f491;
        if (mo214 > i2) {
            throw InvalidProtocolBufferException.m141();
        }
        this.f491 = mo214;
        m360();
        return i2;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0016
    /* renamed from: ﾞᴵ */
    public final int mo214() {
        return this.f497 - this.f495;
    }
}
