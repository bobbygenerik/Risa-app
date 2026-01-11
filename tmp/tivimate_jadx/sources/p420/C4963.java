package p420;

import p392.C4664;
import p392.C4680;
import p428.InterfaceC5067;

/* renamed from: ﹳᵢ.ˏᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4963 implements InterfaceC4945, InterfaceC4967 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public InterfaceC4967 f18489;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final InterfaceC4945 f18490;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final long f18491;

    public C4963(InterfaceC4945 interfaceC4945, long j) {
        this.f18490 = interfaceC4945;
        this.f18491 = j;
    }

    @Override // p420.InterfaceC4947
    /* renamed from: ʻٴ */
    public final void mo5121(long j) {
        this.f18490.mo5121(j - this.f18491);
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ʼˎ */
    public final void mo5122(InterfaceC4967 interfaceC4967, long j) {
        this.f18489 = interfaceC4967;
        this.f18490.mo5122(this, j - this.f18491);
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ʼᐧ */
    public final void mo5123() {
        this.f18490.mo5123();
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ˆʾ */
    public final long mo5124(InterfaceC5067[] interfaceC5067Arr, boolean[] zArr, InterfaceC4956[] interfaceC4956Arr, boolean[] zArr2, long j) {
        InterfaceC4956[] interfaceC4956Arr2 = new InterfaceC4956[interfaceC4956Arr.length];
        int i = 0;
        while (true) {
            InterfaceC4956 interfaceC4956 = null;
            if (i >= interfaceC4956Arr.length) {
                break;
            }
            C4972 c4972 = (C4972) interfaceC4956Arr[i];
            if (c4972 != null) {
                interfaceC4956 = c4972.f18516;
            }
            interfaceC4956Arr2[i] = interfaceC4956;
            i++;
        }
        InterfaceC4945 interfaceC4945 = this.f18490;
        long j2 = this.f18491;
        long mo5124 = interfaceC4945.mo5124(interfaceC5067Arr, zArr, interfaceC4956Arr2, zArr2, j - j2);
        for (int i2 = 0; i2 < interfaceC4956Arr.length; i2++) {
            InterfaceC4956 interfaceC49562 = interfaceC4956Arr2[i2];
            if (interfaceC49562 == null) {
                interfaceC4956Arr[i2] = null;
            } else {
                InterfaceC4956 interfaceC49563 = interfaceC4956Arr[i2];
                if (interfaceC49563 == null || ((C4972) interfaceC49563).f18516 != interfaceC49562) {
                    interfaceC4956Arr[i2] = new C4972(interfaceC49562, j2);
                }
            }
        }
        return mo5124 + j2;
    }

    @Override // p420.InterfaceC4947
    /* renamed from: ˈ */
    public final boolean mo5125() {
        return this.f18490.mo5125();
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ˉʿ */
    public final long mo5126() {
        long mo5126 = this.f18490.mo5126();
        if (mo5126 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return mo5126 + this.f18491;
    }

    @Override // p420.InterfaceC4947
    /* renamed from: ˉˆ */
    public final long mo5127() {
        long mo5127 = this.f18490.mo5127();
        if (mo5127 == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        return mo5127 + this.f18491;
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ˏי */
    public final void mo5128(long j) {
        this.f18490.mo5128(j - this.f18491);
    }

    @Override // p420.InterfaceC4967
    /* renamed from: ˑﹳ */
    public final void mo9347(InterfaceC4945 interfaceC4945) {
        InterfaceC4967 interfaceC4967 = this.f18489;
        interfaceC4967.getClass();
        interfaceC4967.mo9347(this);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [ⁱי.ٴᵢ, java.lang.Object] */
    @Override // p420.InterfaceC4947
    /* renamed from: ٴﹶ */
    public final boolean mo5129(C4664 c4664) {
        ?? obj = new Object();
        long j = c4664.f17482;
        obj.f17545 = c4664.f17481;
        obj.f17544 = c4664.f17480;
        obj.f17546 = j - this.f18491;
        return this.f18490.mo5129(new C4664(obj));
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ᵔʾ */
    public final C4936 mo5131() {
        return this.f18490.mo5131();
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ⁱˊ */
    public final long mo5132(long j, C4680 c4680) {
        long j2 = this.f18491;
        return this.f18490.mo5132(j - j2, c4680) + j2;
    }

    @Override // p420.InterfaceC4945
    /* renamed from: ﹳᐧ */
    public final long mo5133(long j) {
        long j2 = this.f18491;
        return this.f18490.mo5133(j - j2) + j2;
    }

    @Override // p420.InterfaceC4947
    /* renamed from: ﾞʻ */
    public final long mo5134() {
        long mo5134 = this.f18490.mo5134();
        if (mo5134 == Long.MIN_VALUE) {
            return Long.MIN_VALUE;
        }
        return mo5134 + this.f18491;
    }

    @Override // p420.InterfaceC4946
    /* renamed from: ﾞᴵ */
    public final void mo6998(InterfaceC4947 interfaceC4947) {
        InterfaceC4967 interfaceC4967 = this.f18489;
        interfaceC4967.getClass();
        interfaceC4967.mo6998(this);
    }
}
