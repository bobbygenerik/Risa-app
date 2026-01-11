package p017;

/* renamed from: ʼʻ.ᐧᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0985 extends AbstractC0997 {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final transient AbstractC0996 f3958;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final transient C0973 f3959;

    public C0985(AbstractC0996 abstractC0996, C0973 c0973) {
        this.f3958 = abstractC0996;
        this.f3959 = c0973;
    }

    @Override // p017.AbstractC0962, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f3958.get(obj) != null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return ((C0987) this.f3958).f3965;
    }

    @Override // p017.AbstractC0962
    /* renamed from: ᵎﹶ */
    public final boolean mo3205() {
        return true;
    }

    @Override // p017.AbstractC0962
    /* renamed from: ᵔᵢ */
    public final AbstractC0983 iterator() {
        return this.f3959.listIterator(0);
    }

    @Override // p017.AbstractC0962
    /* renamed from: ⁱˊ */
    public final int mo3207(int i, Object[] objArr) {
        return this.f3959.mo3207(i, objArr);
    }

    @Override // p017.AbstractC0997, p017.AbstractC0962
    /* renamed from: ﹳٴ */
    public final AbstractC0993 mo3208() {
        return this.f3959;
    }
}
