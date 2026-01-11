package p017;

import j$.util.Objects;

/* renamed from: ʼʻ.ˆﾞ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0958 extends AbstractC0951 {
    @Override // p017.AbstractC0951
    /* renamed from: ʽ */
    public final AbstractC0951 mo3235(Object obj) {
        obj.getClass();
        m3239(obj);
        return this;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final AbstractC0997 m3244() {
        int i = this.f3895;
        if (i == 0) {
            int i2 = AbstractC0997.f3984;
            return C0945.f3878;
        }
        if (i != 1) {
            AbstractC0997 m3275 = AbstractC0997.m3275(i, this.f3896);
            this.f3895 = m3275.size();
            this.f3894 = true;
            return m3275;
        }
        Object obj = this.f3896[0];
        Objects.requireNonNull(obj);
        int i3 = AbstractC0997.f3984;
        return new C0943(obj);
    }
}
