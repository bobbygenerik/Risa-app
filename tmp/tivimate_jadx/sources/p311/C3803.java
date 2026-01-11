package p311;

import java.io.IOException;
import java.lang.reflect.Method;
import p208.AbstractC2944;

/* renamed from: ᐧᵢ.ˈٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3803 extends AbstractC3798 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Method f14721;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f14722;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final InterfaceC3837 f14723;

    public C3803(Method method, int i, InterfaceC3837 interfaceC3837) {
        this.f14721 = method;
        this.f14722 = i;
        this.f14723 = interfaceC3837;
    }

    @Override // p311.AbstractC3798
    /* renamed from: ﹳٴ */
    public final void mo7958(C3813 c3813, Object obj) {
        int i = this.f14722;
        Method method = this.f14721;
        if (obj == null) {
            throw AbstractC3798.m7964(method, i, "Body parameter value must not be null.", new Object[0]);
        }
        try {
            c3813.f14790 = (AbstractC2944) this.f14723.mo8000(obj);
        } catch (IOException e) {
            throw AbstractC3798.m7969(method, e, i, "Unable to convert " + obj + " to RequestBody", new Object[0]);
        }
    }
}
