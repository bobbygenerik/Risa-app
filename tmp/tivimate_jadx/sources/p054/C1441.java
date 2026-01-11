package p054;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import ﹳٴ.ﹳٴ;

/* renamed from: ʽᵢ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1441 extends ﹳٴ {

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final /* synthetic */ int f5621;

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final int m4213(View view, ViewGroup.MarginLayoutParams marginLayoutParams) {
        int measuredHeight;
        int i;
        switch (this.f5621) {
            case 0:
                measuredHeight = view.getMeasuredHeight();
                i = marginLayoutParams.bottomMargin;
                break;
            case 1:
                measuredHeight = view.getMeasuredWidth();
                i = marginLayoutParams.leftMargin;
                break;
            default:
                measuredHeight = view.getMeasuredWidth();
                i = marginLayoutParams.rightMargin;
                break;
        }
        return measuredHeight + i;
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int m4214() {
        switch (this.f5621) {
            case 0:
                return 1;
            case 1:
                return 2;
            default:
                return 0;
        }
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final ViewPropertyAnimator m4215(View view, int i) {
        switch (this.f5621) {
            case 0:
                return view.animate().translationY(i);
            case 1:
                return view.animate().translationX(-i);
            default:
                return view.animate().translationX(i);
        }
    }
}
