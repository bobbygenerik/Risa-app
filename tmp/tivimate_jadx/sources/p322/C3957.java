package p322;

import p240.C3231;

/* renamed from: ᴵˋ.ʾˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3957 extends AbstractC3970 {
    @Override // p322.AbstractC3970
    /* renamed from: ʽ */
    public final AbstractC3970 mo8123() {
        return this;
    }

    @Override // p322.AbstractC3970
    /* renamed from: ⁱˊ */
    public final AbstractC3964 mo8124() {
        C3231 c3231 = this.f15305;
        if (c3231.f12339) {
            throw new IllegalArgumentException("PeriodicWorkRequests cannot be expedited");
        }
        return new AbstractC3964(this.f15306, c3231, this.f15304);
    }
}
