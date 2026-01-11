package p062;

import java.util.Map;
import p090.InterfaceC1824;
import p126.InterfaceC2139;
import p152.AbstractC2444;
import p324.AbstractC3999;
import p336.C4213;

/* renamed from: ʾˈ.ᴵʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1573 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public boolean f6143;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final InterfaceC1559 f6144;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public String f6145 = "";

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C1549 f6146;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final InterfaceC1824 f6147;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final InterfaceC2139 f6148;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public C1579 f6149;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C1588 f6150;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C4213 f6151;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final C1539 f6152;

    public C1573(C4213 c4213, C1588 c1588, InterfaceC1559 interfaceC1559, C1549 c1549, InterfaceC1824 interfaceC1824, C1539 c1539, InterfaceC2139 interfaceC2139) {
        this.f6151 = c4213;
        this.f6150 = c1588;
        this.f6144 = interfaceC1559;
        this.f6146 = c1549;
        this.f6147 = interfaceC1824;
        this.f6152 = c1539;
        this.f6148 = interfaceC2139;
        AbstractC3999.m8168(AbstractC3999.m8179(interfaceC2139), null, new C1578(this, null, 0), 3);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m4361(p062.C1573 r4, java.lang.String r5, p062.EnumC1572 r6, p126.InterfaceC2136 r7) {
        /*
            Method dump skipped, instructions count: 239
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p062.C1573.m4361(ʾˈ.ᴵʼ, java.lang.String, ʾˈ.ᐧﾞ, ˈי.ˈ):java.lang.Object");
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean m4362(C1579 c1579) {
        Map map = c1579.f6172;
        boolean z = true;
        C1539 c1539 = this.f6152;
        if (map == null) {
            String str = "No process data for " + c1539.m4344();
            return true;
        }
        C1541 c1541 = (C1541) map.get(c1539.m4344());
        if (c1541 != null && c1541.f6059 == c1539.f6052 && AbstractC2444.m5562(c1541.f6058, (String) c1539.f6053.getValue())) {
            z = false;
        }
        if (z) {
            String str2 = "Process " + c1539.m4344() + " is stale";
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0049, code lost:
    
        if (p303.C3709.m7744(r9) == false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0034, code lost:
    
        if (p303.C3709.m7744(r9) == false) goto L19;
     */
    /* renamed from: ˈ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m4363(p062.C1579 r12) {
        /*
            r11 = this;
            ʾˈ.ـﹶ r0 = r12.f6173
            ʾˈ.ᵔٴ r12 = r12.f6174
            java.lang.String r1 = "Session "
            java.lang.String r2 = "FirebaseSessions"
            r3 = 0
            if (r0 == 0) goto L72
            ʾˈ.ˈˏ r4 = r11.f6146
            ʾˈ.ـﹶ r4 = r4.m4347()
            int r5 = p303.C3709.f14467
            long r4 = r4.f6131
            long r6 = r0.f6131
            long r4 = r4 - r6
            ᐧˊ.ʽ r0 = p303.EnumC3707.MILLISECONDS
            long r4 = ﹳٴ.ﹳٴ.ˈⁱ(r4, r0)
            ᵎʽ.ˆʾ r0 = r11.f6151
            ᵎʽ.ˉˆ r6 = r0.f15678
            ᐧˊ.ﹳٴ r6 = r6.mo8614()
            r7 = 0
            if (r6 == 0) goto L37
            long r9 = r6.f14469
            int r6 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1))
            if (r6 <= 0) goto L37
            boolean r6 = p303.C3709.m7744(r9)
            if (r6 != 0) goto L37
            goto L54
        L37:
            ᵎʽ.ˉˆ r0 = r0.f15677
            ᐧˊ.ﹳٴ r0 = r0.mo8614()
            if (r0 == 0) goto L4c
            long r9 = r0.f14469
            int r0 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1))
            if (r0 <= 0) goto L4c
            boolean r0 = p303.C3709.m7744(r9)
            if (r0 != 0) goto L4c
            goto L54
        L4c:
            r0 = 30
            ᐧˊ.ʽ r6 = p303.EnumC3707.MINUTES
            long r9 = ﹳٴ.ﹳٴ.ﹳـ(r0, r6)
        L54:
            int r0 = p303.C3709.m7743(r4, r9)
            if (r0 <= 0) goto L5b
            r3 = 1
        L5b:
            if (r3 == 0) goto L71
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>(r1)
            java.lang.String r12 = r12.f6185
            r0.append(r12)
            java.lang.String r12 = " is expired"
            r0.append(r12)
            java.lang.String r12 = r0.toString()
        L71:
            return r3
        L72:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>(r1)
            java.lang.String r12 = r12.f6185
            r0.append(r12)
            java.lang.String r12 = " has not backgrounded yet"
            r0.append(r12)
            java.lang.String r12 = r0.toString()
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: p062.C1573.m4363(ʾˈ.ᵎⁱ):boolean");
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m4364() {
        this.f6143 = false;
        if (this.f6149 == null) {
            return;
        }
        String str = "App backgrounded on " + this.f6152.m4344();
        AbstractC3999.m8168(AbstractC3999.m8179(this.f6148), null, new C1578(this, null, 1), 3);
    }
}
