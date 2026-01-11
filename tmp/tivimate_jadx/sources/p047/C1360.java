package p047;

import android.net.Uri;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import p055.C1458;
import p055.C1495;

/* renamed from: ʽˑ.ˉˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1360 extends AbstractC1355 {

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static final C1360 f5244;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final List f5245;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final Map f5246;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final List f5247;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final List f5248;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final List f5249;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final List f5250;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final C1495 f5251;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final List f5252;

    static {
        List list = Collections.EMPTY_LIST;
        f5244 = new C1360("", list, list, list, list, list, list, null, list, false, Collections.EMPTY_MAP, list);
    }

    public C1360(String str, List list, List list2, List list3, List list4, List list5, List list6, C1495 c1495, List list7, boolean z, Map map, List list8) {
        super(str, list, z);
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list2.size(); i++) {
            Uri uri = ((C1365) list2.get(i)).f5281;
            if (!arrayList.contains(uri)) {
                arrayList.add(uri);
            }
        }
        m4028(list3, arrayList);
        m4028(list4, arrayList);
        m4028(list5, arrayList);
        m4028(list6, arrayList);
        this.f5247 = DesugarCollections.unmodifiableList(arrayList);
        this.f5248 = DesugarCollections.unmodifiableList(list2);
        DesugarCollections.unmodifiableList(list3);
        this.f5252 = DesugarCollections.unmodifiableList(list4);
        this.f5250 = DesugarCollections.unmodifiableList(list5);
        DesugarCollections.unmodifiableList(list6);
        this.f5251 = c1495;
        this.f5245 = list7 != null ? DesugarCollections.unmodifiableList(list7) : null;
        this.f5246 = DesugarCollections.unmodifiableMap(map);
        this.f5249 = DesugarCollections.unmodifiableList(list8);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static ArrayList m4027(List list, int i, List list2) {
        ArrayList arrayList = new ArrayList(list2.size());
        for (int i2 = 0; i2 < list.size(); i2++) {
            Object obj = list.get(i2);
            int i3 = 0;
            while (true) {
                if (i3 < list2.size()) {
                    C1458 c1458 = (C1458) list2.get(i3);
                    if (c1458.f5670 == i && c1458.f5668 == i2) {
                        arrayList.add(obj);
                        break;
                    }
                    i3++;
                }
            }
        }
        return arrayList;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static void m4028(List list, ArrayList arrayList) {
        for (int i = 0; i < list.size(); i++) {
            Uri uri = ((C1359) list.get(i)).f5243;
            if (!arrayList.contains(uri)) {
                arrayList.add(uri);
            }
        }
    }

    @Override // p455.InterfaceC5376
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Object mo4029(List list) {
        ArrayList m4027 = m4027(this.f5248, 0, list);
        List list2 = Collections.EMPTY_LIST;
        return new C1360(this.f5210, this.f5209, m4027, list2, m4027(this.f5252, 1, list), m4027(this.f5250, 2, list), list2, this.f5251, this.f5245, this.f5208, this.f5246, this.f5249);
    }
}
