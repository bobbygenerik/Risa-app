package p017;

import com.google.android.gms.internal.measurement.ᵎ;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;

/* renamed from: ʼʻ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0995 extends AbstractCollection {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f3979;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Object f3980;

    public /* synthetic */ C0995(int i, Serializable serializable) {
        this.f3979 = i;
        this.f3980 = serializable;
    }

    public C0995(C0959 c0959) {
        this.f3979 = 2;
        this.f3980 = c0959;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        switch (this.f3979) {
            case 0:
                ((C0989) this.f3980).m3256();
                return;
            case 1:
                ((C0944) this.f3980).clear();
                return;
            default:
                ((C0959) this.f3980).clear();
                return;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        switch (this.f3979) {
            case 0:
                return ((C0989) this.f3980).mo3246(obj);
            case 1:
            default:
                return super.contains(obj);
            case 2:
                return ((C0959) this.f3980).containsValue(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        switch (this.f3979) {
            case 2:
                return ((C0959) this.f3980).isEmpty();
            default:
                return super.isEmpty();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        switch (this.f3979) {
            case 0:
                return new C1003((C0989) this.f3980);
            case 1:
                C0944 c0944 = (C0944) this.f3980;
                Map m3212 = c0944.m3212();
                return m3212 != null ? m3212.values().iterator() : new C0977(c0944, 2);
            default:
                return new AbstractC0974(((C0959) this.f3980).entrySet().iterator());
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean remove(Object obj) {
        switch (this.f3979) {
            case 2:
                C0959 c0959 = (C0959) this.f3980;
                try {
                    return super.remove(obj);
                } catch (UnsupportedOperationException unused) {
                    for (Map.Entry entry : c0959.entrySet()) {
                        if (ᵎ.ᵎﹶ(obj, entry.getValue())) {
                            c0959.remove(entry.getKey());
                            return true;
                        }
                    }
                    return false;
                }
            default:
                return super.remove(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean removeAll(Collection collection) {
        switch (this.f3979) {
            case 2:
                C0959 c0959 = (C0959) this.f3980;
                try {
                    collection.getClass();
                    return super.removeAll(collection);
                } catch (UnsupportedOperationException unused) {
                    HashSet hashSet = new HashSet();
                    for (Map.Entry entry : c0959.entrySet()) {
                        if (collection.contains(entry.getValue())) {
                            hashSet.add(entry.getKey());
                        }
                    }
                    return c0959.keySet().removeAll(hashSet);
                }
            default:
                return super.removeAll(collection);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean retainAll(Collection collection) {
        switch (this.f3979) {
            case 2:
                C0959 c0959 = (C0959) this.f3980;
                try {
                    collection.getClass();
                    return super.retainAll(collection);
                } catch (UnsupportedOperationException unused) {
                    HashSet hashSet = new HashSet();
                    for (Map.Entry entry : c0959.entrySet()) {
                        if (collection.contains(entry.getValue())) {
                            hashSet.add(entry.getKey());
                        }
                    }
                    return c0959.keySet().retainAll(hashSet);
                }
            default:
                return super.retainAll(collection);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        switch (this.f3979) {
            case 0:
                return ((C0989) this.f3980).f3970;
            case 1:
                return ((C0944) this.f3980).size();
            default:
                return ((C0959) this.f3980).f3905.size();
        }
    }
}
