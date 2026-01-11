package p090;

import p013.C0907;
import p126.InterfaceC2136;
import p316.AbstractC3906;
import p329.InterfaceC4106;

/* renamed from: ʿᵢ.ʾᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1783 extends AbstractC3906 implements InterfaceC4106 {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public int f7207;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final /* synthetic */ C1791 f7208;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public Throwable f7209;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1783(C1791 c1791, InterfaceC2136 interfaceC2136) {
        super(1, interfaceC2136);
        this.f7208 = c1791;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x003e, code lost:
    
        if (r6 != r4) goto L22;
     */
    @Override // p316.AbstractC3908
    /* renamed from: ᵔﹳ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object mo3389(java.lang.Object r6) {
        /*
            r5 = this;
            int r0 = r5.f7207
            ʿᵢ.ˈٴ r1 = r5.f7208
            r2 = 2
            r3 = 1
            ᵢˎ.ﹳٴ r4 = p373.EnumC4532.f16960
            if (r0 == 0) goto L23
            if (r0 == r3) goto L1c
            if (r0 != r2) goto L14
            java.lang.Throwable r0 = r5.f7209
            p121.AbstractC2026.m5044(r6)
            goto L41
        L14:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L1c:
            p121.AbstractC2026.m5044(r6)     // Catch: java.lang.Throwable -> L20
            goto L2f
        L20:
            r6 = move-exception
            r0 = r6
            goto L32
        L23:
            p121.AbstractC2026.m5044(r6)
            r5.f7207 = r3     // Catch: java.lang.Throwable -> L20
            java.lang.Object r6 = p090.C1791.m4739(r1, r3, r5)     // Catch: java.lang.Throwable -> L20
            if (r6 != r4) goto L2f
            goto L40
        L2f:
            ʿᵢ.ˈˏ r6 = (p090.AbstractC1790) r6     // Catch: java.lang.Throwable -> L20
            goto L4d
        L32:
            ʿᵢ.ˑٴ r6 = r1.m4744()
            r5.f7209 = r0
            r5.f7207 = r2
            java.lang.Object r6 = r6.mo4752(r5)
            if (r6 != r4) goto L41
        L40:
            return r4
        L41:
            java.lang.Number r6 = (java.lang.Number) r6
            int r6 = r6.intValue()
            ʿᵢ.ᵎᵔ r1 = new ʿᵢ.ᵎᵔ
            r1.<init>(r6, r0)
            r6 = r1
        L4d:
            java.lang.Boolean r0 = java.lang.Boolean.TRUE
            ʻᵢ.ˑﹳ r1 = new ʻᵢ.ˑﹳ
            r1.<init>(r6, r0)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: p090.C1783.mo3389(java.lang.Object):java.lang.Object");
    }

    @Override // p329.InterfaceC4106
    /* renamed from: ⁱˊ */
    public final Object mo3844(Object obj) {
        return new C1783(this.f7208, (InterfaceC2136) obj).mo3389(C0907.f3832);
    }
}
