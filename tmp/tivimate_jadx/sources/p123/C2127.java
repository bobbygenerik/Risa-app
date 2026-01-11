package p123;

import ar.tvplayer.core.domain.ʽﹳ;
import p000.C0754;
import p027.C1090;
import p246.InterfaceC3291;
import p320.C3946;
import p320.EnumC3945;
import p366.C4483;
import p390.AbstractC4632;
import p430.C5109;
import ˊⁱ.ˑﹳ;
import ـˎ.ˈ;

/* renamed from: ˈˎ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2127 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C2127 f8308 = new C2127();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ˈ f8311 = new ˈ(13);

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C4483 f8310 = AbstractC4632.f17306;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final ˑﹳ f8309 = new ˑﹳ(21);

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String m5085(InterfaceC3291 interfaceC3291, Object obj) {
        char[] cArr;
        C1090 c1090 = new C1090((char) 0, 10);
        C3946 c3946 = C3946.f15251;
        synchronized (c3946) {
            C5109 c5109 = (C5109) c3946.f396;
            cArr = null;
            char[] cArr2 = (char[]) (c5109.isEmpty() ? null : c5109.removeLast());
            if (cArr2 != null) {
                c3946.f397 -= cArr2.length;
                cArr = cArr2;
            }
        }
        if (cArr == null) {
            cArr = new char[128];
        }
        c1090.f4252 = cArr;
        try {
            EnumC3945 enumC3945 = EnumC3945.f15243;
            C0754[] c0754Arr = new C0754[EnumC3945.f15245.mo5786()];
            this.f8311.getClass();
            new C0754(new ʽﹳ(c1090), this, enumC3945, c0754Arr).m2752(interfaceC3291, obj);
            return c1090.toString();
        } finally {
            c1090.m3458();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0048, code lost:
    
        r0.ᴵˊ = r1.length();
     */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m5086(p246.InterfaceC3291 r7, java.lang.String r8) {
        /*
            r6 = this;
            ـˎ.ˈ r0 = r6.f8311
            r0.getClass()
            com.parse.ʽˑ r0 = new com.parse.ʽˑ
            r0.<init>(r8)
            com.parse.ʽˑ r1 = new com.parse.ʽˑ
            ᴵˉ.ᵔᵢ r2 = p320.EnumC3945.f15243
            ˉﾞ.ˈ r3 = r7.mo4337()
            r1.<init>(r6, r2, r0, r3)
            java.lang.Object r7 = r1.ـˆ(r7)
            java.lang.Object r1 = r0.ˈٴ
            java.lang.String r1 = (java.lang.String) r1
            int r2 = r0.ᴵˊ
        L1f:
            r3 = -1
            r4 = 10
            if (r2 == r3) goto L48
            int r3 = r1.length()
            if (r2 >= r3) goto L48
            int r3 = r2 + 1
            char r2 = r1.charAt(r2)
            r5 = 32
            if (r2 == r5) goto L46
            if (r2 == r4) goto L46
            r4 = 13
            if (r2 == r4) goto L46
            r4 = 9
            if (r2 != r4) goto L3f
            goto L46
        L3f:
            r0.ᴵˊ = r3
            byte r4 = p320.AbstractC3943.m8119(r2)
            goto L4e
        L46:
            r2 = r3
            goto L1f
        L48:
            int r1 = r1.length()
            r0.ᴵˊ = r1
        L4e:
            r1 = 10
            if (r4 != r1) goto L53
            return r7
        L53:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            java.lang.String r1 = "Expected EOF after parsing, but had "
            r7.<init>(r1)
            int r1 = r0.ᴵˊ
            int r1 = r1 + (-1)
            char r8 = r8.charAt(r1)
            r7.append(r8)
            java.lang.String r8 = " instead"
            r7.append(r8)
            java.lang.String r7 = r7.toString()
            r8 = 0
            r1 = 6
            com.parse.ʽˑ.ʽʽ(r0, r7, r8, r1)
            r7 = 0
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: p123.C2127.m5086(יʼ.ﹳٴ, java.lang.String):java.lang.Object");
    }
}
