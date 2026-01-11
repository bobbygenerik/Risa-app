package p186;

import android.view.WindowInsets;
import p349.C4292;

/* renamed from: ˋᵔ.ᐧᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C2815 extends AbstractC2797 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final WindowInsets.Builder f10587;

    public C2815() {
        this.f10587 = AbstractC2817.m6260();
    }

    public C2815(C2816 c2816) {
        super(c2816);
        WindowInsets m6258 = c2816.m6258();
        this.f10587 = m6258 != null ? AbstractC2817.m6259(m6258) : AbstractC2817.m6260();
    }

    @Override // p186.AbstractC2797
    /* renamed from: ˈ */
    public void mo6219(C4292 c4292) {
        this.f10587.setMandatorySystemGestureInsets(c4292.m8695());
    }

    @Override // p186.AbstractC2797
    /* renamed from: ˑﹳ */
    public void mo6220(C4292 c4292) {
        this.f10587.setStableInsets(c4292.m8695());
    }

    @Override // p186.AbstractC2797
    /* renamed from: ᵎﹶ */
    public void mo6221(C4292 c4292) {
        this.f10587.setSystemWindowInsets(c4292.m8695());
    }

    @Override // p186.AbstractC2797
    /* renamed from: ᵔᵢ */
    public void mo6222(C4292 c4292) {
        this.f10587.setTappableElementInsets(c4292.m8695());
    }

    @Override // p186.AbstractC2797
    /* renamed from: ⁱˊ */
    public C2816 mo6223() {
        m6224();
        C2816 m6253 = C2816.m6253(null, this.f10587.build());
        m6253.f10589.mo6242(this.f10548);
        return m6253;
    }

    @Override // p186.AbstractC2797
    /* renamed from: ﾞᴵ */
    public void mo6225(C4292 c4292) {
        this.f10587.setSystemGestureInsets(c4292.m8695());
    }
}
