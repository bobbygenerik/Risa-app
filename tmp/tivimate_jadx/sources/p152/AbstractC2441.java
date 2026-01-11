package p152;

import p035.AbstractC1220;
import p301.InterfaceC3701;
import p301.InterfaceC3703;

/* renamed from: ˊʼ.ʼᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2441 extends AbstractC2445 implements InterfaceC3701 {

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final boolean f9398;

    public AbstractC2441(Object obj, Class cls, String str, String str2, int i) {
        super(obj, cls, str, str2, (i & 1) == 1);
        this.f9398 = false;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC2441) {
            AbstractC2441 abstractC2441 = (AbstractC2441) obj;
            return m5570().equals(abstractC2441.m5570()) && this.f9404.equals(abstractC2441.f9404) && this.f9407.equals(abstractC2441.f9407) && AbstractC2444.m5562(this.f9406, abstractC2441.f9406);
        }
        if (obj instanceof InterfaceC3701) {
            return obj.equals(m5559());
        }
        return false;
    }

    public final int hashCode() {
        return this.f9407.hashCode() + AbstractC1220.m3780(m5570().hashCode() * 31, 31, this.f9404);
    }

    public final String toString() {
        InterfaceC3703 m5559 = m5559();
        return m5559 != this ? m5559.toString() : AbstractC1220.m3775(new StringBuilder("property "), this.f9404, " (Kotlin reflection is not available)");
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final InterfaceC3701 m5558() {
        if (this.f9398) {
            throw new UnsupportedOperationException("Kotlin reflection is not yet supported for synthetic Java properties. Please follow/upvote https://youtrack.jetbrains.com/issue/KT-55980");
        }
        InterfaceC3703 m5559 = m5559();
        if (m5559 != this) {
            return (InterfaceC3701) m5559;
        }
        throw new Error("Kotlin reflection implementation is not found at runtime. Make sure you have kotlin-reflect.jar in the classpath");
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final InterfaceC3703 m5559() {
        if (this.f9398) {
            return this;
        }
        InterfaceC3703 interfaceC3703 = this.f9403;
        if (interfaceC3703 != null) {
            return interfaceC3703;
        }
        InterfaceC3703 mo5557 = mo5557();
        this.f9403 = mo5557;
        return mo5557;
    }
}
