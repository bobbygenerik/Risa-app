package p275;

import java.util.concurrent.ThreadFactory;

/* renamed from: ـﹶ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class ThreadFactoryC3523 implements ThreadFactory {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ String f13862;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f13863;

    public /* synthetic */ ThreadFactoryC3523(int i, String str) {
        this.f13863 = i;
        this.f13862 = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        switch (this.f13863) {
            case 0:
                Thread thread = new Thread(runnable, this.f13862);
                thread.setPriority(10);
                return thread;
            default:
                return new Thread(runnable, this.f13862);
        }
    }
}
