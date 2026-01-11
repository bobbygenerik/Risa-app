package p255;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;

/* renamed from: יـ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3356 implements Collection {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ C3359 f13127;

    public C3356(C3359 c3359) {
        this.f13127 = c3359;
    }

    @Override // java.util.Collection
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public final boolean addAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public final void clear() {
        this.f13127.clear();
    }

    @Override // java.util.Collection
    public final boolean contains(Object obj) {
        return this.f13127.m7224(obj) >= 0;
    }

    @Override // java.util.Collection
    public final boolean containsAll(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection
    public final boolean isEmpty() {
        return this.f13127.isEmpty();
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return new C3367(this.f13127, 1);
    }

    @Override // java.util.Collection
    public final boolean remove(Object obj) {
        C3359 c3359 = this.f13127;
        int m7224 = c3359.m7224(obj);
        if (m7224 < 0) {
            return false;
        }
        c3359.mo4688(m7224);
        return true;
    }

    @Override // java.util.Collection
    public final boolean removeAll(Collection collection) {
        C3359 c3359 = this.f13127;
        int i = c3359.f13167;
        int i2 = 0;
        boolean z = false;
        while (i2 < i) {
            if (collection.contains(c3359.m7220(i2))) {
                c3359.mo4688(i2);
                i2--;
                i--;
                z = true;
            }
            i2++;
        }
        return z;
    }

    @Override // java.util.Collection
    public final boolean retainAll(Collection collection) {
        C3359 c3359 = this.f13127;
        int i = c3359.f13167;
        int i2 = 0;
        boolean z = false;
        while (i2 < i) {
            if (!collection.contains(c3359.m7220(i2))) {
                c3359.mo4688(i2);
                i2--;
                i--;
                z = true;
            }
            i2++;
        }
        return z;
    }

    @Override // java.util.Collection
    public final int size() {
        return this.f13127.f13167;
    }

    @Override // java.util.Collection
    public final Object[] toArray() {
        C3359 c3359 = this.f13127;
        int i = c3359.f13167;
        Object[] objArr = new Object[i];
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = c3359.m7220(i2);
        }
        return objArr;
    }

    @Override // java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        C3359 c3359 = this.f13127;
        int i = c3359.f13167;
        if (objArr.length < i) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), i);
        }
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = c3359.m7220(i2);
        }
        if (objArr.length > i) {
            objArr[i] = null;
        }
        return objArr;
    }
}
