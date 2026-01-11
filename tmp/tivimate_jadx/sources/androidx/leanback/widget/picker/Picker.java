package androidx.leanback.widget.picker;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.support.v4.media.session.AbstractC0001;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.leanback.widget.VerticalGridView;
import ar.tvplayer.tv.R;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import p186.AbstractC2823;
import p244.C3248;
import p244.C3250;
import p244.C3251;
import p272.AbstractC3483;
import ʾʼ.ᵔᵢ;

/* loaded from: classes.dex */
public class Picker extends FrameLayout {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public ArrayList f808;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final ViewGroup f809;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final ArrayList f810;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public int f811;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final float f812;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final DecelerateInterpolator f813;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final float f814;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public final C3251 f815;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public float f816;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final int f817;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final ArrayList f818;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final float f819;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public float f820;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public ArrayList f821;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public int f822;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public int f823;

    public Picker(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.4ff);
    }

    public Picker(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f818 = new ArrayList();
        this.f816 = 3.0f;
        this.f820 = 1.0f;
        this.f822 = 0;
        this.f810 = new ArrayList();
        this.f815 = new C3251(this);
        int[] iArr = AbstractC3483.f13666;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, 0);
        AbstractC2823.m6282(this, context, iArr, attributeSet, obtainStyledAttributes, i);
        this.f823 = obtainStyledAttributes.getResourceId(0, R.layout.62l);
        this.f811 = obtainStyledAttributes.getResourceId(1, 0);
        obtainStyledAttributes.recycle();
        setEnabled(true);
        setDescendantFocusability(262144);
        this.f819 = 1.0f;
        this.f812 = 1.0f;
        this.f814 = 0.5f;
        this.f817 = 200;
        this.f813 = new DecelerateInterpolator(2.5f);
        this.f809 = (ViewGroup) ((ViewGroup) LayoutInflater.from(getContext()).inflate(R.layout.5vq, (ViewGroup) this, true)).findViewById(R.id.4cf);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!isActivated()) {
            return super.dispatchKeyEvent(keyEvent);
        }
        int keyCode = keyEvent.getKeyCode();
        if (keyCode != 23 && keyCode != 66) {
            return super.dispatchKeyEvent(keyEvent);
        }
        if (keyEvent.getAction() == 1) {
            performClick();
        }
        return true;
    }

    public float getActivatedVisibleItemCount() {
        return this.f816;
    }

    public int getColumnsCount() {
        ArrayList arrayList = this.f808;
        if (arrayList == null) {
            return 0;
        }
        return arrayList.size();
    }

    public int getPickerItemHeightPixels() {
        return getContext().getResources().getDimensionPixelSize(R.dimen.2rv);
    }

    public final int getPickerItemLayoutId() {
        return this.f823;
    }

    public final int getPickerItemTextViewId() {
        return this.f811;
    }

    public int getSelectedColumn() {
        return this.f822;
    }

    @Deprecated
    public final CharSequence getSeparator() {
        return (CharSequence) this.f810.get(0);
    }

    public final List<CharSequence> getSeparators() {
        return this.f810;
    }

    public float getVisibleItemCount() {
        return 1.0f;
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i, Rect rect) {
        int selectedColumn = getSelectedColumn();
        if (selectedColumn < 0) {
            return false;
        }
        ArrayList arrayList = this.f818;
        if (selectedColumn < arrayList.size()) {
            return ((VerticalGridView) arrayList.get(selectedColumn)).requestFocus(i, rect);
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        int i = 0;
        while (true) {
            ArrayList arrayList = this.f818;
            if (i >= arrayList.size()) {
                return;
            }
            if (((VerticalGridView) arrayList.get(i)).hasFocus()) {
                setSelectedColumn(i);
            }
            i++;
        }
    }

    @Override // android.view.View
    public void setActivated(boolean z) {
        ArrayList arrayList;
        if (z == isActivated()) {
            super.setActivated(z);
            return;
        }
        super.setActivated(z);
        boolean hasFocus = hasFocus();
        int selectedColumn = getSelectedColumn();
        setDescendantFocusability(131072);
        if (!z && hasFocus && isFocusable()) {
            requestFocus();
        }
        int i = 0;
        while (true) {
            int columnsCount = getColumnsCount();
            arrayList = this.f818;
            if (i >= columnsCount) {
                break;
            }
            ((VerticalGridView) arrayList.get(i)).setFocusable(z);
            i++;
        }
        m561();
        boolean isActivated = isActivated();
        for (int i2 = 0; i2 < getColumnsCount(); i2++) {
            VerticalGridView verticalGridView = (VerticalGridView) arrayList.get(i2);
            for (int i3 = 0; i3 < verticalGridView.getChildCount(); i3++) {
                verticalGridView.getChildAt(i3).setFocusable(isActivated);
            }
        }
        if (z && hasFocus && selectedColumn >= 0) {
            ((VerticalGridView) arrayList.get(selectedColumn)).requestFocus();
        }
        setDescendantFocusability(262144);
    }

    public void setActivatedVisibleItemCount(float f) {
        if (f <= 0.0f) {
            throw new IllegalArgumentException();
        }
        if (this.f816 != f) {
            this.f816 = f;
            if (isActivated()) {
                m561();
            }
        }
    }

    public void setColumns(List<C3248> list) {
        ArrayList arrayList = this.f810;
        if (arrayList.size() == 0) {
            throw new IllegalStateException("Separators size is: " + arrayList.size() + ". At least one separator must be provided");
        }
        if (arrayList.size() == 1) {
            CharSequence charSequence = (CharSequence) arrayList.get(0);
            arrayList.clear();
            arrayList.add("");
            for (int i = 0; i < list.size() - 1; i++) {
                arrayList.add(charSequence);
            }
            arrayList.add("");
        } else if (arrayList.size() != list.size() + 1) {
            throw new IllegalStateException("Separators size: " + arrayList.size() + " mustequal the size of columns: " + list.size() + " + 1");
        }
        ArrayList arrayList2 = this.f818;
        arrayList2.clear();
        ViewGroup viewGroup = this.f809;
        viewGroup.removeAllViews();
        ArrayList arrayList3 = new ArrayList(list);
        this.f808 = arrayList3;
        if (this.f822 > arrayList3.size() - 1) {
            this.f822 = this.f808.size() - 1;
        }
        LayoutInflater from = LayoutInflater.from(getContext());
        int columnsCount = getColumnsCount();
        if (!TextUtils.isEmpty((CharSequence) arrayList.get(0))) {
            TextView textView = (TextView) from.inflate(R.layout.6r3, viewGroup, false);
            textView.setText((CharSequence) arrayList.get(0));
            viewGroup.addView(textView);
        }
        int i2 = 0;
        while (i2 < columnsCount) {
            VerticalGridView verticalGridView = (VerticalGridView) from.inflate(R.layout.1dv, viewGroup, false);
            m562(verticalGridView);
            verticalGridView.setWindowAlignment(0);
            verticalGridView.setHasFixedSize(false);
            verticalGridView.setFocusable(isActivated());
            verticalGridView.setItemViewCacheSize(0);
            arrayList2.add(verticalGridView);
            viewGroup.addView(verticalGridView);
            int i3 = i2 + 1;
            if (!TextUtils.isEmpty((CharSequence) arrayList.get(i3))) {
                TextView textView2 = (TextView) from.inflate(R.layout.6r3, viewGroup, false);
                textView2.setText((CharSequence) arrayList.get(i3));
                viewGroup.addView(textView2);
            }
            verticalGridView.setAdapter(new C3250(this, getPickerItemLayoutId(), getPickerItemTextViewId(), i2));
            verticalGridView.setOnChildViewHolderSelectedListener(this.f815);
            i2 = i3;
        }
    }

    public final void setPickerItemLayoutId(int i) {
        this.f823 = i;
    }

    public final void setPickerItemTextViewId(int i) {
        this.f811 = i;
    }

    public void setSelectedColumn(int i) {
        int i2 = this.f822;
        ArrayList arrayList = this.f818;
        if (i2 != i) {
            this.f822 = i;
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                m566(i3);
            }
        }
        VerticalGridView verticalGridView = (VerticalGridView) arrayList.get(i);
        if (!hasFocus() || verticalGridView.hasFocus()) {
            return;
        }
        verticalGridView.requestFocus();
    }

    public final void setSeparator(CharSequence charSequence) {
        setSeparators(Arrays.asList(charSequence));
    }

    public final void setSeparators(List<CharSequence> list) {
        ArrayList arrayList = this.f810;
        arrayList.clear();
        arrayList.addAll(list);
    }

    public void setVisibleItemCount(float f) {
        if (f <= 0.0f) {
            throw new IllegalArgumentException();
        }
        if (this.f820 != f) {
            this.f820 = f;
            if (isActivated()) {
                return;
            }
            m561();
        }
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void m561() {
        for (int i = 0; i < getColumnsCount(); i++) {
            m562((VerticalGridView) this.f818.get(i));
        }
    }

    /* renamed from: ʽ */
    public void mo558(int i, int i2) {
        C3248 c3248 = (C3248) this.f808.get(i);
        if (c3248.f12505 != i2) {
            c3248.f12505 = i2;
            m567(i);
        }
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void m562(VerticalGridView verticalGridView) {
        ViewGroup.LayoutParams layoutParams = verticalGridView.getLayoutParams();
        float activatedVisibleItemCount = isActivated() ? getActivatedVisibleItemCount() : getVisibleItemCount();
        layoutParams.height = (int) AbstractC0001.m23(activatedVisibleItemCount, 1.0f, verticalGridView.getVerticalSpacing(), getPickerItemHeightPixels() * activatedVisibleItemCount);
        verticalGridView.setLayoutParams(layoutParams);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m563(int i, C3248 c3248) {
        this.f808.set(i, c3248);
        VerticalGridView verticalGridView = (VerticalGridView) this.f818.get(i);
        C3250 c3250 = (C3250) verticalGridView.getAdapter();
        if (c3250 != null) {
            c3250.m6118();
        }
        verticalGridView.setSelectedPosition(c3248.f12505 - c3248.f12504);
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m564(int i, int i2) {
        C3248 c3248 = (C3248) this.f808.get(i);
        if (c3248.f12505 != i2) {
            c3248.f12505 = i2;
            m567(i);
            VerticalGridView verticalGridView = (VerticalGridView) this.f818.get(i);
            if (verticalGridView != null) {
                verticalGridView.setSelectedPosition(i2 - ((C3248) this.f808.get(i)).f12504);
            }
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m565(View view, boolean z, float f, DecelerateInterpolator decelerateInterpolator) {
        view.animate().cancel();
        if (z) {
            view.animate().alpha(f).setDuration(this.f817).setInterpolator(decelerateInterpolator).start();
        } else {
            view.setAlpha(f);
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m566(int i) {
        VerticalGridView verticalGridView = (VerticalGridView) this.f818.get(i);
        int selectedPosition = verticalGridView.getSelectedPosition();
        int i2 = 0;
        while (i2 < verticalGridView.getAdapter().mo611()) {
            View mo904 = verticalGridView.getLayoutManager().mo904(i2);
            if (mo904 != null) {
                m569(i, mo904, selectedPosition == i2, true);
            }
            i2++;
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m567(int i) {
        ArrayList arrayList = this.f821;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((ᵔᵢ) this.f821.get(size)).ﹳٴ.ˏⁱ(i);
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3248 m568(int i) {
        ArrayList arrayList = this.f808;
        if (arrayList == null) {
            return null;
        }
        return (C3248) arrayList.get(i);
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m569(int i, View view, boolean z, boolean z2) {
        boolean z3 = i == this.f822 || !hasFocus();
        DecelerateInterpolator decelerateInterpolator = this.f813;
        if (z) {
            if (z3) {
                m565(view, z2, this.f819, decelerateInterpolator);
                return;
            } else {
                m565(view, z2, this.f812, decelerateInterpolator);
                return;
            }
        }
        if (z3) {
            m565(view, z2, this.f814, decelerateInterpolator);
        } else {
            m565(view, z2, 0.0f, decelerateInterpolator);
        }
    }
}
