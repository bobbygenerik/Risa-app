package p253;

import androidx.media3.common.ParserException;
import com.google.android.material.datepicker.C0671;
import java.math.RoundingMode;
import p055.AbstractC1464;
import p055.C1490;
import p055.C1495;
import p171.InterfaceC2622;
import p171.InterfaceC2639;
import p171.InterfaceC2646;
import p305.AbstractC3712;

/* renamed from: יˑ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3313 implements InterfaceC3316 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public long f12743;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f12744;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public Object f12745;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public Object f12746;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public Object f12747;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public long f12748;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int f12749;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public Object f12750;

    public C3313(InterfaceC2646 interfaceC2646, InterfaceC2639 interfaceC2639, C0671 c0671, String str, int i) {
        this.f12745 = interfaceC2646;
        this.f12750 = interfaceC2639;
        this.f12746 = c0671;
        int i2 = c0671.f2739;
        int i3 = c0671.f2741;
        int i4 = (c0671.f2740 * i2) / 8;
        int i5 = c0671.f2738;
        if (i5 != i4) {
            throw ParserException.m741(null, "Expected block size: " + i4 + "; got: " + i5);
        }
        int i6 = i3 * i4;
        int i7 = i6 * 8;
        int max = Math.max(i4, i6 / 10);
        this.f12749 = max;
        C1490 c1490 = new C1490();
        c1490.f5886 = AbstractC1464.m4251("audio/wav");
        c1490.f5861 = AbstractC1464.m4251(str);
        c1490.f5880 = i7;
        c1490.f5850 = i7;
        c1490.f5877 = max;
        c1490.f5873 = i2;
        c1490.f5864 = i3;
        c1490.f5870 = i;
        this.f12747 = new C1495(c1490);
    }

    @Override // p253.InterfaceC3316
    /* renamed from: ʽ, reason: contains not printable characters */
    public void mo7131(long j) {
        this.f12748 = j;
        this.f12744 = 0;
        this.f12743 = 0L;
    }

    @Override // p253.InterfaceC3316
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public void mo7132(int i, long j) {
        ((InterfaceC2646) this.f12745).mo1133(new C3318((C0671) this.f12746, 1, i, j));
        ((InterfaceC2639) this.f12750).mo4108((C1495) this.f12747);
    }

    @Override // p253.InterfaceC3316
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public boolean mo7133(InterfaceC2622 interfaceC2622, long j) {
        int i;
        int i2;
        long j2 = j;
        while (j2 > 0 && (i = this.f12744) < (i2 = this.f12749)) {
            int mo4107 = ((InterfaceC2639) this.f12750).mo4107(interfaceC2622, (int) Math.min(i2 - i, j2), true);
            if (mo4107 == -1) {
                j2 = 0;
            } else {
                this.f12744 += mo4107;
                j2 -= mo4107;
            }
        }
        C0671 c0671 = (C0671) this.f12746;
        int i3 = c0671.f2738;
        int i4 = this.f12744 / i3;
        if (i4 > 0) {
            long j3 = this.f12748;
            long j4 = this.f12743;
            long j5 = c0671.f2741;
            String str = AbstractC3712.f14481;
            long m7797 = j3 + AbstractC3712.m7797(j4, 1000000L, j5, RoundingMode.DOWN);
            int i5 = i4 * i3;
            int i6 = this.f12744 - i5;
            ((InterfaceC2639) this.f12750).mo4112(m7797, 1, i5, i6, null);
            this.f12743 += i4;
            this.f12744 = i6;
        }
        return j2 <= 0;
    }
}
