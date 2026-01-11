package p121;

import sun.misc.Unsafe;

/* renamed from: ˈˊ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC2025 {
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static /* synthetic */ boolean m5034(Unsafe unsafe, AbstractC2021 abstractC2021, long j, C2032 c2032, C2032 c20322) {
        while (!unsafe.compareAndSwapObject(abstractC2021, j, c2032, c20322)) {
            if (unsafe.getObject(abstractC2021, j) != c2032) {
                return false;
            }
        }
        return true;
    }
}
