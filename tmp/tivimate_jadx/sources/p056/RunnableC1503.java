package p056;

import java.util.concurrent.ExecutionException;
import p013.C0922;
import p121.InterfaceFutureC2031;
import p324.C4030;

/* renamed from: ʽﹳ.ˉˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC1503 implements Runnable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C4030 f5954;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f5955;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final InterfaceFutureC2031 f5956;

    public /* synthetic */ RunnableC1503(InterfaceFutureC2031 interfaceFutureC2031, C4030 c4030, int i) {
        this.f5955 = i;
        this.f5956 = interfaceFutureC2031;
        this.f5954 = c4030;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5955) {
            case 0:
                InterfaceFutureC2031 interfaceFutureC2031 = this.f5956;
                boolean isCancelled = interfaceFutureC2031.isCancelled();
                C4030 c4030 = this.f5954;
                if (isCancelled) {
                    c4030.m8222(null);
                    return;
                }
                try {
                    c4030.mo3549(AbstractC1506.m4315(interfaceFutureC2031));
                    return;
                } catch (ExecutionException e) {
                    c4030.mo3549(new C0922(e.getCause()));
                    return;
                }
            default:
                InterfaceFutureC2031 interfaceFutureC20312 = this.f5956;
                boolean isCancelled2 = interfaceFutureC20312.isCancelled();
                C4030 c40302 = this.f5954;
                if (isCancelled2) {
                    c40302.m8222(null);
                    return;
                }
                boolean z = false;
                while (true) {
                    try {
                        try {
                            Object obj = interfaceFutureC20312.get();
                            if (z) {
                                Thread.currentThread().interrupt();
                            }
                            c40302.mo3549(obj);
                            return;
                        } catch (ExecutionException e2) {
                            c40302.mo3549(new C0922(e2.getCause()));
                            return;
                        }
                    } catch (InterruptedException unused) {
                        z = true;
                    } catch (Throwable th) {
                        if (z) {
                            Thread.currentThread().interrupt();
                        }
                        throw th;
                    }
                }
        }
    }
}
