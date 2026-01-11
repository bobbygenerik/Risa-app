package com.google.android.material.datepicker;

import android.R;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.GridView;
import android.widget.ListAdapter;
import p186.AbstractC2823;

/* loaded from: classes.dex */
final class MaterialCalendarGridView extends GridView {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final boolean f2687;

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        AbstractC0654.m2389(null);
        if (C0664.m2398(getContext(), R.attr.windowFullscreen)) {
            setNextFocusLeftId(ar.tvplayer.tv.R.id.6ql);
            setNextFocusRightId(ar.tvplayer.tv.R.id.3qf);
        }
        this.f2687 = C0664.m2398(getContext(), ar.tvplayer.tv.R.attr.5h);
        AbstractC2823.m6273(this, new C0670(2));
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    public final ListAdapter getAdapter() {
        return (C0677) super.getAdapter();
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    /* renamed from: getAdapter, reason: avoid collision after fix types in other method */
    public final ListAdapter getAdapter2() {
        return (C0677) super.getAdapter();
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        ((C0677) super.getAdapter()).notifyDataSetChanged();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        C0677 c0677 = (C0677) super.getAdapter();
        c0677.getClass();
        int max = Math.max(c0677.m2412(), getFirstVisiblePosition());
        int min = Math.min(c0677.m2410(), getLastVisiblePosition());
        c0677.getItem(max);
        c0677.getItem(min);
        throw null;
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public final void onFocusChanged(boolean z, int i, Rect rect) {
        if (!z) {
            super.onFocusChanged(false, i, rect);
            return;
        }
        if (i == 33) {
            setSelection(((C0677) super.getAdapter()).m2410());
        } else if (i == 130) {
            setSelection(((C0677) super.getAdapter()).m2412());
        } else {
            super.onFocusChanged(true, i, rect);
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (!super.onKeyDown(i, keyEvent)) {
            return false;
        }
        int selectedItemPosition = getSelectedItemPosition();
        if (selectedItemPosition == -1 || (selectedItemPosition >= ((C0677) super.getAdapter()).m2412() && selectedItemPosition <= ((C0677) super.getAdapter()).m2410())) {
            return true;
        }
        if (19 != i) {
            return false;
        }
        setSelection(((C0677) super.getAdapter()).m2412());
        return true;
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public final void onMeasure(int i, int i2) {
        if (!this.f2687) {
            super.onMeasure(i, i2);
            return;
        }
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(16777215, Integer.MIN_VALUE));
        getLayoutParams().height = getMeasuredHeight();
    }

    @Override // android.widget.AdapterView
    public final void setAdapter(ListAdapter listAdapter) {
        if (!(listAdapter instanceof C0677)) {
            throw new IllegalArgumentException(String.format("%1$s must have its Adapter set to a %2$s", MaterialCalendarGridView.class.getCanonicalName(), C0677.class.getCanonicalName()));
        }
        super.setAdapter(listAdapter);
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    public final void setSelection(int i) {
        if (i < ((C0677) super.getAdapter()).m2412()) {
            super.setSelection(((C0677) super.getAdapter()).m2412());
        } else {
            super.setSelection(i);
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C0677 m2387() {
        return (C0677) super.getAdapter();
    }
}
