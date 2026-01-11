package p433;

import java.io.IOException;
import java.util.ArrayList;
import p055.C1495;
import p137.AbstractC2305;
import p262.C3433;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p420.InterfaceC4956;
import p421.C4996;
import ˈˊ.ˉˆ;

/* renamed from: ﹶˎ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5127 implements InterfaceC4956 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f19329 = -1;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f19330;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C5125 f19331;

    public C5127(C5125 c5125, int i) {
        this.f19331 = c5125;
        this.f19330 = i;
    }

    @Override // p420.InterfaceC4956
    /* renamed from: ʽ */
    public final void mo3459() {
        int i = this.f19329;
        C5125 c5125 = this.f19331;
        if (i == -2) {
            c5125.m10081();
            throw new IOException(AbstractC2305.m5378("Unable to bind a sample queue to TrackGroup with MIME type ", c5125.f19289.m9741(this.f19330).f5767[0].f5930, "."));
        }
        if (i == -1) {
            c5125.m10076();
        } else if (i != -3) {
            c5125.m10076();
            c5125.f19291[i].m9830();
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final boolean m10082() {
        int i = this.f19329;
        return (i == -1 || i == -3 || i == -2) ? false : true;
    }

    @Override // p420.InterfaceC4956
    /* renamed from: ᵔᵢ */
    public final int mo3472(C3433 c3433, C4996 c4996, int i) {
        C1495 c1495;
        if (this.f19329 == -3) {
            c4996.m3183(4);
            return -4;
        }
        if (m10082()) {
            int i2 = this.f19329;
            C5125 c5125 = this.f19331;
            ArrayList arrayList = c5125.f19323;
            if (!c5125.m10074()) {
                int i3 = 0;
                if (!arrayList.isEmpty()) {
                    int i4 = 0;
                    loop0: while (i4 < arrayList.size() - 1) {
                        int i5 = ((C5130) arrayList.get(i4)).f19375;
                        int length = c5125.f19291.length;
                        for (int i6 = 0; i6 < length; i6++) {
                            if (c5125.f19310[i6] && c5125.f19291[i6].m9823() == i5) {
                                break loop0;
                            }
                        }
                        i4++;
                    }
                    AbstractC3712.m7775(arrayList, 0, i4);
                    C5130 c5130 = (C5130) arrayList.get(0);
                    C1495 c14952 = c5130.f16901;
                    if (!c14952.equals(c5125.f19296)) {
                        c5125.f19319.ٴﹶ(c5125.f19315, c14952, c5130.f16906, c5130.f16903, c5130.f16904);
                    }
                    c5125.f19296 = c14952;
                }
                if (arrayList.isEmpty() || ((C5130) arrayList.get(0)).m10091()) {
                    int m9808 = c5125.f19291[i2].m9808(c3433, c4996, i, c5125.f19283);
                    if (m9808 == -5) {
                        C1495 c14953 = (C1495) c3433.f13456;
                        c14953.getClass();
                        if (i2 == c5125.f19313) {
                            int i7 = ˉˆ.ᵔᵢ(c5125.f19291[i2].m9823());
                            while (i3 < arrayList.size() && ((C5130) arrayList.get(i3)).f19375 != i7) {
                                i3++;
                            }
                            if (i3 < arrayList.size()) {
                                c1495 = ((C5130) arrayList.get(i3)).f16901;
                            } else {
                                c1495 = c5125.f19278;
                                c1495.getClass();
                            }
                            c14953 = c14953.m4298(c1495);
                        }
                        c3433.f13456 = c14953;
                    }
                    return m9808;
                }
            }
        }
        return -3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0034, code lost:
    
        if (r6.hasNext() != false) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0036, code lost:
    
        r1 = r6.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x003e, code lost:
    
        if (r6.hasNext() != false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0040, code lost:
    
        r6 = r1;
     */
    @Override // p420.InterfaceC4956
    /* renamed from: ᵔﹳ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo3473(long r5) {
        /*
            r4 = this;
            boolean r0 = r4.m10082()
            if (r0 == 0) goto L5e
            int r0 = r4.f19329
            ﹶˎ.ˉˆ r1 = r4.f19331
            boolean r2 = r1.m10074()
            if (r2 == 0) goto L11
            goto L5e
        L11:
            ﹶˎ.ᵔʾ[] r2 = r1.f19291
            r2 = r2[r0]
            boolean r3 = r1.f19283
            int r5 = r2.m9804(r3, r5)
            java.util.ArrayList r6 = r1.f19323
            if (r6 == 0) goto L2c
            boolean r1 = r6.isEmpty()
            if (r1 == 0) goto L26
            goto L42
        L26:
            r1 = 1
            java.lang.Object r6 = p307.AbstractC3740.m7939(r1, r6)
            goto L43
        L2c:
            java.util.Iterator r6 = r6.iterator()
            boolean r1 = r6.hasNext()
            if (r1 == 0) goto L42
        L36:
            java.lang.Object r1 = r6.next()
            boolean r3 = r6.hasNext()
            if (r3 != 0) goto L36
            r6 = r1
            goto L43
        L42:
            r6 = 0
        L43:
            ﹶˎ.ᵔᵢ r6 = (p433.C5130) r6
            if (r6 == 0) goto L5a
            boolean r1 = r6.m10091()
            if (r1 != 0) goto L5a
            int r1 = r2.m9818()
            int r6 = r6.m10093(r0)
            int r6 = r6 - r1
            int r5 = java.lang.Math.min(r5, r6)
        L5a:
            r2.m9825(r5)
            return r5
        L5e:
            r5 = 0
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: p433.C5127.mo3473(long):int");
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m10083() {
        AbstractC3731.m7849(this.f19329 == -1);
        C5125 c5125 = this.f19331;
        c5125.m10081();
        c5125.f19325.getClass();
        int[] iArr = c5125.f19325;
        int i = this.f19330;
        int i2 = iArr[i];
        if (i2 == -1) {
            if (c5125.f19326.contains(c5125.f19289.m9741(i))) {
                i2 = -3;
            }
            i2 = -2;
        } else {
            boolean[] zArr = c5125.f19310;
            if (!zArr[i2]) {
                zArr[i2] = true;
            }
            i2 = -2;
        }
        this.f19329 = i2;
    }

    @Override // p420.InterfaceC4956
    /* renamed from: ﹳٴ */
    public final boolean mo3475() {
        if (this.f19329 == -3) {
            return true;
        }
        if (!m10082()) {
            return false;
        }
        int i = this.f19329;
        C5125 c5125 = this.f19331;
        return !c5125.m10074() && c5125.f19291[i].m9811(c5125.f19283);
    }
}
