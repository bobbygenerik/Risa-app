package p017;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* renamed from: ʼʻ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C1007 extends AbstractCollection implements List {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C1007 f3997;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Object f3998;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final Collection f3999;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final /* synthetic */ C0989 f4000;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public Collection f4001;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ C0989 f4002;

    public C1007(C0989 c0989, Object obj, List list, C1007 c1007) {
        this.f4000 = c0989;
        this.f4002 = c0989;
        this.f3998 = obj;
        this.f4001 = list;
        this.f3997 = c1007;
        this.f3999 = c1007 == null ? null : c1007.f4001;
    }

    @Override // java.util.List
    public final void add(int i, Object obj) {
        m3299();
        boolean isEmpty = this.f4001.isEmpty();
        ((List) this.f4001).add(i, obj);
        this.f4000.f3970++;
        if (isEmpty) {
            m3300();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        m3299();
        boolean isEmpty = this.f4001.isEmpty();
        boolean add = this.f4001.add(obj);
        if (add) {
            this.f4002.f3970++;
            if (isEmpty) {
                m3300();
            }
        }
        return add;
    }

    @Override // java.util.List
    public final boolean addAll(int i, Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean addAll = ((List) this.f4001).addAll(i, collection);
        if (addAll) {
            this.f4000.f3970 += this.f4001.size() - size;
            if (size == 0) {
                m3300();
            }
        }
        return addAll;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean addAll = this.f4001.addAll(collection);
        if (addAll) {
            this.f4002.f3970 += this.f4001.size() - size;
            if (size == 0) {
                m3300();
            }
        }
        return addAll;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        int size = size();
        if (size == 0) {
            return;
        }
        this.f4001.clear();
        this.f4002.f3970 -= size;
        m3298();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        m3299();
        return this.f4001.contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean containsAll(Collection collection) {
        m3299();
        return this.f4001.containsAll(collection);
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        m3299();
        return this.f4001.equals(obj);
    }

    @Override // java.util.List
    public final Object get(int i) {
        m3299();
        return ((List) this.f4001).get(i);
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        m3299();
        return this.f4001.hashCode();
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        m3299();
        return ((List) this.f4001).indexOf(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        m3299();
        return new C0950(this);
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        m3299();
        return ((List) this.f4001).lastIndexOf(obj);
    }

    @Override // java.util.List
    public final ListIterator listIterator() {
        m3299();
        return new C0984(this);
    }

    @Override // java.util.List
    public final ListIterator listIterator(int i) {
        m3299();
        return new C0984(this, i);
    }

    @Override // java.util.List
    public final Object remove(int i) {
        m3299();
        Object remove = ((List) this.f4001).remove(i);
        C0989 c0989 = this.f4000;
        c0989.f3970--;
        m3298();
        return remove;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        m3299();
        boolean remove = this.f4001.remove(obj);
        if (remove) {
            C0989 c0989 = this.f4002;
            c0989.f3970--;
            m3298();
        }
        return remove;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean removeAll = this.f4001.removeAll(collection);
        if (removeAll) {
            this.f4002.f3970 += this.f4001.size() - size;
            m3298();
        }
        return removeAll;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection collection) {
        collection.getClass();
        int size = size();
        boolean retainAll = this.f4001.retainAll(collection);
        if (retainAll) {
            this.f4002.f3970 += this.f4001.size() - size;
            m3298();
        }
        return retainAll;
    }

    @Override // java.util.List
    public final Object set(int i, Object obj) {
        m3299();
        return ((List) this.f4001).set(i, obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        m3299();
        return this.f4001.size();
    }

    @Override // java.util.List
    public final List subList(int i, int i2) {
        m3299();
        List subList = ((List) this.f4001).subList(i, i2);
        C1007 c1007 = this.f3997;
        if (c1007 == null) {
            c1007 = this;
        }
        boolean z = subList instanceof RandomAccess;
        C0989 c0989 = this.f4000;
        Object obj = this.f3998;
        return z ? new C1007(c0989, obj, subList, c1007) : new C1007(c0989, obj, subList, c1007);
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        m3299();
        return this.f4001.toString();
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m3298() {
        C1007 c1007 = this.f3997;
        if (c1007 != null) {
            c1007.m3298();
        } else if (this.f4001.isEmpty()) {
            this.f4002.f3968.remove(this.f3998);
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m3299() {
        Collection collection;
        C1007 c1007 = this.f3997;
        if (c1007 != null) {
            c1007.m3299();
            if (c1007.f4001 != this.f3999) {
                throw new ConcurrentModificationException();
            }
        } else {
            if (!this.f4001.isEmpty() || (collection = (Collection) this.f4002.f3968.get(this.f3998)) == null) {
                return;
            }
            this.f4001 = collection;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m3300() {
        C1007 c1007 = this.f3997;
        if (c1007 != null) {
            c1007.m3300();
        } else {
            this.f4002.f3968.put(this.f3998, this.f4001);
        }
    }
}
