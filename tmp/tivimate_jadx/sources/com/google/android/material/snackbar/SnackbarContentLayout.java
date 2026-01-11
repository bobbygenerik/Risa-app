package com.google.android.material.snackbar;

import android.content.Context;
import android.text.Layout;
import android.util.AttributeSet;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import ar.tvplayer.tv.R;
import p236.AbstractC3200;
import ﹳˋ.ʽʽ;

/* loaded from: classes.dex */
public class SnackbarContentLayout extends LinearLayout {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f2832;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public TextView f2833;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public Button f2834;

    public SnackbarContentLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        ʽʽ.ـˆ(context, R.attr.532, AbstractC3200.f12245);
    }

    public Button getActionView() {
        return this.f2834;
    }

    public TextView getMessageView() {
        return this.f2833;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f2833 = (TextView) findViewById(R.id.2pr);
        this.f2834 = (Button) findViewById(R.id.27f);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (getOrientation() == 1) {
            return;
        }
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.3al);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.1lr);
        Layout layout = this.f2833.getLayout();
        boolean z = layout != null && layout.getLineCount() > 1;
        if (!z || this.f2832 <= 0 || this.f2834.getMeasuredWidth() <= this.f2832) {
            if (!z) {
                dimensionPixelSize = dimensionPixelSize2;
            }
            if (!m2422(0, dimensionPixelSize, dimensionPixelSize)) {
                return;
            }
        } else if (!m2422(1, dimensionPixelSize, dimensionPixelSize - dimensionPixelSize2)) {
            return;
        }
        super.onMeasure(i, i2);
    }

    public void setMaxInlineActionWidth(int i) {
        this.f2832 = i;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean m2422(int i, int i2, int i3) {
        boolean z;
        if (i != getOrientation()) {
            setOrientation(i);
            z = true;
        } else {
            z = false;
        }
        if (this.f2833.getPaddingTop() == i2 && this.f2833.getPaddingBottom() == i3) {
            return z;
        }
        TextView textView = this.f2833;
        if (textView.isPaddingRelative()) {
            textView.setPaddingRelative(textView.getPaddingStart(), i2, textView.getPaddingEnd(), i3);
            return true;
        }
        textView.setPadding(textView.getPaddingLeft(), i2, textView.getPaddingRight(), i3);
        return true;
    }
}
