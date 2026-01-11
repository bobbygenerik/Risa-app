package p230;

import p055.C1495;
import p182.C2757;
import p305.AbstractC3731;
import p392.AbstractC4671;
import p392.C4675;
import p392.C4677;
import p420.InterfaceC4956;
import p428.C5057;
import p428.InterfaceC5067;

/* renamed from: ˑʿ.ˑٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3163 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public boolean f12092;

    /* renamed from: ˈ, reason: contains not printable characters */
    public boolean f12093;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public Object f12094;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f12095;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int f12096;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public Object f12097;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static boolean m6964(AbstractC4671 abstractC4671) {
        return abstractC4671.f17508 != 0;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static void m6965(AbstractC4671 abstractC4671) {
        int i = abstractC4671.f17508;
        if (i == 2) {
            AbstractC3731.m7857(i == 2);
            abstractC4671.f17508 = 1;
            abstractC4671.mo761();
        }
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static void m6966(AbstractC4671 abstractC4671, long j) {
        abstractC4671.f17520 = true;
        if (abstractC4671 instanceof C2757) {
            C2757 c2757 = (C2757) abstractC4671;
            AbstractC3731.m7857(c2757.f17520);
            c2757.f10508 = j;
        }
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public void m6967(boolean z) {
        if (z) {
            if (this.f12092) {
                AbstractC4671 abstractC4671 = (AbstractC4671) this.f12094;
                AbstractC3731.m7857(abstractC4671.f17508 == 0);
                abstractC4671.f17503.m7345();
                abstractC4671.mo5945();
                this.f12092 = false;
                return;
            }
            return;
        }
        if (this.f12093) {
            AbstractC4671 abstractC46712 = (AbstractC4671) this.f12097;
            abstractC46712.getClass();
            AbstractC3731.m7857(abstractC46712.f17508 == 0);
            abstractC46712.f17503.m7345();
            abstractC46712.mo5945();
            this.f12093 = false;
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public int m6968() {
        boolean m6964 = m6964((AbstractC4671) this.f12094);
        AbstractC4671 abstractC4671 = (AbstractC4671) this.f12097;
        return (m6964 ? 1 : 0) + ((abstractC4671 == null || !m6964(abstractC4671)) ? 0 : 1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ˆʾ, reason: contains not printable characters */
    public int m6969(AbstractC4671 abstractC4671, C4675 c4675, C5057 c5057, C4677 c4677) {
        int i;
        AbstractC4671 abstractC46712 = (AbstractC4671) this.f12094;
        int i2 = this.f12096;
        if (abstractC4671 == null || abstractC4671.f17508 == 0 || (abstractC4671 == abstractC46712 && ((i = this.f12095) == 2 || i == 4))) {
            return 1;
        }
        if (abstractC4671 == ((AbstractC4671) this.f12097) && this.f12095 == 3) {
            return 1;
        }
        Object[] objArr = abstractC4671.f17518 != c4675.f17530[i2];
        boolean m9961 = c5057.m9961(i2);
        if (!m9961 || objArr != false) {
            if (!abstractC4671.f17520) {
                InterfaceC5067 interfaceC5067 = c5057.f19027[i2];
                int length = interfaceC5067 != null ? interfaceC5067.length() : 0;
                C1495[] c1495Arr = new C1495[length];
                for (int i3 = 0; i3 < length; i3++) {
                    interfaceC5067.getClass();
                    c1495Arr[i3] = interfaceC5067.mo9759(i3);
                }
                InterfaceC4956 interfaceC4956 = c4675.f17530[i2];
                interfaceC4956.getClass();
                abstractC4671.m9272(c1495Arr, interfaceC4956, c4675.m9282(), c4675.f17529, c4675.f17537.f17660);
                return 3;
            }
            if (!abstractC4671.mo781()) {
                return 0;
            }
            m6975(abstractC4671, c4677);
            if (!m9961 || m6976()) {
                m6967(abstractC4671 == abstractC46712);
                return 1;
            }
        }
        return 1;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public AbstractC4671 m6970(C4675 c4675) {
        InterfaceC4956 interfaceC4956;
        if (c4675 != null && (interfaceC4956 = c4675.f17530[this.f12096]) != null) {
            AbstractC4671 abstractC4671 = (AbstractC4671) this.f12094;
            if (abstractC4671.f17518 == interfaceC4956) {
                return abstractC4671;
            }
            AbstractC4671 abstractC46712 = (AbstractC4671) this.f12097;
            if (abstractC46712 != null && abstractC46712.f17518 == interfaceC4956) {
                return abstractC46712;
            }
        }
        return null;
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public void m6971() {
        int i;
        AbstractC4671 abstractC4671 = (AbstractC4671) this.f12094;
        int i2 = abstractC4671.f17508;
        if (i2 == 1 && this.f12095 != 4) {
            AbstractC3731.m7857(i2 == 1);
            abstractC4671.f17508 = 2;
            abstractC4671.mo770();
            return;
        }
        AbstractC4671 abstractC46712 = (AbstractC4671) this.f12097;
        if (abstractC46712 == null || (i = abstractC46712.f17508) != 1 || this.f12095 == 3) {
            return;
        }
        AbstractC3731.m7857(i == 1);
        abstractC46712.f17508 = 2;
        abstractC46712.mo770();
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0036, code lost:
    
        if (r9.f17505 >= r2.m9282()) goto L31;
     */
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m6972(p392.C4675 r8, p392.AbstractC4671 r9) {
        /*
            r7 = this;
            int r0 = r7.f12096
            r1 = 1
            if (r9 != 0) goto L6
            goto L49
        L6:
            ﹳᵢ.ˉـ[] r2 = r8.f17530
            r2 = r2[r0]
            ﹳᵢ.ˉـ r3 = r9.f17518
            if (r3 == 0) goto L49
            if (r3 != r2) goto L3a
            if (r2 == 0) goto L49
            boolean r2 = r9.m9274()
            if (r2 != 0) goto L49
            ⁱי.ٴʼ r2 = r8.f17533
            ⁱי.ᵎˊ r3 = r8.f17537
            boolean r3 = r3.f17657
            if (r3 == 0) goto L3a
            if (r2 == 0) goto L3a
            boolean r3 = r2.f17535
            if (r3 == 0) goto L3a
            boolean r3 = r9 instanceof p182.C2757
            if (r3 != 0) goto L39
            boolean r3 = r9 instanceof p251.C3307
            if (r3 != 0) goto L39
            long r3 = r9.f17505
            long r5 = r2.m9282()
            int r2 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r2 < 0) goto L3a
            goto L49
        L39:
            return r1
        L3a:
            ⁱי.ٴʼ r8 = r8.f17533
            if (r8 == 0) goto L47
            ﹳᵢ.ˉـ[] r8 = r8.f17530
            r8 = r8[r0]
            ﹳᵢ.ˉـ r9 = r9.f17518
            if (r8 != r9) goto L47
            goto L49
        L47:
            r8 = 0
            return r8
        L49:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: p230.C3163.m6972(ⁱי.ٴʼ, ⁱי.ˑﹳ):boolean");
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public void m6973() {
        if (!m6964((AbstractC4671) this.f12094)) {
            m6967(true);
        }
        AbstractC4671 abstractC4671 = (AbstractC4671) this.f12097;
        if (abstractC4671 == null || abstractC4671.f17508 != 0) {
            return;
        }
        m6967(false);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public boolean m6974() {
        int i = this.f12095;
        if (i == 0 || i == 2 || i == 4) {
            return m6964((AbstractC4671) this.f12094);
        }
        AbstractC4671 abstractC4671 = (AbstractC4671) this.f12097;
        abstractC4671.getClass();
        return abstractC4671.f17508 != 0;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public void m6975(AbstractC4671 abstractC4671, C4677 c4677) {
        AbstractC3731.m7857(((AbstractC4671) this.f12094) == abstractC4671 || ((AbstractC4671) this.f12097) == abstractC4671);
        if (m6964(abstractC4671)) {
            if (abstractC4671 == ((AbstractC4671) c4677.f17552)) {
                c4677.f17550 = null;
                c4677.f17552 = null;
                c4677.f17548 = true;
            }
            m6965(abstractC4671);
            AbstractC3731.m7857(abstractC4671.f17508 == 1);
            abstractC4671.f17503.m7345();
            abstractC4671.f17508 = 0;
            abstractC4671.f17518 = null;
            abstractC4671.f17513 = null;
            abstractC4671.f17520 = false;
            abstractC4671.mo767();
            abstractC4671.f17511 = null;
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public boolean m6976() {
        int i = this.f12095;
        return i == 2 || i == 4 || i == 3;
    }
}
