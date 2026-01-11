package p017;

import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.SortedSet;
import p095.InterfaceC1883;

/* renamed from: ʼʻ.ﹶᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1006 extends C0961 implements SortedSet {
    @Override // java.util.SortedSet
    public final Comparator comparator() {
        return ((SortedSet) this.f3914).comparator();
    }

    @Override // java.util.SortedSet
    public final Object first() {
        Iterator it = this.f3914.iterator();
        it.getClass();
        InterfaceC1883 interfaceC1883 = this.f3915;
        interfaceC1883.getClass();
        while (it.hasNext()) {
            Object next = it.next();
            if (interfaceC1883.apply(next)) {
                return next;
            }
        }
        throw new NoSuchElementException();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [ʼʻ.ˈˏ, java.util.SortedSet] */
    @Override // java.util.SortedSet
    public final SortedSet headSet(Object obj) {
        return new C0961(((SortedSet) this.f3914).headSet(obj), this.f3915);
    }

    @Override // java.util.SortedSet
    public final Object last() {
        SortedSet sortedSet = (SortedSet) this.f3914;
        while (true) {
            Object last = sortedSet.last();
            if (this.f3915.apply(last)) {
                return last;
            }
            sortedSet = sortedSet.headSet(last);
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [ʼʻ.ˈˏ, java.util.SortedSet] */
    @Override // java.util.SortedSet
    public final SortedSet subSet(Object obj, Object obj2) {
        return new C0961(((SortedSet) this.f3914).subSet(obj, obj2), this.f3915);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [ʼʻ.ˈˏ, java.util.SortedSet] */
    @Override // java.util.SortedSet
    public final SortedSet tailSet(Object obj) {
        return new C0961(((SortedSet) this.f3914).tailSet(obj), this.f3915);
    }
}
