package p118;

import p085.C1734;
import p085.InterfaceC1736;

/* renamed from: ˈʾ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1997 implements InterfaceC1736 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public C1734 f7863;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C1996 f7864;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public boolean f7866 = false;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public boolean f7865 = false;

    public C1997(C1996 c1996) {
        this.f7864 = c1996;
    }

    @Override // p085.InterfaceC1736
    /* renamed from: ˈ */
    public final InterfaceC1736 mo4682(String str) {
        if (this.f7866) {
            throw new RuntimeException("Cannot encode a second value in the ValueEncoderContext");
        }
        this.f7866 = true;
        this.f7864.m4978(this.f7863, str, this.f7865);
        return this;
    }

    @Override // p085.InterfaceC1736
    /* renamed from: ˑﹳ */
    public final InterfaceC1736 mo4683(boolean z) {
        if (this.f7866) {
            throw new RuntimeException("Cannot encode a second value in the ValueEncoderContext");
        }
        this.f7866 = true;
        this.f7864.m4976(this.f7863, z ? 1 : 0, this.f7865);
        return this;
    }
}
