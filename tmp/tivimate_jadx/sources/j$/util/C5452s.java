package j$.util;

import j$.util.stream.AbstractC5453a;
import j$.util.stream.Stream;
import j$.util.stream.Y2;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.function.Consumer;

/* renamed from: j$.util.s, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C5452s extends C5583v {
    private static final long serialVersionUID = 7854390611657943733L;

    @Override // j$.util.C5447m, java.util.Collection
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            return this.a.contains(new C5451q((Map.Entry) obj));
        }
        return false;
    }

    @Override // j$.util.C5447m, java.util.Collection
    public final boolean containsAll(java.util.Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // j$.util.C5583v, java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof java.util.Set)) {
            return false;
        }
        java.util.Set set = (java.util.Set) obj;
        if (set.size() != this.a.size()) {
            return false;
        }
        return containsAll(set);
    }

    @Override // j$.util.C5447m, java.lang.Iterable, j$.util.Collection
    public final void forEach(Consumer consumer) {
        Objects.requireNonNull(consumer);
        j$.com.android.tools.r8.a.J(this.a, new C5450p(0, consumer));
    }

    @Override // j$.util.C5447m, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return new C5446l(this);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [j$.util.stream.Stream, j$.util.stream.a] */
    @Override // j$.util.C5447m, java.util.Collection, j$.util.Collection
    public final Stream parallelStream() {
        Spliterator spliterator = spliterator();
        Objects.requireNonNull(spliterator);
        return new AbstractC5453a(spliterator, Y2.m(spliterator), true);
    }

    @Override // j$.util.C5447m, java.util.Collection, java.lang.Iterable, j$.util.Collection
    public final Spliterator spliterator() {
        return new r(j$.com.android.tools.r8.a.c0(this.a));
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [j$.util.stream.Stream, j$.util.stream.a] */
    @Override // j$.util.C5447m, java.util.Collection, j$.util.Collection
    public final Stream stream() {
        Spliterator spliterator = spliterator();
        Objects.requireNonNull(spliterator);
        return new AbstractC5453a(spliterator, Y2.m(spliterator), false);
    }

    @Override // j$.util.C5447m, java.util.Collection
    public final Object[] toArray() {
        Object[] array = this.a.toArray();
        for (int i = 0; i < array.length; i++) {
            array[i] = new C5451q((Map.Entry) array[i]);
        }
        return array;
    }

    @Override // j$.util.C5447m, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        Object[] array = this.a.toArray(objArr.length == 0 ? objArr : Arrays.copyOf(objArr, 0));
        for (int i = 0; i < array.length; i++) {
            array[i] = new C5451q((Map.Entry) array[i]);
        }
        if (array.length > objArr.length) {
            return array;
        }
        System.arraycopy(array, 0, objArr, 0, array.length);
        if (objArr.length > array.length) {
            objArr[array.length] = null;
        }
        return objArr;
    }
}
