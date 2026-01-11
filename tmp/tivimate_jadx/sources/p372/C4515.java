package p372;

import p055.C1495;
import p055.InterfaceC1455;
import p137.AbstractC2305;
import p171.C2634;
import p171.C2644;
import p171.InterfaceC2639;
import p305.AbstractC3712;
import p305.C3732;

/* renamed from: ᵢˋ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4515 implements InterfaceC2639 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C2644 f16876 = new C2644();

    /* renamed from: ˈ, reason: contains not printable characters */
    public C1495 f16877;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public InterfaceC2639 f16878;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C1495 f16879;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f16880;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public long f16881;

    public C4515(int i, int i2, C1495 c1495) {
        this.f16880 = i2;
        this.f16879 = c1495;
    }

    @Override // p171.InterfaceC2639
    /* renamed from: ʽ */
    public final int mo4107(InterfaceC1455 interfaceC1455, int i, boolean z) {
        return mo4113(interfaceC1455, i, z);
    }

    @Override // p171.InterfaceC2639
    /* renamed from: ˈ */
    public final void mo4108(C1495 c1495) {
        C1495 c14952 = this.f16879;
        if (c14952 != null) {
            c1495 = c1495.m4298(c14952);
        }
        this.f16877 = c1495;
        InterfaceC2639 interfaceC2639 = this.f16878;
        String str = AbstractC3712.f14481;
        interfaceC2639.mo4108(c1495);
    }

    @Override // p171.InterfaceC2639
    /* renamed from: ˑﹳ */
    public final /* synthetic */ void mo4109(int i, C3732 c3732) {
        AbstractC2305.m5382(this, c3732, i);
    }

    @Override // p171.InterfaceC2639
    /* renamed from: ⁱˊ */
    public final void mo4111(C3732 c3732, int i, int i2) {
        InterfaceC2639 interfaceC2639 = this.f16878;
        String str = AbstractC3712.f14481;
        interfaceC2639.mo4109(i, c3732);
    }

    @Override // p171.InterfaceC2639
    /* renamed from: ﹳٴ */
    public final void mo4112(long j, int i, int i2, int i3, C2634 c2634) {
        long j2 = this.f16881;
        if (j2 != -9223372036854775807L && j >= j2) {
            this.f16878 = this.f16876;
        }
        InterfaceC2639 interfaceC2639 = this.f16878;
        String str = AbstractC3712.f14481;
        interfaceC2639.mo4112(j, i, i2, i3, c2634);
    }

    @Override // p171.InterfaceC2639
    /* renamed from: ﾞᴵ */
    public final int mo4113(InterfaceC1455 interfaceC1455, int i, boolean z) {
        InterfaceC2639 interfaceC2639 = this.f16878;
        String str = AbstractC3712.f14481;
        return interfaceC2639.mo4107(interfaceC1455, i, z);
    }
}
