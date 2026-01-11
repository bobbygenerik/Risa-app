package p090;

import java.io.Serializable;
import p013.C0907;
import p126.InterfaceC2136;
import p126.InterfaceC2139;
import p152.C2448;
import p152.C2459;
import p316.AbstractC3906;
import p329.InterfaceC4087;
import p329.InterfaceC4106;

/* renamed from: ʿᵢ.ʾˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1782 extends AbstractC3906 implements InterfaceC4106 {

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public Object f7201;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public int f7202;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final /* synthetic */ Serializable f7203;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final /* synthetic */ C1791 f7204;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ int f7205 = 1;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final /* synthetic */ Object f7206;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public C1782(C1791 c1791, InterfaceC2139 interfaceC2139, InterfaceC4087 interfaceC4087, InterfaceC2136 interfaceC2136) {
        super(1, interfaceC2136);
        this.f7204 = c1791;
        this.f7206 = interfaceC2139;
        this.f7203 = (AbstractC3906) interfaceC4087;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1782(C2448 c2448, C1791 c1791, C2459 c2459, InterfaceC2136 interfaceC2136) {
        super(1, interfaceC2136);
        this.f7206 = c2448;
        this.f7204 = c1791;
        this.f7203 = c2459;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0061  */
    /* JADX WARN: Type inference failed for: r7v3, types: [ᴵʾ.ᵔᵢ, ᴵⁱ.ʼᐧ] */
    @Override // p316.AbstractC3908
    /* renamed from: ᵔﹳ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object mo3389(java.lang.Object r10) {
        /*
            Method dump skipped, instructions count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p090.C1782.mo3389(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: Type inference failed for: r2v3, types: [ᴵʾ.ᵔᵢ, ᴵⁱ.ʼᐧ] */
    @Override // p329.InterfaceC4106
    /* renamed from: ⁱˊ */
    public final Object mo3844(Object obj) {
        InterfaceC2136 interfaceC2136 = (InterfaceC2136) obj;
        switch (this.f7205) {
            case 0:
                return new C1782((C2448) this.f7206, this.f7204, (C2459) this.f7203, interfaceC2136).mo3389(C0907.f3832);
            default:
                return new C1782(this.f7204, (InterfaceC2139) this.f7206, (InterfaceC4087) this.f7203, interfaceC2136).mo3389(C0907.f3832);
        }
    }
}
