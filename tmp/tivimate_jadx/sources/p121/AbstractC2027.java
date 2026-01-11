package p121;

import sun.misc.Unsafe;

/* renamed from: ˈˊ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC2027 {
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static /* synthetic */ boolean m5069(Unsafe unsafe, AbstractC2021 abstractC2021, long j, C2018 c2018, C2018 c20182) {
        while (!unsafe.compareAndSwapObject(abstractC2021, j, c2018, c20182)) {
            if (unsafe.getObject(abstractC2021, j) != c2018) {
                return false;
            }
        }
        return true;
    }
}
