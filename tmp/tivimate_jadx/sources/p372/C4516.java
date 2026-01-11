package p372;

import p055.AbstractC1464;
import p055.C1495;
import p171.C2651;
import p171.InterfaceC2639;
import p262.C3433;
import p266.C3446;
import p266.C3456;
import p266.InterfaceC3462;
import p305.AbstractC3731;
import p305.C3732;
import p420.C4976;
import ˈˆ.ﾞᴵ;

/* renamed from: ᵢˋ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4516 extends AbstractC4525 {

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public volatile boolean f16882;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final int f16883;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public long f16884;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public final C4517 f16885;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public final long f16886;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public boolean f16887;

    public C4516(InterfaceC3462 interfaceC3462, C3456 c3456, C1495 c1495, int i, Object obj, long j, long j2, long j3, long j4, long j5, int i2, long j6, C4517 c4517) {
        super(interfaceC3462, c3456, c1495, i, obj, j, j2, j3, j4, j5);
        this.f16883 = i2;
        this.f16886 = j6;
        this.f16885 = c4517;
    }

    @Override // p364.InterfaceC4445
    /* renamed from: ʽ */
    public final void mo5106() {
        C3433 c3433 = this.f16944;
        AbstractC3731.m7868(c3433);
        if (this.f16884 == 0) {
            long j = this.f16886;
            for (C4976 c4976 : (C4976[]) c3433.f13456) {
                if (c4976.f18546 != j) {
                    c4976.f18546 = j;
                    c4976.f18559 = true;
                }
            }
            C4517 c4517 = this.f16885;
            long j2 = this.f16945;
            long j3 = j2 == -9223372036854775807L ? -9223372036854775807L : j2 - this.f16886;
            long j4 = this.f16946;
            c4517.m9089(c3433, j3, j4 != -9223372036854775807L ? j4 - this.f16886 : -9223372036854775807L);
        }
        try {
            C3456 m7363 = this.f16905.m7363(this.f16884);
            C3446 c3446 = this.f16907;
            C2651 c2651 = new C2651(c3446, m7363.f13573, c3446.mo4684(m7363));
            while (!this.f16882) {
                try {
                    int mo2904 = this.f16885.f16890.mo2904(c2651, C4517.f16888);
                    AbstractC3731.m7857(mo2904 != 1);
                    if (!(mo2904 == 0)) {
                        break;
                    }
                } finally {
                    this.f16884 = c2651.f10069 - this.f16905.f13573;
                }
            }
            C1495 c1495 = this.f16901;
            String str = c1495.f5913;
            int i = c1495.f5909;
            int i2 = c1495.f5932;
            if (AbstractC1464.m4255(str) && ((i > 1 || i2 > 1) && i != -1 && i2 != -1)) {
                InterfaceC2639 m7341 = c3433.m7341(4);
                int i3 = i * i2;
                long j5 = (this.f16902 - this.f16904) / i3;
                for (int i4 = 1; i4 < i3; i4++) {
                    m7341.mo4109(0, new C3732());
                    m7341.mo4112(i4 * j5, 0, 0, 0, null);
                }
            }
            ﾞᴵ.ﾞᴵ(this.f16907);
            this.f16887 = !this.f16882;
        } catch (Throwable th) {
            ﾞᴵ.ﾞᴵ(this.f16907);
            throw th;
        }
    }

    @Override // p364.InterfaceC4445
    /* renamed from: ʽﹳ */
    public final void mo5107() {
        this.f16882 = true;
    }

    @Override // p372.AbstractC4526
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean mo9087() {
        return this.f16887;
    }

    @Override // p372.AbstractC4526
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final long mo9088() {
        return this.f16948 + this.f16883;
    }
}
