package p042;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import p003.RunnableC0786;
import p017.AbstractC0993;
import p017.C0956;
import p017.C0968;
import p055.C1474;
import p220.C3032;
import p318.InterfaceC3921;
import p411.AbstractC4899;
import p411.C4905;
import p428.C5063;
import p428.C5068;
import p428.C5078;
import p428.C5080;
import p428.InterfaceC5066;

/* renamed from: ʽˆ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C1318 implements InterfaceC3921, InterfaceC5066 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ Object f5055;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ boolean f5056;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ Object f5057;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f5058;

    public /* synthetic */ C1318(boolean z, Object obj, Object obj2, Object obj3) {
        this.f5058 = obj;
        this.f5055 = obj2;
        this.f5056 = z;
        this.f5057 = obj3;
    }

    @Override // p318.InterfaceC3921
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public void mo3945(Exception exc) {
        C1317 c1317 = (C1317) this.f5058;
        C3032 c3032 = (C3032) this.f5055;
        C4905 c4905 = (C4905) this.f5057;
        if (exc != null) {
            c3032.m6578(exc);
            return;
        }
        if (this.f5056) {
            boolean z = true;
            CountDownLatch countDownLatch = new CountDownLatch(1);
            new Thread(new RunnableC0786(c1317, 6, countDownLatch)).start();
            TimeUnit timeUnit = TimeUnit.SECONDS;
            ExecutorService executorService = AbstractC4899.f18275;
            boolean z2 = false;
            try {
                long nanos = timeUnit.toNanos(2L);
                long nanoTime = System.nanoTime() + nanos;
                while (true) {
                    try {
                        try {
                            countDownLatch.await(nanos, TimeUnit.NANOSECONDS);
                            break;
                        } catch (Throwable th) {
                            th = th;
                            if (z) {
                                Thread.currentThread().interrupt();
                            }
                            throw th;
                        }
                    } catch (InterruptedException unused) {
                        nanos = nanoTime - System.nanoTime();
                        z2 = true;
                    }
                }
                if (z2) {
                    Thread.currentThread().interrupt();
                }
            } catch (Throwable th2) {
                th = th2;
                z = z2;
            }
        }
        c3032.m6577(c4905);
    }

    @Override // p428.InterfaceC5066
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public C0956 mo3946(int i, C1474 c1474, int[] iArr) {
        C5078 c5078 = (C5078) this.f5058;
        C5063 c5063 = (C5063) this.f5055;
        int[] iArr2 = (int[]) this.f5057;
        c5078.getClass();
        C5068 c5068 = new C5068(c5078, c5063);
        int i2 = iArr2[i];
        C0968 m3261 = AbstractC0993.m3261();
        for (int i3 = 0; i3 < c1474.f5770; i3++) {
            m3261.m3239(new C5080(i, c1474, i3, c5063, iArr[i3], this.f5056, c5068, i2));
        }
        return m3261.m3249();
    }
}
