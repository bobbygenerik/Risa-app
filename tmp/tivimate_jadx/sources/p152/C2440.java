package p152;

import p013.InterfaceC0920;
import p035.AbstractC1220;
import p137.AbstractC2305;
import p301.InterfaceC3703;

/* renamed from: ˊʼ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C2440 extends AbstractC2445 implements InterfaceC2455, InterfaceC3703, InterfaceC0920 {

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final int f9396;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final int f9397;

    public C2440(int i, Class cls, String str, String str2, int i2) {
        this(i, C2442.f9399, cls, str, str2, i2, 0);
    }

    public C2440(int i, Object obj, Class cls, String str, String str2, int i2, int i3) {
        super(obj, cls, str, str2, (i2 & 1) == 1);
        this.f9397 = i;
        this.f9396 = 0;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C2440) {
            C2440 c2440 = (C2440) obj;
            return this.f9404.equals(c2440.f9404) && this.f9407.equals(c2440.f9407) && this.f9396 == c2440.f9396 && this.f9397 == c2440.f9397 && AbstractC2444.m5562(this.f9406, c2440.f9406) && m5570().equals(c2440.m5570());
        }
        if (!(obj instanceof C2440)) {
            return false;
        }
        InterfaceC3703 interfaceC3703 = this.f9403;
        if (interfaceC3703 == null) {
            mo5557();
            this.f9403 = this;
            interfaceC3703 = this;
        }
        return obj.equals(interfaceC3703);
    }

    public final int hashCode() {
        m5570();
        return this.f9407.hashCode() + AbstractC1220.m3780(m5570().hashCode() * 31, 31, this.f9404);
    }

    public final String toString() {
        InterfaceC3703 interfaceC3703 = this.f9403;
        if (interfaceC3703 == null) {
            mo5557();
            this.f9403 = this;
            interfaceC3703 = this;
        }
        if (interfaceC3703 != this) {
            return interfaceC3703.toString();
        }
        String str = this.f9404;
        return "<init>".equals(str) ? "constructor (Kotlin reflection is not available)" : AbstractC2305.m5378("function ", str, " (Kotlin reflection is not available)");
    }

    @Override // p152.InterfaceC2455
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int mo5556() {
        return this.f9397;
    }

    @Override // p152.AbstractC2445
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC3703 mo5557() {
        AbstractC2443.f9400.getClass();
        return this;
    }
}
