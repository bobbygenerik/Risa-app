package p391;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import p152.AbstractC2444;
import p386.InterfaceC4614;

/* renamed from: ⁱˏ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4638 extends AbstractCollection implements Collection, InterfaceC4614 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C4641 f17319;

    public C4638(C4641 c4641) {
        this.f17319 = c4641;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean addAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        this.f17319.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.f17319.containsValue(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean isEmpty() {
        return this.f17319.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        C4641 c4641 = this.f17319;
        c4641.getClass();
        return new C4635(c4641, 2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean remove(Object obj) {
        int i;
        C4641 c4641 = this.f17319;
        c4641.m9207();
        int i2 = c4641.f17336;
        while (true) {
            i = -1;
            i2--;
            if (i2 >= 0) {
                if (c4641.f17331[i2] >= 0 && AbstractC2444.m5562(c4641.f17339[i2], obj)) {
                    i = i2;
                    break;
                }
            } else {
                break;
            }
        }
        if (i < 0) {
            return false;
        }
        c4641.m9206(i);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean removeAll(Collection collection) {
        this.f17319.m9207();
        return super.removeAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean retainAll(Collection collection) {
        this.f17319.m9207();
        return super.retainAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return this.f17319.f17342;
    }
}
