package p090;

import p013.C0907;
import p126.InterfaceC2136;
import p152.C2459;
import p316.AbstractC3906;
import p329.InterfaceC4087;

/* renamed from: ʿᵢ.ʽʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1780 extends AbstractC3906 implements InterfaceC4087 {

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final /* synthetic */ C2459 f7189;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public int f7190;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final /* synthetic */ Object f7191;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public /* synthetic */ Object f7192;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public C2459 f7193;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final /* synthetic */ boolean f7194;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final /* synthetic */ C1791 f7195;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1780(C2459 c2459, C1791 c1791, Object obj, boolean z, InterfaceC2136 interfaceC2136) {
        super(2, interfaceC2136);
        this.f7189 = c2459;
        this.f7195 = c1791;
        this.f7191 = obj;
        this.f7194 = z;
    }

    @Override // p329.InterfaceC4087
    /* renamed from: ʼˎ */
    public final Object mo3749(Object obj, Object obj2) {
        return ((C1780) mo3750((InterfaceC1820) obj, (InterfaceC2136) obj2)).mo3389(C0907.f3832);
    }

    @Override // p316.AbstractC3908
    /* renamed from: ˉˆ */
    public final InterfaceC2136 mo3750(Object obj, InterfaceC2136 interfaceC2136) {
        C1780 c1780 = new C1780(this.f7189, this.f7195, this.f7191, this.f7194, interfaceC2136);
        c1780.f7192 = obj;
        return c1780;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0056, code lost:
    
        if (r5.mo4758(r1, r7) == r6) goto L16;
     */
    @Override // p316.AbstractC3908
    /* renamed from: ᵔﹳ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object mo3389(java.lang.Object r8) {
        /*
            r7 = this;
            int r0 = r7.f7190
            java.lang.Object r1 = r7.f7191
            ʿᵢ.ˈٴ r2 = r7.f7195
            ˊʼ.ﹳᐧ r3 = r7.f7189
            r4 = 2
            r5 = 1
            ᵢˎ.ﹳٴ r6 = p373.EnumC4532.f16960
            if (r0 == 0) goto L28
            if (r0 == r5) goto L1e
            if (r0 != r4) goto L16
            p121.AbstractC2026.m5044(r8)
            goto L59
        L16:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L1e:
            ˊʼ.ﹳᐧ r0 = r7.f7193
            java.lang.Object r5 = r7.f7192
            ʿᵢ.ᵎʻ r5 = (p090.InterfaceC1820) r5
            p121.AbstractC2026.m5044(r8)
            goto L43
        L28:
            p121.AbstractC2026.m5044(r8)
            java.lang.Object r8 = r7.f7192
            ʿᵢ.ᵎʻ r8 = (p090.InterfaceC1820) r8
            ʿᵢ.ˑٴ r0 = r2.m4744()
            r7.f7192 = r8
            r7.f7193 = r3
            r7.f7190 = r5
            java.lang.Object r0 = r0.mo4753(r7)
            if (r0 != r6) goto L40
            goto L58
        L40:
            r5 = r8
            r8 = r0
            r0 = r3
        L43:
            java.lang.Number r8 = (java.lang.Number) r8
            int r8 = r8.intValue()
            r0.f9423 = r8
            r8 = 0
            r7.f7192 = r8
            r7.f7193 = r8
            r7.f7190 = r4
            java.lang.Object r8 = r5.mo4758(r1, r7)
            if (r8 != r6) goto L59
        L58:
            return r6
        L59:
            boolean r8 = r7.f7194
            if (r8 == 0) goto L71
            ʼﾞ.ʻٴ r8 = r2.f7238
            ʿᵢ.ʽ r0 = new ʿᵢ.ʽ
            if (r1 == 0) goto L68
            int r2 = r1.hashCode()
            goto L69
        L68:
            r2 = 0
        L69:
            int r3 = r3.f9423
            r0.<init>(r2, r3, r1)
            r8.m3722(r0)
        L71:
            ʻᵢ.ʼᐧ r8 = p013.C0907.f3832
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: p090.C1780.mo3389(java.lang.Object):java.lang.Object");
    }
}
