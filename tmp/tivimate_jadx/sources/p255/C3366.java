package p255;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

/* renamed from: יـ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3366 implements Set {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ C3359 f13161;

    public C3366(C3359 c3359) {
        this.f13161 = c3359;
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean addAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Set, java.util.Collection
    public final void clear() {
        this.f13161.clear();
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean contains(Object obj) {
        return this.f13161.containsKey(obj);
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean containsAll(Collection collection) {
        return this.f13161.m7196(collection);
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean equals(Object obj) {
        C3359 c3359 = this.f13161;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set = (Set) obj;
        try {
            if (c3359.f13167 == set.size()) {
                return c3359.m7196(set);
            }
            return false;
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final int hashCode() {
        C3359 c3359 = this.f13161;
        int i = 0;
        for (int i2 = c3359.f13167 - 1; i2 >= 0; i2--) {
            Object m7225 = c3359.m7225(i2);
            i += m7225 == null ? 0 : m7225.hashCode();
        }
        return i;
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean isEmpty() {
        return this.f13161.isEmpty();
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return new C3367(this.f13161, 0);
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean remove(Object obj) {
        C3359 c3359 = this.f13161;
        int m7221 = c3359.m7221(obj);
        if (m7221 < 0) {
            return false;
        }
        c3359.mo4688(m7221);
        return true;
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean removeAll(Collection collection) {
        return this.f13161.m7197(collection);
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean retainAll(Collection collection) {
        return this.f13161.m7195(collection);
    }

    @Override // java.util.Set, java.util.Collection
    public final int size() {
        return this.f13161.f13167;
    }

    @Override // java.util.Set, java.util.Collection
    public final Object[] toArray() {
        C3359 c3359 = this.f13161;
        int i = c3359.f13167;
        Object[] objArr = new Object[i];
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = c3359.m7225(i2);
        }
        return objArr;
    }

    @Override // java.util.Set, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        C3359 c3359 = this.f13161;
        int i = c3359.f13167;
        if (objArr.length < i) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), i);
        }
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = c3359.m7225(i2);
        }
        if (objArr.length > i) {
            objArr[i] = null;
        }
        return objArr;
    }
}
