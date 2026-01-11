package p447;

import java.util.concurrent.Callable;

/* renamed from: ﹶﾞ.י, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class CallableC5289 implements Callable {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ String f19956;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final /* synthetic */ String f19957;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final /* synthetic */ BinderC5223 f19958;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ String f19959;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f19960;

    public /* synthetic */ CallableC5289(BinderC5223 binderC5223, String str, String str2, String str3, int i) {
        this.f19960 = i;
        this.f19959 = str;
        this.f19956 = str2;
        this.f19957 = str3;
        this.f19958 = binderC5223;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        switch (this.f19960) {
            case 0:
                BinderC5223 binderC5223 = this.f19958;
                binderC5223.f19646.m10649();
                C5257 c5257 = binderC5223.f19646.f20275;
                C5337.m10599(c5257);
                return c5257.m10410(this.f19959, this.f19956, this.f19957);
            case 1:
                BinderC5223 binderC52232 = this.f19958;
                binderC52232.f19646.m10649();
                C5257 c52572 = binderC52232.f19646.f20275;
                C5337.m10599(c52572);
                return c52572.m10410(this.f19959, this.f19956, this.f19957);
            case 2:
                BinderC5223 binderC52233 = this.f19958;
                binderC52233.f19646.m10649();
                C5257 c52573 = binderC52233.f19646.f20275;
                C5337.m10599(c52573);
                return c52573.m10427(this.f19959, this.f19956, this.f19957);
            default:
                BinderC5223 binderC52234 = this.f19958;
                binderC52234.f19646.m10649();
                C5257 c52574 = binderC52234.f19646.f20275;
                C5337.m10599(c52574);
                return c52574.m10427(this.f19959, this.f19956, this.f19957);
        }
    }
}
