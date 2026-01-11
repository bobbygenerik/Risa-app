package p447;

/* renamed from: ﹶﾞ.ʽˑ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC5229 implements Runnable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ long f19661;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f19662;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ boolean f19663;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C5311 f19664;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ C5253 f19665;

    public /* synthetic */ RunnableC5229(C5253 c5253, C5311 c5311, long j, boolean z, int i) {
        this.f19662 = i;
        this.f19664 = c5311;
        this.f19661 = j;
        this.f19663 = z;
        this.f19665 = c5253;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f19662) {
            case 0:
                C5253 c5253 = this.f19665;
                C5311 c5311 = this.f19664;
                c5253.m10366(c5311);
                c5253.m10381(c5311, this.f19661, this.f19663);
                return;
            default:
                C5253 c52532 = this.f19665;
                C5311 c53112 = this.f19664;
                c52532.m10366(c53112);
                c52532.m10381(c53112, this.f19661, this.f19663);
                return;
        }
    }
}
