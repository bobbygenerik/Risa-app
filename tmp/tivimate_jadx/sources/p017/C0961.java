package p017;

import com.google.android.gms.internal.play_billing.י;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
import java.util.Set;
import p095.InterfaceC1883;

/* renamed from: ʼʻ.ˈˏ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C0961 extends AbstractCollection implements Set {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Set f3914;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final InterfaceC1883 f3915;

    public C0961(Set set, InterfaceC1883 interfaceC1883) {
        this.f3914 = set;
        this.f3915 = interfaceC1883;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        if (this.f3915.apply(obj)) {
            return this.f3914.add(obj);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean addAll(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!this.f3915.apply(it.next())) {
                throw new IllegalArgumentException();
            }
        }
        return this.f3914.addAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        Set set = this.f3914;
        boolean z = set instanceof RandomAccess;
        InterfaceC1883 interfaceC1883 = this.f3915;
        if (!z || !(set instanceof List)) {
            Iterator it = set.iterator();
            interfaceC1883.getClass();
            while (it.hasNext()) {
                if (interfaceC1883.apply(it.next())) {
                    it.remove();
                }
            }
            return;
        }
        List list = (List) set;
        interfaceC1883.getClass();
        int i = 0;
        for (int i2 = 0; i2 < list.size(); i2++) {
            Object obj = list.get(i2);
            if (!interfaceC1883.apply(obj)) {
                if (i2 > i) {
                    try {
                        list.set(i, obj);
                    } catch (IllegalArgumentException unused) {
                        AbstractC1004.m3278(list, interfaceC1883, i, i2);
                        return;
                    } catch (UnsupportedOperationException unused2) {
                        AbstractC1004.m3278(list, interfaceC1883, i, i2);
                        return;
                    }
                }
                i++;
            }
        }
        list.subList(i, list.size()).clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        boolean z;
        Set set = this.f3914;
        set.getClass();
        try {
            z = set.contains(obj);
        } catch (ClassCastException | NullPointerException unused) {
            z = false;
        }
        if (z) {
            return this.f3915.apply(obj);
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean containsAll(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        return AbstractC1004.m3289(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        return AbstractC1004.m3288(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        Iterator it = this.f3914.iterator();
        InterfaceC1883 interfaceC1883 = this.f3915;
        י.ᵔᵢ(interfaceC1883, "predicate");
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            }
            if (interfaceC1883.apply(it.next())) {
                break;
            }
            i++;
        }
        return true ^ (i != -1);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        Iterator it = this.f3914.iterator();
        it.getClass();
        InterfaceC1883 interfaceC1883 = this.f3915;
        interfaceC1883.getClass();
        return new C0960(it, interfaceC1883);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        return contains(obj) && this.f3914.remove(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean removeAll(Collection collection) {
        Iterator it = this.f3914.iterator();
        boolean z = false;
        while (it.hasNext()) {
            Object next = it.next();
            if (this.f3915.apply(next) && collection.contains(next)) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean retainAll(Collection collection) {
        Iterator it = this.f3914.iterator();
        boolean z = false;
        while (it.hasNext()) {
            Object next = it.next();
            if (this.f3915.apply(next) && !collection.contains(next)) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        Iterator it = this.f3914.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (this.f3915.apply(it.next())) {
                i++;
            }
        }
        return i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final Object[] toArray() {
        Iterator it = iterator();
        ArrayList arrayList = new ArrayList();
        while (true) {
            C0960 c0960 = (C0960) it;
            if (!c0960.hasNext()) {
                return arrayList.toArray();
            }
            arrayList.add(c0960.next());
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final Object[] toArray(Object[] objArr) {
        Iterator it = iterator();
        ArrayList arrayList = new ArrayList();
        while (true) {
            C0960 c0960 = (C0960) it;
            if (!c0960.hasNext()) {
                return arrayList.toArray(objArr);
            }
            arrayList.add(c0960.next());
        }
    }
}
