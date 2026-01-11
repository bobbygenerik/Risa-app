package p254;

import p012.AbstractC0903;
import p171.InterfaceC2639;
import p171.InterfaceC2646;
import p179.C2697;
import p305.AbstractC3731;
import p305.C3732;
import ˑי.ʽ;

/* renamed from: יי.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3344 implements InterfaceC3321 {

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static final float[] f13046 = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 1.0f};

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public InterfaceC2639 f13047;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean[] f13048 = new boolean[4];

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public boolean f13049;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C3350 f13050;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C2697 f13051;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public long f13052;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public long f13053;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public String f13054;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C3732 f13055;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ʽ f13056;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public C3331 f13057;

    /* JADX WARN: Type inference failed for: r3v3, types: [יי.ﾞʻ, java.lang.Object] */
    public C3344(ʽ r3) {
        this.f13056 = r3;
        ?? obj = new Object();
        obj.f13106 = new byte[128];
        this.f13050 = obj;
        this.f13052 = -9223372036854775807L;
        this.f13051 = new C2697(178);
        this.f13055 = new C3732();
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x025d  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x025f  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x013d  */
    @Override // p254.InterfaceC3321
    /* renamed from: ʽ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo7138(p305.C3732 r20) {
        /*
            Method dump skipped, instructions count: 621
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p254.C3344.mo7138(ᐧˎ.ﹳᐧ):void");
    }

    @Override // p254.InterfaceC3321
    /* renamed from: ˈ */
    public final void mo7139(boolean z) {
        AbstractC3731.m7868(this.f13057);
        if (z) {
            this.f13057.m7153(this.f13053, this.f13049, 0);
            C3331 c3331 = this.f13057;
            c3331.f12901 = false;
            c3331.f12896 = false;
            c3331.f12897 = false;
            c3331.f12898 = -1;
        }
    }

    @Override // p254.InterfaceC3321
    /* renamed from: ˑﹳ */
    public final void mo7140(int i, long j) {
        this.f13052 = j;
    }

    @Override // p254.InterfaceC3321
    /* renamed from: ⁱˊ */
    public final void mo7141() {
        AbstractC0903.m3167(this.f13048);
        C3350 c3350 = this.f13050;
        c3350.f13108 = false;
        c3350.f13104 = 0;
        c3350.f13107 = 0;
        C3331 c3331 = this.f13057;
        if (c3331 != null) {
            c3331.f12901 = false;
            c3331.f12896 = false;
            c3331.f12897 = false;
            c3331.f12898 = -1;
        }
        C2697 c2697 = this.f13051;
        if (c2697 != null) {
            c2697.m6066();
        }
        this.f13053 = 0L;
        this.f13052 = -9223372036854775807L;
    }

    @Override // p254.InterfaceC3321
    /* renamed from: ﾞᴵ */
    public final void mo7142(InterfaceC2646 interfaceC2646, C3339 c3339) {
        c3339.m7159();
        c3339.m7158();
        this.f13054 = c3339.f12987;
        c3339.m7158();
        InterfaceC2639 mo1138 = interfaceC2646.mo1138(c3339.f12986, 2);
        this.f13047 = mo1138;
        this.f13057 = new C3331(mo1138);
        this.f13056.ـˆ(interfaceC2646, c3339);
    }
}
