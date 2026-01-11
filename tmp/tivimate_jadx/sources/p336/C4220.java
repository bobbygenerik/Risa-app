package p336;

import java.util.concurrent.atomic.AtomicReference;
import p062.C1549;
import p090.InterfaceC1824;
import p126.C2134;
import p126.InterfaceC2139;
import p324.AbstractC3999;

/* renamed from: ᵎʽ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4220 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final AtomicReference f15691 = new AtomicReference();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final InterfaceC1824 f15692;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C1549 f15693;

    public C4220(InterfaceC2139 interfaceC2139, C1549 c1549, InterfaceC1824 interfaceC1824) {
        this.f15693 = c1549;
        this.f15692 = interfaceC1824;
        AbstractC3999.m8168(AbstractC3999.m8179(interfaceC2139), null, new C4224(this, null, 0), 3);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:1|(2:3|(7:5|6|7|(1:(1:10)(2:16|17))(4:18|19|20|(1:22))|11|12|13))|25|6|7|(0)(0)|11|12|13) */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0025, code lost:
    
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0047, code lost:
    
        r0 = "Failed to update config values: " + r6;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x001f  */
    /* renamed from: ʽ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m8620(p336.C4219 r6, p316.AbstractC3902 r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof p336.C4215
            if (r0 == 0) goto L13
            r0 = r7
            ᵎʽ.ˉʿ r0 = (p336.C4215) r0
            int r1 = r0.f15682
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f15682 = r1
            goto L18
        L13:
            ᵎʽ.ˉʿ r0 = new ᵎʽ.ˉʿ
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.f15681
            int r1 = r0.f15682
            r2 = 1
            if (r1 == 0) goto L2f
            if (r1 != r2) goto L27
            p121.AbstractC2026.m5044(r7)     // Catch: java.io.IOException -> L25
            goto L58
        L25:
            r6 = move-exception
            goto L47
        L27:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L2f:
            p121.AbstractC2026.m5044(r7)
            ʿᵢ.ᵎﹶ r7 = r5.f15692     // Catch: java.io.IOException -> L25
            ʼⁱ.ʾˋ r1 = new ʼⁱ.ʾˋ     // Catch: java.io.IOException -> L25
            r3 = 0
            r4 = 14
            r1.<init>(r6, r3, r4)     // Catch: java.io.IOException -> L25
            r0.f15682 = r2     // Catch: java.io.IOException -> L25
            java.lang.Object r6 = r7.mo4746(r1, r0)     // Catch: java.io.IOException -> L25
            ᵢˎ.ﹳٴ r7 = p373.EnumC4532.f16960
            if (r6 != r7) goto L58
            return r7
        L47:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            java.lang.String r0 = "Failed to update config values: "
            r7.<init>(r0)
            r7.append(r6)
            java.lang.String r6 = r7.toString()
            java.lang.String r7 = "FirebaseSessions"
        L58:
            ʻᵢ.ʼᐧ r6 = p013.C0907.f3832
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: p336.C4220.m8620(ᵎʽ.ᵎﹶ, ᴵʾ.ʽ):java.lang.Object");
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean m8621() {
        Long l = m8622().f15688;
        Integer num = m8622().f15687;
        return l == null || num == null || this.f15693.m4347().f6129 - l.longValue() >= ((long) num.intValue());
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C4219 m8622() {
        AtomicReference atomicReference = this.f15691;
        if (atomicReference.get() == null) {
            Object m8171 = AbstractC3999.m8171(C2134.f8324, new C4224(this, null, 1));
            while (!atomicReference.compareAndSet(null, m8171) && atomicReference.get() == null) {
            }
        }
        return (C4219) atomicReference.get();
    }
}
