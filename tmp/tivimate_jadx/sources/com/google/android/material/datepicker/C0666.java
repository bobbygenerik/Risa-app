package com.google.android.material.datepicker;

import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import ar.tvplayer.tv.R;
import java.util.Calendar;
import java.util.Locale;
import p035.AbstractC1220;

/* renamed from: com.google.android.material.datepicker.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0666 extends BaseAdapter {

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final int f2729;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f2730;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f2731;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Calendar f2732;

    static {
        f2729 = Build.VERSION.SDK_INT >= 26 ? 4 : 1;
    }

    public C0666() {
        Calendar m2389 = AbstractC0654.m2389(null);
        this.f2732 = m2389;
        this.f2731 = m2389.getMaximum(7);
        this.f2730 = m2389.getFirstDayOfWeek();
    }

    public C0666(int i) {
        Calendar m2389 = AbstractC0654.m2389(null);
        this.f2732 = m2389;
        this.f2731 = m2389.getMaximum(7);
        this.f2730 = i;
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.f2731;
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i) {
        int i2 = this.f2731;
        if (i >= i2) {
            return null;
        }
        int i3 = i + this.f2730;
        if (i3 > i2) {
            i3 -= i2;
        }
        return Integer.valueOf(i3);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) AbstractC1220.m3789(viewGroup, R.layout.23l, viewGroup, false);
        }
        int i2 = i + this.f2730;
        int i3 = this.f2731;
        if (i2 > i3) {
            i2 -= i3;
        }
        Calendar calendar = this.f2732;
        calendar.set(7, i2);
        textView.setText(calendar.getDisplayName(7, f2729, textView.getResources().getConfiguration().locale));
        textView.setContentDescription(String.format(viewGroup.getContext().getString(R.string.526), calendar.getDisplayName(7, 2, Locale.getDefault())));
        return textView;
    }
}
