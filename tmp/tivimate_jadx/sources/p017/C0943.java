package p017;

/* renamed from: ʼʻ.ʻˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0943 extends AbstractC0997 {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final transient Object f3867;

    public C0943(Object obj) {
        obj.getClass();
        this.f3867 = obj;
    }

    @Override // p017.AbstractC0962, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f3867.equals(obj);
    }

    @Override // p017.AbstractC0997, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f3867.hashCode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return "[" + this.f3867.toString() + ']';
    }

    @Override // p017.AbstractC0962
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final boolean mo3205() {
        return false;
    }

    @Override // p017.AbstractC0962
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final AbstractC0983 iterator() {
        return new C0971(this.f3867);
    }

    @Override // p017.AbstractC0962
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int mo3207(int i, Object[] objArr) {
        objArr[i] = this.f3867;
        return i + 1;
    }

    @Override // p017.AbstractC0997, p017.AbstractC0962
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AbstractC0993 mo3208() {
        return AbstractC0993.m3260(this.f3867);
    }
}
