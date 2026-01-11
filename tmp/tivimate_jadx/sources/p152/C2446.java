package p152;

/* renamed from: ˊʼ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2446 implements InterfaceC2449 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Class f9408;

    public C2446(Class cls) {
        this.f9408 = cls;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C2446) {
            return AbstractC2444.m5562(this.f9408, ((C2446) obj).f9408);
        }
        return false;
    }

    public final int hashCode() {
        return this.f9408.hashCode();
    }

    public final String toString() {
        return this.f9408 + " (Kotlin reflection is not available)";
    }

    @Override // p152.InterfaceC2449
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Class mo5571() {
        return this.f9408;
    }
}
