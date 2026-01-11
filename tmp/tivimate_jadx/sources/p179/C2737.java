package p179;

/* renamed from: ˋˋ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2737 implements InterfaceC2707 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final InterfaceC2707 f10450;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f10452 = 0;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f10449 = -1;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public int f10451 = -1;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public Object f10453 = null;

    public C2737(InterfaceC2707 interfaceC2707) {
        this.f10450 = interfaceC2707;
    }

    @Override // p179.InterfaceC2707
    /* renamed from: ʼˎ */
    public final void mo6078(int i, int i2) {
        int i3;
        if (this.f10452 == 2 && (i3 = this.f10449) >= i && i3 <= i + i2) {
            this.f10451 += i2;
            this.f10449 = i;
        } else {
            m6133();
            this.f10449 = i;
            this.f10451 = i2;
            this.f10452 = 2;
        }
    }

    @Override // p179.InterfaceC2707
    /* renamed from: ʽʽ */
    public final void mo6079(int i, int i2, Object obj) {
        int i3;
        int i4;
        int i5;
        if (this.f10452 == 3 && i <= (i4 = this.f10451 + (i3 = this.f10449)) && (i5 = i + i2) >= i3 && this.f10453 == obj) {
            this.f10449 = Math.min(i, i3);
            this.f10451 = Math.max(i4, i5) - this.f10449;
            return;
        }
        m6133();
        this.f10449 = i;
        this.f10451 = i2;
        this.f10453 = obj;
        this.f10452 = 3;
    }

    @Override // p179.InterfaceC2707
    /* renamed from: ˆʾ */
    public final void mo6080(int i, int i2) {
        m6133();
        this.f10450.mo6080(i, i2);
    }

    @Override // p179.InterfaceC2707
    /* renamed from: ᵢˏ */
    public final void mo6081(int i, int i2) {
        int i3;
        if (this.f10452 == 1 && i >= (i3 = this.f10449)) {
            int i4 = this.f10451;
            if (i <= i3 + i4) {
                this.f10451 = i4 + i2;
                this.f10449 = Math.min(i, i3);
                return;
            }
        }
        m6133();
        this.f10449 = i;
        this.f10451 = i2;
        this.f10452 = 1;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m6133() {
        int i = this.f10452;
        if (i == 0) {
            return;
        }
        InterfaceC2707 interfaceC2707 = this.f10450;
        if (i == 1) {
            interfaceC2707.mo6081(this.f10449, this.f10451);
        } else if (i == 2) {
            interfaceC2707.mo6078(this.f10449, this.f10451);
        } else if (i == 3) {
            interfaceC2707.mo6079(this.f10449, this.f10451, this.f10453);
        }
        this.f10453 = null;
        this.f10452 = 0;
    }
}
