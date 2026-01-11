package p269;

import java.util.ArrayList;
import p307.AbstractC3740;

/* renamed from: ـˏ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3476 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f13645;

    /* renamed from: ˈ, reason: contains not printable characters */
    public boolean f13646;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C3474 f13647;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ArrayList f13648;

    public C3476(C3474 c3474, ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        this.f13648 = arrayList2;
        if (arrayList.size() > 0) {
            throw AbstractC3740.m7931(0, arrayList);
        }
        if (arrayList.size() > 0) {
            throw AbstractC3740.m7931(0, arrayList);
        }
        ArrayList arrayList3 = c3474.f13641;
        if (!arrayList3.contains(this)) {
            arrayList3.add(this);
            int size = arrayList2.size() - 1;
            if (size >= 0) {
                throw AbstractC3740.m7931(size, arrayList2);
            }
            int size2 = arrayList2.size() - 1;
            if (size2 >= 0) {
                throw AbstractC3740.m7931(size2, arrayList2);
            }
        }
        this.f13647 = c3474;
    }
}
