package p314;

import p090.InterfaceC1820;

/* renamed from: ᐧﾞ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3886 extends C3892 implements InterfaceC1820 {
    /* JADX WARN: Removed duplicated region for block: B:17:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00a6 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0097 A[Catch: all -> 0x0098, TRY_ENTER, TRY_LEAVE, TryCatch #4 {all -> 0x0098, blocks: (B:26:0x0097, B:59:0x004f), top: B:58:0x004f }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x009b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0071 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x007f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    @Override // p090.InterfaceC1820
    /* renamed from: ⁱˊ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object mo4758(java.lang.Object r7, p316.AbstractC3902 r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof p314.C3891
            if (r0 == 0) goto L13
            r0 = r8
            ᐧﾞ.ᵔᵢ r0 = (p314.C3891) r0
            int r1 = r0.f15143
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f15143 = r1
            goto L18
        L13:
            ᐧﾞ.ᵔᵢ r0 = new ᐧﾞ.ᵔᵢ
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.f15141
            int r1 = r0.f15143
            ʻᵢ.ʼᐧ r2 = p013.C0907.f3832
            r3 = 1
            r4 = 0
            if (r1 == 0) goto L38
            if (r1 != r3) goto L30
            ˊᐧ.ʻٴ r7 = r0.f15140
            ˊᐧ.ᵔﹳ r1 = r0.f15142
            ˊᐧ.ᵔﹳ r0 = r0.f15138
            p121.AbstractC2026.m5044(r8)     // Catch: java.lang.Throwable -> L2e
            goto L6c
        L2e:
            r8 = move-exception
            goto L7d
        L30:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L38:
            p121.AbstractC2026.m5044(r8)
            ˊⁱ.ˑﹳ r8 = r6.f15144
            java.lang.Object r8 = r8.ᴵˊ
            java.util.concurrent.atomic.AtomicBoolean r8 = (java.util.concurrent.atomic.AtomicBoolean) r8
            boolean r8 = r8.get()
            if (r8 != 0) goto La8
            ˊᐧ.ﾞʻ r8 = r6.f15146
            ˊᐧ.ʽﹳ r1 = r6.f15145
            ˊᐧ.ᵔﹳ r1 = r8.mo5812(r1)
            ˊᐧ.ˆʾ r8 = p164.C2593.m5816(r1)     // Catch: java.lang.Throwable -> L98
            ˊᐧ.ʻٴ r5 = new ˊᐧ.ʻٴ     // Catch: java.lang.Throwable -> L98
            r5.<init>(r8)     // Catch: java.lang.Throwable -> L98
            ᴵʼ.ᵔᵢ r8 = p315.C3898.f15161     // Catch: java.lang.Throwable -> L7a
            r0.f15138 = r1     // Catch: java.lang.Throwable -> L7a
            r0.f15142 = r1     // Catch: java.lang.Throwable -> L7a
            r0.f15140 = r5     // Catch: java.lang.Throwable -> L7a
            r0.f15143 = r3     // Catch: java.lang.Throwable -> L7a
            r8.m8076(r7, r5)     // Catch: java.lang.Throwable -> L7a
            ᵢˎ.ﹳٴ r7 = p373.EnumC4532.f16960
            if (r2 != r7) goto L6a
            return r7
        L6a:
            r0 = r1
            r7 = r5
        L6c:
            r1.flush()     // Catch: java.lang.Throwable -> L2e
            if (r7 == 0) goto L77
            r7.close()     // Catch: java.lang.Throwable -> L75
            goto L77
        L75:
            r7 = move-exception
            goto L78
        L77:
            r7 = r4
        L78:
            r1 = r0
            goto L8d
        L7a:
            r8 = move-exception
            r0 = r1
            r7 = r5
        L7d:
            if (r7 == 0) goto L8b
            r7.close()     // Catch: java.lang.Throwable -> L83
            goto L8b
        L83:
            r7 = move-exception
            ʽٴ.ˈ.ⁱˊ(r8, r7)     // Catch: java.lang.Throwable -> L88
            goto L8b
        L88:
            r7 = move-exception
            r1 = r0
            goto L99
        L8b:
            r7 = r8
            goto L78
        L8d:
            if (r7 != 0) goto L97
            if (r1 == 0) goto La4
            r1.close()     // Catch: java.lang.Throwable -> L95
            goto La4
        L95:
            r4 = move-exception
            goto La4
        L97:
            throw r7     // Catch: java.lang.Throwable -> L98
        L98:
            r7 = move-exception
        L99:
            if (r1 == 0) goto La3
            r1.close()     // Catch: java.lang.Throwable -> L9f
            goto La3
        L9f:
            r8 = move-exception
            ʽٴ.ˈ.ⁱˊ(r7, r8)
        La3:
            r4 = r7
        La4:
            if (r4 != 0) goto La7
            return r2
        La7:
            throw r4
        La8:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "This scope has already been closed."
            r7.<init>(r8)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: p314.C3886.mo4758(java.lang.Object, ᴵʾ.ʽ):java.lang.Object");
    }
}
