package p253;

import androidx.media3.common.ParserException;
import com.google.android.material.datepicker.C0671;
import java.math.RoundingMode;
import p055.AbstractC1464;
import p055.C1490;
import p055.C1495;
import p171.InterfaceC2639;
import p171.InterfaceC2646;
import p305.AbstractC3712;
import p305.C3732;

/* renamed from: יˑ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3317 implements InterfaceC3316 {

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static final int[] f12760 = {-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static final int[] f12761 = {7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, 118, 130, 143, 157, 173, 190, 209, 230, 253, 279, 307, 337, 371, 408, 449, 494, 544, 598, 658, 724, 796, 876, 963, 1060, 1166, 1282, 1411, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public int f12762;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C0671 f12763;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public long f12764;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f12765;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final byte[] f12766;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public int f12767;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final int f12768;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final C1495 f12769;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final InterfaceC2639 f12770;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC2646 f12771;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public long f12772;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final C3732 f12773;

    public C3317(InterfaceC2646 interfaceC2646, InterfaceC2639 interfaceC2639, C0671 c0671) {
        this.f12771 = interfaceC2646;
        this.f12770 = interfaceC2639;
        this.f12763 = c0671;
        int i = c0671.f2741;
        int max = Math.max(1, i / 10);
        this.f12768 = max;
        C3732 c3732 = new C3732((byte[]) c0671.f2742);
        c3732.m7905();
        int m7905 = c3732.m7905();
        this.f12765 = m7905;
        int i2 = c0671.f2739;
        int i3 = c0671.f2738;
        int i4 = (((i3 - (i2 * 4)) * 8) / (c0671.f2740 * i2)) + 1;
        if (m7905 != i4) {
            throw ParserException.m741(null, "Expected frames per block: " + i4 + "; got: " + m7905);
        }
        int m7811 = AbstractC3712.m7811(max, m7905);
        this.f12766 = new byte[m7811 * i3];
        this.f12773 = new C3732(m7905 * 2 * i2 * m7811);
        int i5 = ((i3 * i) * 8) / m7905;
        C1490 c1490 = new C1490();
        c1490.f5861 = AbstractC1464.m4251("audio/raw");
        c1490.f5880 = i5;
        c1490.f5850 = i5;
        c1490.f5877 = max * 2 * i2;
        c1490.f5873 = i2;
        c1490.f5864 = i;
        c1490.f5870 = 2;
        this.f12769 = new C1495(c1490);
    }

    @Override // p253.InterfaceC3316
    /* renamed from: ʽ */
    public final void mo7131(long j) {
        this.f12762 = 0;
        this.f12764 = j;
        this.f12767 = 0;
        this.f12772 = 0L;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m7136(int i) {
        long j = this.f12764;
        long j2 = this.f12772;
        C0671 c0671 = this.f12763;
        long j3 = c0671.f2741;
        String str = AbstractC3712.f14481;
        long m7797 = j + AbstractC3712.m7797(j2, 1000000L, j3, RoundingMode.DOWN);
        int i2 = i * 2 * c0671.f2739;
        this.f12770.mo4112(m7797, 1, i2, this.f12767 - i2, null);
        this.f12772 += i;
        this.f12767 -= i2;
    }

    @Override // p253.InterfaceC3316
    /* renamed from: ⁱˊ */
    public final void mo7132(int i, long j) {
        this.f12771.mo1133(new C3318(this.f12763, this.f12765, i, j));
        this.f12770.mo4108(this.f12769);
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0045 A[ADDED_TO_REGION, EDGE_INSN: B:49:0x0045->B:14:0x0045 BREAK  A[LOOP:0: B:5:0x0023->B:11:0x003f], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0027  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x003c -> B:3:0x0020). Please report as a decompilation issue!!! */
    @Override // p253.InterfaceC3316
    /* renamed from: ﹳٴ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo7133(p171.InterfaceC2622 r25, long r26) {
        /*
            Method dump skipped, instructions count: 327
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p253.C3317.mo7133(ˊﾞ.ʼᐧ, long):boolean");
    }
}
