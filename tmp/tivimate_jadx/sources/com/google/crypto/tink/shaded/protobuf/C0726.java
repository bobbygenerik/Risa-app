package com.google.crypto.tink.shaded.protobuf;

import android.support.v4.media.session.AbstractC0001;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;

/* renamed from: com.google.crypto.tink.shaded.protobuf.ـˏ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0726 extends AbstractC0747 implements RandomAccess {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final C0726 f3011 = new C0726(new Object[0], 0, false);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f3012;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public Object[] f3013;

    public C0726(Object[] objArr, int i, boolean z) {
        this.f3067 = z;
        this.f3013 = objArr;
        this.f3012 = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        int i2;
        m2697();
        if (i < 0 || i > (i2 = this.f3012)) {
            StringBuilder m16 = AbstractC0001.m16(i, "Index:", ", Size:");
            m16.append(this.f3012);
            throw new IndexOutOfBoundsException(m16.toString());
        }
        Object[] objArr = this.f3013;
        if (i2 < objArr.length) {
            System.arraycopy(objArr, i, objArr, i + 1, i2 - i);
        } else {
            Object[] objArr2 = new Object[((i2 * 3) / 2) + 1];
            System.arraycopy(objArr, 0, objArr2, 0, i);
            System.arraycopy(this.f3013, i, objArr2, i + 1, this.f3012 - i);
            this.f3013 = objArr2;
        }
        this.f3013[i] = obj;
        this.f3012++;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        m2697();
        int i = this.f3012;
        Object[] objArr = this.f3013;
        if (i == objArr.length) {
            this.f3013 = Arrays.copyOf(objArr, ((i * 3) / 2) + 1);
        }
        Object[] objArr2 = this.f3013;
        int i2 = this.f3012;
        this.f3012 = i2 + 1;
        objArr2[i2] = obj;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        m2577(i);
        return this.f3013[i];
    }

    @Override // com.google.crypto.tink.shaded.protobuf.AbstractC0747, java.util.AbstractList, java.util.List
    public final Object remove(int i) {
        m2697();
        m2577(i);
        Object[] objArr = this.f3013;
        Object obj = objArr[i];
        if (i < this.f3012 - 1) {
            System.arraycopy(objArr, i + 1, objArr, i, (r2 - i) - 1);
        }
        this.f3012--;
        ((AbstractList) this).modCount++;
        return obj;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        m2697();
        m2577(i);
        Object[] objArr = this.f3013;
        Object obj2 = objArr[i];
        objArr[i] = obj;
        ((AbstractList) this).modCount++;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f3012;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.InterfaceC0746
    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final InterfaceC0746 mo2576(int i) {
        if (i >= this.f3012) {
            return new C0726(Arrays.copyOf(this.f3013, i), this.f3012, true);
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m2577(int i) {
        if (i < 0 || i >= this.f3012) {
            StringBuilder m16 = AbstractC0001.m16(i, "Index:", ", Size:");
            m16.append(this.f3012);
            throw new IndexOutOfBoundsException(m16.toString());
        }
    }
}
