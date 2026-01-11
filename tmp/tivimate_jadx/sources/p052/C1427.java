package p052;

import java.lang.reflect.Array;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Map;
import java.util.Set;
import p356.AbstractC4343;

/* renamed from: ʽᴵ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1427 extends AbstractC1430 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C1428 f5580 = new C1428(0);

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final C1428 f5581 = new C1428(3);

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Object f5582;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final AbstractC1430 f5583;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f5584 = 0;

    public C1427(Class cls, AbstractC1430 abstractC1430) {
        this.f5582 = cls;
        this.f5583 = abstractC1430;
    }

    public C1427(C1407 c1407, Type type, Type type2) {
        Set set = AbstractC4343.f16164;
        this.f5583 = c1407.m4146(type, set, null);
        this.f5582 = c1407.m4146(type2, set, null);
    }

    public final String toString() {
        switch (this.f5584) {
            case 0:
                return this.f5583 + ".array()";
            default:
                return "JsonAdapter(" + this.f5583 + "=" + ((AbstractC1430) this.f5582) + ")";
        }
    }

    @Override // p052.AbstractC1430
    /* renamed from: ˑﹳ */
    public final void mo4119(AbstractC1429 abstractC1429, Object obj) {
        switch (this.f5584) {
            case 0:
                abstractC1429.mo4177();
                int length = Array.getLength(obj);
                for (int i = 0; i < length; i++) {
                    this.f5583.mo4119(abstractC1429, Array.get(obj, i));
                }
                ((C1425) abstractC1429).m4185(1, 2, ']');
                return;
            default:
                abstractC1429.mo4188();
                for (Map.Entry entry : ((Map) obj).entrySet()) {
                    if (entry.getKey() == null) {
                        throw new RuntimeException("Map key is null at " + abstractC1429.m4193());
                    }
                    int m4192 = abstractC1429.m4192();
                    if (m4192 != 5 && m4192 != 3) {
                        throw new IllegalStateException("Nesting problem.");
                    }
                    abstractC1429.f5591 = true;
                    this.f5583.mo4119(abstractC1429, entry.getKey());
                    ((AbstractC1430) this.f5582).mo4119(abstractC1429, entry.getValue());
                }
                abstractC1429.mo4181();
                return;
        }
    }

    @Override // p052.AbstractC1430
    /* renamed from: ⁱˊ */
    public final Object mo4120(AbstractC1413 abstractC1413) {
        switch (this.f5584) {
            case 0:
                ArrayList arrayList = new ArrayList();
                abstractC1413.mo4122();
                while (abstractC1413.mo4125()) {
                    arrayList.add(this.f5583.mo4120(abstractC1413));
                }
                abstractC1413.mo4130();
                Object newInstance = Array.newInstance((Class<?>) this.f5582, arrayList.size());
                for (int i = 0; i < arrayList.size(); i++) {
                    Array.set(newInstance, i, arrayList.get(i));
                }
                return newInstance;
            default:
                C1418 c1418 = new C1418();
                abstractC1413.mo4141();
                while (abstractC1413.mo4125()) {
                    C1403 c1403 = (C1403) abstractC1413;
                    if (c1403.mo4125()) {
                        c1403.f5500 = c1403.m4132();
                        c1403.f5501 = 11;
                    }
                    Object mo4120 = this.f5583.mo4120(abstractC1413);
                    Object mo41202 = ((AbstractC1430) this.f5582).mo4120(abstractC1413);
                    Object put = c1418.put(mo4120, mo41202);
                    if (put != null) {
                        throw new RuntimeException("Map key '" + mo4120 + "' has multiple values at path " + abstractC1413.m4151() + ": " + put + " and " + mo41202);
                    }
                }
                abstractC1413.mo4143();
                return c1418;
        }
    }
}
