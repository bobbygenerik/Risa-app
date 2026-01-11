package p223;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import p013.C0907;
import p121.AbstractC2026;
import p126.InterfaceC2136;
import p309.C3782;
import p315.C3896;
import p315.C3899;
import p316.AbstractC3906;
import p329.InterfaceC4102;
import p430.AbstractC5099;
import p430.AbstractC5103;
import p430.AbstractC5114;

/* renamed from: ˏᵢ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3050 extends AbstractC3906 implements InterfaceC4102 {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public /* synthetic */ C3899 f11603;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public /* synthetic */ C3782 f11604;

    /* JADX WARN: Type inference failed for: r0v0, types: [ᴵʾ.ᵔᵢ, ˏᵢ.ʼˎ] */
    @Override // p329.InterfaceC4102
    /* renamed from: ᵎﹶ */
    public final Object mo4346(Object obj, Object obj2, Object obj3) {
        ?? abstractC3906 = new AbstractC3906(3, (InterfaceC2136) obj3);
        abstractC3906.f11604 = (C3782) obj;
        abstractC3906.f11603 = (C3899) obj2;
        return abstractC3906.mo3389(C0907.f3832);
    }

    @Override // p316.AbstractC3908
    /* renamed from: ᵔﹳ */
    public final Object mo3389(Object obj) {
        AbstractC2026.m5044(obj);
        C3782 c3782 = this.f11604;
        C3899 c3899 = this.f11603;
        Set keySet = c3899.m8080().keySet();
        ArrayList arrayList = new ArrayList(AbstractC5114.m10060(keySet, 10));
        Iterator it = keySet.iterator();
        while (it.hasNext()) {
            arrayList.add(((C3896) it.next()).f15159);
        }
        Map<String, ?> all = c3782.f14693.getAll();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<Map.Entry<String, ?>> it2 = all.entrySet().iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Map.Entry<String, ?> next = it2.next();
            String key = next.getKey();
            Set set = c3782.f14692;
            if (set != null ? set.contains(key) : true) {
                linkedHashMap.put(next.getKey(), next.getValue());
            }
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(AbstractC5103.m10040(linkedHashMap.size()));
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            Object key2 = entry.getKey();
            Object value = entry.getValue();
            if (value instanceof Set) {
                value = AbstractC5099.m10031((Iterable) value);
            }
            linkedHashMap2.put(key2, value);
        }
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        for (Map.Entry entry2 : linkedHashMap2.entrySet()) {
            if (!arrayList.contains((String) entry2.getKey())) {
                linkedHashMap3.put(entry2.getKey(), entry2.getValue());
            }
        }
        C3899 c38992 = new C3899(new LinkedHashMap(c3899.m8080()), false);
        for (Map.Entry entry3 : linkedHashMap3.entrySet()) {
            String str = (String) entry3.getKey();
            Object value2 = entry3.getValue();
            if (value2 instanceof Boolean) {
                c38992.m8078(new C3896(str), value2);
            } else if (value2 instanceof Float) {
                c38992.m8078(new C3896(str), value2);
            } else if (value2 instanceof Integer) {
                c38992.m8078(new C3896(str), value2);
            } else if (value2 instanceof Long) {
                c38992.m8078(new C3896(str), value2);
            } else if (value2 instanceof String) {
                c38992.m8078(new C3896(str), value2);
            } else if (value2 instanceof Set) {
                c38992.m8078(new C3896(str), (Set) value2);
            }
        }
        return new C3899(new LinkedHashMap(c38992.m8080()), true);
    }
}
