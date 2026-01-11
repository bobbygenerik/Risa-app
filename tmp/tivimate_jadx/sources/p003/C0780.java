package p003;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Random;
import p055.AbstractC1445;
import p055.C1466;
import p055.C1467;
import p420.C4987;

/* renamed from: ʻʿ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0780 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public C0777 f3258;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public String f3263;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static final C0784 f3256 = new C0784(0);

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static final Random f3255 = new Random();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C1466 f3262 = new C1466();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C1467 f3261 = new C1467();

    /* renamed from: ʽ, reason: contains not printable characters */
    public final HashMap f3257 = new HashMap();

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public AbstractC1445 f3259 = AbstractC1445.f5630;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public long f3260 = -1;

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0048, code lost:
    
        if (r12 != (-1)) goto L16;
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x009b A[ADDED_TO_REGION, SYNTHETIC] */
    /* renamed from: ʽ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p003.C0791 m2869(int r19, p420.C4987 r20) {
        /*
            r18 = this;
            r0 = r18
            r1 = r19
            r2 = r20
            java.util.HashMap r3 = r0.f3257
            java.util.Collection r4 = r3.values()
            java.util.Iterator r4 = r4.iterator()
            r5 = 0
            r6 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
        L16:
            boolean r8 = r4.hasNext()
            if (r8 == 0) goto L9f
            java.lang.Object r8 = r4.next()
            ʻʿ.ﾞʻ r8 = (p003.C0791) r8
            long r9 = r8.f3290
            ﹳᵢ.ᵢˏ r11 = r8.f3291
            r12 = -1
            int r9 = (r9 > r12 ? 1 : (r9 == r12 ? 0 : -1))
            if (r9 != 0) goto L57
            int r9 = r8.f3294
            if (r1 != r9) goto L57
            if (r2 == 0) goto L57
            long r9 = r2.f18628
            ʻʿ.ˉʿ r14 = r8.f3293
            java.util.HashMap r15 = r14.f3257
            r16 = r12
            java.lang.String r12 = r14.f3263
            java.lang.Object r12 = r15.get(r12)
            ʻʿ.ﾞʻ r12 = (p003.C0791) r12
            if (r12 == 0) goto L4b
            long r12 = r12.f3290
            int r15 = (r12 > r16 ? 1 : (r12 == r16 ? 0 : -1))
            if (r15 == 0) goto L4b
            goto L50
        L4b:
            long r12 = r14.f3260
            r14 = 1
            long r12 = r12 + r14
        L50:
            int r12 = (r9 > r12 ? 1 : (r9 == r12 ? 0 : -1))
            if (r12 < 0) goto L59
            r8.f3290 = r9
            goto L59
        L57:
            r16 = r12
        L59:
            if (r2 != 0) goto L60
            int r9 = r8.f3294
            if (r1 != r9) goto L16
            goto L83
        L60:
            long r9 = r2.f18628
            if (r11 != 0) goto L71
            boolean r12 = r2.m9838()
            if (r12 != 0) goto L16
            long r12 = r8.f3290
            int r9 = (r9 > r12 ? 1 : (r9 == r12 ? 0 : -1))
            if (r9 != 0) goto L16
            goto L83
        L71:
            long r12 = r11.f18628
            int r9 = (r9 > r12 ? 1 : (r9 == r12 ? 0 : -1))
            if (r9 != 0) goto L16
            int r9 = r2.f18630
            int r10 = r11.f18630
            if (r9 != r10) goto L16
            int r9 = r2.f18627
            int r10 = r11.f18627
            if (r9 != r10) goto L16
        L83:
            long r9 = r8.f3290
            int r12 = (r9 > r16 ? 1 : (r9 == r16 ? 0 : -1))
            if (r12 == 0) goto L9b
            int r12 = (r9 > r6 ? 1 : (r9 == r6 ? 0 : -1))
            if (r12 >= 0) goto L8e
            goto L9b
        L8e:
            if (r12 != 0) goto L16
            java.lang.String r9 = p305.AbstractC3712.f14481
            ﹳᵢ.ᵢˏ r9 = r5.f3291
            if (r9 == 0) goto L16
            if (r11 == 0) goto L16
            r5 = r8
            goto L16
        L9b:
            r5 = r8
            r6 = r9
            goto L16
        L9f:
            if (r5 != 0) goto Lb1
            ʻʿ.ٴﹶ r4 = p003.C0780.f3256
            java.lang.Object r4 = r4.get()
            java.lang.String r4 = (java.lang.String) r4
            ʻʿ.ﾞʻ r5 = new ʻʿ.ﾞʻ
            r5.<init>(r0, r4, r1, r2)
            r3.put(r4, r5)
        Lb1:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: p003.C0780.m2869(int, ﹳᵢ.ᵢˏ):ʻʿ.ﾞʻ");
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final synchronized String m2870(AbstractC1445 abstractC1445, C4987 c4987) {
        return m2869(abstractC1445.mo4225(c4987.f18631, this.f3261).f5744, c4987).f3295;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m2871(C0789 c0789) {
        C4987 c4987;
        AbstractC1445 abstractC1445 = c0789.f3285;
        int i = c0789.f3279;
        C4987 c49872 = c0789.f3281;
        boolean m4217 = abstractC1445.m4217();
        HashMap hashMap = this.f3257;
        if (m4217) {
            String str = this.f3263;
            if (str != null) {
                C0791 c0791 = (C0791) hashMap.get(str);
                c0791.getClass();
                m2874(c0791);
                return;
            }
            return;
        }
        C0791 c07912 = (C0791) hashMap.get(this.f3263);
        this.f3263 = m2869(i, c49872).f3295;
        m2875(c0789);
        if (c49872 != null) {
            long j = c49872.f18628;
            if (c49872.m9838()) {
                if (c07912 != null && c07912.f3290 == j && (c4987 = c07912.f3291) != null && c4987.f18630 == c49872.f18630 && c4987.f18627 == c49872.f18627) {
                    return;
                }
                m2869(i, new C4987(j, c49872.f18631));
                this.f3258.getClass();
            }
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final synchronized void m2872(C0789 c0789, int i) {
        try {
            this.f3258.getClass();
            boolean z = i == 0;
            Iterator it = this.f3257.values().iterator();
            while (it.hasNext()) {
                C0791 c0791 = (C0791) it.next();
                if (c0791.m2899(c0789)) {
                    it.remove();
                    if (c0791.f3292) {
                        boolean equals = c0791.f3295.equals(this.f3263);
                        if (z && equals) {
                            boolean z2 = c0791.f3296;
                        }
                        if (equals) {
                            m2874(c0791);
                        }
                        this.f3258.m2810(c0789, c0791.f3295);
                    }
                }
            }
            m2871(c0789);
        } catch (Throwable th) {
            throw th;
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final synchronized void m2873(C0789 c0789) {
        C0777 c0777;
        try {
            String str = this.f3263;
            if (str != null) {
                C0791 c0791 = (C0791) this.f3257.get(str);
                c0791.getClass();
                m2874(c0791);
            }
            Iterator it = this.f3257.values().iterator();
            while (it.hasNext()) {
                C0791 c07912 = (C0791) it.next();
                it.remove();
                if (c07912.f3292 && (c0777 = this.f3258) != null) {
                    c0777.m2810(c0789, c07912.f3295);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m2874(C0791 c0791) {
        long j = c0791.f3290;
        if (j != -1) {
            this.f3260 = j;
        }
        this.f3263 = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0034 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0036 A[Catch: all -> 0x0050, TRY_ENTER, TryCatch #0 {, blocks: (B:3:0x0001, B:8:0x0010, B:10:0x0014, B:12:0x0024, B:19:0x0036, B:21:0x0042, B:23:0x0048, B:27:0x002b, B:29:0x0053, B:31:0x005f, B:32:0x0063, B:34:0x0068, B:36:0x006e, B:38:0x0085, B:39:0x00b2, B:41:0x00b6, B:42:0x00bd, B:44:0x00c7, B:46:0x00cb), top: B:2:0x0001 }] */
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void m2875(p003.C0789 r10) {
        /*
            Method dump skipped, instructions count: 216
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p003.C0780.m2875(ʻʿ.ﹳٴ):void");
    }
}
