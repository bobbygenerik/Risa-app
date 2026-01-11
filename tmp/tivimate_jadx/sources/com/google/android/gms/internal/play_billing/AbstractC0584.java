package com.google.android.gms.internal.play_billing;

/* renamed from: com.google.android.gms.internal.play_billing.ˑ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0584 implements Cloneable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final AbstractC0529 f2386;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public AbstractC0529 f2387;

    public AbstractC0584(AbstractC0529 abstractC0529) {
        this.f2386 = abstractC0529;
        if (abstractC0529.m2045()) {
            throw new IllegalArgumentException("Default instance must be immutable.");
        }
        this.f2387 = (AbstractC0529) abstractC0529.mo2022(4);
    }

    public final Object clone() {
        AbstractC0584 abstractC0584 = (AbstractC0584) this.f2386.mo2022(5);
        abstractC0584.f2387 = m2175();
        return abstractC0584;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m2174() {
        if (this.f2387.m2045()) {
            return;
        }
        AbstractC0529 abstractC0529 = (AbstractC0529) this.f2386.mo2022(4);
        C0637.f2473.m2245(abstractC0529.getClass()).mo2146(abstractC0529, this.f2387);
        this.f2387 = abstractC0529;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final AbstractC0529 m2175() {
        if (!this.f2387.m2045()) {
            return this.f2387;
        }
        AbstractC0529 abstractC0529 = this.f2387;
        abstractC0529.getClass();
        C0637.f2473.m2245(abstractC0529.getClass()).mo2150(abstractC0529);
        abstractC0529.m2044();
        return this.f2387;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AbstractC0529 m2176() {
        AbstractC0529 m2175 = m2175();
        m2175.getClass();
        if (AbstractC0529.m2041(m2175, true)) {
            return m2175;
        }
        throw new zzhg();
    }
}
