package p107;

import j$.util.concurrent.ConcurrentHashMap;
import p229.C3125;
import p262.C3433;
import p296.AbstractC3659;
import p313.AbstractC3885;
import ˊⁱ.ˑﹳ;
import ˋⁱ.ﾞᴵ;
import ᐧﹳ.ʽ;

/* renamed from: ˆٴ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1939 implements InterfaceC1940 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static volatile C1939 f7700;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final ConcurrentHashMap f7701;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ˑﹳ f7702;

    public C1939(ˑﹳ r1) {
        AbstractC3659.m7687(r1);
        this.f7702 = r1;
        this.f7701 = new ConcurrentHashMap();
    }

    /* JADX WARN: Type inference failed for: r5v1, types: [ˋⁱ.ﾞᴵ, java.lang.Object] */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ﾞᴵ m4898(String str, C3125 c3125) {
        if (!AbstractC3885.f15119.contains(str)) {
            boolean isEmpty = str.isEmpty();
            ConcurrentHashMap concurrentHashMap = this.f7701;
            if (isEmpty || !concurrentHashMap.containsKey(str) || concurrentHashMap.get(str) == null) {
                boolean equals = "fiam".equals(str);
                ˑﹳ r3 = this.f7702;
                C3433 c3433 = equals ? new C3433(r3, c3125) : "clx".equals(str) ? new ʽ(r3, c3125) : null;
                if (c3433 != null) {
                    concurrentHashMap.put(str, c3433);
                    return new Object();
                }
            }
        }
        return null;
    }
}
