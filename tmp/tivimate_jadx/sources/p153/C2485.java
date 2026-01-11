package p153;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import p013.AbstractC0915;
import p126.InterfaceC2136;
import p126.InterfaceC2139;
import p316.AbstractC3902;
import p316.InterfaceC3903;
import p324.AbstractC3999;
import p324.AbstractC4017;
import p324.AbstractC4020;
import p324.AbstractC4037;
import p324.AbstractC4053;
import p324.C4022;

/* renamed from: ˊʽ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2485 extends AbstractC4037 implements InterfaceC3903, InterfaceC2136 {

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f9474 = AtomicReferenceFieldUpdater.newUpdater(C2485.class, Object.class, "_reusableCancellableContinuation$volatile");
    private volatile /* synthetic */ Object _reusableCancellableContinuation$volatile;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final AbstractC4017 f9475;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public Object f9476;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final Object f9477;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final AbstractC3902 f9478;

    public C2485(AbstractC4017 abstractC4017, AbstractC3902 abstractC3902) {
        super(-1);
        this.f9475 = abstractC4017;
        this.f9478 = abstractC3902;
        this.f9476 = AbstractC2481.f9467;
        this.f9477 = abstractC3902.mo3551().mo3418(0, AbstractC2481.f9465);
    }

    public final String toString() {
        return "DispatchedContinuation[" + this.f9475 + ", " + AbstractC3999.m8162(this.f9478) + ']';
    }

    @Override // p324.AbstractC4037
    /* renamed from: ʽ, reason: contains not printable characters */
    public final InterfaceC2136 mo5634() {
        return this;
    }

    @Override // p324.AbstractC4037
    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final Object mo5635() {
        Object obj = this.f9476;
        this.f9476 = AbstractC2481.f9467;
        return obj;
    }

    @Override // p316.InterfaceC3903
    /* renamed from: ˈ */
    public final InterfaceC3903 mo4725() {
        return this.f9478;
    }

    @Override // p126.InterfaceC2136
    /* renamed from: ᵔᵢ */
    public final void mo3549(Object obj) {
        Throwable m3188 = AbstractC0915.m3188(obj);
        Object c4022 = m3188 == null ? obj : new C4022(m3188, false);
        AbstractC3902 abstractC3902 = this.f9478;
        InterfaceC2139 mo3551 = abstractC3902.mo3551();
        AbstractC4017 abstractC4017 = this.f9475;
        if (AbstractC2481.m5620(abstractC4017, mo3551)) {
            this.f9476 = c4022;
            this.f15424 = 0;
            AbstractC2481.m5618(abstractC4017, abstractC3902.mo3551(), this);
            return;
        }
        AbstractC4020 m8269 = AbstractC4053.m8269();
        if (m8269.f15400 >= 4294967296L) {
            this.f9476 = c4022;
            this.f15424 = 0;
            m8269.m8203(this);
            return;
        }
        m8269.m8202(true);
        try {
            InterfaceC2139 mo35512 = abstractC3902.mo3551();
            Object m5622 = AbstractC2481.m5622(mo35512, this.f9477);
            try {
                abstractC3902.mo3549(obj);
                do {
                } while (m8269.m8200());
            } finally {
                AbstractC2481.m5625(mo35512, m5622);
            }
        } catch (Throwable th) {
            try {
                m8263(th);
            } finally {
                m8269.m8201(true);
            }
        }
    }

    @Override // p126.InterfaceC2136
    /* renamed from: ﾞᴵ */
    public final InterfaceC2139 mo3551() {
        return this.f9478.mo3551();
    }
}
