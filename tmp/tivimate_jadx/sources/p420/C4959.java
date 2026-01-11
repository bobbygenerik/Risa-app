package p420;

import p012.C0894;
import p055.C1480;
import p075.C1652;
import p171.C2631;
import p266.InterfaceC3452;
import p283.C3569;
import p305.AbstractC3731;
import p395.InterfaceC4721;
import ˋⁱ.ﾞᴵ;

/* renamed from: ﹳᵢ.ˊˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4959 implements InterfaceC4937 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public InterfaceC4721 f18437;

    /* renamed from: ˈ, reason: contains not printable characters */
    public C0894 f18438;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f18439;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C3569 f18440;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC3452 f18441;

    public C4959(InterfaceC3452 interfaceC3452, C2631 c2631) {
        C3569 c3569 = new C3569(27, c2631);
        C1652 c1652 = new C1652(3);
        C0894 c0894 = new C0894();
        this.f18441 = interfaceC3452;
        this.f18440 = c3569;
        this.f18437 = c1652;
        this.f18438 = c0894;
        this.f18439 = 1048576;
    }

    @Override // p420.InterfaceC4937
    /* renamed from: ʽ */
    public final InterfaceC4975 mo788(C1480 c1480) {
        c1480.f5781.getClass();
        return new C4938(c1480, this.f18441, this.f18440, this.f18437.mo4513(c1480), this.f18438, this.f18439, null);
    }

    @Override // p420.InterfaceC4937
    /* renamed from: ˈ */
    public final InterfaceC4937 mo789(InterfaceC4721 interfaceC4721) {
        AbstractC3731.m7862(interfaceC4721, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior.");
        this.f18437 = interfaceC4721;
        return this;
    }

    @Override // p420.InterfaceC4937
    /* renamed from: ˑﹳ */
    public final InterfaceC4937 mo790(C0894 c0894) {
        AbstractC3731.m7862(c0894, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior.");
        this.f18438 = c0894;
        return this;
    }

    @Override // p420.InterfaceC4937
    /* renamed from: ⁱˊ */
    public final InterfaceC4937 mo791() {
        return this;
    }

    @Override // p420.InterfaceC4937
    /* renamed from: ﹳٴ */
    public final InterfaceC4937 mo792(boolean z) {
        return this;
    }

    @Override // p420.InterfaceC4937
    /* renamed from: ﾞᴵ */
    public final InterfaceC4937 mo793(ﾞᴵ r1) {
        return this;
    }
}
