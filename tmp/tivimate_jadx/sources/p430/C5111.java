package p430;

import android.support.v4.media.session.AbstractC0001;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import p152.C2457;

/* renamed from: ﹶˈ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5111 extends C2457 implements ListIterator {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC5100 f19216;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5111(AbstractC5100 abstractC5100, int i) {
        super(3, abstractC5100);
        this.f19216 = abstractC5100;
        int mo5786 = abstractC5100.mo5786();
        if (i < 0 || i > mo5786) {
            throw new IndexOutOfBoundsException(AbstractC0001.m14(i, mo5786, "index: ", ", size: "));
        }
        this.f9415 = i;
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f9415 > 0;
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f9415;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i = this.f9415 - 1;
        this.f9415 = i;
        return this.f19216.get(i);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f9415 - 1;
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
