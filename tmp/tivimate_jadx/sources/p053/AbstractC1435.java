package p053;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import ar.tvplayer.tv.R;
import ﹳˋ.ʽʽ;

/* renamed from: ʽᵔ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1435 extends AbstractC1438 {
    public AbstractC1435() {
        ʽʽ.ⁱˊ(this);
    }

    @Override // p011.AbstractC0864, p229.AbstractComponentCallbacksC3123
    /* renamed from: ʻᴵ */
    public void mo3061(View view, Bundle bundle) {
        super.mo3061(view, bundle);
        m4198(this.f3679.f3641.f1381);
    }

    @Override // p011.AbstractC0864, p229.AbstractComponentCallbacksC3123
    /* renamed from: ᐧﹶ */
    public final View mo435(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View mo435 = super.mo435(layoutInflater, viewGroup, bundle);
        View inflate = LayoutInflater.from(mo435.getContext()).inflate(R.layout.4rn, viewGroup, false);
        ((ViewGroup) inflate.findViewById(R.id.1ph)).addView(mo435);
        return inflate;
    }

    /* renamed from: ﹶʽ, reason: contains not printable characters */
    public void m4198(CharSequence charSequence) {
        View view = this.f11908;
        TextView textView = view == null ? null : (TextView) view.findViewById(R.id.up);
        if (textView != null) {
            textView.setText(charSequence);
        }
    }
}
