package com.google.android.material.datepicker;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.TextView;
import ar.tvplayer.tv.R;
import java.util.Locale;
import p035.AbstractC1220;
import p179.AbstractC2673;
import p179.AbstractC2727;

/* renamed from: com.google.android.material.datepicker.ʾˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0659 extends AbstractC2727 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C0678 f2697;

    public C0659(C0678 c0678) {
        this.f2697 = c0678;
    }

    @Override // p179.AbstractC2727
    /* renamed from: ᵔᵢ */
    public final AbstractC2673 mo610(ViewGroup viewGroup, int i) {
        return new C0674((TextView) AbstractC1220.m3789(viewGroup, R.layout.uk, viewGroup, false));
    }

    @Override // p179.AbstractC2727
    /* renamed from: ﹳٴ */
    public final int mo611() {
        return this.f2697.f2771.f2756;
    }

    @Override // p179.AbstractC2727
    /* renamed from: ﾞᴵ */
    public final void mo612(AbstractC2673 abstractC2673, int i) {
        C0678 c0678 = this.f2697;
        int i2 = c0678.f2771.f2754.f2745 + i;
        TextView textView = ((C0674) abstractC2673).f2752;
        textView.setText(String.format(Locale.getDefault(), "%d", Integer.valueOf(i2)));
        Context context = textView.getContext();
        textView.setContentDescription(AbstractC0654.m2390().get(1) == i2 ? String.format(context.getString(R.string.mh), Integer.valueOf(i2)) : String.format(context.getString(R.string.4n9), Integer.valueOf(i2)));
        C0657 c0657 = c0678.f2777;
        if (AbstractC0654.m2390().get(1) == i2) {
            ٴﾞ.ˆʾ r7 = c0657.f2692;
        } else {
            ٴﾞ.ˆʾ r72 = c0657.f2693;
        }
        throw null;
    }
}
