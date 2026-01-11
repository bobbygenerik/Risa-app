package com.google.android.gms.internal.measurement;

import android.support.v4.media.session.AbstractC0001;
import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* renamed from: com.google.android.gms.internal.measurement.ـˉ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0403 extends AbstractC0265 implements RandomAccess, InterfaceC0378, InterfaceC0518 {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final long[] f2130;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final C0403 f2131;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f2132;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public long[] f2133;

    static {
        long[] jArr = new long[0];
        f2130 = jArr;
        f2131 = new C0403(jArr, 0, false);
    }

    public C0403(long[] jArr, int i, boolean z) {
        super(z);
        this.f2133 = jArr;
        this.f2132 = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        int i2;
        long longValue = ((Long) obj).longValue();
        m1223();
        if (i < 0 || i > (i2 = this.f2132)) {
            throw new IndexOutOfBoundsException(C0317.m1566(this.f2132, i, (byte) 13, "Index:", ", Size:"));
        }
        int i3 = i + 1;
        long[] jArr = this.f2133;
        int length = jArr.length;
        if (i2 < length) {
            System.arraycopy(jArr, i, jArr, i3, i2 - i);
        } else {
            long[] jArr2 = new long[AbstractC0001.m2(length, 3, 2, 1, 10)];
            System.arraycopy(this.f2133, 0, jArr2, 0, i);
            System.arraycopy(this.f2133, i, jArr2, i3, this.f2132 - i);
            this.f2133 = jArr2;
        }
        this.f2133[i] = longValue;
        this.f2132++;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        m1794(((Long) obj).longValue());
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC0265, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        m1223();
        Charset charset = AbstractC0405.f2135;
        collection.getClass();
        if (!(collection instanceof C0403)) {
            return super.addAll(collection);
        }
        C0403 c0403 = (C0403) collection;
        int i = c0403.f2132;
        if (i == 0) {
            return false;
        }
        int i2 = this.f2132;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        long[] jArr = this.f2133;
        if (i3 > jArr.length) {
            this.f2133 = Arrays.copyOf(jArr, i3);
        }
        System.arraycopy(c0403.f2133, 0, this.f2133, this.f2132, c0403.f2132);
        this.f2132 = i3;
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
        if (!(obj instanceof C0403)) {
            return super.equals(obj);
        }
        C0403 c0403 = (C0403) obj;
        if (this.f2132 != c0403.f2132) {
            return false;
        }
        long[] jArr = c0403.f2133;
        for (int i = 0; i < this.f2132; i++) {
            if (this.f2133[i] != jArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        m1796(i);
        return Long.valueOf(this.f2133[i]);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC0265, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f2132; i2++) {
            long j = this.f2133[i2];
            Charset charset = AbstractC0405.f2135;
            i = (i * 31) + ((int) (j ^ (j >>> 32)));
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Long)) {
            return -1;
        }
        long longValue = ((Long) obj).longValue();
        int i = this.f2132;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f2133[i2] == longValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC0265, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        m1223();
        m1796(i);
        long[] jArr = this.f2133;
        long j = jArr[i];
        if (i < this.f2132 - 1) {
            System.arraycopy(jArr, i + 1, jArr, i, (r3 - i) - 1);
        }
        this.f2132--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        m1223();
        if (i2 < i) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        long[] jArr = this.f2133;
        System.arraycopy(jArr, i2, jArr, i, this.f2132 - i2);
        this.f2132 -= i2 - i;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        long longValue = ((Long) obj).longValue();
        m1223();
        m1796(i);
        long[] jArr = this.f2133;
        long j = jArr[i];
        jArr[i] = longValue;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f2132;
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0247
    /* renamed from: ˈ, reason: contains not printable characters and merged with bridge method [inline-methods] */
    public final C0403 mo1195(int i) {
        if (i >= this.f2132) {
            return new C0403(i == 0 ? f2130 : Arrays.copyOf(this.f2133, i), this.f2132, true);
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m1794(long j) {
        m1223();
        int i = this.f2132;
        int length = this.f2133.length;
        if (i == length) {
            long[] jArr = new long[AbstractC0001.m2(length, 3, 2, 1, 10)];
            System.arraycopy(this.f2133, 0, jArr, 0, this.f2132);
            this.f2133 = jArr;
        }
        long[] jArr2 = this.f2133;
        int i2 = this.f2132;
        this.f2132 = i2 + 1;
        jArr2[i2] = j;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final long m1795(int i) {
        m1796(i);
        return this.f2133[i];
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m1796(int i) {
        if (i < 0 || i >= this.f2132) {
            throw new IndexOutOfBoundsException(C0317.m1566(this.f2132, i, (byte) 13, "Index:", ", Size:"));
        }
    }
}
