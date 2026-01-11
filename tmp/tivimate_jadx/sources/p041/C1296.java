package p041;

import p013.C0907;
import p035.AbstractC1220;
import p126.InterfaceC2136;
import p152.AbstractC2443;

/* renamed from: ʽʿ.ʼᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1296 extends C1316 {

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final int f4992;

    public C1296(int i, int i2) {
        super(i);
        this.f4992 = i2;
        if (i2 != 1) {
            if (i < 1) {
                throw new IllegalArgumentException(AbstractC1220.m3773(i, "Buffered channel capacity must be at least 1, but ", " was specified").toString());
            }
        } else {
            throw new IllegalArgumentException(("This implementation does not support suspension for senders, use " + AbstractC2443.m5561(C1316.class).m5581() + " instead").toString());
        }
    }

    @Override // p041.C1316
    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final boolean mo3892() {
        return this.f4992 == 2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x00b5, code lost:
    
        return r8;
     */
    /* renamed from: ٴʼ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m3893(java.lang.Object r17, boolean r18) {
        /*
            r16 = this;
            r0 = r16
            ʻᵢ.ʼᐧ r8 = p013.C0907.f3832
            int r1 = r0.f4992
            r9 = 3
            if (r1 != r9) goto L18
            java.lang.Object r1 = super.mo3890(r17)
            boolean r2 = r1 instanceof p041.C1301
            if (r2 == 0) goto L17
            boolean r2 = r1 instanceof p041.C1315
            if (r2 == 0) goto L16
            goto L17
        L16:
            return r8
        L17:
            return r1
        L18:
            ʻᴵ.ﹳٴ r6 = p041.AbstractC1310.f5015
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r1 = p041.C1316.f5037
            java.lang.Object r1 = r1.get(r0)
            ʽʿ.ˉˆ r1 = (p041.C1302) r1
        L22:
            java.util.concurrent.atomic.AtomicLongFieldUpdater r2 = p041.C1316.f5040
            long r2 = r2.getAndIncrement(r0)
            r4 = 1152921504606846975(0xfffffffffffffff, double:1.2882297539194265E-231)
            long r4 = r4 & r2
            r7 = 0
            boolean r7 = r0.m3924(r7, r2)
            int r10 = p041.AbstractC1310.f5025
            long r11 = (long) r10
            long r2 = r4 / r11
            long r13 = r4 % r11
            int r13 = (int) r13
            long r14 = r1.f9472
            int r14 = (r14 > r2 ? 1 : (r14 == r2 ? 0 : -1))
            if (r14 == 0) goto L54
            ʽʿ.ˉˆ r2 = p041.C1316.m3914(r0, r2, r1)
            if (r2 != 0) goto L53
            if (r7 == 0) goto L22
            java.lang.Throwable r1 = r0.m3940()
            ʽʿ.ﾞʻ r2 = new ʽʿ.ﾞʻ
            r2.<init>(r1)
            return r2
        L53:
            r1 = r2
        L54:
            r3 = r17
            r2 = r13
            int r13 = p041.C1316.m3918(r0, r1, r2, r3, r4, r6, r7)
            if (r13 == 0) goto Lb6
            r3 = 1
            if (r13 == r3) goto Lb5
            r3 = 2
            if (r13 == r3) goto L8f
            if (r13 == r9) goto L87
            r2 = 4
            if (r13 == r2) goto L70
            r2 = 5
            if (r13 == r2) goto L6c
            goto L22
        L6c:
            r1.m5590()
            goto L22
        L70:
            java.util.concurrent.atomic.AtomicLongFieldUpdater r2 = p041.C1316.f5034
            long r2 = r2.get(r0)
            int r2 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r2 >= 0) goto L7d
            r1.m5590()
        L7d:
            java.lang.Throwable r1 = r0.m3940()
            ʽʿ.ﾞʻ r2 = new ʽʿ.ﾞʻ
            r2.<init>(r1)
            return r2
        L87:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "unexpected"
            r1.<init>(r2)
            throw r1
        L8f:
            if (r7 == 0) goto L9e
            r1.m5631()
            java.lang.Throwable r1 = r0.m3940()
            ʽʿ.ﾞʻ r2 = new ʽʿ.ﾞʻ
            r2.<init>(r1)
            return r2
        L9e:
            boolean r3 = r6 instanceof p324.InterfaceC3996
            if (r3 == 0) goto La5
            ᴵי.ʽᵔ r6 = (p324.InterfaceC3996) r6
            goto La6
        La5:
            r6 = 0
        La6:
            if (r6 == 0) goto Lad
            int r13 = r2 + r10
            r6.mo3896(r1, r13)
        Lad:
            long r3 = r1.f9472
            long r3 = r3 * r11
            long r1 = (long) r2
            long r3 = r3 + r1
            r0.m3927(r3)
        Lb5:
            return r8
        Lb6:
            r1.m5590()
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: p041.C1296.m3893(java.lang.Object, boolean):java.lang.Object");
    }

    @Override // p041.C1316, p041.InterfaceC1294
    /* renamed from: ⁱˊ */
    public final Object mo3890(Object obj) {
        return m3893(obj, false);
    }

    @Override // p041.C1316, p041.InterfaceC1294
    /* renamed from: ﹳٴ */
    public final Object mo3891(Object obj, InterfaceC2136 interfaceC2136) {
        if (m3893(obj, true) instanceof C1315) {
            throw m3940();
        }
        return C0907.f3832;
    }
}
