package p017;

import java.util.Map;

/* renamed from: ʼʻ.ᐧﾞ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0986 extends AbstractC0997 {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final transient AbstractC0996 f3960;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final transient int f3961;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final transient Object[] f3962;

    public C0986(AbstractC0996 abstractC0996, Object[] objArr, int i) {
        this.f3960 = abstractC0996;
        this.f3962 = objArr;
        this.f3961 = i;
    }

    @Override // p017.AbstractC0962, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (value != null && value.equals(this.f3960.get(key))) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f3961;
    }

    @Override // p017.AbstractC0962
    /* renamed from: ᵎﹶ */
    public final boolean mo3205() {
        return true;
    }

    @Override // p017.AbstractC0962
    /* renamed from: ᵔᵢ */
    public final AbstractC0983 iterator() {
        return mo3208().listIterator(0);
    }

    @Override // p017.AbstractC0962
    /* renamed from: ⁱˊ */
    public final int mo3207(int i, Object[] objArr) {
        return mo3208().mo3207(i, objArr);
    }

    @Override // p017.AbstractC0997
    /* renamed from: ﾞʻ */
    public final AbstractC0993 mo3223() {
        return new C0992(this);
    }
}
