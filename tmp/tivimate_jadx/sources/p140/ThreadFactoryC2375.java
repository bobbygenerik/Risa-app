package p140;

import java.util.concurrent.ThreadFactory;
import p120.C2011;

/* renamed from: ˉˏ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ThreadFactoryC2375 implements ThreadFactory {
    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new C2011(runnable);
    }
}
