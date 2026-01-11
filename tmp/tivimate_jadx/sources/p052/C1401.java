package p052;

import java.lang.reflect.Type;

/* renamed from: ʽᴵ.ʼʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1401 extends AbstractC1430 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Object f5489;

    /* renamed from: ˈ, reason: contains not printable characters */
    public AbstractC1430 f5490;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f5491;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Type f5492;

    public C1401(Type type, String str, Object obj) {
        this.f5492 = type;
        this.f5491 = str;
        this.f5489 = obj;
    }

    public final String toString() {
        AbstractC1430 abstractC1430 = this.f5490;
        return abstractC1430 != null ? abstractC1430.toString() : super.toString();
    }

    @Override // p052.AbstractC1430
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void mo4119(AbstractC1429 abstractC1429, Object obj) {
        AbstractC1430 abstractC1430 = this.f5490;
        if (abstractC1430 == null) {
            throw new IllegalStateException("JsonAdapter isn't ready");
        }
        abstractC1430.mo4119(abstractC1429, obj);
    }

    @Override // p052.AbstractC1430
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object mo4120(AbstractC1413 abstractC1413) {
        AbstractC1430 abstractC1430 = this.f5490;
        if (abstractC1430 != null) {
            return abstractC1430.mo4120(abstractC1413);
        }
        throw new IllegalStateException("JsonAdapter isn't ready");
    }
}
