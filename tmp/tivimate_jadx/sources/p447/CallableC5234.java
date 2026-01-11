package p447;

import android.os.Bundle;
import java.util.concurrent.Callable;

/* renamed from: ﹶﾞ.ʾˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class CallableC5234 implements Callable {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ Bundle f19676;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final /* synthetic */ BinderC5223 f19677;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ C5217 f19678;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f19679;

    public /* synthetic */ CallableC5234(BinderC5223 binderC5223, C5217 c5217, Bundle bundle, int i) {
        this.f19679 = i;
        this.f19678 = c5217;
        this.f19676 = bundle;
        this.f19677 = binderC5223;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Object call() {
        switch (this.f19679) {
            case 0:
                BinderC5223 binderC5223 = this.f19677;
                binderC5223.f19646.m10649();
                return binderC5223.f19646.m10626(this.f19676, this.f19678);
            default:
                BinderC5223 binderC52232 = this.f19677;
                binderC52232.f19646.m10649();
                return binderC52232.f19646.m10626(this.f19676, this.f19678);
        }
    }
}
