package p179;

import android.view.View;
import java.util.List;

/* renamed from: ˋˋ.ٴʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2717 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public int f10330;

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f10331;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public int f10332;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f10333;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f10334;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public List f10335;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public int f10336;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public int f10337;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f10338;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public boolean f10339;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public boolean f10340;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f10341;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final View m6098(C2666 c2666) {
        List list = this.f10335;
        if (list == null) {
            View m5951 = c2666.m5951(this.f10333);
            this.f10333 += this.f10334;
            return m5951;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            View view = ((AbstractC2673) this.f10335.get(i)).f10176;
            C2700 c2700 = (C2700) view.getLayoutParams();
            if (!c2700.f10283.m6007() && this.f10333 == c2700.f10283.m6008()) {
                m6099(view);
                return view;
            }
        }
        return null;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m6099(View view) {
        int m6008;
        int size = this.f10335.size();
        View view2 = null;
        int i = Integer.MAX_VALUE;
        for (int i2 = 0; i2 < size; i2++) {
            View view3 = ((AbstractC2673) this.f10335.get(i2)).f10176;
            C2700 c2700 = (C2700) view3.getLayoutParams();
            if (view3 != view && !c2700.f10283.m6007() && (m6008 = (c2700.f10283.m6008() - this.f10333) * this.f10334) >= 0 && m6008 < i) {
                view2 = view3;
                if (m6008 == 0) {
                    break;
                } else {
                    i = m6008;
                }
            }
        }
        if (view2 == null) {
            this.f10333 = -1;
        } else {
            this.f10333 = ((C2700) view2.getLayoutParams()).f10283.m6008();
        }
    }
}
