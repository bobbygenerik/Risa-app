package p391;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import p152.AbstractC2444;
import p430.AbstractC5115;

/* renamed from: ⁱˏ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4637 extends AbstractC5115 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f17317;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C4641 f17318;

    public /* synthetic */ C4637(C4641 c4641, int i) {
        this.f17317 = i;
        this.f17318 = c4641;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        switch (this.f17317) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean addAll(Collection collection) {
        switch (this.f17317) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        switch (this.f17317) {
            case 0:
                this.f17318.clear();
                return;
            default:
                this.f17318.clear();
                return;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        switch (this.f17317) {
            case 0:
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                C4641 c4641 = this.f17318;
                c4641.getClass();
                int m9214 = c4641.m9214(entry.getKey());
                if (m9214 < 0) {
                    return false;
                }
                return AbstractC2444.m5562(c4641.f17339[m9214], entry.getValue());
            default:
                return this.f17318.containsKey(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean containsAll(Collection collection) {
        switch (this.f17317) {
            case 0:
                C4641 c4641 = this.f17318;
                c4641.getClass();
                for (Object obj : collection) {
                    if (obj == null) {
                        return false;
                    }
                    try {
                        Map.Entry entry = (Map.Entry) obj;
                        int m9214 = c4641.m9214(entry.getKey());
                        if (!(m9214 < 0 ? false : AbstractC2444.m5562(c4641.f17339[m9214], entry.getValue()))) {
                            return false;
                        }
                    } catch (ClassCastException unused) {
                        return false;
                    }
                }
                return true;
            default:
                return super.containsAll(collection);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        switch (this.f17317) {
            case 0:
                return this.f17318.isEmpty();
            default:
                return this.f17318.isEmpty();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        switch (this.f17317) {
            case 0:
                C4641 c4641 = this.f17318;
                c4641.getClass();
                return new C4635(c4641, 0);
            default:
                C4641 c46412 = this.f17318;
                c46412.getClass();
                return new C4635(c46412, 1);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        switch (this.f17317) {
            case 0:
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                C4641 c4641 = this.f17318;
                c4641.m9207();
                int m9214 = c4641.m9214(entry.getKey());
                if (m9214 < 0 || !AbstractC2444.m5562(c4641.f17339[m9214], entry.getValue())) {
                    return false;
                }
                c4641.m9206(m9214);
                return true;
            default:
                C4641 c46412 = this.f17318;
                c46412.m9207();
                int m92142 = c46412.m9214(obj);
                if (m92142 < 0) {
                    return false;
                }
                c46412.m9206(m92142);
                return true;
        }
    }

    @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean removeAll(Collection collection) {
        switch (this.f17317) {
            case 0:
                this.f17318.m9207();
                return super.removeAll(collection);
            default:
                this.f17318.m9207();
                return super.removeAll(collection);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean retainAll(Collection collection) {
        switch (this.f17317) {
            case 0:
                this.f17318.m9207();
                return super.retainAll(collection);
            default:
                this.f17318.m9207();
                return super.retainAll(collection);
        }
    }

    @Override // p430.AbstractC5115
    /* renamed from: ﹳٴ */
    public final int mo9184() {
        switch (this.f17317) {
            case 0:
                return this.f17318.f17342;
            default:
                return this.f17318.f17342;
        }
    }
}
