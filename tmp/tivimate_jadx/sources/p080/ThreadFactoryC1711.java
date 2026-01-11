package p080;

import java.util.concurrent.ThreadFactory;
import p360.C4364;

/* renamed from: ʿʾ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ThreadFactoryC1711 implements ThreadFactory {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f7005;

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        switch (this.f7005) {
            case 0:
                return new Thread(new RunnableC1712(runnable, 0), "glide-active-resources");
            default:
                return new C4364(runnable);
        }
    }
}
