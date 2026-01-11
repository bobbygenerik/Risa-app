package p090;

import p340.InterfaceC4256;

/* renamed from: ʿᵢ.ᵔﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1829 implements InterfaceC4256 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f7372;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC4256 f7373;

    public /* synthetic */ C1829(InterfaceC4256 interfaceC4256, int i) {
        this.f7372 = i;
        this.f7373 = interfaceC4256;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0076  */
    @Override // p340.InterfaceC4256
    /* renamed from: ﹳٴ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object mo3399(java.lang.Object r5, p126.InterfaceC2136 r6) {
        /*
            r4 = this;
            int r0 = r4.f7372
            switch(r0) {
                case 0: goto L49;
                default: goto L5;
            }
        L5:
            boolean r0 = r6 instanceof p445.C5204
            if (r0 == 0) goto L18
            r0 = r6
            ﹶﹳ.ˈ r0 = (p445.C5204) r0
            int r1 = r0.f19554
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L18
            int r1 = r1 - r2
            r0.f19554 = r1
            goto L1d
        L18:
            ﹶﹳ.ˈ r0 = new ﹶﹳ.ˈ
            r0.<init>(r4, r6)
        L1d:
            java.lang.Object r6 = r0.f19552
            int r1 = r0.f19554
            r2 = 1
            if (r1 == 0) goto L32
            if (r1 != r2) goto L2a
            p121.AbstractC2026.m5044(r6)
            goto L46
        L2a:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L32:
            p121.AbstractC2026.m5044(r6)
            boolean r6 = r5 instanceof p396.C4742
            if (r6 == 0) goto L46
            r0.f19554 = r2
            ᵎˈ.ᵔᵢ r6 = r4.f7373
            java.lang.Object r5 = r6.mo3399(r5, r0)
            ᵢˎ.ﹳٴ r6 = p373.EnumC4532.f16960
            if (r5 != r6) goto L46
            goto L48
        L46:
            ʻᵢ.ʼᐧ r6 = p013.C0907.f3832
        L48:
            return r6
        L49:
            boolean r0 = r6 instanceof p090.C1778
            if (r0 == 0) goto L5c
            r0 = r6
            ʿᵢ.ʼᐧ r0 = (p090.C1778) r0
            int r1 = r0.f7186
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L5c
            int r1 = r1 - r2
            r0.f7186 = r1
            goto L61
        L5c:
            ʿᵢ.ʼᐧ r0 = new ʿᵢ.ʼᐧ
            r0.<init>(r4, r6)
        L61:
            java.lang.Object r6 = r0.f7184
            int r1 = r0.f7186
            r2 = 1
            if (r1 == 0) goto L76
            if (r1 != r2) goto L6e
            p121.AbstractC2026.m5044(r6)
            goto L94
        L6e:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L76:
            p121.AbstractC2026.m5044(r6)
            ʿᵢ.ˈˏ r5 = (p090.AbstractC1790) r5
            boolean r6 = r5 instanceof p090.C1822
            if (r6 != 0) goto Lae
            boolean r6 = r5 instanceof p090.C1779
            if (r6 == 0) goto L97
            ʿᵢ.ʽ r5 = (p090.C1779) r5
            java.lang.Object r5 = r5.f7188
            r0.f7186 = r2
            ᵎˈ.ᵔᵢ r6 = r4.f7373
            java.lang.Object r5 = r6.mo3399(r5, r0)
            ᵢˎ.ﹳٴ r6 = p373.EnumC4532.f16960
            if (r5 != r6) goto L94
            goto L96
        L94:
            ʻᵢ.ʼᐧ r6 = p013.C0907.f3832
        L96:
            return r6
        L97:
            boolean r6 = r5 instanceof p090.C1789
            if (r6 == 0) goto L9c
            goto L9e
        L9c:
            boolean r2 = r5 instanceof p090.C1835
        L9e:
            if (r2 == 0) goto La8
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542"
            r5.<init>(r6)
            throw r5
        La8:
            kotlin.NoWhenBranchMatchedException r5 = new kotlin.NoWhenBranchMatchedException
            r5.<init>()
            throw r5
        Lae:
            ʿᵢ.ᵎᵔ r5 = (p090.C1822) r5
            java.lang.Throwable r5 = r5.f7353
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: p090.C1829.mo3399(java.lang.Object, ˈי.ˈ):java.lang.Object");
    }
}
