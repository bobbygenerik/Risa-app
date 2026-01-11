package p340;

import p152.C2448;

/* renamed from: ᵎˈ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4246 implements InterfaceC4256 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ C2448 f15783;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f15784 = 1;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC4256 f15785;

    public C4246(InterfaceC4256 interfaceC4256, C2448 c2448) {
        this.f15785 = interfaceC4256;
        this.f15783 = c2448;
    }

    public C4246(C4263 c4263, C2448 c2448, InterfaceC4256 interfaceC4256) {
        this.f15783 = c2448;
        this.f15785 = interfaceC4256;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0081  */
    @Override // p340.InterfaceC4256
    /* renamed from: ﹳٴ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object mo3399(java.lang.Object r6, p126.InterfaceC2136 r7) {
        /*
            r5 = this;
            int r0 = r5.f15784
            switch(r0) {
                case 0: goto L52;
                default: goto L5;
            }
        L5:
            boolean r0 = r7 instanceof p340.C4232
            if (r0 == 0) goto L18
            r0 = r7
            ᵎˈ.ʼᐧ r0 = (p340.C4232) r0
            int r1 = r0.f15733
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L18
            int r1 = r1 - r2
            r0.f15733 = r1
            goto L1d
        L18:
            ᵎˈ.ʼᐧ r0 = new ᵎˈ.ʼᐧ
            r0.<init>(r5, r7)
        L1d:
            java.lang.Object r7 = r0.f15734
            int r1 = r0.f15733
            r2 = 1
            if (r1 == 0) goto L36
            if (r1 != r2) goto L2e
            ᵎˈ.ˑﹳ r6 = r0.f15731
            p121.AbstractC2026.m5044(r7)     // Catch: java.lang.Throwable -> L2c
            goto L48
        L2c:
            r7 = move-exception
            goto L4d
        L2e:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L36:
            p121.AbstractC2026.m5044(r7)
            ᵎˈ.ᵔᵢ r7 = r5.f15785     // Catch: java.lang.Throwable -> L4b
            r0.f15731 = r5     // Catch: java.lang.Throwable -> L4b
            r0.f15733 = r2     // Catch: java.lang.Throwable -> L4b
            java.lang.Object r6 = r7.mo3399(r6, r0)     // Catch: java.lang.Throwable -> L4b
            ᵢˎ.ﹳٴ r7 = p373.EnumC4532.f16960
            if (r6 != r7) goto L48
            goto L4a
        L48:
            ʻᵢ.ʼᐧ r7 = p013.C0907.f3832
        L4a:
            return r7
        L4b:
            r7 = move-exception
            r6 = r5
        L4d:
            ˊʼ.ˏי r6 = r6.f15783
            r6.f9409 = r7
            throw r7
        L52:
            boolean r0 = r7 instanceof p340.C4239
            if (r0 == 0) goto L65
            r0 = r7
            ᵎˈ.ˈ r0 = (p340.C4239) r0
            int r1 = r0.f15755
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L65
            int r1 = r1 - r2
            r0.f15755 = r1
            goto L6a
        L65:
            ᵎˈ.ˈ r0 = new ᵎˈ.ˈ
            r0.<init>(r5, r7)
        L6a:
            java.lang.Object r7 = r0.f15754
            int r1 = r0.f15755
            ʻᵢ.ʼᐧ r2 = p013.C0907.f3832
            r3 = 1
            if (r1 == 0) goto L81
            if (r1 != r3) goto L79
            p121.AbstractC2026.m5044(r7)
            goto La1
        L79:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L81:
            p121.AbstractC2026.m5044(r7)
            ˊʼ.ˏי r7 = r5.f15783
            java.lang.Object r1 = r7.f9409
            ʻᴵ.ﹳٴ r4 = p089.AbstractC1768.f7152
            if (r1 == r4) goto L92
            boolean r1 = p152.AbstractC2444.m5562(r1, r6)
            if (r1 != 0) goto La1
        L92:
            r7.f9409 = r6
            r0.f15755 = r3
            ᵎˈ.ᵔᵢ r7 = r5.f15785
            java.lang.Object r6 = r7.mo3399(r6, r0)
            ᵢˎ.ﹳٴ r7 = p373.EnumC4532.f16960
            if (r6 != r7) goto La1
            r2 = r7
        La1:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: p340.C4246.mo3399(java.lang.Object, ˈי.ˈ):java.lang.Object");
    }
}
