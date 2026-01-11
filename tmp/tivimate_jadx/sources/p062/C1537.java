package p062;

import java.util.Collections;
import p056.C1502;
import p090.C1791;
import p090.C1811;
import p090.C1823;
import p090.InterfaceC1802;
import p126.InterfaceC2136;
import p153.C2469;
import p329.InterfaceC4104;
import p430.C5097;
import p462.InterfaceC5418;
import ʼˋ.ﾞᴵ;
import ˊⁱ.ˑﹳ;

/* renamed from: ʾˈ.ʼᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1537 implements InterfaceC5418 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f6044;

    public /* synthetic */ C1537(int i) {
        this.f6044 = i;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static C1791 m4340(InterfaceC1802 interfaceC1802, ˑﹳ r7, C2469 c2469, InterfaceC4104 interfaceC4104) {
        C5097 c5097 = C5097.f19202;
        try {
            System.loadLibrary("datastore_shared_counter");
            return new C1791(new C1823(interfaceC1802, new C1502(2, c2469), interfaceC4104), Collections.singletonList(new ﾞᴵ(c5097, (InterfaceC2136) null, 17)), r7, c2469);
        } catch (SecurityException | UnsatisfiedLinkError unused) {
            return new C1791(new C1823(interfaceC1802, C1811.f7309, interfaceC4104), Collections.singletonList(new ﾞᴵ(c5097, (InterfaceC2136) null, 17)), r7, c2469);
        }
    }

    @Override // p343.InterfaceC4267
    public Object get() {
        switch (this.f6044) {
            case 1:
                return C1549.f6083;
            default:
                return C1591.f6205;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:1|(2:3|(7:5|6|7|(1:(1:(6:11|12|13|(1:15)|16|17)(2:20|21))(2:22|23))(6:30|31|32|33|(1:35)|28)|24|25|26))|43|6|7|(0)(0)|24|25|26|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x007d, code lost:
    
        if (r10 != r6) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0087, code lost:
    
        r9 = r9;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0026  */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v19, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r9v22 */
    /* JADX WARN: Type inference failed for: r9v23 */
    /* JADX WARN: Type inference failed for: r9v24 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v6, types: [java.lang.String] */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m4341(p038.InterfaceC1280 r9, p316.AbstractC3902 r10) {
        /*
            r8 = this;
            boolean r0 = r10 instanceof p062.C1532
            if (r0 == 0) goto L13
            r0 = r10
            ʾˈ.ʻٴ r0 = (p062.C1532) r0
            int r1 = r0.f6020
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f6020 = r1
            goto L18
        L13:
            ʾˈ.ʻٴ r0 = new ʾˈ.ʻٴ
            r0.<init>(r8, r10)
        L18:
            java.lang.Object r10 = r0.f6021
            int r1 = r0.f6020
            java.lang.String r2 = "FirebaseSessions"
            r3 = 2
            r4 = 1
            java.lang.String r5 = ""
            ᵢˎ.ﹳٴ r6 = p373.EnumC4532.f16960
            if (r1 == 0) goto L46
            if (r1 == r4) goto L3c
            if (r1 != r3) goto L34
            java.lang.Object r9 = r0.f6018
            java.lang.String r9 = (java.lang.String) r9
            p121.AbstractC2026.m5044(r10)     // Catch: java.lang.Exception -> L32
            goto L80
        L32:
            r10 = move-exception
            goto L87
        L34:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L3c:
            java.lang.Object r9 = r0.f6018
            ʽʼ.ˑﹳ r9 = (p038.InterfaceC1280) r9
            p121.AbstractC2026.m5044(r10)     // Catch: java.lang.Exception -> L44
            goto L5e
        L44:
            r10 = move-exception
            goto L6a
        L46:
            p121.AbstractC2026.m5044(r10)
            r10 = r9
            ʽʼ.ˈ r10 = (p038.C1279) r10     // Catch: java.lang.Exception -> L44
            ˏـ.ˉʿ r9 = r10.m3877()     // Catch: java.lang.Exception -> L44
            r0.f6018 = r10     // Catch: java.lang.Exception -> L66
            r0.f6020 = r4     // Catch: java.lang.Exception -> L66
            java.lang.Object r9 = ﹳˋ.ʽʽ.ʽ(r9, r0)     // Catch: java.lang.Exception -> L66
            if (r9 != r6) goto L5b
            goto L7f
        L5b:
            r7 = r10
            r10 = r9
            r9 = r7
        L5e:
            ʽʼ.ﹳٴ r10 = (p038.C1284) r10     // Catch: java.lang.Exception -> L44
            java.lang.String r10 = r10.f4965     // Catch: java.lang.Exception -> L44
            r7 = r10
            r10 = r9
            r9 = r7
            goto L6f
        L66:
            r9 = move-exception
            r7 = r10
            r10 = r9
            r9 = r7
        L6a:
            java.lang.String r1 = "Error getting authentication token."
            r10 = r9
            r9 = r5
        L6f:
            ʽʼ.ˈ r10 = (p038.C1279) r10     // Catch: java.lang.Exception -> L32
            ˏـ.ˉʿ r10 = r10.m3875()     // Catch: java.lang.Exception -> L32
            r0.f6018 = r9     // Catch: java.lang.Exception -> L32
            r0.f6020 = r3     // Catch: java.lang.Exception -> L32
            java.lang.Object r10 = ﹳˋ.ʽʽ.ʽ(r10, r0)     // Catch: java.lang.Exception -> L32
            if (r10 != r6) goto L80
        L7f:
            return r6
        L80:
            java.lang.String r10 = (java.lang.String) r10     // Catch: java.lang.Exception -> L32
            if (r10 != 0) goto L85
            goto L8a
        L85:
            r5 = r10
            goto L8a
        L87:
            java.lang.String r0 = "Error getting Firebase installation id ."
        L8a:
            ʾˈ.ـˆ r10 = new ʾˈ.ـˆ
            r10.<init>(r5, r9)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: p062.C1537.m4341(ʽʼ.ˑﹳ, ᴵʾ.ʽ):java.lang.Object");
    }
}
