package p113;

import p262.C3417;
import p262.C3419;
import p262.C3432;
import p322.C3965;

/* renamed from: ˆﹶ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC1979 implements Runnable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final boolean f7835;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C3417 f7836;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final int f7837;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C3432 f7838;

    public RunnableC1979(C3417 c3417, C3432 c3432, boolean z, int i) {
        this.f7836 = c3417;
        this.f7838 = c3432;
        this.f7835 = z;
        this.f7837 = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean m7307;
        C3419 m7308;
        if (this.f7835) {
            C3417 c3417 = this.f7836;
            C3432 c3432 = this.f7838;
            int i = this.f7837;
            c3417.getClass();
            String str = c3432.f13455.f12346;
            synchronized (c3417.f13417) {
                m7308 = c3417.m7308(str);
            }
            m7307 = C3417.m7303(str, m7308, i);
        } else {
            m7307 = this.f7836.m7307(this.f7838, this.f7837);
        }
        C3965.m8127().m8133(C3965.m8128("StopWorkRunnable"), "StopWorkRunnable for " + this.f7838.f13455.f12346 + "; Processor.stopWork = " + m7307);
    }
}
