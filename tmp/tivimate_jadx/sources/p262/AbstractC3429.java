package p262;

import java.util.concurrent.ExecutionException;
import p056.RunnableC1503;
import p121.InterfaceFutureC2031;
import p316.AbstractC3906;
import p322.AbstractC3967;
import p322.C3965;
import p322.EnumC3971;
import p324.C4030;
import ʿˋ.ᵎˊ;
import ˉᵎ.ⁱˊ;

/* renamed from: ـʾ.ᴵˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3429 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final String f13451 = C3965.m8128("WorkerWrapper");

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final Object m7320(InterfaceFutureC2031 interfaceFutureC2031, AbstractC3967 abstractC3967, AbstractC3906 abstractC3906) {
        Object obj;
        try {
            if (!interfaceFutureC2031.isDone()) {
                C4030 c4030 = new C4030(1, ⁱˊ.ˈٴ(abstractC3906));
                c4030.m8206();
                interfaceFutureC2031.mo4312(new RunnableC1503(interfaceFutureC2031, c4030, 1), EnumC3971.f15307);
                c4030.m8211(new ᵎˊ(abstractC3967, 3, interfaceFutureC2031));
                return c4030.m8209();
            }
            boolean z = false;
            while (true) {
                try {
                    obj = interfaceFutureC2031.get();
                    break;
                } catch (InterruptedException unused) {
                    z = true;
                } catch (Throwable th) {
                    if (z) {
                        Thread.currentThread().interrupt();
                    }
                    throw th;
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
            return obj;
        } catch (ExecutionException e) {
            throw e.getCause();
        }
    }
}
