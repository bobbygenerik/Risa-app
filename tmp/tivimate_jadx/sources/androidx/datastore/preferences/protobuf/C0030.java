package androidx.datastore.preferences.protobuf;

import android.support.v4.media.session.AbstractC0001;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;

/* renamed from: androidx.datastore.preferences.protobuf.ˋᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0030 extends AbstractC0061 implements RandomAccess {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final C0030 f421 = new C0030(new Object[0], 0, false);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f422;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public Object[] f423;

    public C0030(Object[] objArr, int i, boolean z) {
        this.f501 = z;
        this.f423 = objArr;
        this.f422 = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        int i2;
        m370();
        if (i < 0 || i > (i2 = this.f422)) {
            StringBuilder m16 = AbstractC0001.m16(i, "Index:", ", Size:");
            m16.append(this.f422);
            throw new IndexOutOfBoundsException(m16.toString());
        }
        Object[] objArr = this.f423;
        if (i2 < objArr.length) {
            System.arraycopy(objArr, i, objArr, i + 1, i2 - i);
        } else {
            Object[] objArr2 = new Object[((i2 * 3) / 2) + 1];
            System.arraycopy(objArr, 0, objArr2, 0, i);
            System.arraycopy(this.f423, i, objArr2, i + 1, this.f422 - i);
            this.f423 = objArr2;
        }
        this.f423[i] = obj;
        this.f422++;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        m370();
        int i = this.f422;
        Object[] objArr = this.f423;
        if (i == objArr.length) {
            this.f423 = Arrays.copyOf(objArr, ((i * 3) / 2) + 1);
        }
        Object[] objArr2 = this.f423;
        int i2 = this.f422;
        this.f422 = i2 + 1;
        objArr2[i2] = obj;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        m241(i);
        return this.f423[i];
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractC0061, java.util.AbstractList, java.util.List
    public final Object remove(int i) {
        m370();
        m241(i);
        Object[] objArr = this.f423;
        Object obj = objArr[i];
        if (i < this.f422 - 1) {
            System.arraycopy(objArr, i + 1, objArr, i, (r2 - i) - 1);
        }
        this.f422--;
        ((AbstractList) this).modCount++;
        return obj;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        m370();
        m241(i);
        Object[] objArr = this.f423;
        Object obj2 = objArr[i];
        objArr[i] = obj;
        ((AbstractList) this).modCount++;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f422;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C0030 m240(int i) {
        if (i >= this.f422) {
            return new C0030(Arrays.copyOf(this.f423, i), this.f422, true);
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m241(int i) {
        if (i < 0 || i >= this.f422) {
            StringBuilder m16 = AbstractC0001.m16(i, "Index:", ", Size:");
            m16.append(this.f422);
            throw new IndexOutOfBoundsException(m16.toString());
        }
    }
}
