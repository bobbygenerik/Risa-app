package com.google.android.gms.internal.measurement;

import android.support.v4.media.session.AbstractC0001;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;

/* renamed from: com.google.android.gms.internal.measurement.ˏʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0370 extends AbstractC0265 implements RandomAccess {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final Object[] f2027;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final C0370 f2028;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f2029;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public Object[] f2030;

    static {
        Object[] objArr = new Object[0];
        f2027 = objArr;
        f2028 = new C0370(objArr, 0, false);
    }

    public C0370(Object[] objArr, int i, boolean z) {
        super(z);
        this.f2030 = objArr;
        this.f2029 = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        int i2;
        m1223();
        if (i < 0 || i > (i2 = this.f2029)) {
            throw new IndexOutOfBoundsException(C0317.m1566(this.f2029, i, (byte) 13, "Index:", ", Size:"));
        }
        int i3 = i + 1;
        Object[] objArr = this.f2030;
        int length = objArr.length;
        if (i2 < length) {
            System.arraycopy(objArr, i, objArr, i3, i2 - i);
        } else {
            Object[] objArr2 = new Object[AbstractC0001.m2(length, 3, 2, 1, 10)];
            System.arraycopy(this.f2030, 0, objArr2, 0, i);
            System.arraycopy(this.f2030, i, objArr2, i3, this.f2029 - i);
            this.f2030 = objArr2;
        }
        this.f2030[i] = obj;
        this.f2029++;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        m1223();
        int i = this.f2029;
        int length = this.f2030.length;
        if (i == length) {
            this.f2030 = Arrays.copyOf(this.f2030, AbstractC0001.m2(length, 3, 2, 1, 10));
        }
        Object[] objArr = this.f2030;
        int i2 = this.f2029;
        this.f2029 = i2 + 1;
        objArr[i2] = obj;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        m1697(i);
        return this.f2030[i];
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC0265, java.util.AbstractList, java.util.List
    public final Object remove(int i) {
        m1223();
        m1697(i);
        Object[] objArr = this.f2030;
        Object obj = objArr[i];
        if (i < this.f2029 - 1) {
            System.arraycopy(objArr, i + 1, objArr, i, (r2 - i) - 1);
        }
        this.f2029--;
        ((AbstractList) this).modCount++;
        return obj;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        m1223();
        m1697(i);
        Object[] objArr = this.f2030;
        Object obj2 = objArr[i];
        objArr[i] = obj;
        ((AbstractList) this).modCount++;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f2029;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m1697(int i) {
        if (i < 0 || i >= this.f2029) {
            throw new IndexOutOfBoundsException(C0317.m1566(this.f2029, i, (byte) 13, "Index:", ", Size:"));
        }
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0247
    /* renamed from: ﹳᐧ */
    public final /* bridge */ /* synthetic */ InterfaceC0247 mo1195(int i) {
        if (i >= this.f2029) {
            return new C0370(i == 0 ? f2027 : Arrays.copyOf(this.f2030, i), this.f2029, true);
        }
        throw new IllegalArgumentException();
    }
}
