package p436;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import p012.C0902;
import p324.AbstractC3999;

/* renamed from: ﹶי.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5158 extends C5162 implements InterfaceC5165 {

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f19444 = AtomicReferenceFieldUpdater.newUpdater(C5158.class, Object.class, "owner$volatile");
    private volatile /* synthetic */ Object owner$volatile;

    public C5158(boolean z) {
        super(1, z ? 1 : 0);
        this.owner$volatile = z ? null : AbstractC5160.f19446;
    }

    public final String toString() {
        return "Mutex@" + AbstractC3999.m8173(this) + "[isLocked=" + mo3414() + ",owner=" + f19444.get(this) + ']';
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0022, code lost:
    
        r2 = r0.f19456;
        p436.C5158.f19444.set(r2, null);
        r3 = r0.f19455;
        r3.m8220(r1, r3.f15424, new ʼⁱ.ˏי(16, new ᐧᵎ.ˆʾ(r2, r0)));
     */
    @Override // p436.InterfaceC5165
    /* renamed from: ʽ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object mo3413(p316.AbstractC3902 r7) {
        /*
            r6 = this;
            boolean r0 = r6.m10153()
            ʻᵢ.ʼᐧ r1 = p013.C0907.f3832
            if (r0 == 0) goto L9
            goto L51
        L9:
            ˈי.ˈ r7 = ˉᵎ.ⁱˊ.ˈٴ(r7)
            ᴵי.ٴﹶ r7 = p324.AbstractC3999.m8182(r7)
            ﹶי.ⁱˊ r0 = new ﹶי.ⁱˊ     // Catch: java.lang.Throwable -> L52
            r0.<init>(r6, r7)     // Catch: java.lang.Throwable -> L52
        L16:
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r2 = p436.C5162.f19451     // Catch: java.lang.Throwable -> L52
            int r2 = r2.getAndDecrement(r6)     // Catch: java.lang.Throwable -> L52
            int r3 = r6.f19453     // Catch: java.lang.Throwable -> L52
            if (r2 > r3) goto L16
            if (r2 <= 0) goto L3e
            ﹶי.ʽ r2 = r0.f19456     // Catch: java.lang.Throwable -> L52
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r3 = p436.C5158.f19444     // Catch: java.lang.Throwable -> L52
            r4 = 0
            r3.set(r2, r4)     // Catch: java.lang.Throwable -> L52
            ᴵי.ٴﹶ r3 = r0.f19455     // Catch: java.lang.Throwable -> L52
            ᐧᵎ.ˆʾ r4 = new ᐧᵎ.ˆʾ     // Catch: java.lang.Throwable -> L52
            r4.<init>(r2, r0)     // Catch: java.lang.Throwable -> L52
            int r0 = r3.f15424     // Catch: java.lang.Throwable -> L52
            ʼⁱ.ˏי r2 = new ʼⁱ.ˏי     // Catch: java.lang.Throwable -> L52
            r5 = 16
            r2.<init>(r5, r4)     // Catch: java.lang.Throwable -> L52
            r3.m8220(r1, r0, r2)     // Catch: java.lang.Throwable -> L52
            goto L44
        L3e:
            boolean r2 = r6.m10156(r0)     // Catch: java.lang.Throwable -> L52
            if (r2 == 0) goto L16
        L44:
            java.lang.Object r7 = r7.m8209()
            ᵢˎ.ﹳٴ r0 = p373.EnumC4532.f16960
            if (r7 != r0) goto L4d
            goto L4e
        L4d:
            r7 = r1
        L4e:
            if (r7 != r0) goto L51
            return r7
        L51:
            return r1
        L52:
            r0 = move-exception
            r7.m8212()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p436.C5158.mo3413(ᴵʾ.ʽ):java.lang.Object");
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final boolean m10153() {
        int i;
        while (true) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = C5162.f19451;
            int i2 = atomicIntegerFieldUpdater.get(this);
            int i3 = this.f19453;
            if (i2 > i3) {
                do {
                    i = atomicIntegerFieldUpdater.get(this);
                    if (i > i3) {
                    }
                } while (!atomicIntegerFieldUpdater.compareAndSet(this, i, i3));
            } else {
                if (i2 <= 0) {
                    return false;
                }
                if (atomicIntegerFieldUpdater.compareAndSet(this, i2, i2 - 1)) {
                    f19444.set(this, null);
                    return true;
                }
            }
        }
    }

    @Override // p436.InterfaceC5165
    /* renamed from: ˉˆ */
    public final boolean mo3414() {
        return Math.max(C5162.f19451.get(this), 0) == 0;
    }

    @Override // p436.InterfaceC5165
    /* renamed from: ᵎﹶ */
    public final void mo3416(Object obj) {
        while (mo3414()) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f19444;
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            C0902 c0902 = AbstractC5160.f19446;
            if (obj2 != c0902) {
                if (obj2 == obj || obj == null) {
                    while (!atomicReferenceFieldUpdater.compareAndSet(this, obj2, c0902)) {
                        if (atomicReferenceFieldUpdater.get(this) != obj2) {
                            break;
                        }
                    }
                    m10155();
                    return;
                }
                throw new IllegalStateException(("This mutex is locked by " + obj2 + ", but " + obj + " is expected").toString());
            }
        }
        throw new IllegalStateException("This mutex is not locked");
    }
}
