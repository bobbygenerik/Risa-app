package p257;

/* renamed from: יᐧ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3390 implements InterfaceC3394 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public Class f13239;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f13240;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3391 f13241;

    public C3390(C3391 c3391) {
        this.f13241 = c3391;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C3390) {
            C3390 c3390 = (C3390) obj;
            if (this.f13240 == c3390.f13240 && this.f13239 == c3390.f13239) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.f13240 * 31;
        Class cls = this.f13239;
        return i + (cls != null ? cls.hashCode() : 0);
    }

    public final String toString() {
        return "Key{size=" + this.f13240 + "array=" + this.f13239 + '}';
    }

    @Override // p257.InterfaceC3394
    /* renamed from: ﹳٴ */
    public final void mo7273() {
        this.f13241.ˎᐧ(this);
    }
}
