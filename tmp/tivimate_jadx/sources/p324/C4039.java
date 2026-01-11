package p324;

/* renamed from: ᴵי.ᵎˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4039 extends AbstractRunnableC4003 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C4030 f15426;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC4005 f15427;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4039(AbstractC4005 abstractC4005, long j, C4030 c4030) {
        super(j);
        this.f15427 = abstractC4005;
        this.f15426 = c4030;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f15426.m8215(this.f15427);
    }

    @Override // p324.AbstractRunnableC4003
    public final String toString() {
        return super.toString() + this.f15426;
    }
}
