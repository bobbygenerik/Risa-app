package p447;

import com.google.android.gms.internal.measurement.C0444;
import p179.C2713;
import p296.AbstractC3659;
import ʽⁱ.ᵎﹶ;
import ᵢ.ﹳٴ;

/* renamed from: ﹶﾞ.ʻᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5219 extends C2713 {

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final /* synthetic */ C5304 f19637;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5219(C5304 c5304) {
        super(20);
        this.f19637 = c5304;
    }

    @Override // p179.C2713
    /* renamed from: ʽ */
    public final Object mo6083(Object obj) {
        String str = (String) obj;
        AbstractC3659.m7680(str);
        C5304 c5304 = this.f19637;
        c5304.m10466();
        AbstractC3659.m7680(str);
        C5257 c5257 = c5304.f19910.f20275;
        C5337.m10599(c5257);
        ﹳٴ m10440 = c5257.m10440(str);
        if (m10440 == null) {
            return null;
        }
        C5344 c5344 = ((C5322) ((ᵎﹶ) c5304).ʾˋ).f20193;
        C5322.m10556(c5344);
        c5344.f20350.m10216(str, "Populate EES config from database on cache miss. appId");
        c5304.m10510(str, c5304.m10512(str, (byte[]) m10440.ˈٴ));
        return (C0444) c5304.f19999.m6091().get(str);
    }
}
