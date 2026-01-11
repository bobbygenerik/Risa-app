package p017;

import com.google.android.gms.internal.play_billing.י;
import java.util.ListIterator;
import java.util.NoSuchElementException;

/* renamed from: ʼʻ.ٴᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0982 extends AbstractC0983 implements ListIterator {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final AbstractC0993 f3954;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f3955;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f3956;

    public C0982(AbstractC0993 abstractC0993, int i) {
        int size = abstractC0993.size();
        י.ʼˎ(i, size);
        this.f3955 = size;
        this.f3956 = i;
        this.f3954 = abstractC0993;
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f3956 < this.f3955;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f3956 > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i = this.f3956;
        this.f3956 = i + 1;
        return m3253(i);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f3956;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i = this.f3956 - 1;
        this.f3956 = i;
        return m3253(i);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f3956 - 1;
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Object m3253(int i) {
        return this.f3954.get(i);
    }
}
