package p121;

import sun.misc.Unsafe;

/* renamed from: ˈˊ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC2016 {
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static /* synthetic */ boolean m5003(Unsafe unsafe, AbstractC2021 abstractC2021, long j, Object obj, Object obj2) {
        while (!unsafe.compareAndSwapObject(abstractC2021, j, obj, obj2)) {
            if (unsafe.getObject(abstractC2021, j) != obj) {
                return false;
            }
        }
        return true;
    }
}
