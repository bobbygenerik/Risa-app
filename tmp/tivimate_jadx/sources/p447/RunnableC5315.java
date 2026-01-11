package p447;

import android.os.Bundle;
import j$.util.Objects;
import ʽⁱ.ᵎﹶ;

/* renamed from: ﹶﾞ.ᐧﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC5315 implements Runnable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ Object f20046;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f20047;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ long f20048;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final /* synthetic */ Object f20049;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f20050;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ Object f20051;

    public /* synthetic */ RunnableC5315(Object obj, String str, String str2, Object obj2, long j, int i) {
        this.f20047 = i;
        this.f20050 = str;
        this.f20046 = str2;
        this.f20051 = obj2;
        this.f20048 = j;
        this.f20049 = obj;
    }

    public RunnableC5315(C5356 c5356, Bundle bundle, C5351 c5351, C5351 c53512, long j) {
        this.f20047 = 2;
        this.f20050 = bundle;
        this.f20046 = c5351;
        this.f20051 = c53512;
        this.f20048 = j;
        Objects.requireNonNull(c5356);
        this.f20049 = c5356;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f20047) {
            case 0:
                String str = (String) this.f20046;
                BinderC5223 binderC5223 = (BinderC5223) this.f20049;
                String str2 = (String) this.f20050;
                if (str2 == null) {
                    C5337 c5337 = binderC5223.f19646;
                    c5337.mo10495().m10203();
                    String str3 = c5337.f20288;
                    if (str3 == null || str3.equals(str)) {
                        c5337.f20288 = str;
                        c5337.f20273 = null;
                        return;
                    }
                    return;
                }
                C5351 c5351 = new C5351(this.f20048, (String) this.f20051, str2);
                C5337 c53372 = binderC5223.f19646;
                c53372.mo10495().m10203();
                String str4 = c53372.f20288;
                if (str4 != null) {
                    str4.equals(str);
                }
                c53372.f20288 = str;
                c53372.f20273 = c5351;
                return;
            case 1:
                C5253 c5253 = (C5253) this.f20049;
                String str5 = (String) this.f20050;
                String str6 = (String) this.f20046;
                c5253.m10384(this.f20048, this.f20051, str5, str6);
                return;
            default:
                C5356 c5356 = (C5356) this.f20049;
                Bundle bundle = (Bundle) this.f20050;
                C5351 c53512 = (C5351) this.f20046;
                C5351 c53513 = (C5351) this.f20051;
                c5356.getClass();
                bundle.remove("screen_name");
                bundle.remove("screen_class");
                C5339 c5339 = ((C5322) ((ᵎﹶ) c5356).ʾˋ).f20208;
                C5322.m10560(c5339);
                c5356.m10742(c53512, c53513, this.f20048, true, c5339.m10693("screen_view", bundle, null, false));
                return;
        }
    }
}
