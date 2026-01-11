package p324;

import p013.C0913;
import p126.InterfaceC2136;
import p126.InterfaceC2139;
import p153.AbstractC2481;
import p153.C2480;

/* renamed from: ᴵי.ᵎʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4038 extends C2480 {
    private volatile boolean threadLocalIsSet;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final ThreadLocal f15425;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C4038(p126.InterfaceC2136 r3, p126.InterfaceC2139 r4) {
        /*
            r2 = this;
            ᴵי.ـᵎ r0 = p324.C4025.f15405
            ˈי.ﾞᴵ r1 = r4.mo3419(r0)
            if (r1 != 0) goto Ld
            ˈי.ᵔᵢ r0 = r4.mo3421(r0)
            goto Le
        Ld:
            r0 = r4
        Le:
            r2.<init>(r3, r0)
            java.lang.ThreadLocal r0 = new java.lang.ThreadLocal
            r0.<init>()
            r2.f15425 = r0
            ˈי.ᵔᵢ r3 = r3.mo3551()
            ˈי.ˑﹳ r0 = p126.C2137.f8327
            ˈי.ﾞᴵ r3 = r3.mo3419(r0)
            boolean r3 = r3 instanceof p324.AbstractC4017
            if (r3 != 0) goto L31
            r3 = 0
            java.lang.Object r3 = p153.AbstractC2481.m5622(r4, r3)
            p153.AbstractC2481.m5625(r4, r3)
            r2.m8266(r4, r3)
        L31:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p324.C4038.<init>(ˈי.ˈ, ˈי.ᵔᵢ):void");
    }

    /* renamed from: ʻˋ, reason: contains not printable characters */
    public final boolean m8264() {
        boolean z = this.threadLocalIsSet && this.f15425.get() == null;
        this.f15425.remove();
        return !z;
    }

    /* renamed from: ˑʼ, reason: contains not printable characters */
    public final void m8265() {
        if (this.threadLocalIsSet) {
            C0913 c0913 = (C0913) this.f15425.get();
            if (c0913 != null) {
                AbstractC2481.m5625((InterfaceC2139) c0913.f3836, c0913.f3837);
            }
            this.f15425.remove();
        }
    }

    /* renamed from: ٴﹳ, reason: contains not printable characters */
    public final void m8266(InterfaceC2139 interfaceC2139, Object obj) {
        this.threadLocalIsSet = true;
        this.f15425.set(new C0913(interfaceC2139, obj));
    }

    @Override // p153.C2480, p324.C4031
    /* renamed from: ٴﹶ */
    public final void mo5615(Object obj) {
        m8265();
        Object m8177 = AbstractC3999.m8177(obj);
        InterfaceC2136 interfaceC2136 = this.f9462;
        InterfaceC2139 mo3551 = interfaceC2136.mo3551();
        Object m5622 = AbstractC2481.m5622(mo3551, null);
        C4038 m8172 = m5622 != AbstractC2481.f9464 ? AbstractC3999.m8172(interfaceC2136, mo3551, m5622) : null;
        try {
            interfaceC2136.mo3549(m8177);
            if (m8172 == null || m8172.m8264()) {
                AbstractC2481.m5625(mo3551, m5622);
            }
        } catch (Throwable th) {
            if (m8172 == null || m8172.m8264()) {
                AbstractC2481.m5625(mo3551, m5622);
            }
            throw th;
        }
    }

    @Override // p153.C2480
    /* renamed from: ﹳﹳ */
    public final void mo5617() {
        m8265();
    }
}
