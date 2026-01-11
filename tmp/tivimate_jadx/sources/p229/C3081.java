package p229;

import android.view.ViewGroup;
import java.util.ArrayList;
import p010.AbstractC0844;
import p137.AbstractC2305;
import p430.AbstractC5099;

/* renamed from: ˑʼ.ʽᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3081 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public boolean f11700;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final AbstractComponentCallbacksC3123 f11701;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final ArrayList f11702;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final ArrayList f11703;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public boolean f11704;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final ArrayList f11705;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public boolean f11706;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public boolean f11707;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f11708;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int f11709;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final C3120 f11710;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public boolean f11711;

    public C3081(int i, int i2, C3120 c3120) {
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = c3120.f11861;
        this.f11709 = i;
        this.f11708 = i2;
        this.f11701 = abstractComponentCallbacksC3123;
        this.f11703 = new ArrayList();
        this.f11700 = true;
        ArrayList arrayList = new ArrayList();
        this.f11702 = arrayList;
        this.f11705 = arrayList;
        this.f11710 = c3120;
    }

    public final String toString() {
        StringBuilder m5370 = AbstractC2305.m5370("Operation {", Integer.toHexString(System.identityHashCode(this)), "} {finalState = ");
        m5370.append(AbstractC2305.m5380(this.f11709));
        m5370.append(" lifecycleImpact = ");
        m5370.append(AbstractC2305.m5360(this.f11708));
        m5370.append(" fragment = ");
        m5370.append(this.f11701);
        m5370.append('}');
        return m5370.toString();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m6643(AbstractC3111 abstractC3111) {
        ArrayList arrayList = this.f11702;
        if (arrayList.remove(abstractC3111) && arrayList.isEmpty()) {
            m6645();
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m6644(int i, int i2) {
        int m3018 = AbstractC0844.m3018(i2);
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = this.f11701;
        if (m3018 == 0) {
            if (this.f11709 != 1) {
                if (C3085.m6654(2)) {
                    String str = "SpecialEffectsController: For fragment " + abstractComponentCallbacksC3123 + " mFinalState = " + AbstractC2305.m5380(this.f11709) + " -> " + AbstractC2305.m5380(i) + '.';
                }
                this.f11709 = i;
                return;
            }
            return;
        }
        if (m3018 == 1) {
            if (this.f11709 == 1) {
                if (C3085.m6654(2)) {
                    String str2 = "SpecialEffectsController: For fragment " + abstractComponentCallbacksC3123 + " mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = " + AbstractC2305.m5360(this.f11708) + " to ADDING.";
                }
                this.f11709 = 2;
                this.f11708 = 2;
                this.f11700 = true;
                return;
            }
            return;
        }
        if (m3018 != 2) {
            return;
        }
        if (C3085.m6654(2)) {
            String str3 = "SpecialEffectsController: For fragment " + abstractComponentCallbacksC3123 + " mFinalState = " + AbstractC2305.m5380(this.f11709) + " -> REMOVED. mLifecycleImpact  = " + AbstractC2305.m5360(this.f11708) + " to REMOVING.";
        }
        this.f11709 = 1;
        this.f11708 = 3;
        this.f11700 = true;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m6645() {
        this.f11707 = false;
        if (!this.f11711) {
            if (C3085.m6654(2)) {
                String str = "SpecialEffectsController: " + this + " has called complete.";
            }
            this.f11711 = true;
            ArrayList arrayList = this.f11703;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                ((Runnable) obj).run();
            }
        }
        this.f11701.f11899 = false;
        this.f11710.m6769();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m6646(ViewGroup viewGroup) {
        this.f11707 = false;
        if (this.f11704) {
            return;
        }
        this.f11704 = true;
        if (this.f11702.isEmpty()) {
            m6645();
            return;
        }
        for (AbstractC3111 abstractC3111 : AbstractC5099.m10020(this.f11705)) {
            if (!abstractC3111.f11844) {
                abstractC3111.mo6640(viewGroup);
            }
            abstractC3111.f11844 = true;
        }
    }
}
