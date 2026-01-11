package p357;

import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.sidesheet.SideSheetBehavior;
import ˈˆ.ﾞᴵ;

/* renamed from: ᵔˉ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4348 extends ﾞᴵ {

    /* renamed from: ˈ, reason: contains not printable characters */
    public final /* synthetic */ int f16170;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final SideSheetBehavior f16171;

    public /* synthetic */ C4348(SideSheetBehavior sideSheetBehavior, int i) {
        this.f16170 = i;
        this.f16171 = sideSheetBehavior;
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final int m8812() {
        switch (this.f16170) {
            case 0:
                return this.f16171.f2817;
            default:
                return this.f16171.f2816;
        }
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final int m8813(CoordinatorLayout coordinatorLayout) {
        switch (this.f16170) {
            case 0:
                return coordinatorLayout.getLeft();
            default:
                return coordinatorLayout.getRight();
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int m8814(ViewGroup.MarginLayoutParams marginLayoutParams) {
        switch (this.f16170) {
            case 0:
                return marginLayoutParams.leftMargin;
            default:
                return marginLayoutParams.rightMargin;
        }
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final int m8815() {
        switch (this.f16170) {
            case 0:
                SideSheetBehavior sideSheetBehavior = this.f16171;
                return (-sideSheetBehavior.f2829) - sideSheetBehavior.f2817;
            default:
                return this.f16171.f2816;
        }
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final int m8816(View view) {
        switch (this.f16170) {
            case 0:
                return view.getRight() + this.f16171.f2817;
            default:
                return view.getLeft() - this.f16171.f2817;
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final float m8817(int i) {
        switch (this.f16170) {
            case 0:
                float m8815 = m8815();
                return (i - m8815) / (m8821() - m8815);
            default:
                float f = this.f16171.f2816;
                return (f - i) / (f - m8821());
        }
    }

    /* renamed from: ˉـ, reason: contains not printable characters */
    public final void m8818(ViewGroup.MarginLayoutParams marginLayoutParams, int i, int i2) {
        switch (this.f16170) {
            case 0:
                if (i <= this.f16171.f2816) {
                    marginLayoutParams.leftMargin = i2;
                    return;
                }
                return;
            default:
                int i3 = this.f16171.f2816;
                if (i <= i3) {
                    marginLayoutParams.rightMargin = i3 - i;
                    return;
                }
                return;
        }
    }

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final boolean m8819(View view) {
        switch (this.f16170) {
            case 0:
                return view.getRight() < (m8821() - m8815()) / 2;
            default:
                return view.getLeft() > (m8821() + this.f16171.f2816) / 2;
        }
    }

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public final boolean m8820(View view, float f) {
        switch (this.f16170) {
            case 0:
                float left = view.getLeft();
                SideSheetBehavior sideSheetBehavior = this.f16171;
                float abs = Math.abs((f * sideSheetBehavior.f2821) + left);
                sideSheetBehavior.getClass();
                return abs > 0.5f;
            default:
                float right = view.getRight();
                SideSheetBehavior sideSheetBehavior2 = this.f16171;
                float abs2 = Math.abs((f * sideSheetBehavior2.f2821) + right);
                sideSheetBehavior2.getClass();
                return abs2 > 0.5f;
        }
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final int m8821() {
        switch (this.f16170) {
            case 0:
                SideSheetBehavior sideSheetBehavior = this.f16171;
                return Math.max(0, sideSheetBehavior.f2823 + sideSheetBehavior.f2817);
            default:
                SideSheetBehavior sideSheetBehavior2 = this.f16171;
                return Math.max(0, (sideSheetBehavior2.f2816 - sideSheetBehavior2.f2829) - sideSheetBehavior2.f2817);
        }
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final int m8822() {
        switch (this.f16170) {
            case 0:
                return -this.f16171.f2829;
            default:
                return m8821();
        }
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final boolean m8823(float f, float f2) {
        switch (this.f16170) {
            case 0:
                return Math.abs(f) > Math.abs(f2) && Math.abs(f) > ((float) 500);
            default:
                return Math.abs(f) > Math.abs(f2) && Math.abs(f) > ((float) 500);
        }
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final int m8824() {
        switch (this.f16170) {
            case 0:
                return 1;
            default:
                return 0;
        }
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final boolean m8825(float f) {
        switch (this.f16170) {
            case 0:
                return f > 0.0f;
            default:
                return f < 0.0f;
        }
    }
}
