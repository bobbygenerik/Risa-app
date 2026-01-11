package p420;

/* renamed from: ﹳᵢ.ᵔי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC4983 implements Runnable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f18603;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C4961 f18604;

    public /* synthetic */ RunnableC4983(C4961 c4961, int i) {
        this.f18603 = i;
        this.f18604 = c4961;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f18603) {
            case 0:
                this.f18604.f18454 = true;
                return;
            case 1:
                this.f18604.m9780();
                return;
            default:
                C4961 c4961 = this.f18604;
                if (c4961.f18477) {
                    return;
                }
                InterfaceC4967 interfaceC4967 = c4961.f18460;
                interfaceC4967.getClass();
                interfaceC4967.mo6998(c4961);
                return;
        }
    }
}
