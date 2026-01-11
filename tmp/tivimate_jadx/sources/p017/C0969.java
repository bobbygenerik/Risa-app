package p017;

import java.util.AbstractList;
import java.util.ListIterator;

/* renamed from: ʼʻ.ˊˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0969 extends AbstractC0974 implements ListIterator {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ AbstractList f3927;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ int f3928;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0969(AbstractList abstractList, ListIterator listIterator, int i) {
        super(listIterator);
        this.f3928 = i;
        this.f3927 = abstractList;
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return ((ListIterator) this.f3937).hasPrevious();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return ((ListIterator) this.f3937).nextIndex();
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        return mo3250(((ListIterator) this.f3937).previous());
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return ((ListIterator) this.f3937).previousIndex();
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // p017.AbstractC0974
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Object mo3250(Object obj) {
        switch (this.f3928) {
            case 0:
                return ((C0947) this.f3927).f3887.apply(obj);
            default:
                return ((C0979) this.f3927).f3950.apply(obj);
        }
    }
}
