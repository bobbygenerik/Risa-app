package p420;

import p262.C3433;
import p421.C4996;

/* renamed from: ﹳᵢ.ᐧᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4972 implements InterfaceC4956 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final InterfaceC4956 f18516;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final long f18517;

    public C4972(InterfaceC4956 interfaceC4956, long j) {
        this.f18516 = interfaceC4956;
        this.f18517 = j;
    }

    @Override // p420.InterfaceC4956
    /* renamed from: ʽ */
    public final void mo3459() {
        this.f18516.mo3459();
    }

    @Override // p420.InterfaceC4956
    /* renamed from: ᵔᵢ */
    public final int mo3472(C3433 c3433, C4996 c4996, int i) {
        int mo3472 = this.f18516.mo3472(c3433, c4996, i);
        if (mo3472 == -4) {
            c4996.f18671 += this.f18517;
        }
        return mo3472;
    }

    @Override // p420.InterfaceC4956
    /* renamed from: ᵔﹳ */
    public final int mo3473(long j) {
        return this.f18516.mo3473(j - this.f18517);
    }

    @Override // p420.InterfaceC4956
    /* renamed from: ﹳٴ */
    public final boolean mo3475() {
        return this.f18516.mo3475();
    }
}
