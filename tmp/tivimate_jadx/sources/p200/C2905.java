package p200;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p055.C1458;
import p055.C1495;
import p455.InterfaceC5376;

/* renamed from: ˎˉ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2905 implements InterfaceC5376 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f10943;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final boolean f10944;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C2911 f10945;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final long f10946;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final long f10947;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f10948;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f10949;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final C2910[] f10950;

    public C2905(int i, int i2, long j, long j2, int i3, boolean z, C2911 c2911, C2910[] c2910Arr) {
        this.f10949 = i;
        this.f10948 = i2;
        this.f10946 = j;
        this.f10947 = j2;
        this.f10943 = i3;
        this.f10944 = z;
        this.f10945 = c2911;
        this.f10950 = c2910Arr;
    }

    @Override // p455.InterfaceC5376
    /* renamed from: ﹳٴ */
    public final Object mo4029(List list) {
        ArrayList arrayList = new ArrayList(list);
        Collections.sort(arrayList);
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        C2910 c2910 = null;
        int i = 0;
        while (i < arrayList.size()) {
            C1458 c1458 = (C1458) arrayList.get(i);
            C2910 c29102 = this.f10950[c1458.f5670];
            if (c29102 != c2910 && c2910 != null) {
                arrayList2.add(c2910.m6438((C1495[]) arrayList3.toArray(new C1495[0])));
                arrayList3.clear();
            }
            arrayList3.add(c29102.f10984[c1458.f5668]);
            i++;
            c2910 = c29102;
        }
        if (c2910 != null) {
            arrayList2.add(c2910.m6438((C1495[]) arrayList3.toArray(new C1495[0])));
        }
        return new C2905(this.f10949, this.f10948, this.f10946, this.f10947, this.f10943, this.f10944, this.f10945, (C2910[]) arrayList2.toArray(new C2910[0]));
    }
}
