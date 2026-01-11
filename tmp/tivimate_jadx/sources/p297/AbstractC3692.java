package p297;

import android.util.SparseArray;
import java.util.HashMap;
import p307.AbstractC3740;
import p318.EnumC3916;

/* renamed from: ᐧ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3692 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final HashMap f14438;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final SparseArray f14439 = new SparseArray();

    static {
        HashMap hashMap = new HashMap();
        f14438 = hashMap;
        hashMap.put(EnumC3916.f15179, 0);
        hashMap.put(EnumC3916.f15181, 1);
        hashMap.put(EnumC3916.f15178, 2);
        for (EnumC3916 enumC3916 : hashMap.keySet()) {
            f14439.append(((Integer) f14438.get(enumC3916)).intValue(), enumC3916);
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static EnumC3916 m7728(int i) {
        EnumC3916 enumC3916 = (EnumC3916) f14439.get(i);
        if (enumC3916 != null) {
            return enumC3916;
        }
        throw new IllegalArgumentException(AbstractC3740.m7932(i, "Unknown Priority for value "));
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static int m7729(EnumC3916 enumC3916) {
        Integer num = (Integer) f14438.get(enumC3916);
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException("PriorityMapping is missing known Priority value " + enumC3916);
    }
}
