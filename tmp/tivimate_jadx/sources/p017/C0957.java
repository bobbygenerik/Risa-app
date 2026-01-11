package p017;

import java.util.Comparator;
import java.util.SortedMap;
import java.util.SortedSet;

/* renamed from: ʼʻ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C0957 extends C0976 implements SortedSet {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ C0989 f3904;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0957(C0989 c0989, SortedMap sortedMap) {
        super(c0989, sortedMap);
        this.f3904 = c0989;
    }

    @Override // java.util.SortedSet
    public final Comparator comparator() {
        return mo3243().comparator();
    }

    @Override // java.util.SortedSet
    public final Object first() {
        return mo3243().firstKey();
    }

    @Override // java.util.SortedSet
    public SortedSet headSet(Object obj) {
        return new C0957(this.f3904, mo3243().headMap(obj));
    }

    @Override // java.util.SortedSet
    public final Object last() {
        return mo3243().lastKey();
    }

    @Override // java.util.SortedSet
    public SortedSet subSet(Object obj, Object obj2) {
        return new C0957(this.f3904, mo3243().subMap(obj, obj2));
    }

    @Override // java.util.SortedSet
    public SortedSet tailSet(Object obj) {
        return new C0957(this.f3904, mo3243().tailMap(obj));
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public SortedMap mo3243() {
        return (SortedMap) this.f3940;
    }
}
