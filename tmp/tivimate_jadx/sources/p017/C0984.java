package p017;

import java.util.List;
import java.util.ListIterator;

/* renamed from: ʼʻ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0984 extends C0950 implements ListIterator {

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ C1007 f3957;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0984(C1007 c1007) {
        super(c1007);
        this.f3957 = c1007;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0984(C1007 c1007, int i) {
        super(c1007, ((List) c1007.f4001).listIterator(i));
        this.f3957 = c1007;
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        C1007 c1007 = this.f3957;
        boolean isEmpty = c1007.isEmpty();
        m3254().add(obj);
        c1007.f4000.f3970++;
        if (isEmpty) {
            c1007.m3300();
        }
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return m3254().hasPrevious();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return m3254().nextIndex();
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        return m3254().previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return m3254().previousIndex();
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        m3254().set(obj);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final ListIterator m3254() {
        m3233();
        return (ListIterator) this.f3893;
    }
}
