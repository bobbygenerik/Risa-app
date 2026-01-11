package com.google.android.gms.internal.play_billing;

import android.support.v4.media.session.AbstractC0001;
import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* renamed from: com.google.android.gms.internal.play_billing.ˎᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0578 extends AbstractC0556 implements RandomAccess, InterfaceC0538 {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final int[] f2368;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final C0578 f2369;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f2370;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int[] f2371;

    static {
        int[] iArr = new int[0];
        f2368 = iArr;
        f2369 = new C0578(0, false, iArr);
    }

    public C0578(int i, boolean z, int[] iArr) {
        super(z);
        this.f2371 = iArr;
        this.f2370 = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        int i2;
        int intValue = ((Integer) obj).intValue();
        m2133();
        if (i < 0 || i > (i2 = this.f2370)) {
            throw new IndexOutOfBoundsException(AbstractC0001.m14(i, this.f2370, "Index:", ", Size:"));
        }
        int i3 = i + 1;
        int[] iArr = this.f2371;
        int length = iArr.length;
        if (i2 < length) {
            System.arraycopy(iArr, i, iArr, i3, i2 - i);
        } else {
            int[] iArr2 = new int[AbstractC0001.m2(length, 3, 2, 1, 10)];
            System.arraycopy(this.f2371, 0, iArr2, 0, i);
            System.arraycopy(this.f2371, i, iArr2, i3, this.f2370 - i);
            this.f2371 = iArr2;
        }
        this.f2371[i] = intValue;
        this.f2370++;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        m2170(((Integer) obj).intValue());
        return true;
    }

    @Override // com.google.android.gms.internal.play_billing.AbstractC0556, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        m2133();
        Charset charset = AbstractC0634.f2471;
        collection.getClass();
        if (!(collection instanceof C0578)) {
            return super.addAll(collection);
        }
        C0578 c0578 = (C0578) collection;
        int i = c0578.f2370;
        if (i == 0) {
            return false;
        }
        int i2 = this.f2370;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        int[] iArr = this.f2371;
        if (i3 > iArr.length) {
            this.f2371 = Arrays.copyOf(iArr, i3);
        }
        System.arraycopy(c0578.f2371, 0, this.f2371, this.f2370, c0578.f2370);
        this.f2370 = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.android.gms.internal.play_billing.AbstractC0556, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0578)) {
            return super.equals(obj);
        }
        C0578 c0578 = (C0578) obj;
        if (this.f2370 != c0578.f2370) {
            return false;
        }
        int[] iArr = c0578.f2371;
        for (int i = 0; i < this.f2370; i++) {
            if (this.f2371[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        m2171(i);
        return Integer.valueOf(this.f2371[i]);
    }

    @Override // com.google.android.gms.internal.play_billing.AbstractC0556, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f2370; i2++) {
            i = (i * 31) + this.f2371[i2];
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int intValue = ((Integer) obj).intValue();
        int i = this.f2370;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f2371[i2] == intValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.play_billing.AbstractC0556, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        m2133();
        m2171(i);
        int[] iArr = this.f2371;
        int i2 = iArr[i];
        if (i < this.f2370 - 1) {
            System.arraycopy(iArr, i + 1, iArr, i, (r2 - i) - 1);
        }
        this.f2370--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        m2133();
        if (i2 < i) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        int[] iArr = this.f2371;
        System.arraycopy(iArr, i2, iArr, i, this.f2370 - i2);
        this.f2370 -= i2 - i;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        int intValue = ((Integer) obj).intValue();
        m2133();
        m2171(i);
        int[] iArr = this.f2371;
        int i2 = iArr[i];
        iArr[i] = intValue;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f2370;
    }

    @Override // com.google.android.gms.internal.play_billing.InterfaceC0543
    /* renamed from: ʽ */
    public final /* bridge */ /* synthetic */ InterfaceC0543 mo2101(int i) {
        if (i >= this.f2370) {
            return new C0578(this.f2370, true, i == 0 ? f2368 : Arrays.copyOf(this.f2371, i));
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m2170(int i) {
        m2133();
        int i2 = this.f2370;
        int length = this.f2371.length;
        if (i2 == length) {
            int[] iArr = new int[AbstractC0001.m2(length, 3, 2, 1, 10)];
            System.arraycopy(this.f2371, 0, iArr, 0, this.f2370);
            this.f2371 = iArr;
        }
        int[] iArr2 = this.f2371;
        int i3 = this.f2370;
        this.f2370 = i3 + 1;
        iArr2[i3] = i;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m2171(int i) {
        if (i < 0 || i >= this.f2370) {
            throw new IndexOutOfBoundsException(AbstractC0001.m14(i, this.f2370, "Index:", ", Size:"));
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int m2172(int i) {
        m2171(i);
        return this.f2371[i];
    }
}
