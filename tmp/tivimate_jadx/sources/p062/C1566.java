package p062;

import p038.InterfaceC1280;
import p126.InterfaceC2139;
import p145.C2405;
import p336.C4213;

/* renamed from: ʾˈ.ـˏ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1566 implements InterfaceC1559 {

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final /* synthetic */ int f6122 = 0;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final double f6123 = Math.random();

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C4213 f6124;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C1592 f6125;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final InterfaceC2139 f6126;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final InterfaceC1280 f6127;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2405 f6128;

    public C1566(C2405 c2405, InterfaceC1280 interfaceC1280, C4213 c4213, C1592 c1592, InterfaceC2139 interfaceC2139) {
        this.f6128 = c2405;
        this.f6127 = interfaceC1280;
        this.f6124 = c4213;
        this.f6125 = c1592;
        this.f6126 = interfaceC2139;
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x007d, code lost:
    
        if (r7.m8617(r0) == r5) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x007f, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0049, code lost:
    
        if (r7 == r5) goto L31;
     */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m4357(p062.C1566 r6, p316.AbstractC3902 r7) {
        /*
            boolean r0 = r7 instanceof p062.C1535
            if (r0 == 0) goto L13
            r0 = r7
            ʾˈ.ʼˈ r0 = (p062.C1535) r0
            int r1 = r0.f6026
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f6026 = r1
            goto L18
        L13:
            ʾˈ.ʼˈ r0 = new ʾˈ.ʼˈ
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.f6027
            int r1 = r0.f6026
            r2 = 2
            r3 = 1
            java.lang.String r4 = "FirebaseSessions"
            ᵢˎ.ﹳٴ r5 = p373.EnumC4532.f16960
            if (r1 == 0) goto L3c
            if (r1 == r3) goto L36
            if (r1 != r2) goto L2e
            ʾˈ.ـˏ r6 = r0.f6024
            p121.AbstractC2026.m5044(r7)
            goto L80
        L2e:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L36:
            ʾˈ.ـˏ r6 = r0.f6024
            p121.AbstractC2026.m5044(r7)
            goto L4c
        L3c:
            p121.AbstractC2026.m5044(r7)
            ˉᴵ.ʽ r7 = p144.C2396.f9258
            r0.f6024 = r6
            r0.f6026 = r3
            java.lang.Object r7 = r7.m5503(r0)
            if (r7 != r5) goto L4c
            goto L7f
        L4c:
            java.util.Map r7 = (java.util.Map) r7
            java.util.Collection r7 = r7.values()
            if (r7 == 0) goto L5b
            boolean r1 = r7.isEmpty()
            if (r1 == 0) goto L5b
            goto Lb8
        L5b:
            java.util.Iterator r7 = r7.iterator()
        L5f:
            boolean r1 = r7.hasNext()
            if (r1 == 0) goto Lb8
            java.lang.Object r1 = r7.next()
            ﹳˎ.ʼˎ r1 = (p411.C4888) r1
            ʼٴ.ٴᵢ r1 = r1.f18232
            boolean r1 = r1.m3489()
            if (r1 == 0) goto L5f
            ᵎʽ.ˆʾ r7 = r6.f6124
            r0.f6024 = r6
            r0.f6026 = r2
            java.lang.Object r7 = r7.m8617(r0)
            if (r7 != r5) goto L80
        L7f:
            return r5
        L80:
            ᵎʽ.ˆʾ r7 = r6.f6124
            ᵎʽ.ˉˆ r0 = r7.f15678
            java.lang.Boolean r0 = r0.mo8616()
            if (r0 == 0) goto L8f
            boolean r3 = r0.booleanValue()
            goto L9b
        L8f:
            ᵎʽ.ˉˆ r7 = r7.f15677
            java.lang.Boolean r7 = r7.mo8616()
            if (r7 == 0) goto L9b
            boolean r3 = r7.booleanValue()
        L9b:
            if (r3 != 0) goto La3
            java.lang.String r6 = "Sessions SDK disabled through settings API. Events will not be sent."
            java.lang.Boolean r6 = java.lang.Boolean.FALSE
            return r6
        La3:
            ᵎʽ.ˆʾ r6 = r6.f6124
            double r6 = r6.m8618()
            double r0 = p062.C1566.f6123
            int r6 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
            if (r6 > 0) goto Lb2
            java.lang.Boolean r6 = java.lang.Boolean.TRUE
            return r6
        Lb2:
            java.lang.String r6 = "Sessions SDK has dropped this session due to sampling."
            java.lang.Boolean r6 = java.lang.Boolean.FALSE
            return r6
        Lb8:
            java.lang.String r6 = "Sessions SDK disabled through data collection. Events will not be sent."
            java.lang.Boolean r6 = java.lang.Boolean.FALSE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: p062.C1566.m4357(ʾˈ.ـˏ, ᴵʾ.ʽ):java.lang.Object");
    }
}
