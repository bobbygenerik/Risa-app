package p075;

import p343.InterfaceC4267;

/* renamed from: ʾﹶ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1654 implements InterfaceC4267 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final Object f6700 = new Object();

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public volatile InterfaceC1653 f6701;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public volatile Object f6702;

    /* JADX WARN: Type inference failed for: r0v1, types: [ʾﹶ.ﹳٴ, java.lang.Object, ᵎˋ.ﹳٴ] */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static InterfaceC4267 m4514(InterfaceC1653 interfaceC1653) {
        if (interfaceC1653 instanceof C1654) {
            return interfaceC1653;
        }
        ?? obj = new Object();
        obj.f6702 = f6700;
        obj.f6701 = interfaceC1653;
        return obj;
    }

    @Override // p343.InterfaceC4267
    public final Object get() {
        Object obj;
        Object obj2 = this.f6702;
        Object obj3 = f6700;
        if (obj2 != obj3) {
            return obj2;
        }
        synchronized (this) {
            try {
                obj = this.f6702;
                if (obj == obj3) {
                    obj = this.f6701.get();
                    Object obj4 = this.f6702;
                    if (obj4 != obj3 && obj4 != obj) {
                        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj4 + " & " + obj + ". This is likely due to a circular dependency.");
                    }
                    this.f6702 = obj;
                    this.f6701 = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }
}
