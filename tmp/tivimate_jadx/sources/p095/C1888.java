package p095;

import java.io.Serializable;

/* renamed from: ˆʽ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1888 implements InterfaceC1882, Serializable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public volatile transient boolean f7532;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final transient Object f7533 = new Object();

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public transient Object f7534;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final InterfaceC1882 f7535;

    public C1888(InterfaceC1882 interfaceC1882) {
        this.f7535 = interfaceC1882;
    }

    @Override // p095.InterfaceC1882
    public final Object get() {
        if (!this.f7532) {
            synchronized (this.f7533) {
                try {
                    if (!this.f7532) {
                        Object obj = this.f7535.get();
                        this.f7534 = obj;
                        this.f7532 = true;
                        return obj;
                    }
                } finally {
                }
            }
        }
        return this.f7534;
    }

    public final String toString() {
        Object obj;
        StringBuilder sb = new StringBuilder("Suppliers.memoize(");
        if (this.f7532) {
            obj = "<supplier that returned " + this.f7534 + ">";
        } else {
            obj = this.f7535;
        }
        sb.append(obj);
        sb.append(")");
        return sb.toString();
    }
}
