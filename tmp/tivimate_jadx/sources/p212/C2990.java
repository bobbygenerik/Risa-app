package p212;

import p074.InterfaceC1650;

/* renamed from: ˏ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2990 implements InterfaceC1650 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final Object f11407 = new Object();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public volatile InterfaceC1650 f11408;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public volatile Object f11409 = f11407;

    public C2990(InterfaceC1650 interfaceC1650) {
        this.f11408 = interfaceC1650;
    }

    @Override // p074.InterfaceC1650
    public final Object get() {
        Object obj;
        Object obj2 = this.f11409;
        Object obj3 = f11407;
        if (obj2 != obj3) {
            return obj2;
        }
        synchronized (this) {
            try {
                obj = this.f11409;
                if (obj == obj3) {
                    obj = this.f11408.get();
                    this.f11409 = obj;
                    this.f11408 = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }
}
