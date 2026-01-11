package p153;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import p152.AbstractC2441;
import p324.AbstractC3999;

/* renamed from: ˊʽ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C2468 {
    private volatile /* synthetic */ Object _next$volatile = this;
    private volatile /* synthetic */ Object _prev$volatile = this;
    private volatile /* synthetic */ Object _removedRef$volatile;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f9437 = AtomicReferenceFieldUpdater.newUpdater(C2468.class, Object.class, "_next$volatile");

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f9438 = AtomicReferenceFieldUpdater.newUpdater(C2468.class, Object.class, "_prev$volatile");

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f9436 = AtomicReferenceFieldUpdater.newUpdater(C2468.class, Object.class, "_removedRef$volatile");

    public String toString() {
        return new AbstractC2441(this, AbstractC3999.class, "classSimpleName", "getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;", 1) + '@' + AbstractC3999.m8173(this);
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public boolean mo5593() {
        return f9437.get(this) instanceof C2471;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final boolean m5594(C2468 c2468, int i) {
        while (true) {
            C2468 m5597 = m5597();
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f9438;
            if (m5597 == null) {
                Object obj = atomicReferenceFieldUpdater.get(this);
                while (true) {
                    m5597 = (C2468) obj;
                    if (!m5597.mo5593()) {
                        break;
                    }
                    obj = atomicReferenceFieldUpdater.get(m5597);
                }
            }
            if (m5597 instanceof C2479) {
                return (((C2479) m5597).f9461 & i) == 0 && m5597.m5594(c2468, i);
            }
            atomicReferenceFieldUpdater.set(c2468, m5597);
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f9437;
            atomicReferenceFieldUpdater2.set(c2468, this);
            while (!atomicReferenceFieldUpdater2.compareAndSet(m5597, this, c2468)) {
                if (atomicReferenceFieldUpdater2.get(m5597) != this) {
                    break;
                }
            }
            c2468.m5595(this);
            return true;
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m5595(C2468 c2468) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f9438;
            C2468 c24682 = (C2468) atomicReferenceFieldUpdater.get(c2468);
            if (f9437.get(this) != c2468) {
                return;
            }
            while (!atomicReferenceFieldUpdater.compareAndSet(c2468, c24682, this)) {
                if (atomicReferenceFieldUpdater.get(c2468) != c24682) {
                    break;
                }
            }
            if (mo5593()) {
                c2468.m5597();
                return;
            }
            return;
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final C2468 m5596() {
        C2468 c2468;
        Object obj = f9437.get(this);
        C2471 c2471 = obj instanceof C2471 ? (C2471) obj : null;
        return (c2471 == null || (c2468 = c2471.f9447) == null) ? (C2468) obj : c2468;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0031, code lost:
    
        r6 = ((p153.C2471) r6).f9447;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0039, code lost:
    
        if (r5.compareAndSet(r4, r3, r6) == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0041, code lost:
    
        if (r5.get(r4) == r3) goto L43;
     */
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p153.C2468 m5597() {
        /*
            r9 = this;
        L0:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = p153.C2468.f9438
            java.lang.Object r1 = r0.get(r9)
            ˊʽ.ˆʾ r1 = (p153.C2468) r1
            r2 = 0
            r3 = r1
        La:
            r4 = r2
        Lb:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r5 = p153.C2468.f9437
            java.lang.Object r6 = r5.get(r3)
            if (r6 != r9) goto L24
            if (r1 != r3) goto L16
            return r3
        L16:
            boolean r2 = r0.compareAndSet(r9, r1, r3)
            if (r2 == 0) goto L1d
            return r3
        L1d:
            java.lang.Object r2 = r0.get(r9)
            if (r2 == r1) goto L16
            goto L0
        L24:
            boolean r7 = r9.mo5593()
            if (r7 == 0) goto L2b
            return r2
        L2b:
            boolean r7 = r6 instanceof p153.C2471
            if (r7 == 0) goto L4b
            if (r4 == 0) goto L44
            ˊʽ.ˉˆ r6 = (p153.C2471) r6
            ˊʽ.ˆʾ r6 = r6.f9447
        L35:
            boolean r7 = r5.compareAndSet(r4, r3, r6)
            if (r7 == 0) goto L3d
            r3 = r4
            goto La
        L3d:
            java.lang.Object r7 = r5.get(r4)
            if (r7 == r3) goto L35
            goto L0
        L44:
            java.lang.Object r3 = r0.get(r3)
            ˊʽ.ˆʾ r3 = (p153.C2468) r3
            goto Lb
        L4b:
            r4 = r6
            ˊʽ.ˆʾ r4 = (p153.C2468) r4
            r8 = r4
            r4 = r3
            r3 = r8
            goto Lb
        */
        throw new UnsupportedOperationException("Method not decompiled: p153.C2468.m5597():ˊʽ.ˆʾ");
    }
}
