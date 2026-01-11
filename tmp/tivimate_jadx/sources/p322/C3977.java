package p322;

import com.bumptech.glide.ʽ;
import j$.util.Objects;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import p035.AbstractC1220;
import p152.AbstractC2444;
import p430.AbstractC5096;
import p430.AbstractC5099;
import ˑᵢ.ﹳـ;

/* renamed from: ᴵˋ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3977 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C3977 f15328;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final HashMap f15329;

    static {
        C3977 c3977 = new C3977(new LinkedHashMap());
        ʽ.ʽʽ(c3977);
        f15328 = c3977;
    }

    public C3977(LinkedHashMap linkedHashMap) {
        this.f15329 = new HashMap(linkedHashMap);
    }

    public C3977(C3977 c3977) {
        this.f15329 = new HashMap(c3977.f15329);
    }

    public final boolean equals(Object obj) {
        boolean z;
        if (this != obj) {
            if (obj != null && C3977.class.equals(obj.getClass())) {
                HashMap hashMap = ((C3977) obj).f15329;
                HashMap hashMap2 = this.f15329;
                Set<String> keySet = hashMap2.keySet();
                if (AbstractC2444.m5562(keySet, hashMap.keySet())) {
                    for (String str : keySet) {
                        Object obj2 = hashMap2.get(str);
                        Object obj3 = hashMap.get(str);
                        if (obj2 == null || obj3 == null) {
                            z = obj2 == obj3;
                        } else {
                            if (obj2 instanceof Object[]) {
                                Object[] objArr = (Object[]) obj2;
                                if (obj3 instanceof Object[]) {
                                    z = AbstractC5096.m10010(objArr, (Object[]) obj3);
                                }
                            }
                            z = obj2.equals(obj3);
                        }
                        if (!z) {
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int i = 0;
        for (Map.Entry entry : this.f15329.entrySet()) {
            Object value = entry.getValue();
            i += value instanceof Object[] ? Objects.hashCode(entry.getKey()) ^ Arrays.deepHashCode((Object[]) value) : entry.hashCode();
        }
        return i * 31;
    }

    public final String toString() {
        return AbstractC1220.m3775(new StringBuilder("Data {"), AbstractC5099.m10034(this.f15329.entrySet(), null, null, null, new ﹳـ(24), 31), "}");
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean m8140(String str) {
        Object obj = this.f15329.get(str);
        return obj != null && String.class.isAssignableFrom(obj.getClass());
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final long m8141(String str) {
        Object obj = this.f15329.get(str);
        return ((Number) (obj instanceof Long ? obj : 0L)).longValue();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean m8142(String str) {
        Object obj = Boolean.FALSE;
        Object obj2 = this.f15329.get(str);
        if (obj2 instanceof Boolean) {
            obj = obj2;
        }
        return ((Boolean) obj).booleanValue();
    }
}
