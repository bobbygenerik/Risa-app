package p137;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ViewTreeObserver;
import android.widget.ListAdapter;
import ar.tvplayer.tv.R;
import p044.C1334;

/* renamed from: ˉˆ.ˆﾞ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2260 extends C2254 implements InterfaceC2262 {

    /* renamed from: ʻᵎ, reason: contains not printable characters */
    public final Rect f8874;

    /* renamed from: ˊᵔ, reason: contains not printable characters */
    public int f8875;

    /* renamed from: ˏᵢ, reason: contains not printable characters */
    public CharSequence f8876;

    /* renamed from: ـﹶ, reason: contains not printable characters */
    public final /* synthetic */ C2290 f8877;

    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public C2319 f8878;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2260(C2290 c2290, Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.2m, 0);
        this.f8877 = c2290;
        this.f8874 = new Rect();
        this.f8837 = c2290;
        this.f8834 = true;
        this.f8835.setFocusable(true);
        this.f8845 = new C1334(1, this);
    }

    @Override // p137.C2254, p137.InterfaceC2262
    /* renamed from: ʼᐧ */
    public final void mo5270(ListAdapter listAdapter) {
        super.mo5270(listAdapter);
        this.f8878 = (C2319) listAdapter;
    }

    @Override // p137.InterfaceC2262
    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final void mo5287(int i, int i2) {
        ViewTreeObserver viewTreeObserver;
        C2331 c2331 = this.f8835;
        boolean isShowing = c2331.isShowing();
        m5289();
        c2331.setInputMethodMode(2);
        mo5273();
        C2249 c2249 = this.f8832;
        c2249.setChoiceMode(1);
        c2249.setTextDirection(i);
        c2249.setTextAlignment(i2);
        C2290 c2290 = this.f8877;
        int selectedItemPosition = c2290.getSelectedItemPosition();
        C2249 c22492 = this.f8832;
        if (c2331.isShowing() && c22492 != null) {
            c22492.setListSelectionHidden(false);
            c22492.setSelection(selectedItemPosition);
            if (c22492.getChoiceMode() != 0) {
                c22492.setItemChecked(selectedItemPosition, true);
            }
        }
        if (isShowing || (viewTreeObserver = c2290.getViewTreeObserver()) == null) {
            return;
        }
        ViewTreeObserverOnGlobalLayoutListenerC2270 viewTreeObserverOnGlobalLayoutListenerC2270 = new ViewTreeObserverOnGlobalLayoutListenerC2270(1, this);
        viewTreeObserver.addOnGlobalLayoutListener(viewTreeObserverOnGlobalLayoutListenerC2270);
        c2331.setOnDismissListener(new C2324(this, viewTreeObserverOnGlobalLayoutListenerC2270));
    }

    @Override // p137.InterfaceC2262
    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final CharSequence mo5288() {
        return this.f8876;
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final void m5289() {
        int i;
        C2290 c2290 = this.f8877;
        Rect rect = c2290.f8964;
        C2331 c2331 = this.f8835;
        Drawable background = c2331.getBackground();
        if (background != null) {
            background.getPadding(rect);
            boolean z = AbstractC2257.f8861;
            i = c2290.getLayoutDirection() == 1 ? rect.right : -rect.left;
        } else {
            i = 0;
            rect.right = 0;
            rect.left = 0;
        }
        int paddingLeft = c2290.getPaddingLeft();
        int paddingRight = c2290.getPaddingRight();
        int width = c2290.getWidth();
        int i2 = c2290.f8966;
        if (i2 == -2) {
            int m5340 = c2290.m5340(this.f8878, c2331.getBackground());
            int i3 = (c2290.getContext().getResources().getDisplayMetrics().widthPixels - rect.left) - rect.right;
            if (m5340 > i3) {
                m5340 = i3;
            }
            m5278(Math.max(m5340, (width - paddingLeft) - paddingRight));
        } else if (i2 == -1) {
            m5278((width - paddingLeft) - paddingRight);
        } else {
            m5278(i2);
        }
        boolean z2 = AbstractC2257.f8861;
        this.f8842 = c2290.getLayoutDirection() == 1 ? (((width - paddingRight) - this.f8851) - this.f8875) + i : paddingLeft + this.f8875 + i;
    }

    @Override // p137.InterfaceC2262
    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void mo5290(int i) {
        this.f8875 = i;
    }

    @Override // p137.InterfaceC2262
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void mo5291(CharSequence charSequence) {
        this.f8876 = charSequence;
    }
}
