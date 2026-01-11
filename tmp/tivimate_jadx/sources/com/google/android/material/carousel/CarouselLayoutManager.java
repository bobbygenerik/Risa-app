package com.google.android.material.carousel;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import ar.tvplayer.tv.R;
import p012.AbstractC0905;
import p167.C2611;
import p179.AbstractC2669;
import p179.C2666;
import p179.C2699;
import p179.C2700;
import p179.C2723;
import p179.InterfaceC2677;
import p259.AbstractC3399;
import p307.AbstractC3740;
import p312.ViewOnLayoutChangeListenerC3876;
import p434.C5138;
import p434.C5139;

/* loaded from: classes.dex */
public class CarouselLayoutManager extends AbstractC2669 implements InterfaceC2677 {

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final C2611 f2663;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public AbstractC0905 f2664;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final View.OnLayoutChangeListener f2665;

    public CarouselLayoutManager() {
        C2611 c2611 = new C2611();
        new C5139();
        this.f2665 = new ViewOnLayoutChangeListenerC3876(4, this);
        this.f2663 = c2611;
        m5982();
        m2379(0);
    }

    @SuppressLint({"UnknownNullness"})
    public CarouselLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        new C5139();
        this.f2665 = new ViewOnLayoutChangeListenerC3876(4, this);
        this.f2663 = new C2611();
        m5982();
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC3399.f13297);
            obtainStyledAttributes.getInt(0, 0);
            m5982();
            m2379(obtainStyledAttributes.getInt(0, 0));
            obtainStyledAttributes.recycle();
        }
    }

    @Override // p179.AbstractC2669
    /* renamed from: ʻᴵ, reason: contains not printable characters */
    public final boolean mo2374(RecyclerView recyclerView, View view, Rect rect, boolean z, boolean z2) {
        return false;
    }

    @Override // p179.AbstractC2669
    /* renamed from: ʼᐧ */
    public final int mo859(C2723 c2723) {
        return 0;
    }

    @Override // p179.AbstractC2669
    /* renamed from: ʿـ */
    public final int mo481(int i, C2666 c2666, C2723 c2723) {
        if (!m2378() || m5974() == 0 || i == 0) {
            return 0;
        }
        c2666.m5951(0);
        throw new IllegalStateException("All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup.");
    }

    @Override // p179.AbstractC2669
    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public final void mo2375(RecyclerView recyclerView) {
        Context context = recyclerView.getContext();
        C2611 c2611 = this.f2663;
        float f = c2611.f9893;
        if (f <= 0.0f) {
            f = context.getResources().getDimension(R.dimen.2gu);
        }
        c2611.f9893 = f;
        float f2 = c2611.f9892;
        if (f2 <= 0.0f) {
            f2 = context.getResources().getDimension(R.dimen.6gs);
        }
        c2611.f9892 = f2;
        m5982();
        recyclerView.addOnLayoutChangeListener(this.f2665);
    }

    @Override // p179.AbstractC2669
    /* renamed from: ˈˏ */
    public final void mo488() {
        m5977();
    }

    @Override // p179.AbstractC2669
    /* renamed from: ˉʿ */
    public final int mo866(C2723 c2723) {
        return 0;
    }

    @Override // p179.AbstractC2669
    /* renamed from: ˉˆ */
    public final int mo867(C2723 c2723) {
        return 0;
    }

    @Override // p179.AbstractC2669
    /* renamed from: ˊˋ */
    public final boolean mo894() {
        return true;
    }

    /* renamed from: ˎʾ, reason: contains not printable characters */
    public final float m2376(float f, float f2) {
        return m2377() ? f - f2 : f + f2;
    }

    /* renamed from: ˎˉ, reason: contains not printable characters */
    public final boolean m2377() {
        return m2378() && this.f10154.getLayoutDirection() == 1;
    }

    @Override // p179.AbstractC2669
    /* renamed from: ˏי */
    public final C2700 mo502() {
        return new C2700(-2, -2);
    }

    /* renamed from: ˑˆ, reason: contains not printable characters */
    public final boolean m2378() {
        return this.f2664.f3828 == 0;
    }

    @Override // p179.AbstractC2669
    /* renamed from: ˑﹳ */
    public final boolean mo506() {
        return m2378();
    }

    @Override // p179.AbstractC2669
    /* renamed from: יˉ */
    public final void mo510(RecyclerView recyclerView, int i) {
        C2699 c2699 = new C2699(1, recyclerView.getContext(), this);
        c2699.f10247 = i;
        mo536(c2699);
    }

    @Override // p179.AbstractC2669
    /* renamed from: ـﹶ */
    public final void mo514(int i, int i2) {
        m5977();
    }

    @Override // p179.AbstractC2669
    /* renamed from: ٴﹳ */
    public final void mo517(C2666 c2666, C2723 c2723) {
        if (c2723.m6109() > 0) {
            if ((m2378() ? this.f10152 : this.f10148) > 0.0f) {
                m2377();
                c2666.m5951(0);
                throw new IllegalStateException("All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup.");
            }
        }
        mo499(c2666);
    }

    @Override // p179.AbstractC2669
    /* renamed from: ٴﹶ */
    public final int mo907(C2723 c2723) {
        m5974();
        return 0;
    }

    @Override // p179.AbstractC2669
    /* renamed from: ᐧᴵ */
    public final void mo908(AccessibilityEvent accessibilityEvent) {
        super.mo908(accessibilityEvent);
        if (m5974() > 0) {
            accessibilityEvent.setFromIndex(AbstractC2669.m5963(m5981(0)));
            accessibilityEvent.setToIndex(AbstractC2669.m5963(m5981(m5974() - 1)));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x0038, code lost:
    
        if (r6 == 1) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0042, code lost:
    
        if (m2377() != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0046, code lost:
    
        if (r6 == 1) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x004f, code lost:
    
        if (m2377() != false) goto L20;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:49:? A[RETURN, SYNTHETIC] */
    @Override // p179.AbstractC2669
    /* renamed from: ᐧﾞ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View mo881(android.view.View r4, int r5, p179.C2666 r6, p179.C2723 r7) {
        /*
            r3 = this;
            int r6 = r3.m5974()
            if (r6 != 0) goto L8
            goto L94
        L8:
            ʻᴵ.ﾞᴵ r6 = r3.f2664
            int r6 = r6.f3828
            r7 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = -1
            r1 = 1
            if (r5 == r1) goto L44
            r2 = 2
            if (r5 == r2) goto L3a
            r2 = 17
            if (r5 == r2) goto L49
            r2 = 33
            if (r5 == r2) goto L46
            r2 = 66
            if (r5 == r2) goto L3c
            r2 = 130(0x82, float:1.82E-43)
            if (r5 == r2) goto L38
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            java.lang.String r2 = "Unknown focus request:"
            r6.<init>(r2)
            r6.append(r5)
            java.lang.String r5 = r6.toString()
            java.lang.String r6 = "CarouselLayoutManager"
        L36:
            r5 = r7
            goto L52
        L38:
            if (r6 != r1) goto L36
        L3a:
            r5 = r1
            goto L52
        L3c:
            if (r6 != 0) goto L36
            boolean r5 = r3.m2377()
            if (r5 == 0) goto L3a
        L44:
            r5 = r0
            goto L52
        L46:
            if (r6 != r1) goto L36
            goto L44
        L49:
            if (r6 != 0) goto L36
            boolean r5 = r3.m2377()
            if (r5 == 0) goto L44
            goto L3a
        L52:
            if (r5 != r7) goto L55
            goto L94
        L55:
            r6 = 0
            if (r5 != r0) goto L89
            int r4 = p179.AbstractC2669.m5963(r4)
            if (r4 != 0) goto L5f
            goto L94
        L5f:
            android.view.View r4 = r3.m5981(r6)
            int r4 = p179.AbstractC2669.m5963(r4)
            int r4 = r4 - r1
            if (r4 < 0) goto L78
            int r5 = r3.m5977()
            if (r4 < r5) goto L71
            goto L78
        L71:
            ʻᴵ.ﾞᴵ r4 = r3.f2664
            r4.mo3174()
            r4 = 0
            throw r4
        L78:
            boolean r4 = r3.m2377()
            if (r4 == 0) goto L84
            int r4 = r3.m5974()
            int r6 = r4 + (-1)
        L84:
            android.view.View r4 = r3.m5981(r6)
            return r4
        L89:
            int r4 = p179.AbstractC2669.m5963(r4)
            int r5 = r3.m5977()
            int r5 = r5 - r1
            if (r4 != r5) goto L96
        L94:
            r4 = 0
            return r4
        L96:
            int r4 = r3.m5974()
            int r4 = r4 - r1
            android.view.View r4 = r3.m5981(r4)
            int r4 = p179.AbstractC2669.m5963(r4)
            int r4 = r4 + r1
            if (r4 < 0) goto Lb4
            int r5 = r3.m5977()
            if (r4 < r5) goto Lad
            goto Lb4
        Lad:
            ʻᴵ.ﾞᴵ r4 = r3.f2664
            r4.mo3174()
            r4 = 0
            throw r4
        Lb4:
            boolean r4 = r3.m2377()
            if (r4 == 0) goto Lbb
            goto Lc1
        Lbb:
            int r4 = r3.m5974()
            int r6 = r4 + (-1)
        Lc1:
            android.view.View r4 = r3.m5981(r6)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.carousel.CarouselLayoutManager.mo881(android.view.View, int, ˋˋ.ʻˋ, ˋˋ.ᐧﹶ):android.view.View");
    }

    @Override // p179.AbstractC2669
    /* renamed from: ᴵˊ */
    public final void mo521(View view, Rect rect) {
        super.mo521(view, rect);
        rect.centerY();
        if (m2378()) {
            rect.centerX();
        }
        throw null;
    }

    @Override // p179.AbstractC2669
    /* renamed from: ᵎʻ */
    public final void mo523(C2723 c2723) {
        if (m5974() == 0) {
            return;
        }
        AbstractC2669.m5963(m5981(0));
    }

    @Override // p179.AbstractC2669
    /* renamed from: ᵎᵔ */
    public final void mo910(RecyclerView recyclerView) {
        recyclerView.removeOnLayoutChangeListener(this.f2665);
    }

    @Override // p179.AbstractC2669
    /* renamed from: ᵔʾ */
    public final int mo911(C2723 c2723) {
        m5974();
        return 0;
    }

    @Override // p179.AbstractC2669
    /* renamed from: ⁱי */
    public final int mo530(int i, C2666 c2666, C2723 c2723) {
        if (!mo538() || m5974() == 0 || i == 0) {
            return 0;
        }
        c2666.m5951(0);
        throw new IllegalStateException("All children of a RecyclerView using CarouselLayoutManager must use MaskableFrameLayout as their root ViewGroup.");
    }

    @Override // p179.InterfaceC2677
    /* renamed from: ﹳٴ */
    public final PointF mo916(int i) {
        return null;
    }

    /* renamed from: ﹳᵢ, reason: contains not printable characters */
    public final void m2379(int i) {
        C5138 c5138;
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException(AbstractC3740.m7932(i, "invalid orientation:"));
        }
        mo887(null);
        AbstractC0905 abstractC0905 = this.f2664;
        if (abstractC0905 == null || i != abstractC0905.f3828) {
            if (i == 0) {
                c5138 = new C5138(this, 1);
            } else {
                if (i != 1) {
                    throw new IllegalArgumentException("invalid orientation");
                }
                c5138 = new C5138(this, 0);
            }
            this.f2664 = c5138;
            m5982();
        }
    }

    @Override // p179.AbstractC2669
    /* renamed from: ﹳⁱ */
    public final void mo531(int i) {
    }

    @Override // p179.AbstractC2669
    /* renamed from: ﹳﹳ */
    public final void mo532(int i, int i2) {
        m5977();
    }

    @Override // p179.AbstractC2669
    /* renamed from: ﾞʻ */
    public final int mo884(C2723 c2723) {
        return 0;
    }

    @Override // p179.AbstractC2669
    /* renamed from: ﾞᴵ */
    public final boolean mo538() {
        return !m2378();
    }
}
