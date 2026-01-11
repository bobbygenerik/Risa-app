package p044;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import p349.AbstractC4293;

/* renamed from: ʽˊ.ʽﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1327 extends ArrayAdapter {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ C1321 f5109;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public ColorStateList f5110;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public ColorStateList f5111;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1327(C1321 c1321, Context context, int i, String[] strArr) {
        super(context, i, strArr);
        this.f5109 = c1321;
        m3978();
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = super.getView(i, view, viewGroup);
        if (view2 instanceof TextView) {
            TextView textView = (TextView) view2;
            C1321 c1321 = this.f5109;
            Drawable drawable = null;
            if (c1321.getText().toString().contentEquals(textView.getText()) && c1321.f5069 != 0) {
                ColorDrawable colorDrawable = new ColorDrawable(c1321.f5069);
                if (this.f5110 != null) {
                    colorDrawable.setTintList(this.f5111);
                    drawable = new RippleDrawable(this.f5110, colorDrawable, null);
                } else {
                    drawable = colorDrawable;
                }
            }
            textView.setBackground(drawable);
        }
        return view2;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m3978() {
        ColorStateList colorStateList;
        C1321 c1321 = this.f5109;
        ColorStateList colorStateList2 = c1321.f5071;
        ColorStateList colorStateList3 = null;
        if (colorStateList2 != null) {
            int[] iArr = {R.attr.state_pressed};
            colorStateList = new ColorStateList(new int[][]{iArr, new int[0]}, new int[]{colorStateList2.getColorForState(iArr, 0), 0});
        } else {
            colorStateList = null;
        }
        this.f5110 = colorStateList;
        if (c1321.f5069 != 0 && c1321.f5071 != null) {
            int[] iArr2 = {R.attr.state_hovered, -16842919};
            int[] iArr3 = {R.attr.state_selected, -16842919};
            colorStateList3 = new ColorStateList(new int[][]{iArr3, iArr2, new int[0]}, new int[]{AbstractC4293.m8698(c1321.f5071.getColorForState(iArr3, 0), c1321.f5069), AbstractC4293.m8698(c1321.f5071.getColorForState(iArr2, 0), c1321.f5069), c1321.f5069});
        }
        this.f5111 = colorStateList3;
    }
}
