package p041;

import java.util.concurrent.atomic.AtomicReferenceArray;
import p153.AbstractC2483;

/* renamed from: ʽʿ.ˉˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1302 extends AbstractC2483 {

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C1316 f5000;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final /* synthetic */ AtomicReferenceArray f5001;

    public C1302(long j, C1302 c1302, C1316 c1316, int i) {
        super(j, c1302, i);
        this.f5000 = c1316;
        this.f5001 = new AtomicReferenceArray(AbstractC1310.f5025 * 2);
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final void m3900(int i, boolean z) {
        if (z) {
            this.f5000.m3935((this.f9472 * AbstractC1310.f5025) + i);
        }
        m5631();
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final void m3901(int i, Object obj) {
        this.f5001.set((i * 2) + 1, obj);
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final boolean m3902(Object obj, int i, Object obj2) {
        AtomicReferenceArray atomicReferenceArray;
        int i2 = (i * 2) + 1;
        do {
            atomicReferenceArray = this.f5001;
            if (atomicReferenceArray.compareAndSet(i2, obj, obj2)) {
                return true;
            }
        } while (atomicReferenceArray.get(i2) == obj);
        return false;
    }

    @Override // p153.AbstractC2483
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final int mo3903() {
        return AbstractC1310.f5025;
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final void m3904(int i, Object obj) {
        this.f5001.set(i * 2, obj);
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x0059, code lost:
    
        m3904(r5, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x005c, code lost:
    
        if (r0 == false) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x005e, code lost:
    
        r2.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0061, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:?, code lost:
    
        return;
     */
    @Override // p153.AbstractC2483
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo3905(int r5, p126.InterfaceC2139 r6) {
        /*
            r4 = this;
            int r6 = p041.AbstractC1310.f5025
            if (r5 < r6) goto L6
            r0 = 1
            goto L7
        L6:
            r0 = 0
        L7:
            if (r0 == 0) goto La
            int r5 = r5 - r6
        La:
            int r6 = r5 * 2
            java.util.concurrent.atomic.AtomicReferenceArray r1 = r4.f5001
            r1.get(r6)
        L11:
            java.lang.Object r6 = r4.m3906(r5)
            boolean r1 = r6 instanceof p324.InterfaceC3996
            ʽʿ.ﾞᴵ r2 = r4.f5000
            r3 = 0
            if (r1 != 0) goto L62
            boolean r1 = r6 instanceof p041.C1306
            if (r1 == 0) goto L21
            goto L62
        L21:
            ʻᴵ.ﹳٴ r1 = p041.AbstractC1310.f5014
            if (r6 == r1) goto L59
            ʻᴵ.ﹳٴ r1 = p041.AbstractC1310.f5020
            if (r6 != r1) goto L2a
            goto L59
        L2a:
            ʻᴵ.ﹳٴ r1 = p041.AbstractC1310.f5021
            if (r6 == r1) goto L11
            ʻᴵ.ﹳٴ r1 = p041.AbstractC1310.f5029
            if (r6 != r1) goto L33
            goto L11
        L33:
            ʻᴵ.ﹳٴ r5 = p041.AbstractC1310.f5011
            if (r6 == r5) goto L7c
            ʻᴵ.ﹳٴ r5 = p041.AbstractC1310.f5015
            if (r6 != r5) goto L3c
            goto L7c
        L3c:
            ʻᴵ.ﹳٴ r5 = p041.AbstractC1310.f5028
            if (r6 != r5) goto L41
            goto L7c
        L41:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "unexpected state: "
            r0.<init>(r1)
            r0.append(r6)
            java.lang.String r6 = r0.toString()
            java.lang.String r6 = r6.toString()
            r5.<init>(r6)
            throw r5
        L59:
            r4.m3904(r5, r3)
            if (r0 == 0) goto L7c
            r2.getClass()
            return
        L62:
            if (r0 == 0) goto L67
            ʻᴵ.ﹳٴ r1 = p041.AbstractC1310.f5014
            goto L69
        L67:
            ʻᴵ.ﹳٴ r1 = p041.AbstractC1310.f5020
        L69:
            boolean r6 = r4.m3902(r6, r5, r1)
            if (r6 == 0) goto L11
            r4.m3904(r5, r3)
            r6 = r0 ^ 1
            r4.m3900(r5, r6)
            if (r0 == 0) goto L7c
            r2.getClass()
        L7c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p041.C1302.mo3905(int, ˈי.ᵔᵢ):void");
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final Object m3906(int i) {
        return this.f5001.get((i * 2) + 1);
    }
}
