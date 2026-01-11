package p324;

import java.util.concurrent.CancellationException;
import p091.AbstractRunnableC1846;
import p126.InterfaceC2136;

/* renamed from: ᴵי.ᴵᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4037 extends AbstractRunnableC1846 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f15424;

    public AbstractC4037(int i) {
        super(false, 0L);
        this.f15424 = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x003d, code lost:
    
        r4 = (p324.InterfaceC4036) r5.mo3419(p324.C3997.f15367);
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r11 = this;
            ˈי.ˈ r0 = r11.mo5634()     // Catch: java.lang.Throwable -> L1c kotlinx.coroutines.DispatchException -> L1f
            ˊʽ.ﾞᴵ r0 = (p153.C2485) r0     // Catch: java.lang.Throwable -> L1c kotlinx.coroutines.DispatchException -> L1f
            ᴵʾ.ʽ r1 = r0.f9478     // Catch: java.lang.Throwable -> L1c kotlinx.coroutines.DispatchException -> L1f
            java.lang.Object r0 = r0.f9477     // Catch: java.lang.Throwable -> L1c kotlinx.coroutines.DispatchException -> L1f
            ˈי.ᵔᵢ r2 = r1.mo3551()     // Catch: java.lang.Throwable -> L1c kotlinx.coroutines.DispatchException -> L1f
            java.lang.Object r0 = p153.AbstractC2481.m5622(r2, r0)     // Catch: java.lang.Throwable -> L1c kotlinx.coroutines.DispatchException -> L1f
            ʻᴵ.ﹳٴ r3 = p153.AbstractC2481.f9464     // Catch: java.lang.Throwable -> L1c kotlinx.coroutines.DispatchException -> L1f
            r4 = 0
            if (r0 == r3) goto L22
            ᴵי.ᵎʻ r3 = p324.AbstractC3999.m8172(r1, r2, r0)     // Catch: java.lang.Throwable -> L1c kotlinx.coroutines.DispatchException -> L1f
            goto L23
        L1c:
            r0 = move-exception
            goto L8a
        L1f:
            r0 = move-exception
            goto L8e
        L22:
            r3 = r4
        L23:
            ˈי.ᵔᵢ r5 = r1.mo3551()     // Catch: java.lang.Throwable -> L46
            java.lang.Object r6 = r11.mo5635()     // Catch: java.lang.Throwable -> L46
            java.lang.Throwable r7 = r11.mo8216(r6)     // Catch: java.lang.Throwable -> L46
            if (r7 != 0) goto L48
            int r8 = r11.f15424     // Catch: java.lang.Throwable -> L46
            r9 = 1
            if (r8 == r9) goto L3b
            r10 = 2
            if (r8 != r10) goto L3a
            goto L3b
        L3a:
            r9 = 0
        L3b:
            if (r9 == 0) goto L48
            ᴵי.ʽﹳ r4 = p324.C3997.f15367     // Catch: java.lang.Throwable -> L46
            ˈי.ﾞᴵ r4 = r5.mo3419(r4)     // Catch: java.lang.Throwable -> L46
            ᴵי.ᴵˑ r4 = (p324.InterfaceC4036) r4     // Catch: java.lang.Throwable -> L46
            goto L48
        L46:
            r1 = move-exception
            goto L7e
        L48:
            if (r4 == 0) goto L60
            boolean r5 = r4.mo8230()     // Catch: java.lang.Throwable -> L46
            if (r5 != 0) goto L60
            java.util.concurrent.CancellationException r4 = r4.mo8236()     // Catch: java.lang.Throwable -> L46
            r11.mo8224(r4)     // Catch: java.lang.Throwable -> L46
            ʻᵢ.ﾞᴵ r5 = new ʻᵢ.ﾞᴵ     // Catch: java.lang.Throwable -> L46
            r5.<init>(r4)     // Catch: java.lang.Throwable -> L46
            r1.mo3549(r5)     // Catch: java.lang.Throwable -> L46
            goto L72
        L60:
            if (r7 == 0) goto L6b
            ʻᵢ.ﾞᴵ r4 = new ʻᵢ.ﾞᴵ     // Catch: java.lang.Throwable -> L46
            r4.<init>(r7)     // Catch: java.lang.Throwable -> L46
            r1.mo3549(r4)     // Catch: java.lang.Throwable -> L46
            goto L72
        L6b:
            java.lang.Object r4 = r11.mo8221(r6)     // Catch: java.lang.Throwable -> L46
            r1.mo3549(r4)     // Catch: java.lang.Throwable -> L46
        L72:
            if (r3 == 0) goto L7a
            boolean r1 = r3.m8264()     // Catch: java.lang.Throwable -> L1c kotlinx.coroutines.DispatchException -> L1f
            if (r1 == 0) goto L9b
        L7a:
            p153.AbstractC2481.m5625(r2, r0)     // Catch: java.lang.Throwable -> L1c kotlinx.coroutines.DispatchException -> L1f
            return
        L7e:
            if (r3 == 0) goto L86
            boolean r3 = r3.m8264()     // Catch: java.lang.Throwable -> L1c kotlinx.coroutines.DispatchException -> L1f
            if (r3 == 0) goto L89
        L86:
            p153.AbstractC2481.m5625(r2, r0)     // Catch: java.lang.Throwable -> L1c kotlinx.coroutines.DispatchException -> L1f
        L89:
            throw r1     // Catch: java.lang.Throwable -> L1c kotlinx.coroutines.DispatchException -> L1f
        L8a:
            r11.m8263(r0)
            goto L9b
        L8e:
            ˈי.ˈ r1 = r11.mo5634()
            ˈי.ᵔᵢ r1 = r1.mo3551()
            java.lang.Throwable r0 = r0.f3106
            p324.AbstractC3999.m8167(r0, r1)
        L9b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p324.AbstractC4037.run():void");
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void m8263(Throwable th) {
        AbstractC3999.m8167(new Error("Fatal exception in coroutines machinery for " + this + ". Please read KDoc to 'handleFatalException' method and report this incident to maintainers", th), mo5634().mo3551());
    }

    /* renamed from: ʽ */
    public abstract InterfaceC2136 mo5634();

    /* renamed from: ˆʾ */
    public abstract Object mo5635();

    /* renamed from: ˑﹳ */
    public Throwable mo8216(Object obj) {
        C4022 c4022 = obj instanceof C4022 ? (C4022) obj : null;
        if (c4022 != null) {
            return c4022.f15404;
        }
        return null;
    }

    /* renamed from: ᵎﹶ */
    public Object mo8221(Object obj) {
        return obj;
    }

    /* renamed from: ⁱˊ */
    public void mo8224(CancellationException cancellationException) {
    }
}
