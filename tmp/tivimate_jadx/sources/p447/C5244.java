package p447;

import android.content.Intent;
import android.os.SystemClock;
import p004.C0796;
import ʽⁱ.ᵎﹶ;

/* renamed from: ﹶﾞ.ˆʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5244 extends AbstractC5328 {

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final /* synthetic */ int f19754;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final /* synthetic */ Object f19755;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C5244(Object obj, InterfaceC5296 interfaceC5296, int i) {
        super(interfaceC5296);
        this.f19754 = i;
        this.f19755 = obj;
    }

    @Override // p447.AbstractC5328
    /* renamed from: ﹳٴ */
    public final void mo10248() {
        switch (this.f19754) {
            case 0:
                C0796 c0796 = (C0796) this.f19755;
                C5256 c5256 = (C5256) c0796.f3353;
                c5256.m10252();
                C5322 c5322 = (C5322) ((ᵎﹶ) c5256).ʾˋ;
                c5322.f20206.getClass();
                c0796.m2914(SystemClock.elapsedRealtime(), false, false);
                C5298 c5298 = c5322.f20210;
                C5322.m10558(c5298);
                c5322.f20206.getClass();
                c5298.m10499(SystemClock.elapsedRealtime());
                return;
            case 1:
                C5214 c5214 = (C5214) this.f19755;
                c5214.m10189();
                C5344 c5344 = ((C5322) ((ᵎﹶ) c5214).ʾˋ).f20193;
                C5322.m10556(c5344);
                c5344.f20350.m10217("Starting upload from DelayedRunnable");
                c5214.f19910.m10617();
                return;
            default:
                C5337 c5337 = (C5337) this.f19755;
                c5337.mo10495().m10203();
                String str = (String) c5337.f20289.pollFirst();
                if (str != null) {
                    c5337.mo10493().getClass();
                    c5337.f20281 = SystemClock.elapsedRealtime();
                    c5337.mo10494().f20350.m10216(str, "Sending trigger URI notification to app");
                    Intent intent = new Intent();
                    intent.setAction("com.google.android.gms.measurement.TRIGGERS_AVAILABLE");
                    intent.setPackage(str);
                    C5337.m10592(c5337.f20305.f20184, intent);
                }
                c5337.m10621();
                return;
        }
    }
}
