package com.google.android.gms.internal.measurement;

import android.support.v4.media.session.AbstractC0001;
import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* renamed from: com.google.android.gms.internal.measurement.ﹳﾞ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0501 extends AbstractC0265 implements RandomAccess, InterfaceC0496, InterfaceC0518 {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final int[] f2264;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final C0501 f2265;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f2266;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int[] f2267;

    static {
        int[] iArr = new int[0];
        f2264 = iArr;
        f2265 = new C0501(0, false, iArr);
    }

    public C0501(int i, boolean z, int[] iArr) {
        super(z);
        this.f2267 = iArr;
        this.f2266 = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        int i2;
        int intValue = ((Integer) obj).intValue();
        m1223();
        if (i < 0 || i > (i2 = this.f2266)) {
            throw new IndexOutOfBoundsException(C0317.m1566(this.f2266, i, (byte) 13, "Index:", ", Size:"));
        }
        int i3 = i + 1;
        int[] iArr = this.f2267;
        int length = iArr.length;
        if (i2 < length) {
            System.arraycopy(iArr, i, iArr, i3, i2 - i);
        } else {
            int[] iArr2 = new int[AbstractC0001.m2(length, 3, 2, 1, 10)];
            System.arraycopy(this.f2267, 0, iArr2, 0, i);
            System.arraycopy(this.f2267, i, iArr2, i3, this.f2266 - i);
            this.f2267 = iArr2;
        }
        this.f2267[i] = intValue;
        this.f2266++;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        m1976(((Integer) obj).intValue());
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC0265, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        m1223();
        Charset charset = AbstractC0405.f2135;
        collection.getClass();
        if (!(collection instanceof C0501)) {
            return super.addAll(collection);
        }
        C0501 c0501 = (C0501) collection;
        int i = c0501.f2266;
        if (i == 0) {
            return false;
        }
        int i2 = this.f2266;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        int[] iArr = this.f2267;
        if (i3 > iArr.length) {
            this.f2267 = Arrays.copyOf(iArr, i3);
        }
        System.arraycopy(c0501.f2267, 0, this.f2267, this.f2266, c0501.f2266);
        this.f2266 = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC0265, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0501)) {
            return super.equals(obj);
        }
        C0501 c0501 = (C0501) obj;
        if (this.f2266 != c0501.f2266) {
            return false;
        }
        int[] iArr = c0501.f2267;
        for (int i = 0; i < this.f2266; i++) {
            if (this.f2267[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        m1978(i);
        return Integer.valueOf(this.f2267[i]);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC0265, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f2266; i2++) {
            i = (i * 31) + this.f2267[i2];
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int intValue = ((Integer) obj).intValue();
        int i = this.f2266;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f2267[i2] == intValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC0265, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        m1223();
        m1978(i);
        int[] iArr = this.f2267;
        int i2 = iArr[i];
        if (i < this.f2266 - 1) {
            System.arraycopy(iArr, i + 1, iArr, i, (r2 - i) - 1);
        }
        this.f2266--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        m1223();
        if (i2 < i) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        int[] iArr = this.f2267;
        System.arraycopy(iArr, i2, iArr, i, this.f2266 - i2);
        this.f2266 -= i2 - i;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        int intValue = ((Integer) obj).intValue();
        m1223();
        m1978(i);
        int[] iArr = this.f2267;
        int i2 = iArr[i];
        iArr[i] = intValue;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f2266;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int m1975(int i) {
        m1978(i);
        return this.f2267[i];
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m1976(int i) {
        m1223();
        int i2 = this.f2266;
        int length = this.f2267.length;
        if (i2 == length) {
            int[] iArr = new int[AbstractC0001.m2(length, 3, 2, 1, 10)];
            System.arraycopy(this.f2267, 0, iArr, 0, this.f2266);
            this.f2267 = iArr;
        }
        int[] iArr2 = this.f2267;
        int i3 = this.f2266;
        this.f2266 = i3 + 1;
        iArr2[i3] = i;
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0247
    /* renamed from: ⁱˊ, reason: contains not printable characters and merged with bridge method [inline-methods] */
    public final C0501 mo1195(int i) {
        if (i >= this.f2266) {
            return new C0501(this.f2266, true, i == 0 ? f2264 : Arrays.copyOf(this.f2267, i));
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m1978(int i) {
        if (i < 0 || i >= this.f2266) {
            throw new IndexOutOfBoundsException(C0317.m1566(this.f2266, i, (byte) 13, "Index:", ", Size:"));
        }
    }
}
