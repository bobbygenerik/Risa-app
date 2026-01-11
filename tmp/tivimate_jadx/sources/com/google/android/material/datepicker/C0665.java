package com.google.android.material.datepicker;

import android.widget.LinearLayout;
import android.widget.TextView;
import ar.tvplayer.tv.R;
import java.util.WeakHashMap;
import p179.AbstractC2673;
import p186.AbstractC2823;
import p186.C2770;

/* renamed from: com.google.android.material.datepicker.ˏי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0665 extends AbstractC2673 {

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public final MaterialCalendarGridView f2727;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public final TextView f2728;

    public C0665(LinearLayout linearLayout, boolean z) {
        super(linearLayout);
        TextView textView = (TextView) linearLayout.findViewById(R.id.628);
        this.f2728 = textView;
        WeakHashMap weakHashMap = AbstractC2823.f10603;
        new C2770(R.id.3l9, Boolean.class, 0, 28, 3).m5093(textView, Boolean.TRUE);
        this.f2727 = (MaterialCalendarGridView) linearLayout.findViewById(R.id.1e9);
        if (z) {
            return;
        }
        textView.setVisibility(8);
    }
}
