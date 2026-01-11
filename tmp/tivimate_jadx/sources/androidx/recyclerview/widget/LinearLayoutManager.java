package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import java.util.ArrayList;
import java.util.List;
import p035.AbstractC1237;
import p158.C2526;
import p158.C2535;
import p179.AbstractC2669;
import p179.AbstractC2673;
import p179.AbstractC2727;
import p179.AbstractC2741;
import p179.C2666;
import p179.C2676;
import p179.C2688;
import p179.C2697;
import p179.C2700;
import p179.C2717;
import p179.C2723;
import p179.C2725;
import p179.C2732;
import p179.C2735;
import p179.InterfaceC2677;
import p307.AbstractC3740;

/* loaded from: classes.dex */
public class LinearLayoutManager extends AbstractC2669 implements InterfaceC2677 {

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public boolean f1433;

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public int f1434;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public int f1435;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f1436;

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public boolean f1437;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C2697 f1438;

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public int f1439;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final int[] f1440;

    /* renamed from: ˏי, reason: contains not printable characters */
    public final boolean f1441;

    /* renamed from: יـ, reason: contains not printable characters */
    public boolean f1442;

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final boolean f1443;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C2732 f1444;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public C2717 f1445;

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public C2735 f1446;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public AbstractC1237 f1447;

    /* JADX WARN: Type inference failed for: r2v1, types: [ˋˋ.ᵎⁱ, java.lang.Object] */
    public LinearLayoutManager(int i) {
        this.f1435 = 1;
        this.f1441 = false;
        this.f1437 = false;
        this.f1433 = false;
        this.f1443 = true;
        this.f1439 = -1;
        this.f1434 = Integer.MIN_VALUE;
        this.f1446 = null;
        this.f1438 = new C2697();
        this.f1444 = new Object();
        this.f1436 = 2;
        this.f1440 = new int[2];
        m892(i);
        mo887(null);
        if (this.f1441) {
            this.f1441 = false;
            m5982();
        }
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [ˋˋ.ᵎⁱ, java.lang.Object] */
    @SuppressLint({"UnknownNullness"})
    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.f1435 = 1;
        this.f1441 = false;
        this.f1437 = false;
        this.f1433 = false;
        this.f1443 = true;
        this.f1439 = -1;
        this.f1434 = Integer.MIN_VALUE;
        this.f1446 = null;
        this.f1438 = new C2697();
        this.f1444 = new Object();
        this.f1436 = 2;
        this.f1440 = new int[2];
        C2725 m5967 = AbstractC2669.m5967(context, attributeSet, i, i2);
        m892(m5967.f10386);
        boolean z = m5967.f10383;
        mo887(null);
        if (z != this.f1441) {
            this.f1441 = z;
            m5982();
        }
        mo876(m5967.f10384);
    }

    /* renamed from: ʻʼ, reason: contains not printable characters */
    public final void m885(C2666 c2666, C2717 c2717) {
        if (!c2717.f10339 || c2717.f10340) {
            return;
        }
        int i = c2717.f10336;
        int i2 = c2717.f10330;
        if (c2717.f10341 == -1) {
            int m5974 = m5974();
            if (i < 0) {
                return;
            }
            int mo3828 = (this.f1447.mo3828() - i) + i2;
            if (this.f1437) {
                for (int i3 = 0; i3 < m5974; i3++) {
                    View m5981 = m5981(i3);
                    if (this.f1447.mo3826(m5981) < mo3828 || this.f1447.mo3819(m5981) < mo3828) {
                        m915(c2666, 0, i3);
                        return;
                    }
                }
                return;
            }
            int i4 = m5974 - 1;
            for (int i5 = i4; i5 >= 0; i5--) {
                View m59812 = m5981(i5);
                if (this.f1447.mo3826(m59812) < mo3828 || this.f1447.mo3819(m59812) < mo3828) {
                    m915(c2666, i4, i5);
                    return;
                }
            }
            return;
        }
        if (i < 0) {
            return;
        }
        int i6 = i - i2;
        int m59742 = m5974();
        if (!this.f1437) {
            for (int i7 = 0; i7 < m59742; i7++) {
                View m59813 = m5981(i7);
                if (this.f1447.mo3821(m59813) > i6 || this.f1447.mo3823(m59813) > i6) {
                    m915(c2666, 0, i7);
                    return;
                }
            }
            return;
        }
        int i8 = m59742 - 1;
        for (int i9 = i8; i9 >= 0; i9--) {
            View m59814 = m5981(i9);
            if (this.f1447.mo3821(m59814) > i6 || this.f1447.mo3823(m59814) > i6) {
                m915(c2666, i8, i9);
                return;
            }
        }
    }

    @Override // p179.AbstractC2669
    /* renamed from: ʼˈ, reason: contains not printable characters */
    public final boolean mo886() {
        return this.f1441;
    }

    @Override // p179.AbstractC2669
    /* renamed from: ʼˎ */
    public final void mo470(int i, int i2, C2723 c2723, C2676 c2676) {
        if (this.f1435 != 0) {
            i = i2;
        }
        if (m5974() == 0 || i == 0) {
            return;
        }
        m918();
        m909(i > 0 ? 1 : -1, Math.abs(i), true, c2723);
        mo874(c2723, this.f1445, c2676);
    }

    @Override // p179.AbstractC2669
    /* renamed from: ʼᐧ */
    public int mo859(C2723 c2723) {
        return m914(c2723);
    }

    @Override // p179.AbstractC2669
    /* renamed from: ʽ, reason: contains not printable characters */
    public final void mo887(String str) {
        if (this.f1446 == null) {
            super.mo887(str);
        }
    }

    /* renamed from: ʽʾ, reason: contains not printable characters */
    public final int m888(int i, C2666 c2666, C2723 c2723, boolean z) {
        int mo3818;
        int mo38182 = this.f1447.mo3818() - i;
        if (mo38182 <= 0) {
            return 0;
        }
        int i2 = -m890(-mo38182, c2666, c2723);
        int i3 = i + i2;
        if (!z || (mo3818 = this.f1447.mo3818() - i3) <= 0) {
            return i2;
        }
        this.f1447.mo3829(mo3818);
        return mo3818 + i2;
    }

    /* renamed from: ʿʽ, reason: contains not printable characters */
    public final boolean m889() {
        return this.f10154.getLayoutDirection() == 1;
    }

    @Override // p179.AbstractC2669
    /* renamed from: ʿـ */
    public int mo481(int i, C2666 c2666, C2723 c2723) {
        if (this.f1435 == 1) {
            return 0;
        }
        return m890(i, c2666, c2723);
    }

    /* renamed from: ˆʻ, reason: contains not printable characters */
    public final int m890(int i, C2666 c2666, C2723 c2723) {
        if (m5974() != 0 && i != 0) {
            m918();
            this.f1445.f10339 = true;
            int i2 = i > 0 ? 1 : -1;
            int abs = Math.abs(i);
            m909(i2, abs, true, c2723);
            C2717 c2717 = this.f1445;
            int m912 = m912(c2666, c2717, c2723, false) + c2717.f10336;
            if (m912 >= 0) {
                if (abs > m912) {
                    i = i2 * m912;
                }
                this.f1447.mo3829(-i);
                this.f1445.f10332 = i;
                return i;
            }
        }
        return 0;
    }

    @Override // p179.AbstractC2669
    /* renamed from: ˆʾ */
    public final void mo483(int i, C2676 c2676) {
        boolean z;
        int i2;
        C2735 c2735 = this.f1446;
        if (c2735 == null || (i2 = c2735.f10446) < 0) {
            m919();
            z = this.f1437;
            i2 = this.f1439;
            if (i2 == -1) {
                i2 = z ? i - 1 : 0;
            }
        } else {
            z = c2735.f10445;
        }
        int i3 = z ? -1 : 1;
        for (int i4 = 0; i4 < this.f1436 && i2 >= 0 && i2 < i; i4++) {
            c2676.m6025(i2, 0);
            i2 += i3;
        }
    }

    /* renamed from: ˆˎ */
    public void mo863(C2666 c2666, C2723 c2723, C2697 c2697, int i) {
    }

    /* renamed from: ˆˑ, reason: contains not printable characters */
    public final int m891(int i, C2666 c2666, C2723 c2723, boolean z) {
        int mo3822;
        int mo38222 = i - this.f1447.mo3822();
        if (mo38222 <= 0) {
            return 0;
        }
        int i2 = -m890(mo38222, c2666, c2723);
        int i3 = i + i2;
        if (!z || (mo3822 = i3 - this.f1447.mo3822()) <= 0) {
            return i2;
        }
        this.f1447.mo3829(-mo3822);
        return i2 - mo3822;
    }

    /* renamed from: ˆﹳ */
    public void mo864(C2666 c2666, C2723 c2723, C2717 c2717, C2732 c2732) {
        int i;
        int i2;
        int i3;
        int i4;
        View m6098 = c2717.m6098(c2666);
        if (m6098 == null) {
            c2732.f10429 = true;
            return;
        }
        C2700 c2700 = (C2700) m6098.getLayoutParams();
        if (c2717.f10335 == null) {
            if (this.f1437 == (c2717.f10341 == -1)) {
                m5992(-1, m6098, false);
            } else {
                m5992(0, m6098, false);
            }
        } else {
            if (this.f1437 == (c2717.f10341 == -1)) {
                m5992(-1, m6098, true);
            } else {
                m5992(0, m6098, true);
            }
        }
        C2700 c27002 = (C2700) m6098.getLayoutParams();
        Rect m947 = this.f10154.m947(m6098);
        int i5 = m947.left + m947.right;
        int i6 = m947.top + m947.bottom;
        int m5962 = AbstractC2669.m5962(mo506(), this.f10152, this.f10156, m5987() + m5984() + ((ViewGroup.MarginLayoutParams) c27002).leftMargin + ((ViewGroup.MarginLayoutParams) c27002).rightMargin + i5, ((ViewGroup.MarginLayoutParams) c27002).width);
        int m59622 = AbstractC2669.m5962(mo538(), this.f10148, this.f10147, m5988() + m5989() + ((ViewGroup.MarginLayoutParams) c27002).topMargin + ((ViewGroup.MarginLayoutParams) c27002).bottomMargin + i6, ((ViewGroup.MarginLayoutParams) c27002).height);
        if (m5972(m6098, m5962, m59622, c27002)) {
            m6098.measure(m5962, m59622);
        }
        c2732.f10430 = this.f1447.mo3824(m6098);
        if (this.f1435 == 1) {
            if (m889()) {
                i4 = this.f10152 - m5987();
                i = i4 - this.f1447.mo3831(m6098);
            } else {
                i = m5984();
                i4 = this.f1447.mo3831(m6098) + i;
            }
            if (c2717.f10341 == -1) {
                i2 = c2717.f10338;
                i3 = i2 - c2732.f10430;
            } else {
                i3 = c2717.f10338;
                i2 = c2732.f10430 + i3;
            }
        } else {
            int m5989 = m5989();
            int mo3831 = this.f1447.mo3831(m6098) + m5989;
            if (c2717.f10341 == -1) {
                int i7 = c2717.f10338;
                int i8 = i7 - c2732.f10430;
                i4 = i7;
                i2 = mo3831;
                i = i8;
                i3 = m5989;
            } else {
                int i9 = c2717.f10338;
                int i10 = c2732.f10430 + i9;
                i = i9;
                i2 = mo3831;
                i3 = m5989;
                i4 = i10;
            }
        }
        AbstractC2669.m5969(m6098, i, i3, i4, i2);
        if (c2700.f10283.m6007() || c2700.f10283.m6009()) {
            c2732.f10427 = true;
        }
        c2732.f10428 = m6098.hasFocusable();
    }

    @Override // p179.AbstractC2669
    /* renamed from: ˈـ */
    public boolean mo865() {
        return this.f1446 == null && this.f1442 == this.f1433;
    }

    /* renamed from: ˉʽ, reason: contains not printable characters */
    public final void m892(int i) {
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException(AbstractC3740.m7932(i, "invalid orientation:"));
        }
        mo887(null);
        if (i != this.f1435 || this.f1447 == null) {
            AbstractC1237 m3817 = AbstractC1237.m3817(this, i);
            this.f1447 = m3817;
            this.f1438.f10275 = m3817;
            this.f1435 = i;
            m5982();
        }
    }

    @Override // p179.AbstractC2669
    /* renamed from: ˉʿ */
    public int mo866(C2723 c2723) {
        return m914(c2723);
    }

    @Override // p179.AbstractC2669
    /* renamed from: ˉˆ */
    public int mo867(C2723 c2723) {
        return m917(c2723);
    }

    /* renamed from: ˊˊ, reason: contains not printable characters */
    public final int m893() {
        View m902 = m902(0, m5974(), false);
        if (m902 == null) {
            return -1;
        }
        return AbstractC2669.m5963(m902);
    }

    @Override // p179.AbstractC2669
    /* renamed from: ˊˋ, reason: contains not printable characters */
    public final boolean mo894() {
        return true;
    }

    /* renamed from: ˊﹳ */
    public View mo869(C2666 c2666, C2723 c2723, boolean z, boolean z2) {
        int i;
        int i2;
        int i3;
        m918();
        int m5974 = m5974();
        if (z2) {
            i2 = m5974() - 1;
            i = -1;
            i3 = -1;
        } else {
            i = m5974;
            i2 = 0;
            i3 = 1;
        }
        int m6109 = c2723.m6109();
        int mo3822 = this.f1447.mo3822();
        int mo3818 = this.f1447.mo3818();
        View view = null;
        View view2 = null;
        View view3 = null;
        while (i2 != i) {
            View m5981 = m5981(i2);
            int m5963 = AbstractC2669.m5963(m5981);
            int mo3826 = this.f1447.mo3826(m5981);
            int mo3821 = this.f1447.mo3821(m5981);
            if (m5963 >= 0 && m5963 < m6109) {
                if (!((C2700) m5981.getLayoutParams()).f10283.m6007()) {
                    boolean z3 = mo3821 <= mo3822 && mo3826 < mo3822;
                    boolean z4 = mo3826 >= mo3818 && mo3821 > mo3818;
                    if (!z3 && !z4) {
                        return m5981;
                    }
                    if (z) {
                        if (!z4) {
                            if (view != null) {
                            }
                            view = m5981;
                        }
                        view2 = m5981;
                    } else {
                        if (!z3) {
                            if (view != null) {
                            }
                            view = m5981;
                        }
                        view2 = m5981;
                    }
                } else if (view3 == null) {
                    view3 = m5981;
                }
            }
            i2 += i3;
        }
        return view != null ? view : view2 != null ? view2 : view3;
    }

    /* renamed from: ˊﾞ, reason: contains not printable characters */
    public final int m895() {
        View m902 = m902(m5974() - 1, -1, false);
        if (m902 == null) {
            return -1;
        }
        return AbstractC2669.m5963(m902);
    }

    @Override // p179.AbstractC2669
    /* renamed from: ˋˊ, reason: contains not printable characters */
    public final boolean mo896() {
        if (this.f10147 != 1073741824 && this.f10156 != 1073741824) {
            int m5974 = m5974();
            for (int i = 0; i < m5974; i++) {
                ViewGroup.LayoutParams layoutParams = m5981(i).getLayoutParams();
                if (layoutParams.width < 0 && layoutParams.height < 0) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: ˋـ, reason: contains not printable characters */
    public final int m897(int i) {
        return i != 1 ? i != 2 ? i != 17 ? i != 33 ? i != 66 ? (i == 130 && this.f1435 == 1) ? 1 : Integer.MIN_VALUE : this.f1435 == 0 ? 1 : Integer.MIN_VALUE : this.f1435 == 1 ? -1 : Integer.MIN_VALUE : this.f1435 == 0 ? -1 : Integer.MIN_VALUE : (this.f1435 != 1 && m889()) ? -1 : 1 : (this.f1435 != 1 && m889()) ? 1 : -1;
    }

    /* renamed from: ˎʼ, reason: contains not printable characters */
    public final void m898(int i, int i2) {
        this.f1445.f10331 = i2 - this.f1447.mo3822();
        C2717 c2717 = this.f1445;
        c2717.f10333 = i;
        c2717.f10334 = this.f1437 ? 1 : -1;
        c2717.f10341 = -1;
        c2717.f10338 = i2;
        c2717.f10336 = Integer.MIN_VALUE;
    }

    /* renamed from: ˎʾ, reason: contains not printable characters */
    public void mo899(C2723 c2723, int[] iArr) {
        int i;
        int mo3827 = c2723.f10380 != -1 ? this.f1447.mo3827() : 0;
        if (this.f1445.f10341 == -1) {
            i = 0;
        } else {
            i = mo3827;
            mo3827 = 0;
        }
        iArr[0] = mo3827;
        iArr[1] = i;
    }

    /* renamed from: ˎˉ, reason: contains not printable characters */
    public final int m900(C2723 c2723) {
        if (m5974() == 0) {
            return 0;
        }
        m918();
        AbstractC1237 abstractC1237 = this.f1447;
        boolean z = !this.f1443;
        return AbstractC2741.m6141(c2723, abstractC1237, m920(z), m906(z), this, this.f1443);
    }

    /* renamed from: ˎـ, reason: contains not printable characters */
    public final View m901() {
        return m5981(this.f1437 ? 0 : m5974() - 1);
    }

    @Override // p179.AbstractC2669
    /* renamed from: ˏי */
    public C2700 mo502() {
        return new C2700(-2, -2);
    }

    @Override // p179.AbstractC2669
    /* renamed from: ˏᵢ */
    public void mo503(C2666 c2666, C2723 c2723, C2535 c2535) {
        super.mo503(c2666, c2723, c2535);
        AbstractC2727 abstractC2727 = this.f10154.f1474;
        if (abstractC2727 == null || abstractC2727.mo611() <= 0) {
            return;
        }
        c2535.m5675(C2526.f9617);
    }

    /* renamed from: ˏⁱ, reason: contains not printable characters */
    public final View m902(int i, int i2, boolean z) {
        m918();
        int i3 = z ? 24579 : 320;
        return this.f1435 == 0 ? this.f10144.ˉˆ(i, i2, i3, 320) : this.f10146.ˉˆ(i, i2, i3, 320);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0048  */
    @Override // p179.AbstractC2669
    /* renamed from: ˑ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo872(int r5, android.os.Bundle r6) {
        /*
            r4 = this;
            boolean r0 = super.mo872(r5, r6)
            r1 = 1
            if (r0 == 0) goto L8
            return r1
        L8:
            r0 = 16908343(0x1020037, float:2.3877383E-38)
            r2 = 0
            if (r5 != r0) goto L56
            if (r6 == 0) goto L56
            int r5 = r4.f1435
            r0 = -1
            if (r5 != r1) goto L2e
            java.lang.String r5 = "android.view.accessibility.action.ARGUMENT_ROW_INT"
            int r5 = r6.getInt(r5, r0)
            if (r5 >= 0) goto L1e
            goto L56
        L1e:
            androidx.recyclerview.widget.RecyclerView r6 = r4.f10154
            ˋˋ.ʻˋ r3 = r6.f1464
            ˋˋ.ᐧﹶ r6 = r6.f1516
            int r6 = r4.mo487(r3, r6)
            int r6 = r6 - r1
            int r5 = java.lang.Math.min(r5, r6)
            goto L46
        L2e:
            java.lang.String r5 = "android.view.accessibility.action.ARGUMENT_COLUMN_INT"
            int r5 = r6.getInt(r5, r0)
            if (r5 >= 0) goto L37
            goto L56
        L37:
            androidx.recyclerview.widget.RecyclerView r6 = r4.f10154
            ˋˋ.ʻˋ r3 = r6.f1464
            ˋˋ.ᐧﹶ r6 = r6.f1516
            int r6 = r4.mo527(r3, r6)
            int r6 = r6 - r1
            int r5 = java.lang.Math.min(r5, r6)
        L46:
            if (r5 < 0) goto L56
            r4.f1439 = r5
            r4.f1434 = r2
            ˋˋ.ᵔי r5 = r4.f1446
            if (r5 == 0) goto L52
            r5.f10446 = r0
        L52:
            r4.m5982()
            return r1
        L56:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.LinearLayoutManager.mo872(int, android.os.Bundle):boolean");
    }

    /* renamed from: ˑˆ */
    public void mo874(C2723 c2723, C2717 c2717, C2676 c2676) {
        int i = c2717.f10333;
        if (i < 0 || i >= c2723.m6109()) {
            return;
        }
        c2676.m6025(i, Math.max(0, c2717.f10336));
    }

    @Override // p179.AbstractC2669
    /* renamed from: ˑﹳ */
    public final boolean mo506() {
        return this.f1435 == 0;
    }

    /* renamed from: ˑﹶ, reason: contains not printable characters */
    public final void m903(int i, int i2) {
        this.f1445.f10331 = this.f1447.mo3818() - i2;
        C2717 c2717 = this.f1445;
        c2717.f10334 = this.f1437 ? -1 : 1;
        c2717.f10333 = i;
        c2717.f10341 = 1;
        c2717.f10338 = i2;
        c2717.f10336 = Integer.MIN_VALUE;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [android.os.Parcelable, ˋˋ.ᵔי, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v9, types: [android.os.Parcelable, ˋˋ.ᵔי, java.lang.Object] */
    @Override // p179.AbstractC2669
    /* renamed from: י */
    public final Parcelable mo508() {
        C2735 c2735 = this.f1446;
        if (c2735 != null) {
            ?? obj = new Object();
            obj.f10446 = c2735.f10446;
            obj.f10447 = c2735.f10447;
            obj.f10445 = c2735.f10445;
            return obj;
        }
        ?? obj2 = new Object();
        if (m5974() <= 0) {
            obj2.f10446 = -1;
            return obj2;
        }
        m918();
        boolean z = this.f1442 ^ this.f1437;
        obj2.f10445 = z;
        if (z) {
            View m901 = m901();
            obj2.f10447 = this.f1447.mo3818() - this.f1447.mo3821(m901);
            obj2.f10446 = AbstractC2669.m5963(m901);
            return obj2;
        }
        View m913 = m913();
        obj2.f10446 = AbstractC2669.m5963(m913);
        obj2.f10447 = this.f1447.mo3826(m913) - this.f1447.mo3822();
        return obj2;
    }

    /* renamed from: יʿ */
    public void mo876(boolean z) {
        mo887(null);
        if (this.f1433 == z) {
            return;
        }
        this.f1433 = z;
        m5982();
    }

    @Override // p179.AbstractC2669
    /* renamed from: יˉ */
    public void mo510(RecyclerView recyclerView, int i) {
        C2688 c2688 = new C2688(recyclerView.getContext());
        c2688.f10247 = i;
        mo536(c2688);
    }

    @Override // p179.AbstractC2669
    /* renamed from: יـ, reason: contains not printable characters */
    public final View mo904(int i) {
        int m5974 = m5974();
        if (m5974 == 0) {
            return null;
        }
        int m5963 = i - AbstractC2669.m5963(m5981(0));
        if (m5963 >= 0 && m5963 < m5974) {
            View m5981 = m5981(m5963);
            if (AbstractC2669.m5963(m5981) == i) {
                return m5981;
            }
        }
        return super.mo904(i);
    }

    /* renamed from: ـʻ, reason: contains not printable characters */
    public final View m905(int i, int i2) {
        int i3;
        int i4;
        m918();
        if (i2 <= i && i2 >= i) {
            return m5981(i);
        }
        if (this.f1447.mo3826(m5981(i)) < this.f1447.mo3822()) {
            i3 = 16644;
            i4 = 16388;
        } else {
            i3 = 4161;
            i4 = 4097;
        }
        return this.f1435 == 0 ? this.f10144.ˉˆ(i, i2, i3, i4) : this.f10146.ˉˆ(i, i2, i3, i4);
    }

    /* renamed from: ٴʿ, reason: contains not printable characters */
    public final View m906(boolean z) {
        return this.f1437 ? m902(0, m5974(), z) : m902(m5974() - 1, -1, z);
    }

    @Override // p179.AbstractC2669
    /* renamed from: ٴﹳ */
    public void mo517(C2666 c2666, C2723 c2723) {
        View view;
        View view2;
        View mo869;
        int i;
        int mo3826;
        int i2;
        int i3;
        List list;
        int i4;
        int i5;
        int m888;
        int i6;
        View mo904;
        int mo38262;
        int i7;
        int i8;
        int i9 = -1;
        if (!(this.f1446 == null && this.f1439 == -1) && c2723.m6109() == 0) {
            mo499(c2666);
            return;
        }
        C2735 c2735 = this.f1446;
        if (c2735 != null && (i8 = c2735.f10446) >= 0) {
            this.f1439 = i8;
        }
        m918();
        this.f1445.f10339 = false;
        m919();
        RecyclerView recyclerView = this.f10154;
        if (recyclerView == null || (view = recyclerView.getFocusedChild()) == null || ((ArrayList) this.f10155.ᴵᵔ).contains(view)) {
            view = null;
        }
        C2697 c2697 = this.f1438;
        if (!c2697.f10271 || this.f1439 != -1 || this.f1446 != null) {
            c2697.m6066();
            c2697.f10270 = this.f1437 ^ this.f1433;
            if (!c2723.f10376 && (i = this.f1439) != -1) {
                if (i < 0 || i >= c2723.m6109()) {
                    this.f1439 = -1;
                    this.f1434 = Integer.MIN_VALUE;
                } else {
                    int i10 = this.f1439;
                    c2697.f10273 = i10;
                    C2735 c27352 = this.f1446;
                    if (c27352 != null && c27352.f10446 >= 0) {
                        boolean z = c27352.f10445;
                        c2697.f10270 = z;
                        if (z) {
                            c2697.f10272 = this.f1447.mo3818() - this.f1446.f10447;
                        } else {
                            c2697.f10272 = this.f1447.mo3822() + this.f1446.f10447;
                        }
                    } else if (this.f1434 == Integer.MIN_VALUE) {
                        View mo9042 = mo904(i10);
                        if (mo9042 == null) {
                            if (m5974() > 0) {
                                c2697.f10270 = (this.f1439 < AbstractC2669.m5963(m5981(0))) == this.f1437;
                            }
                            c2697.m6068();
                        } else if (this.f1447.mo3824(mo9042) > this.f1447.mo3827()) {
                            c2697.m6068();
                        } else if (this.f1447.mo3826(mo9042) - this.f1447.mo3822() < 0) {
                            c2697.f10272 = this.f1447.mo3822();
                            c2697.f10270 = false;
                        } else if (this.f1447.mo3818() - this.f1447.mo3821(mo9042) < 0) {
                            c2697.f10272 = this.f1447.mo3818();
                            c2697.f10270 = true;
                        } else {
                            if (c2697.f10270) {
                                int mo3821 = this.f1447.mo3821(mo9042);
                                AbstractC1237 abstractC1237 = this.f1447;
                                mo3826 = (Integer.MIN_VALUE == abstractC1237.f4814 ? 0 : abstractC1237.mo3827() - abstractC1237.f4814) + mo3821;
                            } else {
                                mo3826 = this.f1447.mo3826(mo9042);
                            }
                            c2697.f10272 = mo3826;
                        }
                    } else {
                        boolean z2 = this.f1437;
                        c2697.f10270 = z2;
                        if (z2) {
                            c2697.f10272 = this.f1447.mo3818() - this.f1434;
                        } else {
                            c2697.f10272 = this.f1447.mo3822() + this.f1434;
                        }
                    }
                    c2697.f10271 = true;
                }
            }
            if (m5974() != 0) {
                RecyclerView recyclerView2 = this.f10154;
                if (recyclerView2 == null || (view2 = recyclerView2.getFocusedChild()) == null || ((ArrayList) this.f10155.ᴵᵔ).contains(view2)) {
                    view2 = null;
                }
                if (view2 != null) {
                    C2700 c2700 = (C2700) view2.getLayoutParams();
                    if (!c2700.f10283.m6007() && c2700.f10283.m6008() >= 0 && c2700.f10283.m6008() < c2723.m6109()) {
                        c2697.m6064(view2, AbstractC2669.m5963(view2));
                        c2697.f10271 = true;
                    }
                }
                boolean z3 = this.f1442;
                boolean z4 = this.f1433;
                if (z3 == z4 && (mo869 = mo869(c2666, c2723, c2697.f10270, z4)) != null) {
                    c2697.m6063(mo869, AbstractC2669.m5963(mo869));
                    if (!c2723.f10376 && mo865()) {
                        int mo38263 = this.f1447.mo3826(mo869);
                        int mo38212 = this.f1447.mo3821(mo869);
                        int mo3822 = this.f1447.mo3822();
                        int mo3818 = this.f1447.mo3818();
                        boolean z5 = mo38212 <= mo3822 && mo38263 < mo3822;
                        boolean z6 = mo38263 >= mo3818 && mo38212 > mo3818;
                        if (z5 || z6) {
                            if (c2697.f10270) {
                                mo3822 = mo3818;
                            }
                            c2697.f10272 = mo3822;
                        }
                    }
                    c2697.f10271 = true;
                }
            }
            c2697.m6068();
            c2697.f10273 = this.f1433 ? c2723.m6109() - 1 : 0;
            c2697.f10271 = true;
        } else if (view != null && (this.f1447.mo3826(view) >= this.f1447.mo3818() || this.f1447.mo3821(view) <= this.f1447.mo3822())) {
            c2697.m6064(view, AbstractC2669.m5963(view));
        }
        C2717 c2717 = this.f1445;
        c2717.f10341 = c2717.f10332 >= 0 ? 1 : -1;
        int[] iArr = this.f1440;
        iArr[0] = 0;
        iArr[1] = 0;
        mo899(c2723, iArr);
        int mo38222 = this.f1447.mo3822() + Math.max(0, iArr[0]);
        int mo3820 = this.f1447.mo3820() + Math.max(0, iArr[1]);
        if (c2723.f10376 && (i6 = this.f1439) != -1 && this.f1434 != Integer.MIN_VALUE && (mo904 = mo904(i6)) != null) {
            if (this.f1437) {
                i7 = this.f1447.mo3818() - this.f1447.mo3821(mo904);
                mo38262 = this.f1434;
            } else {
                mo38262 = this.f1447.mo3826(mo904) - this.f1447.mo3822();
                i7 = this.f1434;
            }
            int i11 = i7 - mo38262;
            if (i11 > 0) {
                mo38222 += i11;
            } else {
                mo3820 -= i11;
            }
        }
        if (!c2697.f10270 ? !this.f1437 : this.f1437) {
            i9 = 1;
        }
        mo863(c2666, c2723, c2697, i9);
        m5990(c2666);
        this.f1445.f10340 = this.f1447.mo3825() == 0 && this.f1447.mo3828() == 0;
        this.f1445.getClass();
        this.f1445.f10330 = 0;
        if (c2697.f10270) {
            m898(c2697.f10273, c2697.f10272);
            C2717 c27172 = this.f1445;
            c27172.f10337 = mo38222;
            m912(c2666, c27172, c2723, false);
            C2717 c27173 = this.f1445;
            i3 = c27173.f10338;
            int i12 = c27173.f10333;
            int i13 = c27173.f10331;
            if (i13 > 0) {
                mo3820 += i13;
            }
            m903(c2697.f10273, c2697.f10272);
            C2717 c27174 = this.f1445;
            c27174.f10337 = mo3820;
            c27174.f10333 += c27174.f10334;
            m912(c2666, c27174, c2723, false);
            C2717 c27175 = this.f1445;
            i2 = c27175.f10338;
            int i14 = c27175.f10331;
            if (i14 > 0) {
                m898(i12, i3);
                C2717 c27176 = this.f1445;
                c27176.f10337 = i14;
                m912(c2666, c27176, c2723, false);
                i3 = this.f1445.f10338;
            }
        } else {
            m903(c2697.f10273, c2697.f10272);
            C2717 c27177 = this.f1445;
            c27177.f10337 = mo3820;
            m912(c2666, c27177, c2723, false);
            C2717 c27178 = this.f1445;
            i2 = c27178.f10338;
            int i15 = c27178.f10333;
            int i16 = c27178.f10331;
            if (i16 > 0) {
                mo38222 += i16;
            }
            m898(c2697.f10273, c2697.f10272);
            C2717 c27179 = this.f1445;
            c27179.f10337 = mo38222;
            c27179.f10333 += c27179.f10334;
            m912(c2666, c27179, c2723, false);
            C2717 c271710 = this.f1445;
            int i17 = c271710.f10338;
            int i18 = c271710.f10331;
            if (i18 > 0) {
                m903(i15, i2);
                C2717 c271711 = this.f1445;
                c271711.f10337 = i18;
                m912(c2666, c271711, c2723, false);
                i2 = this.f1445.f10338;
            }
            i3 = i17;
        }
        if (m5974() > 0) {
            if (this.f1437 ^ this.f1433) {
                int m8882 = m888(i2, c2666, c2723, true);
                i4 = i3 + m8882;
                i5 = i2 + m8882;
                m888 = m891(i4, c2666, c2723, false);
            } else {
                int m891 = m891(i3, c2666, c2723, true);
                i4 = i3 + m891;
                i5 = i2 + m891;
                m888 = m888(i5, c2666, c2723, false);
            }
            i3 = i4 + m888;
            i2 = i5 + m888;
        }
        if (c2723.f10375 && m5974() != 0 && !c2723.f10376 && mo865()) {
            List list2 = c2666.f10121;
            int size = list2.size();
            int m5963 = AbstractC2669.m5963(m5981(0));
            int i19 = 0;
            int i20 = 0;
            for (int i21 = 0; i21 < size; i21++) {
                AbstractC2673 abstractC2673 = (AbstractC2673) list2.get(i21);
                boolean m6007 = abstractC2673.m6007();
                View view3 = abstractC2673.f10176;
                if (!m6007) {
                    if ((abstractC2673.m6008() < m5963) != this.f1437) {
                        i19 += this.f1447.mo3824(view3);
                    } else {
                        i20 += this.f1447.mo3824(view3);
                    }
                }
            }
            this.f1445.f10335 = list2;
            if (i19 > 0) {
                m898(AbstractC2669.m5963(m913()), i3);
                C2717 c271712 = this.f1445;
                c271712.f10337 = i19;
                c271712.f10331 = 0;
                c271712.m6099(null);
                m912(c2666, this.f1445, c2723, false);
            }
            if (i20 > 0) {
                m903(AbstractC2669.m5963(m901()), i2);
                C2717 c271713 = this.f1445;
                c271713.f10337 = i20;
                c271713.f10331 = 0;
                list = null;
                c271713.m6099(null);
                m912(c2666, this.f1445, c2723, false);
            } else {
                list = null;
            }
            this.f1445.f10335 = list;
        }
        if (c2723.f10376) {
            c2697.m6066();
        } else {
            AbstractC1237 abstractC12372 = this.f1447;
            abstractC12372.f4814 = abstractC12372.mo3827();
        }
        this.f1442 = this.f1433;
    }

    @Override // p179.AbstractC2669
    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final int mo907(C2723 c2723) {
        return m900(c2723);
    }

    @Override // p179.AbstractC2669
    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public final void mo908(AccessibilityEvent accessibilityEvent) {
        super.mo908(accessibilityEvent);
        if (m5974() > 0) {
            accessibilityEvent.setFromIndex(m893());
            accessibilityEvent.setToIndex(m895());
        }
    }

    @Override // p179.AbstractC2669
    /* renamed from: ᐧﹶ */
    public final void mo520(Parcelable parcelable) {
        if (parcelable instanceof C2735) {
            C2735 c2735 = (C2735) parcelable;
            this.f1446 = c2735;
            if (this.f1439 != -1) {
                c2735.f10446 = -1;
            }
            m5982();
        }
    }

    @Override // p179.AbstractC2669
    /* renamed from: ᐧﾞ */
    public View mo881(View view, int i, C2666 c2666, C2723 c2723) {
        int m897;
        m919();
        if (m5974() != 0 && (m897 = m897(i)) != Integer.MIN_VALUE) {
            m918();
            m909(m897, (int) (this.f1447.mo3827() * 0.33333334f), false, c2723);
            C2717 c2717 = this.f1445;
            c2717.f10336 = Integer.MIN_VALUE;
            c2717.f10339 = false;
            m912(c2666, c2717, c2723, true);
            View m905 = m897 == -1 ? this.f1437 ? m905(m5974() - 1, -1) : m905(0, m5974()) : this.f1437 ? m905(0, m5974()) : m905(m5974() - 1, -1);
            View m913 = m897 == -1 ? m913() : m901();
            if (!m913.hasFocusable()) {
                return m905;
            }
            if (m905 != null) {
                return m913;
            }
        }
        return null;
    }

    /* renamed from: ᴵٴ, reason: contains not printable characters */
    public final void m909(int i, int i2, boolean z, C2723 c2723) {
        int mo3822;
        this.f1445.f10340 = this.f1447.mo3825() == 0 && this.f1447.mo3828() == 0;
        this.f1445.f10341 = i;
        int[] iArr = this.f1440;
        iArr[0] = 0;
        iArr[1] = 0;
        mo899(c2723, iArr);
        int max = Math.max(0, iArr[0]);
        int max2 = Math.max(0, iArr[1]);
        boolean z2 = i == 1;
        C2717 c2717 = this.f1445;
        int i3 = z2 ? max2 : max;
        c2717.f10337 = i3;
        if (!z2) {
            max = max2;
        }
        c2717.f10330 = max;
        if (z2) {
            c2717.f10337 = this.f1447.mo3820() + i3;
            View m901 = m901();
            C2717 c27172 = this.f1445;
            c27172.f10334 = this.f1437 ? -1 : 1;
            int m5963 = AbstractC2669.m5963(m901);
            C2717 c27173 = this.f1445;
            c27172.f10333 = m5963 + c27173.f10334;
            c27173.f10338 = this.f1447.mo3821(m901);
            mo3822 = this.f1447.mo3821(m901) - this.f1447.mo3818();
        } else {
            View m913 = m913();
            C2717 c27174 = this.f1445;
            c27174.f10337 = this.f1447.mo3822() + c27174.f10337;
            C2717 c27175 = this.f1445;
            c27175.f10334 = this.f1437 ? 1 : -1;
            int m59632 = AbstractC2669.m5963(m913);
            C2717 c27176 = this.f1445;
            c27175.f10333 = m59632 + c27176.f10334;
            c27176.f10338 = this.f1447.mo3826(m913);
            mo3822 = (-this.f1447.mo3826(m913)) + this.f1447.mo3822();
        }
        C2717 c27177 = this.f1445;
        c27177.f10331 = i2;
        if (z) {
            c27177.f10331 = i2 - mo3822;
        }
        c27177.f10336 = mo3822;
    }

    @Override // p179.AbstractC2669
    /* renamed from: ᵎʻ */
    public void mo523(C2723 c2723) {
        this.f1446 = null;
        this.f1439 = -1;
        this.f1434 = Integer.MIN_VALUE;
        this.f1438.m6066();
    }

    @Override // p179.AbstractC2669
    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public final void mo910(RecyclerView recyclerView) {
    }

    @Override // p179.AbstractC2669
    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final int mo911(C2723 c2723) {
        return m900(c2723);
    }

    /* renamed from: ᵔⁱ, reason: contains not printable characters */
    public final int m912(C2666 c2666, C2717 c2717, C2723 c2723, boolean z) {
        int i;
        int i2 = c2717.f10331;
        int i3 = c2717.f10336;
        if (i3 != Integer.MIN_VALUE) {
            if (i2 < 0) {
                c2717.f10336 = i3 + i2;
            }
            m885(c2666, c2717);
        }
        int i4 = c2717.f10331 + c2717.f10337;
        while (true) {
            if ((!c2717.f10340 && i4 <= 0) || (i = c2717.f10333) < 0 || i >= c2723.m6109()) {
                break;
            }
            C2732 c2732 = this.f1444;
            c2732.f10430 = 0;
            c2732.f10429 = false;
            c2732.f10427 = false;
            c2732.f10428 = false;
            mo864(c2666, c2723, c2717, c2732);
            if (!c2732.f10429) {
                int i5 = c2717.f10338;
                int i6 = c2732.f10430;
                c2717.f10338 = (c2717.f10341 * i6) + i5;
                if (!c2732.f10427 || c2717.f10335 != null || !c2723.f10376) {
                    c2717.f10331 -= i6;
                    i4 -= i6;
                }
                int i7 = c2717.f10336;
                if (i7 != Integer.MIN_VALUE) {
                    int i8 = i7 + i6;
                    c2717.f10336 = i8;
                    int i9 = c2717.f10331;
                    if (i9 < 0) {
                        c2717.f10336 = i8 + i9;
                    }
                    m885(c2666, c2717);
                }
                if (z && c2732.f10428) {
                    break;
                }
            } else {
                break;
            }
        }
        return i2 - c2717.f10331;
    }

    /* renamed from: ᵢʻ, reason: contains not printable characters */
    public final View m913() {
        return m5981(this.f1437 ? m5974() - 1 : 0);
    }

    /* renamed from: ᵢˋ, reason: contains not printable characters */
    public final int m914(C2723 c2723) {
        if (m5974() == 0) {
            return 0;
        }
        m918();
        AbstractC1237 abstractC1237 = this.f1447;
        boolean z = !this.f1443;
        return AbstractC2741.m6140(c2723, abstractC1237, m920(z), m906(z), this, this.f1443);
    }

    /* renamed from: ᵢᐧ, reason: contains not printable characters */
    public final void m915(C2666 c2666, int i, int i2) {
        if (i == i2) {
            return;
        }
        if (i2 <= i) {
            while (i > i2) {
                m5975(i, c2666);
                i--;
            }
        } else {
            for (int i3 = i2 - 1; i3 >= i; i3--) {
                m5975(i3, c2666);
            }
        }
    }

    @Override // p179.AbstractC2669
    /* renamed from: ⁱי */
    public int mo530(int i, C2666 c2666, C2723 c2723) {
        if (this.f1435 == 0) {
            return 0;
        }
        return m890(i, c2666, c2723);
    }

    @Override // p179.InterfaceC2677
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final PointF mo916(int i) {
        if (m5974() == 0) {
            return null;
        }
        int i2 = (i < AbstractC2669.m5963(m5981(0))) != this.f1437 ? -1 : 1;
        return this.f1435 == 0 ? new PointF(i2, 0.0f) : new PointF(0.0f, i2);
    }

    /* renamed from: ﹳᵢ, reason: contains not printable characters */
    public final int m917(C2723 c2723) {
        if (m5974() == 0) {
            return 0;
        }
        m918();
        AbstractC1237 abstractC1237 = this.f1447;
        boolean z = !this.f1443;
        return AbstractC2741.m6139(c2723, abstractC1237, m920(z), m906(z), this, this.f1443, this.f1437);
    }

    @Override // p179.AbstractC2669
    /* renamed from: ﹳⁱ */
    public final void mo531(int i) {
        this.f1439 = i;
        this.f1434 = Integer.MIN_VALUE;
        C2735 c2735 = this.f1446;
        if (c2735 != null) {
            c2735.f10446 = -1;
        }
        m5982();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [ˋˋ.ٴʼ, java.lang.Object] */
    /* renamed from: ﹶʽ, reason: contains not printable characters */
    public final void m918() {
        if (this.f1445 == null) {
            ?? obj = new Object();
            obj.f10339 = true;
            obj.f10337 = 0;
            obj.f10330 = 0;
            obj.f10335 = null;
            this.f1445 = obj;
        }
    }

    @Override // p179.AbstractC2669
    /* renamed from: ﾞʻ */
    public int mo884(C2723 c2723) {
        return m917(c2723);
    }

    /* renamed from: ﾞˊ, reason: contains not printable characters */
    public final void m919() {
        if (this.f1435 == 1 || !m889()) {
            this.f1437 = this.f1441;
        } else {
            this.f1437 = !this.f1441;
        }
    }

    /* renamed from: ﾞˏ, reason: contains not printable characters */
    public final View m920(boolean z) {
        return this.f1437 ? m902(m5974() - 1, -1, z) : m902(0, m5974(), z);
    }

    @Override // p179.AbstractC2669
    /* renamed from: ﾞᴵ */
    public final boolean mo538() {
        return this.f1435 == 1;
    }
}
