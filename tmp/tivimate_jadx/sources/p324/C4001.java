package p324;

import p126.InterfaceC2136;

/* renamed from: ᴵי.ʿᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4001 extends C4030 {

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final C4031 f15379;

    public C4001(InterfaceC2136 interfaceC2136, C4031 c4031) {
        super(1, interfaceC2136);
        this.f15379 = c4031;
    }

    @Override // p324.C4030
    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final String mo8184() {
        return "AwaitContinuation";
    }

    @Override // p324.C4030
    /* renamed from: ˏי, reason: contains not printable characters */
    public final Throwable mo8185(C4031 c4031) {
        Throwable m8260;
        C4031 c40312 = this.f15379;
        c40312.getClass();
        Object obj = C4031.f15415.get(c40312);
        return (!(obj instanceof C4033) || (m8260 = ((C4033) obj).m8260()) == null) ? obj instanceof C4022 ? ((C4022) obj).f15404 : c4031.mo8236() : m8260;
    }
}
