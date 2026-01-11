package p171;

/* renamed from: ˊﾞ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2636 implements InterfaceC2626 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final long f10000;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final long f10001;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final long f10002;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final long f10003;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC2643 f10004;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final long f10005;

    public C2636(InterfaceC2643 interfaceC2643, long j, long j2, long j3, long j4, long j5) {
        this.f10004 = interfaceC2643;
        this.f10003 = j;
        this.f10000 = j2;
        this.f10001 = j3;
        this.f10002 = j4;
        this.f10005 = j5;
    }

    @Override // p171.InterfaceC2626
    /* renamed from: ˆʾ */
    public final C2647 mo2901(long j) {
        C2641 c2641 = new C2641(j, C2652.m5933(this.f10004.m5901(j), 0L, this.f10000, this.f10001, this.f10002, this.f10005));
        return new C2647(c2641, c2641);
    }

    @Override // p171.InterfaceC2626
    /* renamed from: ˉʿ */
    public final long mo2903() {
        return this.f10003;
    }

    @Override // p171.InterfaceC2626
    /* renamed from: ᵔᵢ */
    public final boolean mo2907() {
        return true;
    }
}
