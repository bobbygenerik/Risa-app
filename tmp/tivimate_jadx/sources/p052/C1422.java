package p052;

import java.lang.reflect.InvocationTargetException;
import java.util.TreeMap;
import p356.AbstractC4343;
import ﹶﾞ.ⁱי;

/* renamed from: ʽᴵ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1422 extends AbstractC1430 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C1428 f5566 = new C1428(1);

    /* renamed from: ʽ, reason: contains not printable characters */
    public final ⁱי f5567;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C1431[] f5568;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AbstractC1414 f5569;

    public C1422(AbstractC1414 abstractC1414, TreeMap treeMap) {
        this.f5569 = abstractC1414;
        this.f5568 = (C1431[]) treeMap.values().toArray(new C1431[treeMap.size()]);
        this.f5567 = ⁱי.ʾᵎ((String[]) treeMap.keySet().toArray(new String[treeMap.size()]));
    }

    public final String toString() {
        return "JsonAdapter(" + this.f5569 + ")";
    }

    @Override // p052.AbstractC1430
    /* renamed from: ˑﹳ */
    public final void mo4119(AbstractC1429 abstractC1429, Object obj) {
        try {
            abstractC1429.mo4188();
            for (C1431 c1431 : this.f5568) {
                abstractC1429.mo4183(c1431.f5594);
                c1431.f5592.mo4119(abstractC1429, c1431.f5593.get(obj));
            }
            abstractC1429.mo4181();
        } catch (IllegalAccessException unused) {
            throw new AssertionError();
        }
    }

    @Override // p052.AbstractC1430
    /* renamed from: ⁱˊ */
    public final Object mo4120(AbstractC1413 abstractC1413) {
        try {
            Object mo4145 = this.f5569.mo4145();
            try {
                abstractC1413.mo4141();
                while (abstractC1413.mo4125()) {
                    int mo4131 = abstractC1413.mo4131(this.f5567);
                    if (mo4131 == -1) {
                        abstractC1413.mo4144();
                        abstractC1413.mo4136();
                    } else {
                        C1431 c1431 = this.f5568[mo4131];
                        c1431.f5593.set(mo4145, c1431.f5592.mo4120(abstractC1413));
                    }
                }
                abstractC1413.mo4143();
                return mo4145;
            } catch (IllegalAccessException unused) {
                throw new AssertionError();
            }
        } catch (IllegalAccessException unused2) {
            throw new AssertionError();
        } catch (InstantiationException e) {
            throw new RuntimeException(e);
        } catch (InvocationTargetException e2) {
            AbstractC4343.m8807(e2);
            throw null;
        }
    }
}
