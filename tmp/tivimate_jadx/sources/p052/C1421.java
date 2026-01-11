package p052;

import java.util.List;
import java.util.Map;
import p010.AbstractC0844;
import p035.AbstractC1220;

/* renamed from: ʽᴵ.ᴵᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1421 extends AbstractC1430 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final AbstractC1430 f5560;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final AbstractC1430 f5561;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final AbstractC1430 f5562;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final AbstractC1430 f5563;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C1407 f5564;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final AbstractC1430 f5565;

    public C1421(C1407 c1407) {
        this.f5564 = c1407;
        this.f5563 = c1407.m4147(List.class);
        this.f5560 = c1407.m4147(Map.class);
        this.f5561 = c1407.m4147(String.class);
        this.f5562 = c1407.m4147(Double.class);
        this.f5565 = c1407.m4147(Boolean.class);
    }

    public final String toString() {
        return "JsonAdapter(Object)";
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x001f, code lost:
    
        if (r1.isAssignableFrom(r0) != false) goto L8;
     */
    @Override // p052.AbstractC1430
    /* renamed from: ˑﹳ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo4119(p052.AbstractC1429 r5, java.lang.Object r6) {
        /*
            r4 = this;
            java.lang.Class r0 = r6.getClass()
            java.lang.Class<java.lang.Object> r1 = java.lang.Object.class
            if (r0 != r1) goto Lf
            r5.mo4188()
            r5.mo4181()
            return
        Lf:
            java.lang.Class<java.util.Map> r1 = java.util.Map.class
            boolean r2 = r1.isAssignableFrom(r0)
            if (r2 == 0) goto L19
        L17:
            r0 = r1
            goto L22
        L19:
            java.lang.Class<java.util.Collection> r1 = java.util.Collection.class
            boolean r2 = r1.isAssignableFrom(r0)
            if (r2 == 0) goto L22
            goto L17
        L22:
            java.util.Set r1 = p356.AbstractC4343.f16164
            r2 = 0
            ʽᴵ.ʾˋ r3 = r4.f5564
            ʽᴵ.ﾞʻ r0 = r3.m4146(r0, r1, r2)
            r0.mo4119(r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p052.C1421.mo4119(ʽᴵ.ﹳᐧ, java.lang.Object):void");
    }

    @Override // p052.AbstractC1430
    /* renamed from: ⁱˊ */
    public final Object mo4120(AbstractC1413 abstractC1413) {
        int m3018 = AbstractC0844.m3018(abstractC1413.mo4127());
        if (m3018 == 0) {
            return this.f5563.mo4120(abstractC1413);
        }
        if (m3018 == 2) {
            return this.f5560.mo4120(abstractC1413);
        }
        if (m3018 == 5) {
            return this.f5561.mo4120(abstractC1413);
        }
        if (m3018 == 6) {
            return this.f5562.mo4120(abstractC1413);
        }
        if (m3018 == 7) {
            return this.f5565.mo4120(abstractC1413);
        }
        if (m3018 == 8) {
            abstractC1413.mo4128();
            return null;
        }
        throw new IllegalStateException("Expected a value but was " + AbstractC1220.m3776(abstractC1413.mo4127()) + " at path " + abstractC1413.m4151());
    }
}
