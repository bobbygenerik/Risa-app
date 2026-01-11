package com.google.crypto.tink.shaded.protobuf;

import java.util.Arrays;

/* renamed from: com.google.crypto.tink.shaded.protobuf.ʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0704 {

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final C0704 f2980 = new C0704(0, new int[0], new Object[0], false);

    /* renamed from: ʽ, reason: contains not printable characters */
    public Object[] f2981;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f2982 = -1;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public boolean f2983;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int[] f2984;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int f2985;

    public C0704(int i, int[] iArr, Object[] objArr, boolean z) {
        this.f2985 = i;
        this.f2984 = iArr;
        this.f2981 = objArr;
        this.f2983 = z;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static C0704 m2491() {
        return new C0704(0, new int[8], new Object[8], true);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof C0704)) {
            return false;
        }
        C0704 c0704 = (C0704) obj;
        int i = this.f2985;
        if (i == c0704.f2985) {
            int[] iArr = this.f2984;
            int[] iArr2 = c0704.f2984;
            int i2 = 0;
            while (true) {
                if (i2 >= i) {
                    Object[] objArr = this.f2981;
                    Object[] objArr2 = c0704.f2981;
                    int i3 = this.f2985;
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
        int i = this.f2985;
        int i2 = (527 + i) * 31;
        int[] iArr = this.f2984;
        int i3 = 17;
        int i4 = 17;
        for (int i5 = 0; i5 < i; i5++) {
            i4 = (i4 * 31) + iArr[i5];
        }
        int i6 = (i2 + i4) * 31;
        Object[] objArr = this.f2981;
        int i7 = this.f2985;
        for (int i8 = 0; i8 < i7; i8++) {
            i3 = (i3 * 31) + objArr[i8].hashCode();
        }
        return i6 + i3;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m2492(int i, Object obj) {
        if (!this.f2983) {
            throw new UnsupportedOperationException();
        }
        m2495(this.f2985 + 1);
        int[] iArr = this.f2984;
        int i2 = this.f2985;
        iArr[i2] = i;
        this.f2981[i2] = obj;
        this.f2985 = i2 + 1;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m2493(C0729 c0729) {
        if (this.f2985 == 0) {
            return;
        }
        c0729.getClass();
        C0751 c0751 = (C0751) c0729.f3018;
        for (int i = 0; i < this.f2985; i++) {
            int i2 = this.f2984[i];
            Object obj = this.f2981[i];
            int i3 = i2 >>> 3;
            int i4 = i2 & 7;
            if (i4 == 0) {
                c0751.m2709(i3, ((Long) obj).longValue());
            } else if (i4 == 1) {
                c0751.m2720(i3, ((Long) obj).longValue());
            } else if (i4 == 2) {
                AbstractC0744 abstractC0744 = (AbstractC0744) obj;
                c0751.m2715(i3, 2);
                c0751.m2713(abstractC0744.size());
                C0740 c0740 = (C0740) abstractC0744;
                c0751.m2719(c0740.f3045, c0740.mo2655(), c0740.size());
            } else if (i4 == 3) {
                c0751.m2715(i3, 3);
                ((C0704) obj).m2493(c0729);
                c0751.m2715(i3, 4);
            } else {
                if (i4 != 5) {
                    throw new RuntimeException(InvalidProtocolBufferException.m2461());
                }
                c0751.m2717(i3, ((Integer) obj).intValue());
            }
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int m2494() {
        int m2708;
        int m2706;
        int m27082;
        int i = this.f2982;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.f2985; i3++) {
            int i4 = this.f2984[i3];
            int i5 = i4 >>> 3;
            int i6 = i4 & 7;
            if (i6 != 0) {
                if (i6 == 1) {
                    ((Long) this.f2981[i3]).getClass();
                    m27082 = C0751.m2708(i5) + 8;
                } else if (i6 == 2) {
                    m27082 = C0751.m2703(i5, (AbstractC0744) this.f2981[i3]);
                } else if (i6 == 3) {
                    m2708 = C0751.m2708(i5) * 2;
                    m2706 = ((C0704) this.f2981[i3]).m2494();
                } else {
                    if (i6 != 5) {
                        throw new IllegalStateException(InvalidProtocolBufferException.m2461());
                    }
                    ((Integer) this.f2981[i3]).getClass();
                    m27082 = C0751.m2708(i5) + 4;
                }
                i2 = m27082 + i2;
            } else {
                long longValue = ((Long) this.f2981[i3]).longValue();
                m2708 = C0751.m2708(i5);
                m2706 = C0751.m2706(longValue);
            }
            i2 = m2706 + m2708 + i2;
        }
        this.f2982 = i2;
        return i2;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m2495(int i) {
        int[] iArr = this.f2984;
        if (i > iArr.length) {
            int i2 = this.f2985;
            int i3 = (i2 / 2) + i2;
            if (i3 >= i) {
                i = i3;
            }
            if (i < 8) {
                i = 8;
            }
            this.f2984 = Arrays.copyOf(iArr, i);
            this.f2981 = Arrays.copyOf(this.f2981, i);
        }
    }
}
