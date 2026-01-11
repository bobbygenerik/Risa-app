package p392;

import android.util.Pair;
import com.parse.ˊﾞ;
import java.util.ArrayList;
import p003.C0779;
import p017.AbstractC0993;
import p017.C0968;
import p055.AbstractC1445;
import p055.C1466;
import p055.C1467;
import p283.C3569;
import p305.AbstractC3731;
import p305.C3711;
import p420.C4987;

/* renamed from: ⁱי.ᵔי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4689 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public C4675 f17693;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public long f17694;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C0779 f17695;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public C4675 f17696;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C3711 f17697;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public C4675 f17698;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public Object f17699;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C3569 f17700;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public C4675 f17701;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public int f17702;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public int f17703;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public boolean f17704;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public C4675 f17708;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public long f17709;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C1467 f17707 = new C1467();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C1466 f17706 = new C1466();

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public ArrayList f17705 = new ArrayList();

    public C4689(C0779 c0779, C3711 c3711, C3569 c3569, C4662 c4662) {
        this.f17695 = c0779;
        this.f17697 = c3711;
        this.f17700 = c3569;
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public static C4987 m9386(AbstractC1445 abstractC1445, Object obj, long j, long j2, C1466 c1466, C1467 c1467) {
        abstractC1445.mo4225(obj, c1467);
        abstractC1445.m4226(c1467.f5744, c1466);
        abstractC1445.mo4228(obj);
        int i = c1467.f5747.f5643;
        if (i != 0) {
            if (i == 1) {
                c1467.m4275(0);
            }
            c1467.f5747.getClass();
            c1467.m4271(0);
        }
        abstractC1445.mo4225(obj, c1467);
        int m4268 = c1467.m4268(j);
        return m4268 == -1 ? new C4987(obj, j2, c1467.m4273(j)) : new C4987(obj, m4268, c1467.m4270(m4268), j2, -1);
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final boolean m9387(AbstractC1445 abstractC1445, C4987 c4987, boolean z) {
        int mo4228 = abstractC1445.mo4228(c4987.f18631);
        if (!abstractC1445.mo4221(abstractC1445.mo4231(mo4228, this.f17707, false).f5744, this.f17706, 0L).f5728) {
            if (abstractC1445.m4220(mo4228, this.f17707, this.f17706, this.f17702, this.f17704) == -1 && z) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final C4987 m9388(AbstractC1445 abstractC1445, Object obj, long j) {
        long m9399;
        int mo4228;
        Object obj2 = obj;
        C1467 c1467 = this.f17707;
        int i = abstractC1445.mo4225(obj2, c1467).f5744;
        Object obj3 = this.f17699;
        if (obj3 == null || (mo4228 = abstractC1445.mo4228(obj3)) == -1 || abstractC1445.mo4231(mo4228, c1467, false).f5744 != i) {
            C4675 c4675 = this.f17693;
            while (true) {
                if (c4675 == null) {
                    C4675 c46752 = this.f17693;
                    while (true) {
                        if (c46752 != null) {
                            int mo42282 = abstractC1445.mo4228(c46752.f17540);
                            if (mo42282 != -1 && abstractC1445.mo4231(mo42282, c1467, false).f5744 == i) {
                                m9399 = c46752.f17537.f17660.f18628;
                                break;
                            }
                            c46752 = c46752.f17533;
                        } else {
                            m9399 = m9399(obj2);
                            if (m9399 == -1) {
                                m9399 = this.f17709;
                                this.f17709 = 1 + m9399;
                                if (this.f17693 == null) {
                                    this.f17699 = obj2;
                                    this.f17694 = m9399;
                                }
                            }
                        }
                    }
                } else {
                    if (c4675.f17540.equals(obj2)) {
                        m9399 = c4675.f17537.f17660.f18628;
                        break;
                    }
                    c4675 = c4675.f17533;
                }
            }
        } else {
            m9399 = this.f17694;
        }
        abstractC1445.mo4225(obj2, c1467);
        int i2 = c1467.f5744;
        C1466 c1466 = this.f17706;
        abstractC1445.m4226(i2, c1466);
        boolean z = false;
        for (int mo42283 = abstractC1445.mo4228(obj); mo42283 >= c1466.f5738; mo42283--) {
            abstractC1445.mo4231(mo42283, c1467, true);
            boolean z2 = c1467.f5747.f5643 > 0;
            z |= z2;
            if (c1467.m4268(c1467.f5745) != -1) {
                obj2 = c1467.f5748;
                obj2.getClass();
            }
            if (z && (!z2 || c1467.f5745 != 0)) {
                break;
            }
        }
        return m9386(abstractC1445, obj2, j, m9399, this.f17706, this.f17707);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C4684 m9389(AbstractC1445 abstractC1445, C4675 c4675, long j) {
        long j2;
        C1467 c1467;
        AbstractC1445 abstractC14452;
        Object obj;
        long j3;
        long j4;
        long j5;
        long m9399;
        C4684 c4684 = c4675.f17537;
        long j6 = (c4675.f17529 + c4684.f17656) - j;
        if (!c4684.f17658) {
            C4987 c4987 = c4684.f17660;
            Object obj2 = c4987.f18631;
            int i = c4987.f18629;
            C1467 c14672 = this.f17707;
            abstractC1445.mo4225(obj2, c14672);
            boolean z = c4684.f17657;
            if (!c4987.m9838()) {
                if (i != -1) {
                    c14672.m4275(i);
                }
                int m4270 = c14672.m4270(i);
                c14672.m4271(i);
                if (m4270 != c14672.f5747.m4240(i).f5894) {
                    return m9393(abstractC1445, c4987.f18631, c4987.f18629, m4270, c4684.f17656, c4987.f18628, z);
                }
                abstractC1445.mo4225(obj2, c14672);
                c14672.m4269(i);
                c14672.f5747.m4240(i).getClass();
                return m9404(abstractC1445, c4987.f18631, 0L, c4684.f17656, c4987.f18628, false);
            }
            int i2 = c4987.f18630;
            int i3 = c14672.f5747.m4240(i2).f5894;
            if (i3 == -1) {
                return null;
            }
            int m4296 = c14672.f5747.m4240(i2).m4296(c4987.f18627);
            if (m4296 < i3) {
                return m9393(abstractC1445, c4987.f18631, i2, m4296, c4684.f17653, c4987.f18628, z);
            }
            long j7 = c4684.f17653;
            if (j7 == -9223372036854775807L) {
                int i4 = c14672.f5744;
                long max = Math.max(0L, j6);
                j2 = 0;
                Pair m4219 = abstractC1445.m4219(this.f17706, c14672, i4, -9223372036854775807L, max);
                c1467 = c14672;
                abstractC14452 = abstractC1445;
                if (m4219 == null) {
                    return null;
                }
                j7 = ((Long) m4219.second).longValue();
            } else {
                j2 = 0;
                c1467 = c14672;
                abstractC14452 = abstractC1445;
            }
            int i5 = c4987.f18630;
            abstractC14452.mo4225(obj2, c1467);
            c1467.m4269(i5);
            c1467.f5747.m4240(i5).getClass();
            return m9404(abstractC1445, c4987.f18631, Math.max(j2, j7), c4684.f17653, c4987.f18628, z);
        }
        C4684 c46842 = c4675.f17537;
        C4987 c49872 = c46842.f17660;
        long j8 = c46842.f17653;
        int m4220 = abstractC1445.m4220(abstractC1445.mo4228(c49872.f18631), this.f17707, this.f17706, this.f17702, this.f17704);
        if (m4220 != -1) {
            C1467 c14673 = this.f17707;
            int i6 = abstractC1445.mo4231(m4220, c14673, true).f5744;
            Object obj3 = c14673.f5748;
            obj3.getClass();
            long j9 = c49872.f18628;
            if (abstractC1445.mo4221(i6, this.f17706, 0L).f5738 == m4220) {
                Pair m42192 = abstractC1445.m4219(this.f17706, this.f17707, i6, -9223372036854775807L, Math.max(0L, j6));
                if (m42192 != null) {
                    Object obj4 = m42192.first;
                    long longValue = ((Long) m42192.second).longValue();
                    C4675 c46752 = c4675.f17533;
                    if (c46752 == null || !c46752.f17540.equals(obj4)) {
                        m9399 = m9399(obj4);
                        if (m9399 == -1) {
                            m9399 = this.f17709;
                            this.f17709 = 1 + m9399;
                        }
                    } else {
                        m9399 = c46752.f17537.f17660.f18628;
                    }
                    obj = obj4;
                    j3 = longValue;
                    j5 = m9399;
                    j4 = -9223372036854775807L;
                }
            } else {
                obj = obj3;
                j3 = 0;
                j4 = 0;
                j5 = j9;
            }
            C4987 m9386 = m9386(abstractC1445, obj, j3, j5, this.f17706, this.f17707);
            if (j4 != -9223372036854775807L && j8 != -9223372036854775807L) {
                int i7 = abstractC1445.mo4225(c49872.f18631, c14673).f5747.f5643;
                c14673.f5747.getClass();
                if (i7 > 0) {
                    c14673.m4271(0);
                }
            }
            return m9391(abstractC1445, m9386, j4, j3);
        }
        return null;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final boolean m9390(AbstractC1445 abstractC1445, C4987 c4987) {
        boolean z = !c4987.m9838() && c4987.f18629 == -1;
        Object obj = c4987.f18631;
        if (z) {
            if (abstractC1445.mo4221(abstractC1445.mo4225(obj, this.f17707).f5744, this.f17706, 0L).f5734 == abstractC1445.mo4228(obj)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C4684 m9391(AbstractC1445 abstractC1445, C4987 c4987, long j, long j2) {
        abstractC1445.mo4225(c4987.f18631, this.f17707);
        return c4987.m9838() ? m9393(abstractC1445, c4987.f18631, c4987.f18630, c4987.f18627, j, c4987.f18628, false) : m9404(abstractC1445, c4987.f18631, j2, j, c4987.f18628, false);
    }

    /* JADX WARN: Type inference failed for: r1v4, types: [ﹳᵢ.ʿᵢ, java.lang.Object] */
    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final void m9392(long j) {
        C4675 c4675 = this.f17708;
        if (c4675 != null) {
            AbstractC3731.m7857(c4675.f17533 == null);
            if (c4675.f17535) {
                c4675.f17541.mo5121(j - c4675.f17529);
            }
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C4684 m9393(AbstractC1445 abstractC1445, Object obj, int i, int i2, long j, long j2, boolean z) {
        C4987 c4987 = new C4987(obj, i, i2, j2, -1);
        C1467 c1467 = this.f17707;
        long m4274 = abstractC1445.mo4225(obj, c1467).m4274(i, i2);
        if (i2 == c1467.m4270(i)) {
            c1467.f5747.getClass();
        }
        c1467.m4271(i);
        long j3 = 0;
        if (m4274 != -9223372036854775807L && 0 >= m4274) {
            j3 = Math.max(0L, m4274 - 1);
        }
        return new C4684(c4987, j3, j, -9223372036854775807L, m4274, z, false, false, false, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:64:0x00b4, code lost:
    
        return m9397(r3);
     */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00a6 A[RETURN] */
    /* renamed from: יـ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m9394(p055.AbstractC1445 r18, long r19, long r21, long r23) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            ⁱי.ٴʼ r2 = r0.f17693
            r3 = 0
        L7:
            r4 = 0
            if (r2 == 0) goto Lb5
            ⁱי.ᵎˊ r5 = r2.f17537
            if (r3 != 0) goto L15
            ⁱי.ᵎˊ r3 = r0.m9398(r1, r5)
            r6 = r19
            goto L30
        L15:
            r6 = r19
            ⁱי.ᵎˊ r8 = r0.m9389(r1, r3, r6)
            if (r8 == 0) goto Lb0
            long r9 = r5.f17659
            long r11 = r8.f17659
            int r9 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1))
            if (r9 != 0) goto Lb0
            ﹳᵢ.ᵢˏ r9 = r5.f17660
            ﹳᵢ.ᵢˏ r10 = r8.f17660
            boolean r9 = r9.equals(r10)
            if (r9 == 0) goto Lb0
            r3 = r8
        L30:
            long r8 = r3.f17656
            long r10 = r5.f17653
            long r12 = r5.f17656
            ⁱי.ᵎˊ r10 = r3.m9385(r10)
            r2.f17537 = r10
            int r10 = (r12 > r8 ? 1 : (r12 == r8 ? 0 : -1))
            if (r10 == 0) goto La7
            r2.m9283()
            r6 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r1 = (r8 > r6 ? 1 : (r8 == r6 ? 0 : -1))
            if (r1 != 0) goto L52
            r8 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            goto L55
        L52:
            long r10 = r2.f17529
            long r8 = r8 + r10
        L55:
            ⁱי.ٴʼ r1 = r0.f17696
            r10 = 1
            r14 = -9223372036854775808
            if (r2 != r1) goto L6c
            ⁱי.ᵎˊ r1 = r2.f17537
            boolean r1 = r1.f17657
            if (r1 != 0) goto L6c
            int r1 = (r21 > r14 ? 1 : (r21 == r14 ? 0 : -1))
            if (r1 == 0) goto L6a
            int r1 = (r21 > r8 ? 1 : (r21 == r8 ? 0 : -1))
            if (r1 < 0) goto L6c
        L6a:
            r1 = r10
            goto L6d
        L6c:
            r1 = r4
        L6d:
            ⁱי.ٴʼ r11 = r0.f17701
            if (r2 != r11) goto L7b
            int r11 = (r23 > r14 ? 1 : (r23 == r14 ? 0 : -1))
            if (r11 == 0) goto L79
            int r8 = (r23 > r8 ? 1 : (r23 == r8 ? 0 : -1))
            if (r8 < 0) goto L7b
        L79:
            r8 = r10
            goto L7c
        L7b:
            r8 = r4
        L7c:
            int r2 = r0.m9397(r2)
            if (r2 == 0) goto L83
            return r2
        L83:
            int r2 = (r12 > r6 ? 1 : (r12 == r6 ? 0 : -1))
            if (r2 != 0) goto L99
            long r11 = r5.f17655
            int r5 = (r11 > r14 ? 1 : (r11 == r14 ? 0 : -1))
            if (r5 != 0) goto L99
            long r11 = r3.f17655
            int r3 = (r11 > r6 ? 1 : (r11 == r6 ? 0 : -1))
            if (r3 == 0) goto L99
            int r3 = (r11 > r14 ? 1 : (r11 == r14 ? 0 : -1))
            if (r3 == 0) goto L99
            r3 = r10
            goto L9a
        L99:
            r3 = r4
        L9a:
            if (r1 == 0) goto La1
            if (r2 != 0) goto La0
            if (r3 == 0) goto La1
        La0:
            r4 = r10
        La1:
            if (r8 == 0) goto La6
            r1 = r4 | 2
            return r1
        La6:
            return r4
        La7:
            ⁱי.ٴʼ r3 = r2.f17533
            r16 = r3
            r3 = r2
            r2 = r16
            goto L7
        Lb0:
            int r1 = r0.m9397(r3)
            return r1
        Lb5:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: p392.C4689.m9394(ʽⁱ.ʼˈ, long, long, long):int");
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void m9395() {
        C4675 c4675 = this.f17698;
        if (c4675 == null || c4675.m9285()) {
            this.f17698 = null;
            for (int i = 0; i < this.f17705.size(); i++) {
                C4675 c46752 = (C4675) this.f17705.get(i);
                if (!c46752.m9285()) {
                    this.f17698 = c46752;
                    return;
                }
            }
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final C4675 m9396() {
        return this.f17701;
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final int m9397(C4675 c4675) {
        AbstractC3731.m7868(c4675);
        int i = 0;
        if (c4675.equals(this.f17708)) {
            return 0;
        }
        this.f17708 = c4675;
        while (true) {
            c4675 = c4675.f17533;
            if (c4675 == null) {
                break;
            }
            if (c4675 == this.f17696) {
                C4675 c46752 = this.f17693;
                this.f17696 = c46752;
                this.f17701 = c46752;
                i = 3;
            }
            if (c4675 == this.f17701) {
                this.f17701 = this.f17696;
                i |= 2;
            }
            c4675.m9278();
            this.f17703--;
        }
        C4675 c46753 = this.f17708;
        c46753.getClass();
        if (c46753.f17533 != null) {
            c46753.m9286();
            c46753.f17533 = null;
            c46753.m9279();
        }
        m9403();
        return i;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final C4684 m9398(AbstractC1445 abstractC1445, C4684 c4684) {
        long j;
        C4987 c4987 = c4684.f17660;
        boolean m9838 = c4987.m9838();
        int i = c4987.f18629;
        boolean z = !m9838 && i == -1;
        int i2 = c4987.f18630;
        boolean m9390 = m9390(abstractC1445, c4987);
        boolean m9387 = m9387(abstractC1445, c4987, z);
        Object obj = c4987.f18631;
        C1467 c1467 = this.f17707;
        abstractC1445.mo4225(obj, c1467);
        if (c4987.m9838() || i == -1) {
            j = -9223372036854775807L;
        } else {
            c1467.m4269(i);
            j = 0;
        }
        long m4274 = c4987.m9838() ? c1467.m4274(i2, c4987.f18627) : (j == -9223372036854775807L || j == Long.MIN_VALUE) ? c1467.f5745 : j;
        if (c4987.m9838()) {
            c1467.m4271(i2);
        } else if (i != -1) {
            c1467.m4271(i);
        }
        return new C4684(c4987, c4684.f17659, c4684.f17653, j, m4274, c4684.f17661, false, z, m9390, m9387);
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final long m9399(Object obj) {
        for (int i = 0; i < this.f17705.size(); i++) {
            C4675 c4675 = (C4675) this.f17705.get(i);
            if (c4675.f17540.equals(obj)) {
                return c4675.f17537.f17660.f18628;
            }
        }
        return -1L;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m9400() {
        if (this.f17703 == 0) {
            return;
        }
        C4675 c4675 = this.f17693;
        AbstractC3731.m7868(c4675);
        this.f17699 = c4675.f17540;
        this.f17694 = c4675.f17537.f17660.f18628;
        while (c4675 != null) {
            c4675.m9278();
            c4675 = c4675.f17533;
        }
        this.f17693 = null;
        this.f17708 = null;
        this.f17696 = null;
        this.f17701 = null;
        this.f17703 = 0;
        m9403();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C4675 m9401() {
        C4675 c4675 = this.f17693;
        if (c4675 == null) {
            return null;
        }
        if (c4675 == this.f17696) {
            this.f17696 = c4675.f17533;
        }
        if (c4675 == this.f17701) {
            this.f17701 = c4675.f17533;
        }
        c4675.m9278();
        int i = this.f17703 - 1;
        this.f17703 = i;
        if (i == 0) {
            this.f17708 = null;
            C4675 c46752 = this.f17693;
            this.f17699 = c46752.f17540;
            this.f17694 = c46752.f17537.f17660.f18628;
        }
        this.f17693 = this.f17693.f17533;
        m9403();
        return this.f17693;
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final int m9402(AbstractC1445 abstractC1445) {
        AbstractC1445 abstractC14452;
        C4675 c4675;
        C4675 c46752 = this.f17693;
        if (c46752 == null) {
            return 0;
        }
        int mo4228 = abstractC1445.mo4228(c46752.f17540);
        while (true) {
            abstractC14452 = abstractC1445;
            mo4228 = abstractC14452.m4220(mo4228, this.f17707, this.f17706, this.f17702, this.f17704);
            while (true) {
                c46752.getClass();
                c4675 = c46752.f17533;
                if (c4675 == null || c46752.f17537.f17658) {
                    break;
                }
                c46752 = c4675;
            }
            if (mo4228 == -1 || c4675 == null || abstractC14452.mo4228(c4675.f17540) != mo4228) {
                break;
            }
            c46752 = c4675;
            abstractC1445 = abstractC14452;
        }
        int m9397 = m9397(c46752);
        c46752.f17537 = m9398(abstractC14452, c46752.f17537);
        return m9397;
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void m9403() {
        C0968 m3261 = AbstractC0993.m3261();
        for (C4675 c4675 = this.f17693; c4675 != null; c4675 = c4675.f17533) {
            m3261.m3239(c4675.f17537.f17660);
        }
        C4675 c46752 = this.f17696;
        this.f17697.m7750(new ˊﾞ(this, m3261, c46752 == null ? null : c46752.f17537.f17660, 12));
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final C4684 m9404(AbstractC1445 abstractC1445, Object obj, long j, long j2, long j3, boolean z) {
        long j4;
        C1467 c1467 = this.f17707;
        abstractC1445.mo4225(obj, c1467);
        int m4273 = c1467.m4273(j);
        boolean z2 = false;
        if (m4273 != -1) {
            c1467.m4271(m4273);
        } else if (c1467.f5747.f5643 > 0) {
            c1467.m4271(0);
        }
        C4987 c4987 = new C4987(obj, j3, m4273);
        if (!c4987.m9838() && m4273 == -1) {
            z2 = true;
        }
        boolean m9390 = m9390(abstractC1445, c4987);
        boolean m9387 = m9387(abstractC1445, c4987, z2);
        if (m4273 != -1) {
            c1467.m4271(m4273);
        }
        if (m4273 != -1) {
            c1467.m4275(m4273);
        }
        if (m4273 != -1) {
            c1467.m4269(m4273);
            j4 = 0;
        } else {
            j4 = -9223372036854775807L;
        }
        long j5 = (j4 == -9223372036854775807L || j4 == Long.MIN_VALUE) ? c1467.f5745 : j4;
        return new C4684(c4987, (j5 == -9223372036854775807L || j < j5) ? j : Math.max(0L, j5 - 1), j2, j4, j5, z, false, z2, m9390, m9387);
    }
}
