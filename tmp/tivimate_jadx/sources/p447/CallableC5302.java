package p447;

import j$.util.Objects;
import java.util.concurrent.Callable;
import p296.AbstractC3659;

/* renamed from: ﹶﾞ.ـᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class CallableC5302 implements Callable {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ Object f19984;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f19985;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f19986;

    public /* synthetic */ CallableC5302(BinderC5223 binderC5223, Object obj, int i) {
        this.f19986 = i;
        this.f19984 = obj;
        this.f19985 = binderC5223;
    }

    public CallableC5302(C5337 c5337, C5217 c5217) {
        this.f19986 = 2;
        this.f19984 = c5217;
        Objects.requireNonNull(c5337);
        this.f19985 = c5337;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        switch (this.f19986) {
            case 0:
                BinderC5223 binderC5223 = (BinderC5223) this.f19985;
                binderC5223.f19646.m10649();
                C5257 c5257 = binderC5223.f19646.f20275;
                C5337.m10599(c5257);
                return c5257.m10430((String) this.f19984);
            case 1:
                BinderC5223 binderC52232 = (BinderC5223) this.f19985;
                binderC52232.f19646.m10649();
                return new C5222(binderC52232.f19646.m10631(((C5217) this.f19984).f19597));
            default:
                C5217 c5217 = (C5217) this.f19984;
                String str = c5217.f19597;
                AbstractC3659.m7687(str);
                C5337 c5337 = (C5337) this.f19985;
                C5311 m10651 = c5337.m10651(str);
                EnumC5341 enumC5341 = EnumC5341.f20321;
                if (m10651.m10537(enumC5341) && C5311.m10530(100, c5217.f19595).m10537(enumC5341)) {
                    return c5337.m10637(c5217).m10340();
                }
                c5337.mo10494().f20350.m10217("Analytics storage consent denied. Returning null app instance id");
                return null;
        }
    }
}
