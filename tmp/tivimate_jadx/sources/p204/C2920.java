package p204;

import p126.InterfaceC2139;
import p324.C3997;
import p324.InterfaceC4023;
import p324.InterfaceC4036;

/* renamed from: ˎᐧ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2920 implements AutoCloseable, InterfaceC4023 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final InterfaceC2139 f11043;

    public C2920(InterfaceC2139 interfaceC2139) {
        this.f11043 = interfaceC2139;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        InterfaceC4036 interfaceC4036 = (InterfaceC4036) this.f11043.mo3419(C3997.f15367);
        if (interfaceC4036 != null) {
            interfaceC4036.mo3899(null);
        }
    }

    @Override // p324.InterfaceC4023
    /* renamed from: ʾˋ */
    public final InterfaceC2139 mo678() {
        return this.f11043;
    }
}
