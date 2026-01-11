package p089;

import p013.C0907;
import p041.InterfaceC1294;
import p041.InterfaceC1305;
import p126.InterfaceC2136;
import p340.InterfaceC4256;
import p373.EnumC4532;

/* renamed from: ʿᵔ.ᵔﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1767 implements InterfaceC4256 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final InterfaceC1294 f7150;

    public C1767(InterfaceC1305 interfaceC1305) {
        this.f7150 = interfaceC1305;
    }

    @Override // p340.InterfaceC4256
    /* renamed from: ﹳٴ */
    public final Object mo3399(Object obj, InterfaceC2136 interfaceC2136) {
        Object mo3891 = this.f7150.mo3891(obj, interfaceC2136);
        return mo3891 == EnumC4532.f16960 ? mo3891 : C0907.f3832;
    }
}
