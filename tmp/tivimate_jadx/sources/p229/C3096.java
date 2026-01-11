package p229;

import java.util.ArrayList;
import java.util.LinkedHashSet;
import p307.AbstractC3740;
import ˉˑ.ʽ;

/* renamed from: ˑʼ.ˉـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3096 implements InterfaceC3093 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ C3085 f11802;

    public C3096(C3085 c3085) {
        this.f11802 = c3085;
    }

    @Override // p229.InterfaceC3093
    /* renamed from: ﹳٴ */
    public final boolean mo6717(ArrayList arrayList, ArrayList arrayList2) {
        boolean m6667;
        C3085 c3085 = this.f11802;
        ArrayList arrayList3 = c3085.f11736;
        if (C3085.m6654(2)) {
            String str = "FragmentManager has the following pending actions inside of prepareBackStackState: " + c3085.f11760;
        }
        int i = 0;
        if (c3085.f11732.isEmpty()) {
            m6667 = false;
        } else {
            C3137 c3137 = (C3137) AbstractC3740.m7939(1, c3085.f11732);
            c3085.f11756 = c3137;
            ArrayList arrayList4 = c3137.f12011;
            int size = arrayList4.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList4.get(i2);
                i2++;
                AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = ((C3074) obj).f11688;
                if (abstractComponentCallbacksC3123 != null) {
                    abstractComponentCallbacksC3123.f11899 = true;
                }
            }
            m6667 = c3085.m6667(arrayList, arrayList2, -1, 0);
        }
        if (!arrayList3.isEmpty() && arrayList.size() > 0) {
            ((Boolean) arrayList2.get(arrayList.size() - 1)).getClass();
            LinkedHashSet<AbstractComponentCallbacksC3123> linkedHashSet = new LinkedHashSet();
            int size2 = arrayList.size();
            int i3 = 0;
            while (i3 < size2) {
                Object obj2 = arrayList.get(i3);
                i3++;
                linkedHashSet.addAll(C3085.m6653((C3137) obj2));
            }
            int size3 = arrayList3.size();
            while (i < size3) {
                Object obj3 = arrayList3.get(i);
                i++;
                ʽ r2 = (ʽ) obj3;
                for (AbstractComponentCallbacksC3123 abstractComponentCallbacksC31232 : linkedHashSet) {
                    r2.getClass();
                }
            }
        }
        return m6667;
    }
}
