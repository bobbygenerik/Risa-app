package p164;

import android.support.v4.media.session.AbstractC0001;
import com.bumptech.glide.ˈ;
import java.nio.charset.Charset;
import java.util.Arrays;
import p035.AbstractC1220;
import p393.AbstractC4707;
import ˈˆ.ﾞᴵ;

/* renamed from: ˊᐧ.ᵢˏ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2594 extends C2571 {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final transient int[] f9827;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final transient byte[][] f9828;

    public C2594(byte[][] bArr, int[] iArr) {
        super(C2571.f9765.f9767);
        this.f9828 = bArr;
        this.f9827 = iArr;
    }

    @Override // p164.C2571
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C2571) {
            C2571 c2571 = (C2571) obj;
            if (c2571.mo5749() == mo5749() && mo5755(0, c2571, mo5749())) {
                return true;
            }
        }
        return false;
    }

    @Override // p164.C2571
    public final int hashCode() {
        int i = this.f9768;
        if (i != 0) {
            return i;
        }
        byte[][] bArr = this.f9828;
        int length = bArr.length;
        int i2 = 0;
        int i3 = 1;
        int i4 = 0;
        while (i2 < length) {
            int[] iArr = this.f9827;
            int i5 = iArr[length + i2];
            int i6 = iArr[i2];
            byte[] bArr2 = bArr[i2];
            int i7 = (i6 - i4) + i5;
            while (i5 < i7) {
                i3 = (i3 * 31) + bArr2[i5];
                i5++;
            }
            i2++;
            i4 = i6;
        }
        this.f9768 = i3;
        return i3;
    }

    @Override // p164.C2571
    public final String toString() {
        return m5818().toString();
    }

    @Override // p164.C2571
    /* renamed from: ʼˎ */
    public final int mo5747(byte[] bArr) {
        return m5818().mo5747(bArr);
    }

    @Override // p164.C2571
    /* renamed from: ʽ */
    public final int mo5749() {
        return this.f9827[this.f9828.length - 1];
    }

    @Override // p164.C2571
    /* renamed from: ˆʾ */
    public final boolean mo5750(int i, int i2, int i3, byte[] bArr) {
        if (i < 0 || i > mo5749() - i3 || i2 < 0 || i2 > bArr.length - i3) {
            return false;
        }
        int i4 = i3 + i;
        int m9418 = AbstractC4707.m9418(this, i);
        while (i < i4) {
            int[] iArr = this.f9827;
            int i5 = m9418 == 0 ? 0 : iArr[m9418 - 1];
            int i6 = iArr[m9418] - i5;
            byte[][] bArr2 = this.f9828;
            int i7 = iArr[bArr2.length + m9418];
            int min = Math.min(i4, i6 + i5) - i;
            if (!ˈ.ⁱˊ(bArr2[m9418], (i - i5) + i7, bArr, i2, min)) {
                return false;
            }
            i2 += min;
            i += min;
            m9418++;
        }
        return true;
    }

    @Override // p164.C2571
    /* renamed from: ˈ */
    public final String mo5751() {
        return m5818().mo5751();
    }

    @Override // p164.C2571
    /* renamed from: ˉʿ */
    public final C2571 mo5752(int i, int i2) {
        if (i2 == -1234567890) {
            i2 = mo5749();
        }
        if (i < 0) {
            throw new IllegalArgumentException(AbstractC1220.m3773(i, "beginIndex=", " < 0").toString());
        }
        if (i2 > mo5749()) {
            StringBuilder m16 = AbstractC0001.m16(i2, "endIndex=", " > length(");
            m16.append(mo5749());
            m16.append(')');
            throw new IllegalArgumentException(m16.toString().toString());
        }
        int i3 = i2 - i;
        if (i3 < 0) {
            throw new IllegalArgumentException(AbstractC0001.m14(i2, i, "endIndex=", " < beginIndex=").toString());
        }
        if (i == 0 && i2 == mo5749()) {
            return this;
        }
        if (i == i2) {
            return C2571.f9765;
        }
        int m9418 = AbstractC4707.m9418(this, i);
        int m94182 = AbstractC4707.m9418(this, i2 - 1);
        int i4 = m94182 + 1;
        byte[][] bArr = this.f9828;
        ﾞᴵ.ᵎﹶ(i4, bArr.length);
        byte[][] bArr2 = (byte[][]) Arrays.copyOfRange(bArr, m9418, i4);
        int[] iArr = new int[bArr2.length * 2];
        int[] iArr2 = this.f9827;
        if (m9418 <= m94182) {
            int i5 = m9418;
            int i6 = 0;
            while (true) {
                iArr[i6] = Math.min(iArr2[i5] - i, i3);
                int i7 = i6 + 1;
                iArr[i6 + bArr2.length] = iArr2[bArr.length + i5];
                if (i5 == m94182) {
                    break;
                }
                i5++;
                i6 = i7;
            }
        }
        int i8 = m9418 != 0 ? iArr2[m9418 - 1] : 0;
        int length = bArr2.length;
        iArr[length] = (i - i8) + iArr[length];
        return new C2594(bArr2, iArr);
    }

    @Override // p164.C2571
    /* renamed from: ˉˆ */
    public final C2571 mo5753() {
        return m5818().mo5753();
    }

    @Override // p164.C2571
    /* renamed from: ˑﹳ */
    public final int mo5754(int i, byte[] bArr) {
        return m5818().mo5754(i, bArr);
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final C2571 m5818() {
        return new C2571(m5819());
    }

    @Override // p164.C2571
    /* renamed from: ٴﹶ */
    public final boolean mo5755(int i, C2571 c2571, int i2) {
        if (i >= 0 && i <= mo5749() - i2) {
            int i3 = i2 + i;
            int m9418 = AbstractC4707.m9418(this, i);
            int i4 = 0;
            while (i < i3) {
                int[] iArr = this.f9827;
                int i5 = m9418 == 0 ? 0 : iArr[m9418 - 1];
                int i6 = iArr[m9418] - i5;
                byte[][] bArr = this.f9828;
                int i7 = iArr[bArr.length + m9418];
                int min = Math.min(i3, i6 + i5) - i;
                if (c2571.mo5750(i4, (i - i5) + i7, min, bArr[m9418])) {
                    i4 += min;
                    i += min;
                    m9418++;
                }
            }
            return true;
        }
        return false;
    }

    @Override // p164.C2571
    /* renamed from: ᵎﹶ */
    public final byte[] mo5756() {
        return m5819();
    }

    @Override // p164.C2571
    /* renamed from: ᵔᵢ */
    public final byte mo5757(int i) {
        byte[][] bArr = this.f9828;
        int length = bArr.length - 1;
        int[] iArr = this.f9827;
        ˈ.ᵔᵢ(iArr[length], i, 1L);
        int m9418 = AbstractC4707.m9418(this, i);
        return bArr[m9418][(i - (m9418 == 0 ? 0 : iArr[m9418 - 1])) + iArr[bArr.length + m9418]];
    }

    @Override // p164.C2571
    /* renamed from: ᵔﹳ */
    public final void mo5758(C2599 c2599, int i) {
        int m9418 = AbstractC4707.m9418(this, 0);
        int i2 = 0;
        while (i2 < i) {
            int[] iArr = this.f9827;
            int i3 = m9418 == 0 ? 0 : iArr[m9418 - 1];
            int i4 = iArr[m9418] - i3;
            byte[][] bArr = this.f9828;
            int i5 = iArr[bArr.length + m9418];
            int min = Math.min(i, i4 + i3) - i2;
            int i6 = (i2 - i3) + i5;
            C2577 c2577 = new C2577(bArr[m9418], i6, i6 + min, true);
            C2577 c25772 = c2599.f9834;
            if (c25772 == null) {
                c2577.f9781 = c2577;
                c2577.f9784 = c2577;
                c2599.f9834 = c2577;
            } else {
                c25772.f9781.m5775(c2577);
            }
            i2 += min;
            m9418++;
        }
        c2599.f9835 += i;
    }

    @Override // p164.C2571
    /* renamed from: ﹳٴ */
    public final String mo5760() {
        throw null;
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final byte[] m5819() {
        byte[] bArr = new byte[mo5749()];
        byte[][] bArr2 = this.f9828;
        int length = bArr2.length;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i < length) {
            int[] iArr = this.f9827;
            int i4 = iArr[length + i];
            int i5 = iArr[i];
            int i6 = i5 - i2;
            System.arraycopy(bArr2[i], i4, bArr, i3, (i4 + i6) - i4);
            i3 += i6;
            i++;
            i2 = i5;
        }
        return bArr;
    }

    @Override // p164.C2571
    /* renamed from: ﾞʻ */
    public final String mo5761(Charset charset) {
        return m5818().mo5761(charset);
    }
}
