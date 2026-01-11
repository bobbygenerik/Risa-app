package p159;

import p023.InterfaceC1056;
import p035.EnumC1223;
import p035.InterfaceC1221;
import p316.AbstractC3902;
import p316.AbstractC3906;
import p329.InterfaceC4087;
import p329.InterfaceC4106;
import p417.InterfaceC4932;
import ﹳˋ.ٴﹶ;

/* renamed from: ˊˎ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2543 implements InterfaceC1221, InterfaceC1056 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2547 f9643;

    public C2543(C2547 c2547) {
        this.f9643 = c2547;
    }

    @Override // p035.InterfaceC1221
    /* renamed from: ʽ */
    public final Object mo3405(EnumC1223 enumC1223, InterfaceC4087 interfaceC4087, AbstractC3906 abstractC3906) {
        return m5694(enumC1223, interfaceC4087, abstractC3906);
    }

    @Override // p035.InterfaceC1221
    /* renamed from: ˈ */
    public final Object mo3406(AbstractC3906 abstractC3906) {
        return Boolean.valueOf(this.f9643.f9654.mo3718());
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m5694(p035.EnumC1223 r5, p329.InterfaceC4087 r6, p316.AbstractC3902 r7) {
        /*
            r4 = this;
            boolean r0 = r7 instanceof p159.C2542
            if (r0 == 0) goto L13
            r0 = r7
            ˊˎ.ʽ r0 = (p159.C2542) r0
            int r1 = r0.f9639
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f9639 = r1
            goto L18
        L13:
            ˊˎ.ʽ r0 = new ˊˎ.ʽ
            r0.<init>(r4, r7)
        L18:
            java.lang.Object r7 = r0.f9640
            int r1 = r0.f9639
            r2 = 1
            if (r1 == 0) goto L33
            if (r1 != r2) goto L2b
            ʼﹶ.ﹳٴ r5 = r0.f9642
            ˊˎ.ˈ r6 = r0.f9638
            p121.AbstractC2026.m5044(r7)     // Catch: java.lang.Throwable -> L29
            goto L72
        L29:
            r7 = move-exception
            goto L87
        L2b:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L33:
            p121.AbstractC2026.m5044(r7)
            ˊˎ.ﹳٴ r7 = r4.f9643
            ʼﹶ.ﹳٴ r7 = r7.f9654
            r7.mo3718()
            int r5 = r5.ordinal()
            if (r5 == 0) goto L56
            if (r5 == r2) goto L52
            r1 = 2
            if (r5 != r1) goto L4c
            r7.mo3711()
            goto L59
        L4c:
            kotlin.NoWhenBranchMatchedException r5 = new kotlin.NoWhenBranchMatchedException
            r5.<init>()
            throw r5
        L52:
            r7.mo3714()
            goto L59
        L56:
            r7.mo3715()
        L59:
            ʼˋ.ᵔﹳ r5 = new ʼˋ.ᵔﹳ     // Catch: java.lang.Throwable -> L82
            r1 = 1
            r5.<init>(r1, r4)     // Catch: java.lang.Throwable -> L82
            r0.f9638 = r4     // Catch: java.lang.Throwable -> L82
            r0.f9642 = r7     // Catch: java.lang.Throwable -> L82
            r0.f9639 = r2     // Catch: java.lang.Throwable -> L82
            java.lang.Object r5 = r6.mo3749(r5, r0)     // Catch: java.lang.Throwable -> L82
            ᵢˎ.ﹳٴ r6 = p373.EnumC4532.f16960
            if (r5 != r6) goto L6e
            return r6
        L6e:
            r6 = r7
            r7 = r5
            r5 = r6
            r6 = r4
        L72:
            r5.mo3713()     // Catch: java.lang.Throwable -> L29
            r5.mo3708()
            boolean r5 = r5.mo3718()
            if (r5 != 0) goto L81
            r6.getClass()
        L81:
            return r7
        L82:
            r5 = move-exception
            r6 = r7
            r7 = r5
            r5 = r6
            r6 = r4
        L87:
            r5.mo3708()
            boolean r5 = r5.mo3718()
            if (r5 != 0) goto L93
            r6.getClass()
        L93:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: p159.C2543.m5694(ʼﾞ.ˑٴ, ᴵⁱ.ʼᐧ, ᴵʾ.ʽ):java.lang.Object");
    }

    @Override // p023.InterfaceC1056
    /* renamed from: ⁱˊ */
    public final InterfaceC4932 mo3398() {
        return this.f9643;
    }

    @Override // p035.InterfaceC1206
    /* renamed from: ﹳٴ */
    public final Object mo3409(String str, InterfaceC4106 interfaceC4106, AbstractC3902 abstractC3902) {
        AbstractC2545 mo3415 = this.f9643.mo3415(str);
        try {
            Object mo3844 = interfaceC4106.mo3844(mo3415);
            ٴﹶ.ᵔᵢ(mo3415, (Throwable) null);
            return mo3844;
        } finally {
        }
    }
}
