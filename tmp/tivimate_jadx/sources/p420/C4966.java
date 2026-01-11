package p420;

import p305.AbstractC3712;
import p364.C4443;
import p392.C4664;
import p392.C4680;
import p428.InterfaceC5067;

/* renamed from: ﹳᵢ.יـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4966 implements InterfaceC4945, InterfaceC4967 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C4443 f18498;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C4987 f18499;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public InterfaceC4975 f18500;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public InterfaceC4967 f18501;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public long f18502 = -9223372036854775807L;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final long f18503;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public InterfaceC4945 f18504;

    public C4966(C4987 c4987, C4443 c4443, long j) {
        this.f18499 = c4987;
        this.f18498 = c4443;
        this.f18503 = j;
    }

    @Override // p420.InterfaceC4947
    /* renamed from: ʻٴ */
    public final void mo5121(long j) {
        InterfaceC4945 interfaceC4945 = this.f18504;
        String str = AbstractC3712.f14481;
        interfaceC4945.mo5121(j);
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ʼˎ */
    public final void mo5122(InterfaceC4967 interfaceC4967, long j) {
        this.f18501 = interfaceC4967;
        InterfaceC4945 interfaceC4945 = this.f18504;
        if (interfaceC4945 != null) {
            long j2 = this.f18502;
            if (j2 == -9223372036854775807L) {
                j2 = this.f18503;
            }
            interfaceC4945.mo5122(this, j2);
        }
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ʼᐧ */
    public final void mo5123() {
        InterfaceC4945 interfaceC4945 = this.f18504;
        if (interfaceC4945 != null) {
            interfaceC4945.mo5123();
            return;
        }
        InterfaceC4975 interfaceC4975 = this.f18500;
        if (interfaceC4975 != null) {
            interfaceC4975.mo5099();
        }
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ˆʾ */
    public final long mo5124(InterfaceC5067[] interfaceC5067Arr, boolean[] zArr, InterfaceC4956[] interfaceC4956Arr, boolean[] zArr2, long j) {
        long j2 = this.f18502;
        long j3 = (j2 == -9223372036854775807L || j != this.f18503) ? j : j2;
        this.f18502 = -9223372036854775807L;
        InterfaceC4945 interfaceC4945 = this.f18504;
        String str = AbstractC3712.f14481;
        return interfaceC4945.mo5124(interfaceC5067Arr, zArr, interfaceC4956Arr, zArr2, j3);
    }

    @Override // p420.InterfaceC4947
    /* renamed from: ˈ */
    public final boolean mo5125() {
        InterfaceC4945 interfaceC4945 = this.f18504;
        return interfaceC4945 != null && interfaceC4945.mo5125();
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ˉʿ */
    public final long mo5126() {
        InterfaceC4945 interfaceC4945 = this.f18504;
        String str = AbstractC3712.f14481;
        return interfaceC4945.mo5126();
    }

    @Override // p420.InterfaceC4947
    /* renamed from: ˉˆ */
    public final long mo5127() {
        InterfaceC4945 interfaceC4945 = this.f18504;
        String str = AbstractC3712.f14481;
        return interfaceC4945.mo5127();
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ˏי */
    public final void mo5128(long j) {
        InterfaceC4945 interfaceC4945 = this.f18504;
        String str = AbstractC3712.f14481;
        interfaceC4945.mo5128(j);
    }

    @Override // p420.InterfaceC4967
    /* renamed from: ˑﹳ */
    public final void mo9347(InterfaceC4945 interfaceC4945) {
        InterfaceC4967 interfaceC4967 = this.f18501;
        String str = AbstractC3712.f14481;
        interfaceC4967.mo9347(this);
    }

    @Override // p420.InterfaceC4947
    /* renamed from: ٴﹶ */
    public final boolean mo5129(C4664 c4664) {
        InterfaceC4945 interfaceC4945 = this.f18504;
        return interfaceC4945 != null && interfaceC4945.mo5129(c4664);
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ᵔʾ */
    public final C4936 mo5131() {
        InterfaceC4945 interfaceC4945 = this.f18504;
        String str = AbstractC3712.f14481;
        return interfaceC4945.mo5131();
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ⁱˊ */
    public final long mo5132(long j, C4680 c4680) {
        InterfaceC4945 interfaceC4945 = this.f18504;
        String str = AbstractC3712.f14481;
        return interfaceC4945.mo5132(j, c4680);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m9789(C4987 c4987) {
        long j = this.f18502;
        if (j == -9223372036854775807L) {
            j = this.f18503;
        }
        InterfaceC4975 interfaceC4975 = this.f18500;
        interfaceC4975.getClass();
        InterfaceC4945 mo5104 = interfaceC4975.mo5104(c4987, this.f18498, j);
        this.f18504 = mo5104;
        if (this.f18501 != null) {
            mo5104.mo5122(this, j);
        }
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ﹳᐧ */
    public final long mo5133(long j) {
        InterfaceC4945 interfaceC4945 = this.f18504;
        String str = AbstractC3712.f14481;
        return interfaceC4945.mo5133(j);
    }

    @Override // p420.InterfaceC4947
    /* renamed from: ﾞʻ */
    public final long mo5134() {
        InterfaceC4945 interfaceC4945 = this.f18504;
        String str = AbstractC3712.f14481;
        return interfaceC4945.mo5134();
    }

    @Override // p420.InterfaceC4946
    /* renamed from: ﾞᴵ */
    public final void mo6998(InterfaceC4947 interfaceC4947) {
        InterfaceC4967 interfaceC4967 = this.f18501;
        String str = AbstractC3712.f14481;
        interfaceC4967.mo6998(this);
    }
}
