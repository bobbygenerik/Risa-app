package p017;

import java.util.Iterator;

/* renamed from: ʼʻ.ˑʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0974 implements Iterator {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Iterator f3937;

    public AbstractC0974(Iterator it) {
        it.getClass();
        this.f3937 = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f3937.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        return mo3250(this.f3937.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f3937.remove();
    }

    /* renamed from: ﹳٴ */
    public abstract Object mo3250(Object obj);
}
