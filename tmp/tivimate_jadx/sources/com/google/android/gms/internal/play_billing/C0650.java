package com.google.android.gms.internal.play_billing;

import android.support.v4.media.session.AbstractC0001;
import java.util.Arrays;

/* renamed from: com.google.android.gms.internal.play_billing.ﾞˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0650 {

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final C0650 f2510 = new C0650(0, new int[0], new Object[0], false);

    /* renamed from: ʽ, reason: contains not printable characters */
    public Object[] f2511;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f2512 = -1;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public boolean f2513;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int[] f2514;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int f2515;

    public C0650(int i, int[] iArr, Object[] objArr, boolean z) {
        this.f2515 = i;
        this.f2514 = iArr;
        this.f2511 = objArr;
        this.f2513 = z;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static C0650 m2301() {
        return new C0650(0, new int[8], new Object[8], true);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof C0650)) {
            return false;
        }
        C0650 c0650 = (C0650) obj;
        int i = this.f2515;
        if (i == c0650.f2515) {
            int[] iArr = this.f2514;
            int[] iArr2 = c0650.f2514;
            int i2 = 0;
            while (true) {
                if (i2 >= i) {
                    Object[] objArr = this.f2511;
                    Object[] objArr2 = c0650.f2511;
                    int i3 = this.f2515;
                    for (int i4 = 0; i4 < i3; i4++) {
                        if (objArr[i4].equals(objArr2[i4])) {
                        }
                    }
                    return true;
                }
                if (iArr[i2] != iArr2[i2]) {
                    break;
                }
                i2++;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.f2515;
        int i2 = i + 527;
        int[] iArr = this.f2514;
        int i3 = 17;
        int i4 = 17;
        for (int i5 = 0; i5 < i; i5++) {
            i4 = (i4 * 31) + iArr[i5];
        }
        int i6 = ((i2 * 31) + i4) * 31;
        Object[] objArr = this.f2511;
        int i7 = this.f2515;
        for (int i8 = 0; i8 < i7; i8++) {
            i3 = (i3 * 31) + objArr[i8].hashCode();
        }
        return i6 + i3;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m2302(int i, Object obj) {
        if (!this.f2513) {
            throw new UnsupportedOperationException();
        }
        m2304(this.f2515 + 1);
        int[] iArr = this.f2514;
        int i2 = this.f2515;
        iArr[i2] = i;
        this.f2511[i2] = obj;
        this.f2515 = i2 + 1;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m2303(C0618 c0618) {
        if (this.f2515 != 0) {
            for (int i = 0; i < this.f2515; i++) {
                int i2 = this.f2514[i];
                Object obj = this.f2511[i];
                int i3 = i2 & 7;
                int i4 = i2 >>> 3;
                if (i3 == 0) {
                    ((C0606) c0618.f2447).m2202(i4, ((Long) obj).longValue());
                } else if (i3 == 1) {
                    ((C0606) c0618.f2447).m2209(i4, ((Long) obj).longValue());
                } else if (i3 == 2) {
                    ((C0606) c0618.f2447).m2213(i4, (C0585) obj);
                } else if (i3 == 3) {
                    ((C0606) c0618.f2447).m2206(i4, 3);
                    ((C0650) obj).m2303(c0618);
                    ((C0606) c0618.f2447).m2206(i4, 4);
                } else {
                    if (i3 != 5) {
                        throw new RuntimeException(new zzfp());
                    }
                    ((C0606) c0618.f2447).m2205(i4, ((Integer) obj).intValue());
                }
            }
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m2304(int i) {
        int[] iArr = this.f2514;
        if (i > iArr.length) {
            int i2 = this.f2515;
            int i3 = (i2 / 2) + i2;
            if (i3 >= i) {
                i = i3;
            }
            if (i < 8) {
                i = 8;
            }
            this.f2514 = Arrays.copyOf(iArr, i);
            this.f2511 = Arrays.copyOf(this.f2511, i);
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int m2305() {
        int m2199;
        int m2200;
        int m21992;
        int i = this.f2512;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.f2515; i3++) {
            int i4 = this.f2514[i3];
            int i5 = i4 >>> 3;
            int i6 = i4 & 7;
            if (i6 != 0) {
                if (i6 == 1) {
                    ((Long) this.f2511[i3]).getClass();
                    m21992 = C0606.m2199(i5 << 3) + 8;
                } else if (i6 == 2) {
                    int i7 = i5 << 3;
                    C0585 c0585 = (C0585) this.f2511[i3];
                    int m21993 = C0606.m2199(i7);
                    int mo2031 = c0585.mo2031();
                    i2 = AbstractC0001.m12(mo2031, mo2031, m21993, i2);
                } else if (i6 == 3) {
                    int m21994 = C0606.m2199(i5 << 3);
                    m2199 = m21994 + m21994;
                    m2200 = ((C0650) this.f2511[i3]).m2305();
                } else {
                    if (i6 != 5) {
                        throw new IllegalStateException(new zzfp());
                    }
                    ((Integer) this.f2511[i3]).getClass();
                    m21992 = C0606.m2199(i5 << 3) + 4;
                }
                i2 = m21992 + i2;
            } else {
                int i8 = i5 << 3;
                long longValue = ((Long) this.f2511[i3]).longValue();
                m2199 = C0606.m2199(i8);
                m2200 = C0606.m2200(longValue);
            }
            i2 = m2200 + m2199 + i2;
        }
        this.f2512 = i2;
        return i2;
    }
}
