package com.google.android.gms.internal.measurement;

import android.support.v4.media.session.AbstractC0001;
import java.util.Arrays;

/* renamed from: com.google.android.gms.internal.measurement.ʽᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0278 {

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final C0278 f1787 = new C0278(0, new int[0], new Object[0], false);

    /* renamed from: ʽ, reason: contains not printable characters */
    public Object[] f1788;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f1789 = -1;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public boolean f1790;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int[] f1791;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int f1792;

    public C0278(int i, int[] iArr, Object[] objArr, boolean z) {
        this.f1792 = i;
        this.f1791 = iArr;
        this.f1788 = objArr;
        this.f1790 = z;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C0278 m1289() {
        return new C0278(0, new int[8], new Object[8], true);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof C0278)) {
            return false;
        }
        C0278 c0278 = (C0278) obj;
        int i = this.f1792;
        if (i == c0278.f1792) {
            int[] iArr = this.f1791;
            int[] iArr2 = c0278.f1791;
            int i2 = 0;
            while (true) {
                if (i2 >= i) {
                    Object[] objArr = this.f1788;
                    Object[] objArr2 = c0278.f1788;
                    int i3 = this.f1792;
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
        int i = this.f1792;
        int i2 = i + 527;
        int[] iArr = this.f1791;
        int i3 = 17;
        int i4 = 17;
        for (int i5 = 0; i5 < i; i5++) {
            i4 = (i4 * 31) + iArr[i5];
        }
        int i6 = ((i2 * 31) + i4) * 31;
        Object[] objArr = this.f1788;
        int i7 = this.f1792;
        for (int i8 = 0; i8 < i7; i8++) {
            i3 = (i3 * 31) + objArr[i8].hashCode();
        }
        return i6 + i3;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int m1290() {
        int m1207;
        int m1205;
        int m12072;
        int i = this.f1789;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.f1792; i3++) {
            int i4 = this.f1791[i3];
            int i5 = i4 >>> 3;
            int i6 = i4 & 7;
            if (i6 != 0) {
                if (i6 == 1) {
                    ((Long) this.f1788[i3]).getClass();
                    m12072 = C0260.m1207(i5 << 3) + 8;
                } else if (i6 == 2) {
                    int i7 = i5 << 3;
                    C0364 c0364 = (C0364) this.f1788[i3];
                    int m12073 = C0260.m1207(i7);
                    int mo1236 = c0364.mo1236();
                    i2 = AbstractC0001.m21(mo1236, mo1236, m12073, i2);
                } else if (i6 == 3) {
                    int m12074 = C0260.m1207(i5 << 3);
                    m1207 = m12074 + m12074;
                    m1205 = ((C0278) this.f1788[i3]).m1290();
                } else {
                    if (i6 != 5) {
                        throw new IllegalStateException(new zzmq());
                    }
                    ((Integer) this.f1788[i3]).getClass();
                    m12072 = C0260.m1207(i5 << 3) + 4;
                }
                i2 = m12072 + i2;
            } else {
                int i8 = i5 << 3;
                long longValue = ((Long) this.f1788[i3]).longValue();
                m1207 = C0260.m1207(i8);
                m1205 = C0260.m1205(longValue);
            }
            i2 = m1205 + m1207 + i2;
        }
        this.f1789 = i2;
        return i2;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m1291(int i, Object obj) {
        if (!this.f1790) {
            throw new UnsupportedOperationException();
        }
        m1292(this.f1792 + 1);
        int[] iArr = this.f1791;
        int i2 = this.f1792;
        iArr[i2] = i;
        this.f1788[i2] = obj;
        this.f1792 = i2 + 1;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m1292(int i) {
        int[] iArr = this.f1791;
        if (i > iArr.length) {
            int i2 = this.f1792;
            int i3 = (i2 / 2) + i2;
            if (i3 >= i) {
                i = i3;
            }
            if (i < 8) {
                i = 8;
            }
            this.f1791 = Arrays.copyOf(iArr, i);
            this.f1788 = Arrays.copyOf(this.f1788, i);
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m1293(C0425 c0425) {
        if (this.f1792 != 0) {
            for (int i = 0; i < this.f1792; i++) {
                int i2 = this.f1791[i];
                Object obj = this.f1788[i];
                int i3 = i2 & 7;
                int i4 = i2 >>> 3;
                if (i3 == 0) {
                    ((C0260) c0425.f2169).m1220(i4, ((Long) obj).longValue());
                } else if (i3 == 1) {
                    ((C0260) c0425.f2169).m1209(i4, ((Long) obj).longValue());
                } else if (i3 == 2) {
                    C0260 c0260 = (C0260) c0425.f2169;
                    c0260.m1214((i4 << 3) | 2);
                    c0260.m1221((C0364) obj);
                } else if (i3 == 3) {
                    ((C0260) c0425.f2169).m1212(i4, 3);
                    ((C0278) obj).m1293(c0425);
                    ((C0260) c0425.f2169).m1212(i4, 4);
                } else {
                    if (i3 != 5) {
                        throw new RuntimeException(new zzmq());
                    }
                    ((C0260) c0425.f2169).m1218(i4, ((Integer) obj).intValue());
                }
            }
        }
    }
}
