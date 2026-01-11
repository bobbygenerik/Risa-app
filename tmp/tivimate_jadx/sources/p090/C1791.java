package p090;

import java.util.List;
import p013.C0906;
import p035.C1197;
import p056.C1502;
import p126.InterfaceC2136;
import p153.C2469;
import p316.AbstractC3902;
import p324.AbstractC3999;
import p324.C4006;
import p329.InterfaceC4087;
import p340.InterfaceC4254;
import p436.AbstractC5160;
import p436.C5158;
import ʼˋ.ᵔʾ;
import ʼˋ.ﾞᴵ;
import ˏˆ.ﹳٴ;

/* renamed from: ʿᵢ.ˈٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1791 implements InterfaceC1824 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final ﹳٴ f7231;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C2469 f7232;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public C4006 f7237;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final InterfaceC1831 f7239;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC1836 f7240;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final ﹳٴ f7241;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f7242;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C1834 f7234 = new C1834(new ᵔʾ(this, (InterfaceC2136) null, 8));

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C5158 f7235 = AbstractC5160.m10154();

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final C1197 f7238 = new C1197();

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final C0906 f7233 = new C0906(new C1837(this, 1));

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final C0906 f7236 = new C0906(new C1837(this, 0));

    public C1791(InterfaceC1836 interfaceC1836, List list, InterfaceC1831 interfaceC1831, C2469 c2469) {
        this.f7240 = interfaceC1836;
        this.f7239 = interfaceC1831;
        this.f7232 = c2469;
        this.f7231 = new ﹳٴ(this, list);
        this.f7241 = new ﹳٴ(c2469, new C1502(1, this), new ﾞᴵ(this, (InterfaceC2136) null, 19));
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0050 A[Catch: all -> 0x0058, TryCatch #0 {all -> 0x0058, blocks: (B:12:0x0048, B:14:0x0050, B:16:0x0054, B:17:0x005a), top: B:11:0x0048 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /* renamed from: ʽ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m4736(p090.C1791 r4, p316.AbstractC3902 r5) {
        /*
            boolean r0 = r5 instanceof p090.C1806
            if (r0 == 0) goto L13
            r0 = r5
            ʿᵢ.יـ r0 = (p090.C1806) r0
            int r1 = r0.f7288
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f7288 = r1
            goto L18
        L13:
            ʿᵢ.יـ r0 = new ʿᵢ.יـ
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.f7289
            int r1 = r0.f7288
            r2 = 1
            if (r1 == 0) goto L33
            if (r1 != r2) goto L2b
            ﹶי.ʽ r4 = r0.f7291
            ʿᵢ.ˈٴ r0 = r0.f7287
            p121.AbstractC2026.m5044(r5)
            r5 = r4
            r4 = r0
            goto L47
        L2b:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L33:
            p121.AbstractC2026.m5044(r5)
            ﹶי.ʽ r5 = r4.f7235
            r0.f7287 = r4
            r0.f7291 = r5
            r0.f7288 = r2
            java.lang.Object r0 = r5.mo3413(r0)
            ᵢˎ.ﹳٴ r1 = p373.EnumC4532.f16960
            if (r0 != r1) goto L47
            return r1
        L47:
            r0 = 0
            int r1 = r4.f7242     // Catch: java.lang.Throwable -> L58
            int r1 = r1 + (-1)
            r4.f7242 = r1     // Catch: java.lang.Throwable -> L58
            if (r1 != 0) goto L5c
            ᴵי.ˈˏ r1 = r4.f7237     // Catch: java.lang.Throwable -> L58
            if (r1 == 0) goto L5a
            r1.mo3899(r0)     // Catch: java.lang.Throwable -> L58
            goto L5a
        L58:
            r4 = move-exception
            goto L62
        L5a:
            r4.f7237 = r0     // Catch: java.lang.Throwable -> L58
        L5c:
            r5.mo3416(r0)
            ʻᵢ.ʼᐧ r4 = p013.C0907.f3832
            return r4
        L62:
            r5.mo3416(r0)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: p090.C1791.m4736(ʿᵢ.ˈٴ, ᴵʾ.ʽ):java.lang.Object");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:1|(2:3|(6:5|6|(8:55|(1:(1:(2:59|60))(3:61|62|63))|64|65|17|(1:19)(1:23)|20|21)(5:8|9|10|(3:12|13|14)(3:30|(1:32)(1:53)|(2:34|(2:36|(1:38))(2:45|46))(2:47|(2:49|50)(2:51|52)))|24)|39|40|41))|67|6|(0)(0)|39|40|41|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0071, code lost:
    
        if (r9 == r6) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0074, code lost:
    
        r8 = r11;
        r11 = r9;
        r9 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00b5, code lost:
    
        if (r9 != r6) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00b8, code lost:
    
        r9 = th;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0024 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x004d  */
    /* JADX WARN: Type inference failed for: r1v3, types: [ᴵʾ.ᵔᵢ, ᴵⁱ.ʼᐧ] */
    /* JADX WARN: Type inference failed for: r1v9, types: [ᴵʾ.ᵔᵢ, ᴵⁱ.ʼᐧ] */
    /* JADX WARN: Type inference failed for: r9v9 */
    /* renamed from: ˈ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m4737(p090.C1791 r9, p090.C1800 r10, p316.AbstractC3902 r11) {
        /*
            Method dump skipped, instructions count: 238
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p090.C1791.m4737(ʿᵢ.ˈٴ, ʿᵢ.ˋᵔ, ᴵʾ.ʽ):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x004f A[Catch: all -> 0x005f, TRY_LEAVE, TryCatch #0 {all -> 0x005f, blocks: (B:12:0x0048, B:14:0x004f), top: B:11:0x0048 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m4738(p090.C1791 r4, p316.AbstractC3902 r5) {
        /*
            boolean r0 = r5 instanceof p090.C1781
            if (r0 == 0) goto L13
            r0 = r5
            ʿᵢ.ʽﹳ r0 = (p090.C1781) r0
            int r1 = r0.f7197
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f7197 = r1
            goto L18
        L13:
            ʿᵢ.ʽﹳ r0 = new ʿᵢ.ʽﹳ
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.f7198
            int r1 = r0.f7197
            r2 = 1
            if (r1 == 0) goto L33
            if (r1 != r2) goto L2b
            ﹶי.ʽ r4 = r0.f7200
            ʿᵢ.ˈٴ r0 = r0.f7196
            p121.AbstractC2026.m5044(r5)
            r5 = r4
            r4 = r0
            goto L47
        L2b:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L33:
            p121.AbstractC2026.m5044(r5)
            ﹶי.ʽ r5 = r4.f7235
            r0.f7196 = r4
            r0.f7200 = r5
            r0.f7197 = r2
            java.lang.Object r0 = r5.mo3413(r0)
            ᵢˎ.ﹳٴ r1 = p373.EnumC4532.f16960
            if (r0 != r1) goto L47
            return r1
        L47:
            r0 = 0
            int r1 = r4.f7242     // Catch: java.lang.Throwable -> L5f
            int r1 = r1 + r2
            r4.f7242 = r1     // Catch: java.lang.Throwable -> L5f
            if (r1 != r2) goto L61
            ˊʽ.ˈ r1 = r4.f7232     // Catch: java.lang.Throwable -> L5f
            ʿᵢ.ˉʿ r2 = new ʿᵢ.ˉʿ     // Catch: java.lang.Throwable -> L5f
            r3 = 1
            r2.<init>(r4, r0, r3)     // Catch: java.lang.Throwable -> L5f
            r3 = 3
            ᴵי.ˈˏ r1 = p324.AbstractC3999.m8168(r1, r0, r2, r3)     // Catch: java.lang.Throwable -> L5f
            r4.f7237 = r1     // Catch: java.lang.Throwable -> L5f
            goto L61
        L5f:
            r4 = move-exception
            goto L67
        L61:
            r5.mo3416(r0)
            ʻᵢ.ʼᐧ r4 = p013.C0907.f3832
            return r4
        L67:
            r5.mo3416(r0)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: p090.C1791.m4738(ʿᵢ.ˈٴ, ᴵʾ.ʽ):java.lang.Object");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:1|(2:3|(4:5|6|7|8))|72|6|7|8|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x005f, code lost:
    
        r11 = e;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:8:0x0020. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x013c A[Catch: all -> 0x0169, TryCatch #1 {all -> 0x0169, blocks: (B:27:0x012a, B:29:0x013c, B:32:0x0144), top: B:26:0x012a }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0144 A[Catch: all -> 0x0169, TRY_LEAVE, TryCatch #1 {all -> 0x0169, blocks: (B:27:0x012a, B:29:0x013c, B:32:0x0144), top: B:26:0x012a }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x009f A[Catch: CorruptionException -> 0x005f, TryCatch #3 {CorruptionException -> 0x005f, blocks: (B:36:0x005a, B:37:0x00ff, B:40:0x0068, B:41:0x00e0, B:56:0x0085, B:58:0x009f, B:59:0x00a5, B:65:0x008e, B:68:0x00cd), top: B:7:0x0020 }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
    /* JADX WARN: Type inference failed for: r10v4, types: [java.lang.Object, ˊʼ.ﹳᐧ, java.io.Serializable] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, ˊʼ.ˏי, java.io.Serializable] */
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m4739(p090.C1791 r9, boolean r10, p316.AbstractC3902 r11) {
        /*
            Method dump skipped, instructions count: 386
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p090.C1791.m4739(ʿᵢ.ˈٴ, boolean, ᴵʾ.ʽ):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m4740(p090.C1791 r8, boolean r9, p126.InterfaceC2136 r10) {
        /*
            Method dump skipped, instructions count: 210
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p090.C1791.m4740(ʿᵢ.ˈٴ, boolean, ˈי.ˈ):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0063, code lost:
    
        if (r3.ٴʼ(r0) != r4) goto L28;
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /* renamed from: ʼˎ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m4741(p316.AbstractC3902 r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof p090.C1774
            if (r0 == 0) goto L13
            r0 = r7
            ʿᵢ.ʻٴ r0 = (p090.C1774) r0
            int r1 = r0.f7165
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f7165 = r1
            goto L18
        L13:
            ʿᵢ.ʻٴ r0 = new ʿᵢ.ʻٴ
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.f7166
            int r1 = r0.f7165
            r2 = 2
            r3 = 1
            ᵢˎ.ﹳٴ r4 = p373.EnumC4532.f16960
            if (r1 == 0) goto L3e
            if (r1 == r3) goto L38
            if (r1 != r2) goto L30
            int r1 = r0.f7168
            ʿᵢ.ˈٴ r0 = r0.f7164
            p121.AbstractC2026.m5044(r7)     // Catch: java.lang.Throwable -> L2e
            goto L66
        L2e:
            r7 = move-exception
            goto L6e
        L30:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L38:
            ʿᵢ.ˈٴ r1 = r0.f7164
            p121.AbstractC2026.m5044(r7)
            goto L51
        L3e:
            p121.AbstractC2026.m5044(r7)
            ʿᵢ.ˑٴ r7 = r6.m4744()
            r0.f7164 = r6
            r0.f7165 = r3
            java.lang.Object r7 = r7.mo4752(r0)
            if (r7 != r4) goto L50
            goto L65
        L50:
            r1 = r6
        L51:
            java.lang.Number r7 = (java.lang.Number) r7
            int r7 = r7.intValue()
            ˏˆ.ﹳٴ r3 = r1.f7231     // Catch: java.lang.Throwable -> L69
            r0.f7164 = r1     // Catch: java.lang.Throwable -> L69
            r0.f7168 = r7     // Catch: java.lang.Throwable -> L69
            r0.f7165 = r2     // Catch: java.lang.Throwable -> L69
            java.lang.Object r7 = r3.ٴʼ(r0)     // Catch: java.lang.Throwable -> L69
            if (r7 != r4) goto L66
        L65:
            return r4
        L66:
            ʻᵢ.ʼᐧ r7 = p013.C0907.f3832
            return r7
        L69:
            r0 = move-exception
            r5 = r1
            r1 = r7
            r7 = r0
            r0 = r5
        L6e:
            ʼﾞ.ʻٴ r0 = r0.f7238
            ʿᵢ.ᵎᵔ r2 = new ʿᵢ.ᵎᵔ
            r2.<init>(r1, r7)
            r0.m3722(r2)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: p090.C1791.m4741(ᴵʾ.ʽ):java.lang.Object");
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final Object m4742(AbstractC3902 abstractC3902) {
        return ((C1826) this.f7233.getValue()).m4760(new C1794(3, (InterfaceC2136) null), abstractC3902);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.Object, ˊʼ.ﹳᐧ] */
    /* renamed from: ٴﹶ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m4743(java.lang.Object r10, boolean r11, p316.AbstractC3902 r12) {
        /*
            r9 = this;
            boolean r0 = r12 instanceof p090.C1817
            if (r0 == 0) goto L13
            r0 = r12
            ʿᵢ.ᴵˊ r0 = (p090.C1817) r0
            int r1 = r0.f7330
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f7330 = r1
            goto L18
        L13:
            ʿᵢ.ᴵˊ r0 = new ʿᵢ.ᴵˊ
            r0.<init>(r9, r12)
        L18:
            java.lang.Object r12 = r0.f7331
            int r1 = r0.f7330
            r2 = 1
            if (r1 == 0) goto L2f
            if (r1 != r2) goto L27
            ˊʼ.ﹳᐧ r10 = r0.f7328
            p121.AbstractC2026.m5044(r12)
            goto L56
        L27:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r11)
            throw r10
        L2f:
            p121.AbstractC2026.m5044(r12)
            ˊʼ.ﹳᐧ r4 = new ˊʼ.ﹳᐧ
            r4.<init>()
            ʻᵢ.ʼˎ r12 = r9.f7233
            java.lang.Object r12 = r12.getValue()
            ʿᵢ.ᵔי r12 = (p090.C1826) r12
            ʿᵢ.ʽʽ r3 = new ʿᵢ.ʽʽ
            r8 = 0
            r5 = r9
            r6 = r10
            r7 = r11
            r3.<init>(r4, r5, r6, r7, r8)
            r0.f7328 = r4
            r0.f7330 = r2
            java.lang.Object r10 = r12.m4761(r3, r0)
            ᵢˎ.ﹳٴ r11 = p373.EnumC4532.f16960
            if (r10 != r11) goto L55
            return r11
        L55:
            r10 = r4
        L56:
            int r10 = r10.f9423
            java.lang.Integer r11 = new java.lang.Integer
            r11.<init>(r10)
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: p090.C1791.m4743(java.lang.Object, boolean, ᴵʾ.ʽ):java.lang.Object");
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final InterfaceC1804 m4744() {
        return (InterfaceC1804) this.f7236.getValue();
    }

    @Override // p090.InterfaceC1824
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final InterfaceC4254 mo4745() {
        return this.f7234;
    }

    @Override // p090.InterfaceC1824
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Object mo4746(InterfaceC4087 interfaceC4087, AbstractC3902 abstractC3902) {
        C1812 c1812 = (C1812) abstractC3902.mo3551().mo3419(C1803.f7283);
        if (c1812 != null) {
            c1812.m4756(this);
        }
        return AbstractC3999.m8164(new C1812(c1812, this), new ᵔʾ(this, interfaceC4087, (InterfaceC2136) null), abstractC3902);
    }
}
