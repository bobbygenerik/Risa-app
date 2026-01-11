package p003;

import p055.AbstractC1445;
import p420.C4987;

/* renamed from: ʻʿ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0791 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public long f3290;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C4987 f3291;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public boolean f3292;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final /* synthetic */ C0780 f3293;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f3294;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f3295;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public boolean f3296;

    public C0791(C0780 c0780, String str, int i, C4987 c4987) {
        this.f3293 = c0780;
        this.f3295 = str;
        this.f3294 = i;
        this.f3290 = c4987 == null ? -1L : c4987.f18628;
        if (c4987 == null || !c4987.m9838()) {
            return;
        }
        this.f3291 = c4987;
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x000e, code lost:
    
        if (r0 < r8.mo4222()) goto L15;
     */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m2898(p055.AbstractC1445 r7, p055.AbstractC1445 r8) {
        /*
            r6 = this;
            int r0 = r6.f3294
            int r1 = r7.mo4222()
            r2 = 0
            r3 = -1
            if (r0 < r1) goto L13
            int r7 = r8.mo4222()
            if (r0 >= r7) goto L11
            goto L36
        L11:
            r0 = r3
            goto L36
        L13:
            ʻʿ.ˉʿ r1 = r6.f3293
            ʽⁱ.ˊˋ r4 = r1.f3262
            r7.m4226(r0, r4)
            int r0 = r4.f5738
        L1c:
            int r5 = r4.f5734
            if (r0 > r5) goto L11
            java.lang.Object r5 = r7.mo4230(r0)
            int r5 = r8.mo4228(r5)
            if (r5 == r3) goto L33
            ʽⁱ.ˋᵔ r7 = r1.f3261
            ʽⁱ.ˋᵔ r7 = r8.mo4231(r5, r7, r2)
            int r0 = r7.f5744
            goto L36
        L33:
            int r0 = r0 + 1
            goto L1c
        L36:
            r6.f3294 = r0
            if (r0 != r3) goto L3b
            goto L4a
        L3b:
            ﹳᵢ.ᵢˏ r7 = r6.f3291
            if (r7 != 0) goto L40
            goto L48
        L40:
            java.lang.Object r7 = r7.f18631
            int r7 = r8.mo4228(r7)
            if (r7 == r3) goto L4a
        L48:
            r7 = 1
            return r7
        L4a:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: p003.C0791.m2898(ʽⁱ.ʼˈ, ʽⁱ.ʼˈ):boolean");
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean m2899(C0789 c0789) {
        C4987 c4987 = c0789.f3281;
        AbstractC1445 abstractC1445 = c0789.f3285;
        if (c4987 == null) {
            return this.f3294 != c0789.f3279;
        }
        long j = this.f3290;
        if (j == -1) {
            return false;
        }
        if (c4987.f18628 > j) {
            return true;
        }
        C4987 c49872 = this.f3291;
        if (c49872 == null) {
            return false;
        }
        int i = c49872.f18630;
        int mo4228 = abstractC1445.mo4228(c4987.f18631);
        int mo42282 = abstractC1445.mo4228(c49872.f18631);
        if (c4987.f18628 < c49872.f18628 || mo4228 < mo42282) {
            return false;
        }
        if (mo4228 > mo42282) {
            return true;
        }
        if (!c4987.m9838()) {
            int i2 = c4987.f18629;
            return i2 == -1 || i2 > i;
        }
        int i3 = c4987.f18630;
        int i4 = c4987.f18627;
        if (i3 <= i) {
            return i3 == i && i4 > c49872.f18627;
        }
        return true;
    }
}
