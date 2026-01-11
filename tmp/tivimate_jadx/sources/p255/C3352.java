package p255;

import java.util.Arrays;
import p219.AbstractC3024;
import p430.AbstractC5096;

/* renamed from: יـ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3352 implements Cloneable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public /* synthetic */ Object[] f13111;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public /* synthetic */ boolean f13112;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public /* synthetic */ int f13113;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public /* synthetic */ long[] f13114;

    public C3352() {
        int i;
        int i2 = 4;
        while (true) {
            i = 80;
            if (i2 >= 32) {
                break;
            }
            int i3 = (1 << i2) - 12;
            if (80 <= i3) {
                i = i3;
                break;
            }
            i2++;
        }
        int i4 = i / 8;
        this.f13114 = new long[i4];
        this.f13111 = new Object[i4];
    }

    public final String toString() {
        if (m7170() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f13113 * 28);
        sb.append('{');
        int i = this.f13113;
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            sb.append(m7174(i2));
            sb.append('=');
            Object m7173 = m7173(i2);
            if (m7173 != sb) {
                sb.append(m7173);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void m7169(long j, Object obj) {
        Object obj2 = AbstractC3355.f13126;
        int m6553 = AbstractC3024.m6553(this.f13114, this.f13113, j);
        if (m6553 >= 0) {
            this.f13111[m6553] = obj;
            return;
        }
        int i = ~m6553;
        int i2 = this.f13113;
        if (i < i2) {
            Object[] objArr = this.f13111;
            if (objArr[i] == obj2) {
                this.f13114[i] = j;
                objArr[i] = obj;
                return;
            }
        }
        if (this.f13112) {
            long[] jArr = this.f13114;
            if (i2 >= jArr.length) {
                Object[] objArr2 = this.f13111;
                int i3 = 0;
                for (int i4 = 0; i4 < i2; i4++) {
                    Object obj3 = objArr2[i4];
                    if (obj3 != obj2) {
                        if (i4 != i3) {
                            jArr[i3] = jArr[i4];
                            objArr2[i3] = obj3;
                            objArr2[i4] = null;
                        }
                        i3++;
                    }
                }
                this.f13112 = false;
                this.f13113 = i3;
                i = ~AbstractC3024.m6553(this.f13114, i3, j);
            }
        }
        int i5 = this.f13113;
        if (i5 >= this.f13114.length) {
            int i6 = (i5 + 1) * 8;
            int i7 = 4;
            while (true) {
                if (i7 >= 32) {
                    break;
                }
                int i8 = (1 << i7) - 12;
                if (i6 <= i8) {
                    i6 = i8;
                    break;
                }
                i7++;
            }
            int i9 = i6 / 8;
            this.f13114 = Arrays.copyOf(this.f13114, i9);
            this.f13111 = Arrays.copyOf(this.f13111, i9);
        }
        int i10 = this.f13113 - i;
        if (i10 != 0) {
            long[] jArr2 = this.f13114;
            int i11 = i + 1;
            System.arraycopy(jArr2, i, jArr2, i11, i10);
            Object[] objArr3 = this.f13111;
            AbstractC5096.m10002(i11, i, this.f13113, objArr3, objArr3);
        }
        this.f13114[i] = j;
        this.f13111[i] = obj;
        this.f13113++;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final int m7170() {
        if (this.f13112) {
            int i = this.f13113;
            long[] jArr = this.f13114;
            Object[] objArr = this.f13111;
            int i2 = 0;
            for (int i3 = 0; i3 < i; i3++) {
                Object obj = objArr[i3];
                if (obj != AbstractC3355.f13126) {
                    if (i3 != i2) {
                        jArr[i2] = jArr[i3];
                        objArr[i2] = obj;
                        objArr[i3] = null;
                    }
                    i2++;
                }
            }
            this.f13112 = false;
            this.f13113 = i2;
        }
        return this.f13113;
    }

    /* renamed from: ˈ, reason: contains not printable characters and merged with bridge method [inline-methods] */
    public final C3352 clone() {
        C3352 c3352 = (C3352) super.clone();
        c3352.f13114 = (long[]) this.f13114.clone();
        c3352.f13111 = (Object[]) this.f13111.clone();
        return c3352;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final Object m7172(long j) {
        Object obj;
        int m6553 = AbstractC3024.m6553(this.f13114, this.f13113, j);
        if (m6553 < 0 || (obj = this.f13111[m6553]) == AbstractC3355.f13126) {
            return null;
        }
        return obj;
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final Object m7173(int i) {
        int i2;
        if (i < 0 || i >= (i2 = this.f13113)) {
            AbstractC3024.m6552("Expected index to be within 0..size()-1, but was " + i);
            throw null;
        }
        if (this.f13112) {
            long[] jArr = this.f13114;
            Object[] objArr = this.f13111;
            int i3 = 0;
            for (int i4 = 0; i4 < i2; i4++) {
                Object obj = objArr[i4];
                if (obj != AbstractC3355.f13126) {
                    if (i4 != i3) {
                        jArr[i3] = jArr[i4];
                        objArr[i3] = obj;
                        objArr[i4] = null;
                    }
                    i3++;
                }
            }
            this.f13112 = false;
            this.f13113 = i3;
        }
        return this.f13111[i];
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final long m7174(int i) {
        int i2;
        if (i < 0 || i >= (i2 = this.f13113)) {
            AbstractC3024.m6552("Expected index to be within 0..size()-1, but was " + i);
            throw null;
        }
        if (this.f13112) {
            long[] jArr = this.f13114;
            Object[] objArr = this.f13111;
            int i3 = 0;
            for (int i4 = 0; i4 < i2; i4++) {
                Object obj = objArr[i4];
                if (obj != AbstractC3355.f13126) {
                    if (i4 != i3) {
                        jArr[i3] = jArr[i4];
                        objArr[i3] = obj;
                        objArr[i4] = null;
                    }
                    i3++;
                }
            }
            this.f13112 = false;
            this.f13113 = i3;
        }
        return this.f13114[i];
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m7175() {
        int i = this.f13113;
        Object[] objArr = this.f13111;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.f13113 = 0;
        this.f13112 = false;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m7176(long j, Long l) {
        int i = this.f13113;
        if (i != 0 && j <= this.f13114[i - 1]) {
            m7169(j, l);
            return;
        }
        if (this.f13112) {
            long[] jArr = this.f13114;
            if (i >= jArr.length) {
                Object[] objArr = this.f13111;
                int i2 = 0;
                for (int i3 = 0; i3 < i; i3++) {
                    Object obj = objArr[i3];
                    if (obj != AbstractC3355.f13126) {
                        if (i3 != i2) {
                            jArr[i2] = jArr[i3];
                            objArr[i2] = obj;
                            objArr[i3] = null;
                        }
                        i2++;
                    }
                }
                this.f13112 = false;
                this.f13113 = i2;
            }
        }
        int i4 = this.f13113;
        if (i4 >= this.f13114.length) {
            int i5 = (i4 + 1) * 8;
            int i6 = 4;
            while (true) {
                if (i6 >= 32) {
                    break;
                }
                int i7 = (1 << i6) - 12;
                if (i5 <= i7) {
                    i5 = i7;
                    break;
                }
                i6++;
            }
            int i8 = i5 / 8;
            this.f13114 = Arrays.copyOf(this.f13114, i8);
            this.f13111 = Arrays.copyOf(this.f13111, i8);
        }
        this.f13114[i4] = j;
        this.f13111[i4] = l;
        this.f13113 = i4 + 1;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final Object m7177(long j) {
        Object obj;
        int m6553 = AbstractC3024.m6553(this.f13114, this.f13113, j);
        if (m6553 < 0 || (obj = this.f13111[m6553]) == AbstractC3355.f13126) {
            return -1L;
        }
        return obj;
    }
}
