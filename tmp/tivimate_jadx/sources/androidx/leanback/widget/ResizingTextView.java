package androidx.leanback.widget;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.widget.TextView;
import p272.AbstractC3483;

@SuppressLint({"AppCompatCustomView"})
/* loaded from: classes.dex */
class ResizingTextView extends TextView {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final boolean f703;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f704;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final int f705;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public float f706;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public boolean f707;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public int f708;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public int f709;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final int f710;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final int f711;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public int f712;

    public ResizingTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.textViewStyle);
        this.f707 = false;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC3483.f13672, R.attr.textViewStyle, 0);
        try {
            this.f704 = obtainStyledAttributes.getInt(1, 1);
            this.f710 = obtainStyledAttributes.getDimensionPixelSize(4, -1);
            this.f703 = obtainStyledAttributes.getBoolean(0, false);
            this.f705 = obtainStyledAttributes.getDimensionPixelOffset(3, 0);
            this.f711 = obtainStyledAttributes.getDimensionPixelOffset(2, 0);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x009d  */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onMeasure(int r8, int r9) {
        /*
            Method dump skipped, instructions count: 220
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.leanback.widget.ResizingTextView.onMeasure(int, int):void");
    }

    @Override // android.widget.TextView
    public final void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(ﹳٴ.ﹳٴ.ˉـ(callback, this));
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m547(int i, int i2) {
        if (isPaddingRelative()) {
            setPaddingRelative(getPaddingStart(), i, getPaddingEnd(), i2);
        } else {
            setPadding(getPaddingLeft(), i, getPaddingRight(), i2);
        }
    }
}
