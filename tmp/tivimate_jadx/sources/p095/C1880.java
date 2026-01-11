package p095;

import p003.C0784;

/* renamed from: ˆʽ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1880 implements InterfaceC1882 {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final C0784 f7525 = new C0784(1);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public Object f7526;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Object f7527 = new Object();

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public volatile InterfaceC1882 f7528;

    public C1880(InterfaceC1882 interfaceC1882) {
        this.f7528 = interfaceC1882;
    }

    @Override // p095.InterfaceC1882
    public final Object get() {
        InterfaceC1882 interfaceC1882 = this.f7528;
        C0784 c0784 = f7525;
        if (interfaceC1882 != c0784) {
            synchronized (this.f7527) {
                try {
                    if (this.f7528 != c0784) {
                        Object obj = this.f7528.get();
                        this.f7526 = obj;
                        this.f7528 = c0784;
                        return obj;
                    }
                } finally {
                }
            }
        }
        return this.f7526;
    }

    public final String toString() {
        Object obj = this.f7528;
        StringBuilder sb = new StringBuilder("Suppliers.memoize(");
        if (obj == f7525) {
            obj = "<supplier that returned " + this.f7526 + ">";
        }
        sb.append(obj);
        sb.append(")");
        return sb.toString();
    }
}
