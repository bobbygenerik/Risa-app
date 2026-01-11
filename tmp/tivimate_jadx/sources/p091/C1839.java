package p091;

import p137.AbstractC2305;
import p324.AbstractC3999;

/* renamed from: ʿⁱ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1839 extends AbstractRunnableC1846 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final Runnable f7402;

    public C1839(Runnable runnable, long j, boolean z) {
        super(z, j);
        this.f7402 = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f7402.run();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Task[");
        Runnable runnable = this.f7402;
        sb.append(runnable.getClass().getSimpleName());
        sb.append('@');
        sb.append(AbstractC3999.m8173(runnable));
        sb.append(", ");
        sb.append(this.f7414);
        sb.append(", ");
        return AbstractC2305.m5384(sb, this.f7415 ? "Blocking" : "Non-blocking", ']');
    }
}
