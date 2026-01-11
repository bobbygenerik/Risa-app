package com.google.crypto.tink.shaded.protobuf;

/* renamed from: com.google.crypto.tink.shaded.protobuf.ʽﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0701 implements InterfaceC0742, Cloneable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final AbstractC0725 f2976;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public AbstractC0725 f2977;

    public AbstractC0701(AbstractC0725 abstractC0725) {
        this.f2976 = abstractC0725;
        if (abstractC0725.m2564()) {
            throw new IllegalArgumentException("Default instance must be immutable.");
        }
        this.f2977 = abstractC0725.m2569();
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static void m2481(Object obj, Object obj2) {
        C0696 c0696 = C0696.f2964;
        c0696.getClass();
        c0696.m2472(obj.getClass()).mo2522(obj, obj2);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final AbstractC0725 m2482() {
        if (!this.f2977.m2564()) {
            return this.f2977;
        }
        AbstractC0725 abstractC0725 = this.f2977;
        abstractC0725.getClass();
        C0696 c0696 = C0696.f2964;
        c0696.getClass();
        c0696.m2472(abstractC0725.getClass()).mo2521(abstractC0725);
        abstractC0725.m2571();
        return this.f2977;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final AbstractC0701 m2483() {
        AbstractC0701 mo2567 = this.f2976.mo2567();
        mo2567.f2977 = m2482();
        return mo2567;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m2484(AbstractC0725 abstractC0725) {
        if (this.f2976.equals(abstractC0725)) {
            return;
        }
        m2486();
        m2481(this.f2977, abstractC0725);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final AbstractC0725 m2485() {
        AbstractC0725 m2482 = m2482();
        m2482.getClass();
        if (AbstractC0725.m2556(m2482, true)) {
            return m2482;
        }
        throw new UninitializedMessageException();
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m2486() {
        if (this.f2977.m2564()) {
            return;
        }
        AbstractC0725 m2569 = this.f2976.m2569();
        m2481(m2569, this.f2977);
        this.f2977 = m2569;
    }
}
