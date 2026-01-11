package p065;

import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import p010.AbstractC0844;
import p018.C1020;
import p072.AbstractC1634;
import p072.C1633;
import p072.C1635;
import p072.C1636;
import p072.C1637;

/* renamed from: ʾˋ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1603 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f6378;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f6379;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f6380;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public int f6381;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final /* synthetic */ ConstraintLayout f6382;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f6383;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ConstraintLayout f6384;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f6385;

    public C1603(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2) {
        this.f6382 = constraintLayout;
        this.f6384 = constraintLayout2;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static boolean m4379(int i, int i2, int i3) {
        if (i == i2) {
            return true;
        }
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode2 == 1073741824) {
            return (mode == Integer.MIN_VALUE || mode == 0) && i3 == size;
        }
        return false;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m4380(C1635 c1635, C1020 c1020) {
        int makeMeasureSpec;
        int makeMeasureSpec2;
        int max;
        boolean z;
        int measuredWidth;
        int baseline;
        int i;
        if (c1635 == null) {
            return;
        }
        C1633 c1633 = c1635.f6559;
        C1633 c16332 = c1635.f6561;
        if (c1635.f6536 == 8) {
            c1020.f4039 = 0;
            c1020.f4044 = 0;
            c1020.f4040 = 0;
            return;
        }
        if (c1635.f6545 == null) {
            return;
        }
        C1608 c1608 = ConstraintLayout.f255;
        int i2 = c1020.f4043;
        int i3 = c1020.f4042;
        int i4 = c1020.f4036;
        int i5 = c1020.f4038;
        int i6 = this.f6383 + this.f6378;
        int i7 = this.f6379;
        View view = c1635.f6511;
        int m3018 = AbstractC0844.m3018(i2);
        if (m3018 == 0) {
            makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
        } else if (m3018 == 1) {
            makeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f6385, i7, -2);
        } else if (m3018 == 2) {
            makeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f6385, i7, -2);
            boolean z2 = c1635.f6572 == 1;
            int i8 = c1020.f4037;
            if (i8 == 1 || i8 == 2) {
                boolean z3 = view.getMeasuredHeight() == c1635.m4457();
                if (c1020.f4037 == 2 || !z2 || ((z2 && z3) || c1635.mo4441())) {
                    makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(c1635.m4467(), 1073741824);
                }
            }
        } else if (m3018 != 3) {
            makeMeasureSpec = 0;
        } else {
            int i9 = this.f6385;
            int i10 = c16332 != null ? c16332.f6503 : 0;
            if (c1633 != null) {
                i10 += c1633.f6503;
            }
            makeMeasureSpec = ViewGroup.getChildMeasureSpec(i9, i7 + i10, -1);
        }
        int m30182 = AbstractC0844.m3018(i3);
        if (m30182 == 0) {
            makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i5, 1073741824);
        } else if (m30182 == 1) {
            makeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.f6381, i6, -2);
        } else if (m30182 == 2) {
            makeMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.f6381, i6, -2);
            boolean z4 = c1635.f6543 == 1;
            int i11 = c1020.f4037;
            if (i11 == 1 || i11 == 2) {
                boolean z5 = view.getMeasuredWidth() == c1635.m4467();
                if (c1020.f4037 == 2 || !z4 || ((z4 && z5) || c1635.mo4458())) {
                    makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(c1635.m4457(), 1073741824);
                }
            }
        } else if (m30182 != 3) {
            makeMeasureSpec2 = 0;
        } else {
            int i12 = this.f6381;
            int i13 = c16332 != null ? c1635.f6548.f6503 : 0;
            if (c1633 != null) {
                i13 += c1635.f6564.f6503;
            }
            makeMeasureSpec2 = ViewGroup.getChildMeasureSpec(i12, i6 + i13, -1);
        }
        C1636 c1636 = (C1636) c1635.f6545;
        ConstraintLayout constraintLayout = this.f6382;
        if (c1636 != null && AbstractC1634.m4428(constraintLayout.f268, 256) && view.getMeasuredWidth() == c1635.m4467() && view.getMeasuredWidth() < c1636.m4467() && view.getMeasuredHeight() == c1635.m4457() && view.getMeasuredHeight() < c1636.m4457() && view.getBaseline() == c1635.f6560 && !c1635.m4468() && m4379(c1635.f6549, makeMeasureSpec, c1635.m4467()) && m4379(c1635.f6533, makeMeasureSpec2, c1635.m4457())) {
            c1020.f4039 = c1635.m4467();
            c1020.f4044 = c1635.m4457();
            c1020.f4040 = c1635.f6560;
            return;
        }
        boolean z6 = i2 == 3;
        boolean z7 = i3 == 3;
        boolean z8 = i3 == 4 || i3 == 1;
        boolean z9 = i2 == 4 || i2 == 1;
        boolean z10 = z6 && c1635.f6556 > 0.0f;
        boolean z11 = z7 && c1635.f6556 > 0.0f;
        if (view == null) {
            return;
        }
        C1600 c1600 = (C1600) view.getLayoutParams();
        int i14 = c1020.f4037;
        if (i14 != 1 && i14 != 2 && z6 && c1635.f6572 == 0 && z7 && c1635.f6543 == 0) {
            z = false;
            measuredWidth = 0;
            baseline = 0;
            i = -1;
            max = 0;
        } else {
            if ((view instanceof AbstractC1611) && (c1635 instanceof C1637)) {
                ((AbstractC1611) view).mo86((C1637) c1635, makeMeasureSpec, makeMeasureSpec2);
            } else {
                view.measure(makeMeasureSpec, makeMeasureSpec2);
            }
            c1635.f6549 = makeMeasureSpec;
            c1635.f6533 = makeMeasureSpec2;
            c1635.f6562 = false;
            int measuredWidth2 = view.getMeasuredWidth();
            int measuredHeight = view.getMeasuredHeight();
            int baseline2 = view.getBaseline();
            int i15 = c1635.f6518;
            int max2 = i15 > 0 ? Math.max(i15, measuredWidth2) : measuredWidth2;
            int i16 = c1635.f6510;
            if (i16 > 0) {
                max2 = Math.min(i16, max2);
            }
            int i17 = c1635.f6520;
            max = i17 > 0 ? Math.max(i17, measuredHeight) : measuredHeight;
            int i18 = makeMeasureSpec2;
            int i19 = c1635.f6512;
            if (i19 > 0) {
                max = Math.min(i19, max);
            }
            if (!AbstractC1634.m4428(constraintLayout.f268, 1)) {
                if (z10 && z8) {
                    max2 = (int) ((max * c1635.f6556) + 0.5f);
                } else if (z11 && z9) {
                    max = (int) ((max2 / c1635.f6556) + 0.5f);
                }
            }
            if (measuredWidth2 == max2 && measuredHeight == max) {
                baseline = baseline2;
                measuredWidth = max2;
                z = false;
            } else {
                if (measuredWidth2 != max2) {
                    makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(max2, 1073741824);
                }
                int makeMeasureSpec3 = measuredHeight != max ? View.MeasureSpec.makeMeasureSpec(max, 1073741824) : i18;
                view.measure(makeMeasureSpec, makeMeasureSpec3);
                c1635.f6549 = makeMeasureSpec;
                c1635.f6533 = makeMeasureSpec3;
                z = false;
                c1635.f6562 = false;
                measuredWidth = view.getMeasuredWidth();
                int measuredHeight2 = view.getMeasuredHeight();
                baseline = view.getBaseline();
                max = measuredHeight2;
            }
            i = -1;
        }
        boolean z12 = baseline != i ? true : z;
        c1020.f4035 = (measuredWidth == c1020.f4036 && max == c1020.f4038) ? z : true;
        boolean z13 = c1600.f6347 ? true : z12;
        if (z13 && baseline != -1 && c1635.f6560 != baseline) {
            c1020.f4035 = true;
        }
        c1020.f4039 = measuredWidth;
        c1020.f4044 = max;
        c1020.f4041 = z13;
        c1020.f4040 = baseline;
    }
}
