package p035;

import androidx.lifecycle.AbstractC0161;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import p126.C2134;
import p126.InterfaceC2136;
import p126.InterfaceC2139;
import p153.C2469;
import p324.AbstractC3999;
import p329.InterfaceC4106;
import p404.C4790;

/* renamed from: ʼﾞ.ٴᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1229 extends AbstractC0161 {
    private final InterfaceC4106 lambdaFunction;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final C4790 f4755;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final C1240 f4756;

    /* renamed from: יـ, reason: contains not printable characters */
    public final InterfaceC2139 f4757;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final boolean f4758;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final AbstractC1219 f4761;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final AtomicBoolean f4754 = new AtomicBoolean(true);

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final AtomicBoolean f4759 = new AtomicBoolean(false);

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final AtomicBoolean f4760 = new AtomicBoolean(false);

    public C1229(AbstractC1219 abstractC1219, C4790 c4790, boolean z, String[] strArr, InterfaceC4106 interfaceC4106) {
        InterfaceC2139 interfaceC2139;
        this.f4761 = abstractC1219;
        this.f4755 = c4790;
        this.f4758 = z;
        this.f4756 = new C1240(strArr, this);
        if (abstractC1219.m3760()) {
            interfaceC2139 = null;
            if (z) {
                InterfaceC2139 interfaceC21392 = abstractC1219.f4725;
                if (interfaceC21392 != null) {
                    interfaceC2139 = interfaceC21392;
                }
            } else {
                C2469 c2469 = abstractC1219.f4726;
                interfaceC2139 = (c2469 != null ? c2469 : null).f9439;
            }
        } else {
            interfaceC2139 = C2134.f8324;
        }
        this.f4757 = interfaceC2139;
        this.lambdaFunction = interfaceC4106;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0076 A[Catch: all -> 0x002b, Exception -> 0x002e, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x002e, blocks: (B:11:0x0027, B:15:0x0076), top: B:10:0x0027, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0097 A[Catch: all -> 0x002b, TRY_LEAVE, TryCatch #1 {all -> 0x002b, blocks: (B:11:0x0027, B:13:0x006e, B:15:0x0076, B:25:0x0097, B:38:0x008d, B:39:0x0094), top: B:10:0x0027, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x006c -> B:12:0x006e). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a6 -> B:24:0x00a7). Please report as a decompilation issue!!! */
    /* renamed from: ﾞʻ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m3798(p035.C1229 r6, p316.AbstractC3902 r7) {
        /*
            boolean r0 = r7 instanceof p035.C1210
            if (r0 == 0) goto L13
            r0 = r7
            ʼﾞ.ˆﾞ r0 = (p035.C1210) r0
            int r1 = r0.f4684
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f4684 = r1
            goto L18
        L13:
            ʼﾞ.ˆﾞ r0 = new ʼﾞ.ˆﾞ
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.f4685
            int r1 = r0.f4684
            r2 = 0
            r3 = 0
            r4 = 1
            if (r1 == 0) goto L38
            if (r1 != r4) goto L30
            int r6 = r0.f4687
            ʼﾞ.ٴᵢ r1 = r0.f4683
            p121.AbstractC2026.m5044(r7)     // Catch: java.lang.Throwable -> L2b java.lang.Exception -> L2e
            goto L6e
        L2b:
            r6 = move-exception
            goto La0
        L2e:
            r6 = move-exception
            goto L8d
        L30:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L38:
            p121.AbstractC2026.m5044(r7)
            java.util.concurrent.atomic.AtomicBoolean r7 = r6.f4760
            boolean r7 = r7.compareAndSet(r3, r4)
            if (r7 == 0) goto L63
            ʼﾞ.ˊʻ r7 = r6.f4761
            ʼﾞ.ٴﹶ r7 = r7.f4727
            if (r7 != 0) goto L4a
            r7 = r2
        L4a:
            ʼﾞ.ᵔי r1 = r6.f4756
            r7.getClass()
            ʼﾞ.ᐧᴵ r5 = new ʼﾞ.ᐧᴵ
            r5.<init>(r7, r1)
            boolean r1 = r7.m3802(r5)
            if (r1 == 0) goto L63
            ʼﾞ.ˆʾ r1 = new ʼﾞ.ˆʾ
            r5 = 0
            r1.<init>(r7, r2, r5)
            ˉᵎ.ⁱˊ.ᵎˊ(r1)
        L63:
            java.util.concurrent.atomic.AtomicBoolean r7 = r6.f4759
            boolean r7 = r7.compareAndSet(r3, r4)
            r1 = r6
            if (r7 == 0) goto La6
            r7 = r2
            r6 = r3
        L6e:
            java.util.concurrent.atomic.AtomicBoolean r5 = r1.f4754     // Catch: java.lang.Throwable -> L2b
            boolean r5 = r5.compareAndSet(r4, r3)     // Catch: java.lang.Throwable -> L2b
            if (r5 == 0) goto L95
            r0.f4683 = r1     // Catch: java.lang.Throwable -> L2b java.lang.Exception -> L2e
            r0.f4687 = r4     // Catch: java.lang.Throwable -> L2b java.lang.Exception -> L2e
            r0.f4684 = r4     // Catch: java.lang.Throwable -> L2b java.lang.Exception -> L2e
            ʼﾞ.ˊʻ r6 = r1.f4761     // Catch: java.lang.Throwable -> L2b java.lang.Exception -> L2e
            boolean r7 = r1.f4758     // Catch: java.lang.Throwable -> L2b java.lang.Exception -> L2e
            ᴵⁱ.ﾞʻ r5 = r1.lambdaFunction     // Catch: java.lang.Throwable -> L2b java.lang.Exception -> L2e
            java.lang.Object r7 = p286.AbstractC3586.m7545(r6, r4, r7, r5, r0)     // Catch: java.lang.Throwable -> L2b java.lang.Exception -> L2e
            ᵢˎ.ﹳٴ r6 = p373.EnumC4532.f16960
            if (r7 != r6) goto L8b
            return r6
        L8b:
            r6 = r4
            goto L6e
        L8d:
            java.lang.RuntimeException r7 = new java.lang.RuntimeException     // Catch: java.lang.Throwable -> L2b
            java.lang.String r0 = "Exception while computing database live data."
            r7.<init>(r0, r6)     // Catch: java.lang.Throwable -> L2b
            throw r7     // Catch: java.lang.Throwable -> L2b
        L95:
            if (r6 == 0) goto L9a
            r1.m681(r7)     // Catch: java.lang.Throwable -> L2b
        L9a:
            java.util.concurrent.atomic.AtomicBoolean r7 = r1.f4759
            r7.set(r3)
            goto La7
        La0:
            java.util.concurrent.atomic.AtomicBoolean r7 = r1.f4759
            r7.set(r3)
            throw r6
        La6:
            r6 = r3
        La7:
            if (r6 == 0) goto Lb4
            java.util.concurrent.atomic.AtomicBoolean r6 = r1.f4754
            boolean r6 = r6.get()
            if (r6 != 0) goto Lb2
            goto Lb4
        Lb2:
            r6 = r1
            goto L63
        Lb4:
            ʻᵢ.ʼᐧ r6 = p013.C0907.f3832
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: p035.C1229.m3798(ʼﾞ.ٴᵢ, ᴵʾ.ʽ):java.lang.Object");
    }

    @Override // androidx.lifecycle.AbstractC0161
    /* renamed from: ᵎﹶ */
    public final void mo687() {
        ((Set) this.f4755.f18034).add(this);
        C2469 c2469 = this.f4761.f4726;
        InterfaceC2136 interfaceC2136 = null;
        if (c2469 == null) {
            c2469 = null;
        }
        AbstractC3999.m8168(c2469, this.f4757, new C1235(this, interfaceC2136, 1), 2);
    }

    @Override // androidx.lifecycle.AbstractC0161
    /* renamed from: ᵔᵢ */
    public final void mo688() {
        ((Set) this.f4755.f18034).remove(this);
    }
}
