package p391;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import p430.AbstractC5115;

/* renamed from: ⁱˏ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4633 extends AbstractC5115 implements Serializable {

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final C4633 f17307;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C4641 f17308;

    static {
        C4641 c4641 = C4641.f17330;
        f17307 = new C4633(C4641.f17330);
    }

    public C4633() {
        this(new C4641());
    }

    public C4633(C4641 c4641) {
        this.f17308 = c4641;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        return this.f17308.m9213(obj) >= 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean addAll(Collection collection) {
        this.f17308.m9207();
        return super.addAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.f17308.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f17308.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return this.f17308.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        C4641 c4641 = this.f17308;
        c4641.getClass();
        return new C4635(c4641, 1);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        C4641 c4641 = this.f17308;
        c4641.m9207();
        int m9214 = c4641.m9214(obj);
        if (m9214 < 0) {
            return false;
        }
        c4641.m9206(m9214);
        return true;
    }

    @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean removeAll(Collection collection) {
        this.f17308.m9207();
        return super.removeAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean retainAll(Collection collection) {
        this.f17308.m9207();
        return super.retainAll(collection);
    }

    @Override // p430.AbstractC5115
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int mo9184() {
        return this.f17308.f17342;
    }
}
