package p336;

/* renamed from: ᵎʽ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4213 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final InterfaceC4216 f15677;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC4216 f15678;

    public C4213(InterfaceC4216 interfaceC4216, InterfaceC4216 interfaceC42162) {
        this.f15678 = interfaceC4216;
        this.f15677 = interfaceC42162;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0054, code lost:
    
        if (r6.mo8613(r0) != r4) goto L23;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m8617(p316.AbstractC3902 r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof p336.C4211
            if (r0 == 0) goto L13
            r0 = r6
            ᵎʽ.ʼˎ r0 = (p336.C4211) r0
            int r1 = r0.f15667
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f15667 = r1
            goto L18
        L13:
            ᵎʽ.ʼˎ r0 = new ᵎʽ.ʼˎ
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.f15668
            int r1 = r0.f15667
            r2 = 2
            r3 = 1
            ᵢˎ.ﹳٴ r4 = p373.EnumC4532.f16960
            if (r1 == 0) goto L38
            if (r1 == r3) goto L32
            if (r1 != r2) goto L2a
            p121.AbstractC2026.m5044(r6)
            goto L57
        L2a:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L32:
            ᵎʽ.ˆʾ r1 = r0.f15665
            p121.AbstractC2026.m5044(r6)
            goto L49
        L38:
            p121.AbstractC2026.m5044(r6)
            r0.f15665 = r5
            r0.f15667 = r3
            ᵎʽ.ˉˆ r6 = r5.f15678
            java.lang.Object r6 = r6.mo8613(r0)
            if (r6 != r4) goto L48
            goto L56
        L48:
            r1 = r5
        L49:
            ᵎʽ.ˉˆ r6 = r1.f15677
            r1 = 0
            r0.f15665 = r1
            r0.f15667 = r2
            java.lang.Object r6 = r6.mo8613(r0)
            if (r6 != r4) goto L57
        L56:
            return r4
        L57:
            ʻᵢ.ʼᐧ r6 = p013.C0907.f3832
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: p336.C4213.m8617(ᴵʾ.ʽ):java.lang.Object");
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final double m8618() {
        Double mo8615 = this.f15678.mo8615();
        if (mo8615 != null) {
            double doubleValue = mo8615.doubleValue();
            if (0.0d <= doubleValue && doubleValue <= 1.0d) {
                return doubleValue;
            }
        }
        Double mo86152 = this.f15677.mo8615();
        if (mo86152 != null) {
            double doubleValue2 = mo86152.doubleValue();
            if (0.0d <= doubleValue2 && doubleValue2 <= 1.0d) {
                return doubleValue2;
            }
        }
        return 1.0d;
    }
}
