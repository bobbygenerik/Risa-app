package j$.util.stream;

import j$.util.Spliterator;
import java.util.Collection;
import java.util.Iterator;
import java.util.function.Consumer;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
public final class K0 implements G0 {
    public final Collection a;

    public K0(Collection collection) {
        this.a = collection;
    }

    @Override // j$.util.stream.G0
    public final G0 a(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // j$.util.stream.G0
    public final long count() {
        return this.a.size();
    }

    @Override // j$.util.stream.G0
    public final void forEach(Consumer consumer) {
        j$.com.android.tools.r8.a.J(this.a, consumer);
    }

    @Override // j$.util.stream.G0
    public final /* synthetic */ G0 j(long j, long j2, IntFunction intFunction) {
        return AbstractC5559v1.W(this, j, j2, intFunction);
    }

    @Override // j$.util.stream.G0
    public final void k(Object[] objArr, int i) {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            objArr[i] = it.next();
            i++;
        }
    }

    @Override // j$.util.stream.G0
    public final Object[] m(IntFunction intFunction) {
        Collection collection = this.a;
        return collection.toArray((Object[]) intFunction.apply(collection.size()));
    }

    @Override // j$.util.stream.G0
    public final /* synthetic */ int o() {
        return 0;
    }

    @Override // j$.util.stream.G0
    public final Spliterator spliterator() {
        return j$.com.android.tools.r8.a.d0(this.a).spliterator();
    }

    public final String toString() {
        return String.format("CollectionNode[%d][%s]", Integer.valueOf(this.a.size()), this.a);
    }
}
