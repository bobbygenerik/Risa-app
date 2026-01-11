package androidx.datastore.preferences.protobuf;

import java.util.Arrays;

/* renamed from: androidx.datastore.preferences.protobuf.ʿᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0015 {

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final C0015 f390 = new C0015(0, new int[0], new Object[0], false);

    /* renamed from: ʽ, reason: contains not printable characters */
    public Object[] f391;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f392 = -1;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public boolean f393;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int[] f394;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int f395;

    public C0015(int i, int[] iArr, Object[] objArr, boolean z) {
        this.f395 = i;
        this.f394 = iArr;
        this.f391 = objArr;
        this.f393 = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof C0015)) {
            return false;
        }
        C0015 c0015 = (C0015) obj;
        int i = this.f395;
        if (i == c0015.f395) {
            int[] iArr = this.f394;
            int[] iArr2 = c0015.f394;
            int i2 = 0;
            while (true) {
                if (i2 >= i) {
                    Object[] objArr = this.f391;
                    Object[] objArr2 = c0015.f391;
                    int i3 = this.f395;
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
        int i = this.f395;
        int i2 = (527 + i) * 31;
        int[] iArr = this.f394;
        int i3 = 17;
        int i4 = 17;
        for (int i5 = 0; i5 < i; i5++) {
            i4 = (i4 * 31) + iArr[i5];
        }
        int i6 = (i2 + i4) * 31;
        Object[] objArr = this.f391;
        int i7 = this.f395;
        for (int i8 = 0; i8 < i7; i8++) {
            i3 = (i3 * 31) + objArr[i8].hashCode();
        }
        return i6 + i3;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m221(int i, Object obj) {
        if (!this.f393) {
            throw new UnsupportedOperationException();
        }
        m224(this.f395 + 1);
        int[] iArr = this.f394;
        int i2 = this.f395;
        iArr[i2] = i;
        this.f391[i2] = obj;
        this.f395 = i2 + 1;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m222(C0010 c0010) {
        if (this.f395 == 0) {
            return;
        }
        c0010.getClass();
        C0067 c0067 = (C0067) c0010.f385;
        for (int i = 0; i < this.f395; i++) {
            int i2 = this.f394[i];
            Object obj = this.f391[i];
            int i3 = i2 >>> 3;
            int i4 = i2 & 7;
            if (i4 == 0) {
                c0067.m396(i3, ((Long) obj).longValue());
            } else if (i4 == 1) {
                c0067.m399(i3, ((Long) obj).longValue());
            } else if (i4 == 2) {
                c0067.m397(i3, (C0054) obj);
            } else if (i4 == 3) {
                c0067.m407(i3, 3);
                ((C0015) obj).m222(c0010);
                c0067.m407(i3, 4);
            } else {
                if (i4 != 5) {
                    throw new RuntimeException(InvalidProtocolBufferException.m142());
                }
                c0067.m394(i3, ((Integer) obj).intValue());
            }
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int m223() {
        int m379;
        int m381;
        int m3792;
        int i = this.f392;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.f395; i3++) {
            int i4 = this.f394[i3];
            int i5 = i4 >>> 3;
            int i6 = i4 & 7;
            if (i6 != 0) {
                if (i6 == 1) {
                    ((Long) this.f391[i3]).getClass();
                    m3792 = C0067.m379(i5) + 8;
                } else if (i6 == 2) {
                    m3792 = C0067.m380(i5, (C0054) this.f391[i3]);
                } else if (i6 == 3) {
                    m379 = C0067.m379(i5) * 2;
                    m381 = ((C0015) this.f391[i3]).m223();
                } else {
                    if (i6 != 5) {
                        throw new IllegalStateException(InvalidProtocolBufferException.m142());
                    }
                    ((Integer) this.f391[i3]).getClass();
                    m3792 = C0067.m379(i5) + 4;
                }
                i2 = m3792 + i2;
            } else {
                long longValue = ((Long) this.f391[i3]).longValue();
                m379 = C0067.m379(i5);
                m381 = C0067.m381(longValue);
            }
            i2 = m381 + m379 + i2;
        }
        this.f392 = i2;
        return i2;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m224(int i) {
        int[] iArr = this.f394;
        if (i > iArr.length) {
            int i2 = this.f395;
            int i3 = (i2 / 2) + i2;
            if (i3 >= i) {
                i = i3;
            }
            if (i < 8) {
                i = 8;
            }
            this.f394 = Arrays.copyOf(iArr, i);
            this.f391 = Arrays.copyOf(this.f391, i);
        }
    }
}
