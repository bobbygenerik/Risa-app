package p254;

import java.util.concurrent.atomic.AtomicInteger;
import p027.C1099;
import p055.AbstractC1464;
import p055.C1490;
import p055.C1495;
import p171.InterfaceC2639;
import p171.InterfaceC2646;
import p305.C3732;

/* renamed from: יי.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3343 implements InterfaceC3321 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public int f13029;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f13031;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public int f13032;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f13033;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public int f13034;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public long f13037;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public InterfaceC2639 f13038;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public int f13039;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3732 f13043;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public C1495 f13044;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public String f13045;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public int f13040 = 0;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public long f13041 = -9223372036854775807L;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final AtomicInteger f13042 = new AtomicInteger();

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public int f13035 = -1;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public int f13030 = -1;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final String f13036 = "video/mp2t";

    public C3343(int i, int i2, String str) {
        this.f13043 = new C3732(new byte[i2]);
        this.f13031 = str;
        this.f13033 = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:193:0x0480  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0488  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x04bb  */
    @Override // p254.InterfaceC3321
    /* renamed from: ʽ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo7138(p305.C3732 r40) {
        /*
            Method dump skipped, instructions count: 1416
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p254.C3343.mo7138(ᐧˎ.ﹳᐧ):void");
    }

    @Override // p254.InterfaceC3321
    /* renamed from: ˈ */
    public final void mo7139(boolean z) {
    }

    @Override // p254.InterfaceC3321
    /* renamed from: ˑﹳ */
    public final void mo7140(int i, long j) {
        this.f13041 = j;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m7160(C1099 c1099) {
        int i = c1099.f4291;
        String str = c1099.f4289;
        int i2 = c1099.f4290;
        if (i == -2147483647 || i2 == -1) {
            return;
        }
        C1495 c1495 = this.f13044;
        if (c1495 != null && i2 == c1495.f5916 && i == c1495.f5923 && str.equals(c1495.f5930)) {
            return;
        }
        C1495 c14952 = this.f13044;
        C1490 c1490 = c14952 == null ? new C1490() : c14952.m4300();
        c1490.f5884 = this.f13045;
        c1490.f5886 = AbstractC1464.m4251(this.f13036);
        c1490.f5861 = AbstractC1464.m4251(str);
        c1490.f5873 = i2;
        c1490.f5864 = i;
        c1490.f5859 = this.f13031;
        c1490.f5887 = this.f13033;
        C1495 c14953 = new C1495(c1490);
        this.f13044 = c14953;
        this.f13038.mo4108(c14953);
    }

    @Override // p254.InterfaceC3321
    /* renamed from: ⁱˊ */
    public final void mo7141() {
        this.f13040 = 0;
        this.f13029 = 0;
        this.f13032 = 0;
        this.f13041 = -9223372036854775807L;
        this.f13042.set(0);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean m7161(C3732 c3732, byte[] bArr, int i) {
        int min = Math.min(c3732.m7904(), i - this.f13029);
        c3732.m7875(bArr, this.f13029, min);
        int i2 = this.f13029 + min;
        this.f13029 = i2;
        return i2 == i;
    }

    @Override // p254.InterfaceC3321
    /* renamed from: ﾞᴵ */
    public final void mo7142(InterfaceC2646 interfaceC2646, C3339 c3339) {
        c3339.m7159();
        c3339.m7158();
        this.f13045 = c3339.f12987;
        c3339.m7158();
        this.f13038 = interfaceC2646.mo1138(c3339.f12986, 1);
    }
}
