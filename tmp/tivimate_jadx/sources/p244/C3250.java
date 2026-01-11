package p244;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.leanback.widget.VerticalGridView;
import androidx.leanback.widget.picker.Picker;
import java.util.ArrayList;
import p179.AbstractC2673;
import p179.AbstractC2727;

/* renamed from: י.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3250 extends AbstractC2727 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f12506;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f12507;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final C3248 f12508;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final /* synthetic */ Picker f12509;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int f12510;

    public C3250(Picker picker, int i, int i2, int i3) {
        this.f12509 = picker;
        this.f12506 = i;
        this.f12507 = i3;
        this.f12510 = i2;
        this.f12508 = (C3248) picker.f808.get(i3);
    }

    @Override // p179.AbstractC2727
    /* renamed from: ʼˎ */
    public final void mo6116(AbstractC2673 abstractC2673) {
        ((C3247) abstractC2673).f10176.setFocusable(this.f12509.isActivated());
    }

    @Override // p179.AbstractC2727
    /* renamed from: ᵔᵢ */
    public final AbstractC2673 mo610(ViewGroup viewGroup, int i) {
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(this.f12506, viewGroup, false);
        int i2 = this.f12510;
        return new C3247(inflate, i2 != 0 ? (TextView) inflate.findViewById(i2) : (TextView) inflate);
    }

    @Override // p179.AbstractC2727
    /* renamed from: ﹳٴ */
    public final int mo611() {
        C3248 c3248 = this.f12508;
        if (c3248 == null) {
            return 0;
        }
        return (c3248.f12501 - c3248.f12504) + 1;
    }

    @Override // p179.AbstractC2727
    /* renamed from: ﾞᴵ */
    public final void mo612(AbstractC2673 abstractC2673, int i) {
        C3248 c3248;
        C3247 c3247 = (C3247) abstractC2673;
        TextView textView = c3247.f12500;
        if (textView != null && (c3248 = this.f12508) != null) {
            int i2 = c3248.f12504 + i;
            CharSequence[] charSequenceArr = c3248.f12502;
            textView.setText(charSequenceArr == null ? String.format(c3248.f12503, Integer.valueOf(i2)) : charSequenceArr[i2]);
        }
        View view = c3247.f10176;
        Picker picker = this.f12509;
        ArrayList arrayList = picker.f818;
        int i3 = this.f12507;
        picker.m569(i3, view, ((VerticalGridView) arrayList.get(i3)).getSelectedPosition() == i, false);
    }
}
