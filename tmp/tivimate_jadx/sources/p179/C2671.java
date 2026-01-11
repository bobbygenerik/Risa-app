package p179;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import p035.AbstractC1237;

/* renamed from: ˋˋ.ʼˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2671 extends AbstractC2716 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public C2701 f10161;

    /* renamed from: ˈ, reason: contains not printable characters */
    public C2701 f10162;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C2678 f10163 = new C2678(this);

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public RecyclerView f10164;

    /* renamed from: ʽ, reason: contains not printable characters */
    public static View m5997(AbstractC2669 abstractC2669, AbstractC1237 abstractC1237) {
        int m5974 = abstractC2669.m5974();
        View view = null;
        if (m5974 == 0) {
            return null;
        }
        int mo3827 = (abstractC1237.mo3827() / 2) + abstractC1237.mo3822();
        int i = Integer.MAX_VALUE;
        for (int i2 = 0; i2 < m5974; i2++) {
            View m5981 = abstractC2669.m5981(i2);
            int abs = Math.abs(((abstractC1237.mo3824(m5981) / 2) + abstractC1237.mo3826(m5981)) - mo3827);
            if (abs < i) {
                view = m5981;
                i = abs;
            }
        }
        return view;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static int m5998(View view, AbstractC1237 abstractC1237) {
        return ((abstractC1237.mo3824(view) / 2) + abstractC1237.mo3826(view)) - ((abstractC1237.mo3827() / 2) + abstractC1237.mo3822());
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final AbstractC1237 m5999(AbstractC2669 abstractC2669) {
        C2701 c2701 = this.f10162;
        if (c2701 == null || ((AbstractC2669) c2701.f4813) != abstractC2669) {
            this.f10162 = new C2701(abstractC2669, 0);
        }
        return this.f10162;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final AbstractC1237 m6000(AbstractC2669 abstractC2669) {
        C2701 c2701 = this.f10161;
        if (c2701 == null || ((AbstractC2669) c2701.f4813) != abstractC2669) {
            this.f10161 = new C2701(abstractC2669, 1);
        }
        return this.f10161;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int[] m6001(AbstractC2669 abstractC2669, View view) {
        int[] iArr = new int[2];
        if (abstractC2669.mo506()) {
            iArr[0] = m5998(view, m5999(abstractC2669));
        } else {
            iArr[0] = 0;
        }
        if (abstractC2669.mo538()) {
            iArr[1] = m5998(view, m6000(abstractC2669));
            return iArr;
        }
        iArr[1] = 0;
        return iArr;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m6002() {
        AbstractC2669 layoutManager;
        RecyclerView recyclerView = this.f10164;
        if (recyclerView == null || (layoutManager = recyclerView.getLayoutManager()) == null) {
            return;
        }
        View m5997 = layoutManager.mo538() ? m5997(layoutManager, m6000(layoutManager)) : layoutManager.mo506() ? m5997(layoutManager, m5999(layoutManager)) : null;
        if (m5997 == null) {
            return;
        }
        int[] m6001 = m6001(layoutManager, m5997);
        int i = m6001[0];
        if (i == 0 && m6001[1] == 0) {
            return;
        }
        this.f10164.mo652(i, m6001[1]);
    }
}
