package p017;

import java.util.Iterator;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.SortedMap;
import java.util.SortedSet;

/* renamed from: ʼʻ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0994 extends C0957 implements NavigableSet {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ C0989 f3978;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0994(C0989 c0989, NavigableMap navigableMap) {
        super(c0989, navigableMap);
        this.f3978 = c0989;
    }

    @Override // java.util.NavigableSet
    public final Object ceiling(Object obj) {
        return mo3243().ceilingKey(obj);
    }

    @Override // java.util.NavigableSet
    public final Iterator descendingIterator() {
        return ((C0976) descendingSet()).iterator();
    }

    @Override // java.util.NavigableSet
    public final NavigableSet descendingSet() {
        return new C0994(this.f3978, mo3243().descendingMap());
    }

    @Override // java.util.NavigableSet
    public final Object floor(Object obj) {
        return mo3243().floorKey(obj);
    }

    @Override // java.util.NavigableSet
    public final NavigableSet headSet(Object obj, boolean z) {
        return new C0994(this.f3978, mo3243().headMap(obj, z));
    }

    @Override // p017.C0957, java.util.SortedSet
    public final SortedSet headSet(Object obj) {
        return headSet(obj, false);
    }

    @Override // java.util.NavigableSet
    public final Object higher(Object obj) {
        return mo3243().higherKey(obj);
    }

    @Override // java.util.NavigableSet
    public final Object lower(Object obj) {
        return mo3243().lowerKey(obj);
    }

    @Override // java.util.NavigableSet
    public final Object pollFirst() {
        C0950 c0950 = (C0950) iterator();
        if (!c0950.hasNext()) {
            return null;
        }
        Object next = c0950.next();
        c0950.remove();
        return next;
    }

    @Override // java.util.NavigableSet
    public final Object pollLast() {
        Iterator descendingIterator = descendingIterator();
        if (!descendingIterator.hasNext()) {
            return null;
        }
        Object next = descendingIterator.next();
        descendingIterator.remove();
        return next;
    }

    @Override // java.util.NavigableSet
    public final NavigableSet subSet(Object obj, boolean z, Object obj2, boolean z2) {
        return new C0994(this.f3978, mo3243().subMap(obj, z, obj2, z2));
    }

    @Override // p017.C0957, java.util.SortedSet
    public final SortedSet subSet(Object obj, Object obj2) {
        return subSet(obj, true, obj2, false);
    }

    @Override // java.util.NavigableSet
    public final NavigableSet tailSet(Object obj, boolean z) {
        return new C0994(this.f3978, mo3243().tailMap(obj, z));
    }

    @Override // p017.C0957, java.util.SortedSet
    public final SortedSet tailSet(Object obj) {
        return tailSet(obj, true);
    }

    @Override // p017.C0957
    /* renamed from: ⁱˊ, reason: contains not printable characters and merged with bridge method [inline-methods] */
    public final NavigableMap mo3243() {
        return (NavigableMap) ((SortedMap) this.f3940);
    }
}
