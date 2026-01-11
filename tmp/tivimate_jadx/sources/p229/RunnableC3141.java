package p229;

/* renamed from: ˑʼ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC3141 implements Runnable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ C3095 f12021;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f12022;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C3081 f12023;

    public /* synthetic */ RunnableC3141(C3081 c3081, C3095 c3095, int i) {
        this.f12022 = i;
        this.f12023 = c3081;
        this.f12021 = c3095;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f12022) {
            case 0:
                boolean m6654 = C3085.m6654(2);
                C3081 c3081 = this.f12023;
                if (m6654) {
                    String str = "Transition for operation " + c3081 + " has completed";
                }
                c3081.m6643(this.f12021);
                return;
            default:
                boolean m66542 = C3085.m6654(2);
                C3081 c30812 = this.f12023;
                if (m66542) {
                    String str2 = "Transition for operation " + c30812 + " has completed";
                }
                c30812.m6643(this.f12021);
                return;
        }
    }
}
