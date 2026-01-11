package p379;

import p008.C0838;
import p317.InterfaceC3912;
import p354.AbstractC4334;
import p354.C4332;
import p408.C4839;

/* renamed from: ᵢᵢ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4544 implements InterfaceC3912 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f17029;

    /* JADX WARN: Type inference failed for: r0v6, types: [ᵔʿ.ⁱˊ, java.lang.Object, ᵔʿ.ﹳٴ] */
    /* JADX WARN: Type inference failed for: r1v1, types: [ˏˉ.ⁱˊ, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v3, types: [ᵔʿ.ʽ, ᵔʿ.ﹳٴ] */
    /* JADX WARN: Type inference failed for: r2v0, types: [ˏˉ.ﹳٴ, java.lang.Object] */
    @Override // p317.InterfaceC3912
    /* renamed from: ﹳٴ */
    public final Object mo8085() {
        switch (this.f17029) {
            case 0:
                ?? obj = new Object();
                obj.f11506 = null;
                C0838 c0838 = new C0838();
                c0838.f3576 = obj;
                c0838.f3575 = new byte[8];
                c0838.f3577 = 0;
                c0838.f3574 = false;
                C4545 c4545 = new C4545(0);
                c4545.f17030 = c0838;
                return c4545;
            case 1:
                ?? obj2 = new Object();
                obj2.f11492 = null;
                obj2.f11491 = 0;
                obj2.f11489 = 0;
                obj2.f11490 = null;
                C4545 c45452 = new C4545(1);
                c45452.f17030 = obj2;
                return c45452;
            case 2:
                return new C4839(new C4332());
            case 3:
                ?? abstractC4334 = new AbstractC4334();
                abstractC4334.f16106 = new int[16];
                abstractC4334.mo8762();
                return new C4839(abstractC4334);
            case 4:
                return new C4332();
            default:
                ?? abstractC43342 = new AbstractC4334();
                abstractC43342.f16123 = new int[16];
                abstractC43342.mo8762();
                return abstractC43342;
        }
    }
}
