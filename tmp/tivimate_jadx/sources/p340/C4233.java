package p340;

import p089.C1759;
import p126.InterfaceC2139;
import p316.AbstractC3906;
import p329.InterfaceC4087;

/* renamed from: ᵎˈ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4233 extends C1759 {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final AbstractC3906 f15735;

    /* JADX WARN: Multi-variable type inference failed */
    public C4233(InterfaceC4087 interfaceC4087, InterfaceC2139 interfaceC2139, int i, int i2) {
        super(interfaceC4087, interfaceC2139, i, i2);
        this.f15735 = (AbstractC3906) interfaceC4087;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    @Override // p089.C1759
    /* renamed from: ˈ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object mo4720(p041.InterfaceC1305 r5, p126.InterfaceC2136 r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof p340.C4259
            if (r0 == 0) goto L13
            r0 = r6
            ᵎˈ.ⁱˊ r0 = (p340.C4259) r0
            int r1 = r0.f15825
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f15825 = r1
            goto L1a
        L13:
            ᵎˈ.ⁱˊ r0 = new ᵎˈ.ⁱˊ
            ᴵʾ.ʽ r6 = (p316.AbstractC3902) r6
            r0.<init>(r4, r6)
        L1a:
            java.lang.Object r6 = r0.f15826
            int r1 = r0.f15825
            r2 = 1
            if (r1 == 0) goto L31
            if (r1 != r2) goto L29
            ʽʿ.יـ r5 = r0.f15823
            p121.AbstractC2026.m5044(r6)
            goto L41
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L31:
            p121.AbstractC2026.m5044(r6)
            r0.f15823 = r5
            r0.f15825 = r2
            java.lang.Object r6 = super.mo4720(r5, r0)
            ᵢˎ.ﹳٴ r0 = p373.EnumC4532.f16960
            if (r6 != r0) goto L41
            return r0
        L41:
            ʽʿ.ٴﹶ r5 = (p041.AbstractC1307) r5
            ʽʿ.ﾞᴵ r5 = r5.f5007
            boolean r5 = r5.m3931()
            if (r5 == 0) goto L4e
            ʻᵢ.ʼᐧ r5 = p013.C0907.f3832
            return r5
        L4e:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "'awaitClose { yourCallbackOrListener.cancel() }' should be used in the end of callbackFlow block.\nOtherwise, a callback/listener may leak in case of external cancellation.\nSee callbackFlow API documentation for the details."
            r5.<init>(r6)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: p340.C4233.mo4720(ʽʿ.יـ, ˈי.ˈ):java.lang.Object");
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [ᴵʾ.ᵔᵢ, ᴵⁱ.ʼᐧ] */
    @Override // p089.C1759
    /* renamed from: ˑﹳ */
    public final C1759 mo4721(InterfaceC2139 interfaceC2139, int i, int i2) {
        return new C4233(this.f15735, interfaceC2139, i, i2);
    }
}
