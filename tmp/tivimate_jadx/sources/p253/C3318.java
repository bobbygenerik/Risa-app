package p253;

import com.google.android.material.datepicker.C0671;
import java.math.RoundingMode;
import p171.C2641;
import p171.C2647;
import p171.InterfaceC2626;
import p305.AbstractC3712;

/* renamed from: יˑ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3318 implements InterfaceC2626 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final long f12774;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final long f12775;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final long f12776;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f12777;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C0671 f12778;

    public C3318(C0671 c0671, int i, long j, long j2) {
        this.f12778 = c0671;
        this.f12777 = i;
        this.f12774 = j;
        long j3 = (j2 - j) / c0671.f2738;
        this.f12775 = j3;
        this.f12776 = m7137(j3);
    }

    @Override // p171.InterfaceC2626
    /* renamed from: ˆʾ */
    public final C2647 mo2901(long j) {
        C0671 c0671 = this.f12778;
        long j2 = this.f12775;
        long m7767 = AbstractC3712.m7767((c0671.f2741 * j) / (this.f12777 * 1000000), 0L, j2 - 1);
        long j3 = this.f12774;
        long m7137 = m7137(m7767);
        C2641 c2641 = new C2641(m7137, (c0671.f2738 * m7767) + j3);
        if (m7137 >= j || m7767 == j2 - 1) {
            return new C2647(c2641, c2641);
        }
        long j4 = m7767 + 1;
        return new C2647(c2641, new C2641(m7137(j4), (c0671.f2738 * j4) + j3));
    }

    @Override // p171.InterfaceC2626
    /* renamed from: ˉʿ */
    public final long mo2903() {
        return this.f12776;
    }

    @Override // p171.InterfaceC2626
    /* renamed from: ᵔᵢ */
    public final boolean mo2907() {
        return true;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final long m7137(long j) {
        long j2 = j * this.f12777;
        long j3 = this.f12778.f2741;
        String str = AbstractC3712.f14481;
        return AbstractC3712.m7797(j2, 1000000L, j3, RoundingMode.DOWN);
    }
}
