package p356;

import p052.AbstractC1413;
import p052.AbstractC1429;
import p052.AbstractC1430;

/* renamed from: ᵔˈ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4345 extends AbstractC1430 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AbstractC1430 f16166;

    public C4345(AbstractC1430 abstractC1430) {
        this.f16166 = abstractC1430;
    }

    public final String toString() {
        return this.f16166 + ".nullSafe()";
    }

    @Override // p052.AbstractC1430
    /* renamed from: ˑﹳ */
    public final void mo4119(AbstractC1429 abstractC1429, Object obj) {
        if (obj == null) {
            abstractC1429.mo4178();
        } else {
            this.f16166.mo4119(abstractC1429, obj);
        }
    }

    @Override // p052.AbstractC1430
    /* renamed from: ⁱˊ */
    public final Object mo4120(AbstractC1413 abstractC1413) {
        if (abstractC1413.mo4127() != 9) {
            return this.f16166.mo4120(abstractC1413);
        }
        abstractC1413.mo4128();
        return null;
    }
}
