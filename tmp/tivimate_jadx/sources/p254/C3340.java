package p254;

import p012.AbstractC0903;
import p171.InterfaceC2639;
import p171.InterfaceC2646;
import p179.C2697;
import p305.AbstractC3731;
import p305.C3732;
import ˑי.ʽ;

/* renamed from: יי.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3340 implements InterfaceC3321 {

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public static final double[] f12990 = {23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public long f12991;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public boolean f12992;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final ʽ f12993;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public boolean f12994;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final String f12995;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public long f12996;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public long f12997;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C3732 f12998;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public boolean f12999;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final boolean[] f13000 = new boolean[4];

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public long f13001;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final C3328 f13002;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public boolean f13003;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public InterfaceC2639 f13004;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public String f13005;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public long f13006;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final C2697 f13007;

    /* JADX WARN: Type inference failed for: r3v3, types: [יי.ˆʾ, java.lang.Object] */
    public C3340(ʽ r2, String str) {
        this.f12993 = r2;
        this.f12995 = str;
        ?? obj = new Object();
        obj.f12875 = new byte[128];
        this.f13002 = obj;
        if (r2 != null) {
            this.f13007 = new C2697(178);
            this.f12998 = new C3732();
        } else {
            this.f13007 = null;
            this.f12998 = null;
        }
        this.f12996 = -9223372036854775807L;
        this.f12997 = -9223372036854775807L;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0203  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0205  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01e9  */
    @Override // p254.InterfaceC3321
    /* renamed from: ʽ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo7138(p305.C3732 r23) {
        /*
            Method dump skipped, instructions count: 525
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p254.C3340.mo7138(ᐧˎ.ﹳᐧ):void");
    }

    @Override // p254.InterfaceC3321
    /* renamed from: ˈ */
    public final void mo7139(boolean z) {
        AbstractC3731.m7868(this.f13004);
        if (z) {
            boolean z2 = this.f12992;
            this.f13004.mo4112(this.f12997, z2 ? 1 : 0, (int) (this.f12991 - this.f13001), 0, null);
        }
    }

    @Override // p254.InterfaceC3321
    /* renamed from: ˑﹳ */
    public final void mo7140(int i, long j) {
        this.f12996 = j;
    }

    @Override // p254.InterfaceC3321
    /* renamed from: ⁱˊ */
    public final void mo7141() {
        AbstractC0903.m3167(this.f13000);
        C3328 c3328 = this.f13002;
        c3328.f12877 = false;
        c3328.f12876 = 0;
        c3328.f12874 = 0;
        C2697 c2697 = this.f13007;
        if (c2697 != null) {
            c2697.m6066();
        }
        this.f12991 = 0L;
        this.f12994 = false;
        this.f12996 = -9223372036854775807L;
        this.f12997 = -9223372036854775807L;
    }

    @Override // p254.InterfaceC3321
    /* renamed from: ﾞᴵ */
    public final void mo7142(InterfaceC2646 interfaceC2646, C3339 c3339) {
        c3339.m7159();
        c3339.m7158();
        this.f13005 = c3339.f12987;
        c3339.m7158();
        this.f13004 = interfaceC2646.mo1138(c3339.f12986, 2);
        ʽ r0 = this.f12993;
        if (r0 != null) {
            r0.ـˆ(interfaceC2646, c3339);
        }
    }
}
