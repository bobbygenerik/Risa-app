package p372;

import p055.C1495;
import p171.C2651;
import p171.InterfaceC2639;
import p262.C3433;
import p266.C3446;
import p266.C3456;
import p266.InterfaceC3462;
import p305.AbstractC3731;
import p420.C4976;
import ˈˆ.ﾞᴵ;

/* renamed from: ᵢˋ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4522 extends AbstractC4525 {

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final int f16912;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public boolean f16913;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public long f16914;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public final C1495 f16915;

    public C4522(InterfaceC3462 interfaceC3462, C3456 c3456, C1495 c1495, int i, Object obj, long j, long j2, long j3, int i2, C1495 c14952) {
        super(interfaceC3462, c3456, c1495, i, obj, j, j2, -9223372036854775807L, -9223372036854775807L, j3);
        this.f16912 = i2;
        this.f16915 = c14952;
    }

    @Override // p364.InterfaceC4445
    /* renamed from: ʽ */
    public final void mo5106() {
        C3446 c3446 = this.f16907;
        C3433 c3433 = this.f16944;
        AbstractC3731.m7868(c3433);
        for (C4976 c4976 : (C4976[]) c3433.f13456) {
            if (c4976.f18546 != 0) {
                c4976.f18546 = 0L;
                c4976.f18559 = true;
            }
        }
        InterfaceC2639 m7341 = c3433.m7341(this.f16912);
        m7341.mo4108(this.f16915);
        try {
            long mo4684 = c3446.mo4684(this.f16905.m7363(this.f16914));
            if (mo4684 != -1) {
                mo4684 += this.f16914;
            }
            C2651 c2651 = new C2651(this.f16907, this.f16914, mo4684);
            for (int i = 0; i != -1; i = m7341.mo4107(c2651, Integer.MAX_VALUE, true)) {
                this.f16914 += i;
            }
            m7341.mo4112(this.f16904, 1, (int) this.f16914, 0, null);
            ﾞᴵ.ﾞᴵ(c3446);
            this.f16913 = true;
        } catch (Throwable th) {
            ﾞᴵ.ﾞᴵ(c3446);
            throw th;
        }
    }

    @Override // p364.InterfaceC4445
    /* renamed from: ʽﹳ */
    public final void mo5107() {
    }

    @Override // p372.AbstractC4526
    /* renamed from: ⁱˊ */
    public final boolean mo9087() {
        return this.f16913;
    }
}
