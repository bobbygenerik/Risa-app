package p324;

/* renamed from: ᴵי.ᵔי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4044 extends AbstractRunnableC4003 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final RunnableC3987 f15433;

    public C4044(long j, RunnableC3987 runnableC3987) {
        super(j);
        this.f15433 = runnableC3987;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f15433.run();
    }

    @Override // p324.AbstractRunnableC4003
    public final String toString() {
        return super.toString() + this.f15433;
    }
}
