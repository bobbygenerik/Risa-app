package p035;

import java.util.LinkedHashMap;
import java.util.TreeMap;
import p362.AbstractC4399;

/* renamed from: ʼﾞ.ˈٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1213 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final LinkedHashMap f4694;

    public C1213(int i) {
        switch (i) {
            case 1:
                this.f4694 = new LinkedHashMap(0, 0.75f, true);
                return;
            default:
                this.f4694 = new LinkedHashMap();
                return;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public void m3756(AbstractC4399 abstractC4399) {
        int i = abstractC4399.f16361;
        int i2 = abstractC4399.f16360;
        Integer valueOf = Integer.valueOf(i);
        LinkedHashMap linkedHashMap = this.f4694;
        Object obj = linkedHashMap.get(valueOf);
        if (obj == null) {
            obj = new TreeMap();
            linkedHashMap.put(valueOf, obj);
        }
        TreeMap treeMap = (TreeMap) obj;
        if (treeMap.containsKey(Integer.valueOf(i2))) {
            String str = "Overriding migration " + treeMap.get(Integer.valueOf(i2)) + " with " + abstractC4399;
        }
        treeMap.put(Integer.valueOf(i2), abstractC4399);
    }
}
