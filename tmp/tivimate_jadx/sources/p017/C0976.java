package p017;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* renamed from: ʼʻ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C0976 extends AbstractC1005 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Map f3940;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C0989 f3941;

    public C0976(C0989 c0989, Map map) {
        this.f3941 = c0989;
        map.getClass();
        this.f3940 = map;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        Iterator it = iterator();
        while (true) {
            C0950 c0950 = (C0950) it;
            if (!c0950.hasNext()) {
                return;
            }
            c0950.next();
            c0950.remove();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f3940.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean containsAll(Collection collection) {
        return this.f3940.keySet().containsAll(collection);
    }

    @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        return this == obj || this.f3940.keySet().equals(obj);
    }

    @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f3940.keySet().hashCode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return this.f3940.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new C0950(this, this.f3940.entrySet().iterator());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        int i;
        Collection collection = (Collection) this.f3940.remove(obj);
        if (collection != null) {
            i = collection.size();
            collection.clear();
            this.f3941.f3970 -= i;
        } else {
            i = 0;
        }
        return i > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f3940.size();
    }
}
