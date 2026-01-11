package com.google.android.gms.internal.play_billing;

import android.support.v4.media.session.AbstractC0001;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;

/* renamed from: com.google.android.gms.internal.play_billing.ﹶˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0646 extends AbstractC0556 implements RandomAccess {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final Object[] f2503;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final C0646 f2504;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f2505;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public Object[] f2506;

    static {
        Object[] objArr = new Object[0];
        f2503 = objArr;
        f2504 = new C0646(objArr, 0, false);
    }

    public C0646(Object[] objArr, int i, boolean z) {
        super(z);
        this.f2506 = objArr;
        this.f2505 = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        int i2;
        m2133();
        if (i < 0 || i > (i2 = this.f2505)) {
            throw new IndexOutOfBoundsException(AbstractC0001.m14(i, this.f2505, "Index:", ", Size:"));
        }
        int i3 = i + 1;
        Object[] objArr = this.f2506;
        int length = objArr.length;
        if (i2 < length) {
            System.arraycopy(objArr, i, objArr, i3, i2 - i);
        } else {
            Object[] objArr2 = new Object[AbstractC0001.m2(length, 3, 2, 1, 10)];
            System.arraycopy(this.f2506, 0, objArr2, 0, i);
            System.arraycopy(this.f2506, i, objArr2, i3, this.f2505 - i);
            this.f2506 = objArr2;
        }
        this.f2506[i] = obj;
        this.f2505++;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        m2133();
        int i = this.f2505;
        int length = this.f2506.length;
        if (i == length) {
            this.f2506 = Arrays.copyOf(this.f2506, AbstractC0001.m2(length, 3, 2, 1, 10));
        }
        Object[] objArr = this.f2506;
        int i2 = this.f2505;
        this.f2505 = i2 + 1;
        objArr[i2] = obj;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        m2293(i);
        return this.f2506[i];
    }

    @Override // com.google.android.gms.internal.play_billing.AbstractC0556, java.util.AbstractList, java.util.List
    public final Object remove(int i) {
        m2133();
        m2293(i);
        Object[] objArr = this.f2506;
        Object obj = objArr[i];
        if (i < this.f2505 - 1) {
            System.arraycopy(objArr, i + 1, objArr, i, (r2 - i) - 1);
        }
        this.f2505--;
        ((AbstractList) this).modCount++;
        return obj;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        m2133();
        m2293(i);
        Object[] objArr = this.f2506;
        Object obj2 = objArr[i];
        objArr[i] = obj;
        ((AbstractList) this).modCount++;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f2505;
    }

    @Override // com.google.android.gms.internal.play_billing.InterfaceC0543
    /* renamed from: ʽ */
    public final /* bridge */ /* synthetic */ InterfaceC0543 mo2101(int i) {
        if (i >= this.f2505) {
            return new C0646(i == 0 ? f2503 : Arrays.copyOf(this.f2506, i), this.f2505, true);
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m2293(int i) {
        if (i < 0 || i >= this.f2505) {
            throw new IndexOutOfBoundsException(AbstractC0001.m14(i, this.f2505, "Index:", ", Size:"));
        }
    }
}
