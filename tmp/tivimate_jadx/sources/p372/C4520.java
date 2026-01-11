package p372;

import p055.C1495;
import p171.C2651;
import p171.InterfaceC2626;
import p262.C3433;
import p266.C3446;
import p266.C3456;
import p266.InterfaceC3462;
import p305.AbstractC3731;
import ˈˆ.ﾞᴵ;

/* renamed from: ᵢˋ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4520 extends AbstractC4519 {

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public volatile boolean f16908;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final C4517 f16909;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public C3433 f16910;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public long f16911;

    public C4520(InterfaceC3462 interfaceC3462, C3456 c3456, C1495 c1495, int i, Object obj, C4517 c4517) {
        super(interfaceC3462, c3456, 2, c1495, i, obj, -9223372036854775807L, -9223372036854775807L);
        this.f16909 = c4517;
    }

    @Override // p364.InterfaceC4445
    /* renamed from: ʽ */
    public final void mo5106() {
        if (this.f16911 == 0) {
            this.f16909.m9089(this.f16910, -9223372036854775807L, -9223372036854775807L);
        }
        try {
            C3456 m7363 = this.f16905.m7363(this.f16911);
            C3446 c3446 = this.f16907;
            C2651 c2651 = new C2651(c3446, m7363.f13573, c3446.mo4684(m7363));
            while (!this.f16908) {
                try {
                    int mo2904 = this.f16909.f16890.mo2904(c2651, C4517.f16888);
                    boolean z = false;
                    AbstractC3731.m7857(mo2904 != 1);
                    if (mo2904 == 0) {
                        z = true;
                    }
                    if (!z) {
                        break;
                    }
                } finally {
                    this.f16911 = c2651.f10069 - this.f16905.f13573;
                    InterfaceC2626 interfaceC2626 = this.f16909.f16892;
                }
            }
        } finally {
            ﾞᴵ.ﾞᴵ(this.f16907);
        }
    }

    @Override // p364.InterfaceC4445
    /* renamed from: ʽﹳ */
    public final void mo5107() {
        this.f16908 = true;
    }
}
