package p324;

import kotlinx.coroutines.TimeoutCancellationException;
import p153.C2480;
import p307.AbstractC3740;
import p316.AbstractC3902;

/* renamed from: ᴵי.ʻˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC3987 extends C2480 implements Runnable {

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final long f15356;

    public RunnableC3987(long j, AbstractC3902 abstractC3902) {
        super(abstractC3902, abstractC3902.mo3551());
        this.f15356 = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC3999.m8165(this.f15440);
        m8256(new TimeoutCancellationException("Timed out waiting for " + this.f15356 + " ms", this));
    }

    @Override // p324.C4031
    /* renamed from: ˊˋ, reason: contains not printable characters */
    public final String mo8144() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.mo8144());
        sb.append("(timeMillis=");
        return AbstractC3740.m7941(sb, this.f15356, ')');
    }
}
