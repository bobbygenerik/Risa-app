package com.google.android.material.datepicker;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import ar.tvplayer.tv.R;
import java.util.Calendar;
import p035.AbstractC1220;

/* renamed from: com.google.android.material.datepicker.ﹳᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0677 extends BaseAdapter {

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final int f2762 = AbstractC0654.m2389(null).getMaximum(4);

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final int f2763 = (AbstractC0654.m2389(null).getMaximum(7) + AbstractC0654.m2389(null).getMaximum(5)) - 1;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C0675 f2764;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public C0657 f2765;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C0673 f2766;

    public C0677(C0673 c0673, C0675 c0675) {
        this.f2766 = c0673;
        this.f2764 = c0675;
        throw null;
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return f2763;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i / this.f2766.f2747;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        Context context = viewGroup.getContext();
        if (this.f2765 == null) {
            this.f2765 = new C0657(context);
        }
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) AbstractC1220.m3789(viewGroup, R.layout.6i4, viewGroup, false);
        }
        int m2412 = i - m2412();
        if (m2412 >= 0) {
            C0673 c0673 = this.f2766;
            if (m2412 < c0673.f2751) {
                textView.setTag(c0673);
                textView.setText(String.format(textView.getResources().getConfiguration().locale, "%d", Integer.valueOf(m2412 + 1)));
                textView.setVisibility(0);
                textView.setEnabled(true);
                if (getItem(i) == null || textView == null) {
                    return textView;
                }
                textView.getContext();
                AbstractC0654.m2390().getTimeInMillis();
                throw null;
            }
        }
        textView.setVisibility(8);
        textView.setEnabled(false);
        if (getItem(i) == null) {
            textView.getContext();
            AbstractC0654.m2390().getTimeInMillis();
            throw null;
        }
        return textView;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public final boolean hasStableIds() {
        return true;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int m2410() {
        return (m2412() + this.f2766.f2751) - 1;
    }

    @Override // android.widget.Adapter
    /* renamed from: ⁱˊ, reason: contains not printable characters and merged with bridge method [inline-methods] */
    public final Long getItem(int i) {
        if (i < m2412() || i > m2410()) {
            return null;
        }
        int m2412 = (i - m2412()) + 1;
        Calendar m2391 = AbstractC0654.m2391(this.f2766.f2746);
        m2391.set(5, m2412);
        return Long.valueOf(m2391.getTimeInMillis());
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int m2412() {
        int i = this.f2764.f2759;
        C0673 c0673 = this.f2766;
        Calendar calendar = c0673.f2746;
        int i2 = calendar.get(7);
        if (i <= 0) {
            i = calendar.getFirstDayOfWeek();
        }
        int i3 = i2 - i;
        return i3 < 0 ? i3 + c0673.f2747 : i3;
    }
}
