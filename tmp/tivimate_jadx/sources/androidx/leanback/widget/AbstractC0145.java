package androidx.leanback.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import p179.AbstractC2669;
import p179.AbstractC2673;
import p179.AbstractC2722;

/* renamed from: androidx.leanback.widget.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0145 extends RecyclerView {

    /* renamed from: ʽʾ, reason: contains not printable characters */
    public boolean f1001;

    /* renamed from: ʿʽ, reason: contains not printable characters */
    public int f1002;

    /* renamed from: ˆˑ, reason: contains not printable characters */
    public boolean f1003;

    /* renamed from: ˆﹳ, reason: contains not printable characters */
    public int f1004;

    /* renamed from: ˊﹳ, reason: contains not printable characters */
    public GridLayoutManager f1005;

    /* renamed from: ˎـ, reason: contains not printable characters */
    public AbstractC2722 f1006;

    /* renamed from: ᵢʻ, reason: contains not printable characters */
    public InterfaceC0088 f1007;

    public AbstractC0145(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f1001 = true;
        this.f1003 = true;
        this.f1002 = 4;
        GridLayoutManager gridLayoutManager = new GridLayoutManager(this);
        this.f1005 = gridLayoutManager;
        setLayoutManager(gridLayoutManager);
        setPreserveFocusAfterLayout(false);
        setDescendantFocusability(262144);
        setHasFixedSize(true);
        setChildrenDrawingOrderEnabled(true);
        setWillNotDraw(true);
        setOverScrollMode(2);
        ((ʿי.ـᵎ) getItemAnimator()).ᵎﹶ = false;
        this.f1494.add(new C0150(this));
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchGenericFocusedEvent(MotionEvent motionEvent) {
        return super.dispatchGenericFocusedEvent(motionEvent);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        InterfaceC0088 interfaceC0088 = this.f1007;
        return (interfaceC0088 != null && interfaceC0088.mo574(keyEvent)) || super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.View
    public final View focusSearch(int i) {
        if (isFocused()) {
            GridLayoutManager gridLayoutManager = this.f1005;
            View mo904 = gridLayoutManager.mo904(gridLayoutManager.f613);
            if (mo904 != null) {
                return focusSearch(mo904, i);
            }
        }
        return super.focusSearch(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    public final int getChildDrawingOrder(int i, int i2) {
        int indexOfChild;
        GridLayoutManager gridLayoutManager = this.f1005;
        View mo904 = gridLayoutManager.mo904(gridLayoutManager.f613);
        return (mo904 != null && i2 >= (indexOfChild = indexOfChild(mo904))) ? i2 < i + (-1) ? ((indexOfChild + i) - 1) - i2 : indexOfChild : i2;
    }

    public int getExtraLayoutSpace() {
        return this.f1005.f625;
    }

    public int getFocusScrollStrategy() {
        return this.f1005.f605;
    }

    @Deprecated
    public int getHorizontalMargin() {
        return this.f1005.f616;
    }

    public int getHorizontalSpacing() {
        return this.f1005.f616;
    }

    public int getInitialPrefetchItemCount() {
        return this.f1002;
    }

    public int getItemAlignmentOffset() {
        return ((C0084) this.f1005.f632.ˈٴ).f968;
    }

    public float getItemAlignmentOffsetPercent() {
        return ((C0084) this.f1005.f632.ˈٴ).f965;
    }

    public int getItemAlignmentViewId() {
        return ((C0084) this.f1005.f632.ˈٴ).f969;
    }

    public InterfaceC0154 getOnUnhandledKeyListener() {
        return null;
    }

    public final int getSaveChildrenLimitNumber() {
        return this.f1005.f627.f957;
    }

    public final int getSaveChildrenPolicy() {
        return this.f1005.f627.f956;
    }

    public int getSelectedPosition() {
        return this.f1005.f613;
    }

    public int getSelectedSubPosition() {
        return this.f1005.f624;
    }

    public InterfaceC0141 getSmoothScrollByBehavior() {
        return null;
    }

    public final int getSmoothScrollMaxPendingMoves() {
        return this.f1005.f636;
    }

    public final float getSmoothScrollSpeedFactor() {
        return this.f1005.f600;
    }

    @Deprecated
    public int getVerticalMargin() {
        return this.f1005.f614;
    }

    public int getVerticalSpacing() {
        return this.f1005.f614;
    }

    public int getWindowAlignment() {
        return ((C0091) this.f1005.f606.ˈٴ).f859;
    }

    public int getWindowAlignmentOffset() {
        return ((C0091) this.f1005.f606.ˈٴ).f854;
    }

    public float getWindowAlignmentOffsetPercent() {
        return ((C0091) this.f1005.f606.ˈٴ).f855;
    }

    @Override // android.view.View
    public final boolean hasOverlappingRendering() {
        return this.f1003;
    }

    @Override // android.view.View
    public final void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        GridLayoutManager gridLayoutManager = this.f1005;
        if (!z) {
            gridLayoutManager.getClass();
            return;
        }
        int i2 = gridLayoutManager.f613;
        while (true) {
            View mo904 = gridLayoutManager.mo904(i2);
            if (mo904 == null) {
                return;
            }
            if (mo904.getVisibility() == 0 && mo904.hasFocusable()) {
                mo904.requestFocus();
                return;
            }
            i2++;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i, Rect rect) {
        int i2;
        int i3;
        int i4;
        if ((this.f1004 & 1) != 1) {
            GridLayoutManager gridLayoutManager = this.f1005;
            int i5 = gridLayoutManager.f605;
            if (i5 == 1 || i5 == 2) {
                int m5974 = gridLayoutManager.m5974();
                if ((i & 2) != 0) {
                    i4 = 1;
                    i3 = m5974;
                    i2 = 0;
                } else {
                    i2 = m5974 - 1;
                    i3 = -1;
                    i4 = -1;
                }
                C0091 c0091 = (C0091) gridLayoutManager.f606.ˈٴ;
                int i6 = c0091.f850;
                int i7 = ((c0091.f848 - i6) - c0091.f853) + i6;
                while (i2 != i3) {
                    View m5981 = gridLayoutManager.m5981(i2);
                    if (m5981.getVisibility() == 0 && gridLayoutManager.f617.mo3826(m5981) >= i6 && gridLayoutManager.f617.mo3821(m5981) <= i7 && m5981.requestFocus(i, rect)) {
                        return true;
                    }
                    i2 += i4;
                }
            } else {
                View mo904 = gridLayoutManager.mo904(gridLayoutManager.f613);
                if (mo904 != null) {
                    return mo904.requestFocus(i, rect);
                }
            }
        }
        return false;
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i) {
        int i2;
        GridLayoutManager gridLayoutManager = this.f1005;
        if (gridLayoutManager != null) {
            if (gridLayoutManager.f620 == 0) {
                if (i == 1) {
                    i2 = 262144;
                }
                i2 = 0;
            } else {
                if (i == 1) {
                    i2 = 524288;
                }
                i2 = 0;
            }
            int i3 = gridLayoutManager.f601;
            if ((786432 & i3) == i2) {
                return;
            }
            gridLayoutManager.f601 = i2 | (i3 & (-786433)) | 256;
            ((C0091) gridLayoutManager.f606.ʽʽ).f858 = i == 1;
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        boolean z = view.hasFocus() && isFocusable();
        if (z) {
            this.f1004 = 1 | this.f1004;
            requestFocus();
        }
        super.removeView(view);
        if (z) {
            this.f1004 ^= -2;
        }
    }

    @Override // android.view.ViewGroup
    public final void removeViewAt(int i) {
        boolean hasFocus = getChildAt(i).hasFocus();
        if (hasFocus) {
            this.f1004 |= 1;
            requestFocus();
        }
        super.removeViewAt(i);
        if (hasFocus) {
            this.f1004 ^= -2;
        }
    }

    public void setAnimateChildLayout(boolean z) {
        if (this.f1001 != z) {
            this.f1001 = z;
            if (z) {
                super.setItemAnimator(this.f1006);
            } else {
                this.f1006 = getItemAnimator();
                super.setItemAnimator(null);
            }
        }
    }

    public void setChildrenVisibility(int i) {
        GridLayoutManager gridLayoutManager = this.f1005;
        gridLayoutManager.f631 = i;
        if (i != -1) {
            int m5974 = gridLayoutManager.m5974();
            for (int i2 = 0; i2 < m5974; i2++) {
                gridLayoutManager.m5981(i2).setVisibility(gridLayoutManager.f631);
            }
        }
    }

    public void setExtraLayoutSpace(int i) {
        GridLayoutManager gridLayoutManager = this.f1005;
        int i2 = gridLayoutManager.f625;
        if (i2 == i) {
            return;
        }
        if (i2 < 0) {
            throw new IllegalArgumentException("ExtraLayoutSpace must >= 0");
        }
        gridLayoutManager.f625 = i;
        gridLayoutManager.m5982();
    }

    public void setFocusDrawingOrderEnabled(boolean z) {
        super.setChildrenDrawingOrderEnabled(z);
    }

    public void setFocusScrollStrategy(int i) {
        if (i != 0 && i != 1 && i != 2) {
            throw new IllegalArgumentException("Invalid scrollStrategy");
        }
        this.f1005.f605 = i;
        requestLayout();
    }

    public final void setFocusSearchDisabled(boolean z) {
        setDescendantFocusability(z ? 393216 : 262144);
        GridLayoutManager gridLayoutManager = this.f1005;
        gridLayoutManager.f601 = (z ? 32768 : 0) | (gridLayoutManager.f601 & (-32769));
    }

    public void setGravity(int i) {
        this.f1005.f638 = i;
        requestLayout();
    }

    public void setHasOverlappingRendering(boolean z) {
        this.f1003 = z;
    }

    @Deprecated
    public void setHorizontalMargin(int i) {
        setHorizontalSpacing(i);
    }

    public void setHorizontalSpacing(int i) {
        GridLayoutManager gridLayoutManager = this.f1005;
        if (gridLayoutManager.f620 == 0) {
            gridLayoutManager.f616 = i;
            gridLayoutManager.f599 = i;
        } else {
            gridLayoutManager.f616 = i;
            gridLayoutManager.f622 = i;
        }
        requestLayout();
    }

    public void setInitialPrefetchItemCount(int i) {
        this.f1002 = i;
    }

    public void setItemAlignmentOffset(int i) {
        GridLayoutManager gridLayoutManager = this.f1005;
        ((C0084) gridLayoutManager.f632.ˈٴ).f968 = i;
        gridLayoutManager.m511();
        requestLayout();
    }

    public void setItemAlignmentOffsetPercent(float f) {
        GridLayoutManager gridLayoutManager = this.f1005;
        ((C0084) gridLayoutManager.f632.ˈٴ).m634(f);
        gridLayoutManager.m511();
        requestLayout();
    }

    public void setItemAlignmentOffsetWithPadding(boolean z) {
        GridLayoutManager gridLayoutManager = this.f1005;
        ((C0084) gridLayoutManager.f632.ˈٴ).f966 = z;
        gridLayoutManager.m511();
        requestLayout();
    }

    public void setItemAlignmentViewId(int i) {
        GridLayoutManager gridLayoutManager = this.f1005;
        ((C0084) gridLayoutManager.f632.ˈٴ).f969 = i;
        gridLayoutManager.m511();
    }

    @Deprecated
    public void setItemMargin(int i) {
        setItemSpacing(i);
    }

    public void setItemSpacing(int i) {
        GridLayoutManager gridLayoutManager = this.f1005;
        gridLayoutManager.f616 = i;
        gridLayoutManager.f614 = i;
        gridLayoutManager.f622 = i;
        gridLayoutManager.f599 = i;
        requestLayout();
    }

    public void setLayoutEnabled(boolean z) {
        GridLayoutManager gridLayoutManager = this.f1005;
        int i = gridLayoutManager.f601;
        if (((i & 512) != 0) != z) {
            gridLayoutManager.f601 = (i & (-513)) | (z ? 512 : 0);
            gridLayoutManager.m5982();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void setLayoutManager(AbstractC2669 abstractC2669) {
        if (abstractC2669 != null) {
            GridLayoutManager gridLayoutManager = (GridLayoutManager) abstractC2669;
            this.f1005 = gridLayoutManager;
            gridLayoutManager.f639 = this;
            gridLayoutManager.f611 = null;
            super.setLayoutManager(abstractC2669);
            return;
        }
        super.setLayoutManager(null);
        GridLayoutManager gridLayoutManager2 = this.f1005;
        if (gridLayoutManager2 != null) {
            gridLayoutManager2.f639 = null;
            gridLayoutManager2.f611 = null;
        }
        this.f1005 = null;
    }

    public void setOnChildLaidOutListener(InterfaceC0135 interfaceC0135) {
        this.f1005.getClass();
    }

    @SuppressLint({"ReferencesDeprecated"})
    public void setOnChildSelectedListener(InterfaceC0106 interfaceC0106) {
        this.f1005.f609 = interfaceC0106;
    }

    public void setOnChildViewHolderSelectedListener(AbstractC0096 abstractC0096) {
        GridLayoutManager gridLayoutManager = this.f1005;
        if (abstractC0096 == null) {
            gridLayoutManager.f630 = null;
            return;
        }
        ArrayList arrayList = gridLayoutManager.f630;
        if (arrayList == null) {
            gridLayoutManager.f630 = new ArrayList();
        } else {
            arrayList.clear();
        }
        gridLayoutManager.f630.add(abstractC0096);
    }

    public void setOnKeyInterceptListener(InterfaceC0088 interfaceC0088) {
        this.f1007 = interfaceC0088;
    }

    public void setOnMotionInterceptListener(InterfaceC0100 interfaceC0100) {
    }

    public void setOnTouchInterceptListener(InterfaceC0118 interfaceC0118) {
    }

    public void setOnUnhandledKeyListener(InterfaceC0154 interfaceC0154) {
    }

    public void setPruneChild(boolean z) {
        GridLayoutManager gridLayoutManager = this.f1005;
        int i = gridLayoutManager.f601;
        if (((i & 65536) != 0) != z) {
            gridLayoutManager.f601 = (i & (-65537)) | (z ? 65536 : 0);
            if (z) {
                gridLayoutManager.m5982();
            }
        }
    }

    public final void setSaveChildrenLimitNumber(int i) {
        C0121 c0121 = this.f1005.f627;
        c0121.f957 = i;
        c0121.m625();
    }

    public final void setSaveChildrenPolicy(int i) {
        C0121 c0121 = this.f1005.f627;
        c0121.f956 = i;
        c0121.m625();
    }

    public void setScrollEnabled(boolean z) {
        int i;
        GridLayoutManager gridLayoutManager = this.f1005;
        int i2 = gridLayoutManager.f601;
        if (((i2 & 131072) != 0) != z) {
            int i3 = (i2 & (-131073)) | (z ? 131072 : 0);
            gridLayoutManager.f601 = i3;
            if ((i3 & 131072) == 0 || gridLayoutManager.f605 != 0 || (i = gridLayoutManager.f613) == -1) {
                return;
            }
            gridLayoutManager.m509(i, gridLayoutManager.f624, true);
        }
    }

    public void setSelectedPosition(int i) {
        this.f1005.m501(i, false);
    }

    public void setSelectedPositionSmooth(int i) {
        this.f1005.m501(i, true);
    }

    public final void setSmoothScrollByBehavior(InterfaceC0141 interfaceC0141) {
    }

    public final void setSmoothScrollMaxPendingMoves(int i) {
        this.f1005.f636 = i;
    }

    public final void setSmoothScrollSpeedFactor(float f) {
        this.f1005.f600 = f;
    }

    @Deprecated
    public void setVerticalMargin(int i) {
        setVerticalSpacing(i);
    }

    public void setVerticalSpacing(int i) {
        GridLayoutManager gridLayoutManager = this.f1005;
        if (gridLayoutManager.f620 == 1) {
            gridLayoutManager.f614 = i;
            gridLayoutManager.f599 = i;
        } else {
            gridLayoutManager.f614 = i;
            gridLayoutManager.f622 = i;
        }
        requestLayout();
    }

    public void setWindowAlignment(int i) {
        ((C0091) this.f1005.f606.ˈٴ).f859 = i;
        requestLayout();
    }

    public void setWindowAlignmentOffset(int i) {
        ((C0091) this.f1005.f606.ˈٴ).f854 = i;
        requestLayout();
    }

    public void setWindowAlignmentOffsetPercent(float f) {
        C0091 c0091 = (C0091) this.f1005.f606.ˈٴ;
        c0091.getClass();
        if ((f < 0.0f || f > 100.0f) && f != -1.0f) {
            throw new IllegalArgumentException();
        }
        c0091.f855 = f;
        requestLayout();
    }

    public void setWindowAlignmentPreferKeyLineOverHighEdge(boolean z) {
        C0091 c0091 = (C0091) this.f1005.f606.ˈٴ;
        c0091.f852 = z ? c0091.f852 | 2 : c0091.f852 & (-3);
        requestLayout();
    }

    public void setWindowAlignmentPreferKeyLineOverLowEdge(boolean z) {
        C0091 c0091 = (C0091) this.f1005.f606.ˈٴ;
        c0091.f852 = z ? c0091.f852 | 1 : c0091.f852 & (-2);
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    /* renamed from: ʻˋ, reason: contains not printable characters */
    public final void mo652(int i, int i2) {
        m968(i, i2, false);
    }

    /* renamed from: ʼـ, reason: contains not printable characters */
    public final void m653(int i, InterfaceC0112 interfaceC0112) {
        AbstractC2673 m979 = m979(i, false);
        if (m979 == null || m960()) {
            C0148 c0148 = new C0148((VerticalGridView) this, i, interfaceC0112);
            GridLayoutManager gridLayoutManager = this.f1005;
            if (gridLayoutManager.f630 == null) {
                gridLayoutManager.f630 = new ArrayList();
            }
            gridLayoutManager.f630.add(c0148);
        } else {
            interfaceC0112.mo578(m979);
        }
        setSelectedPosition(i);
    }

    /* renamed from: ˑ, reason: contains not printable characters */
    public final void m654(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0130.f973);
        boolean z = obtainStyledAttributes.getBoolean(4, false);
        boolean z2 = obtainStyledAttributes.getBoolean(3, false);
        GridLayoutManager gridLayoutManager = this.f1005;
        gridLayoutManager.f601 = (z ? 2048 : 0) | (gridLayoutManager.f601 & (-6145)) | (z2 ? 4096 : 0);
        boolean z3 = obtainStyledAttributes.getBoolean(6, true);
        boolean z4 = obtainStyledAttributes.getBoolean(5, true);
        GridLayoutManager gridLayoutManager2 = this.f1005;
        gridLayoutManager2.f601 = (z3 ? 8192 : 0) | (gridLayoutManager2.f601 & (-24577)) | (z4 ? 16384 : 0);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(2, obtainStyledAttributes.getDimensionPixelSize(8, 0));
        if (gridLayoutManager2.f620 == 1) {
            gridLayoutManager2.f614 = dimensionPixelSize;
            gridLayoutManager2.f599 = dimensionPixelSize;
        } else {
            gridLayoutManager2.f614 = dimensionPixelSize;
            gridLayoutManager2.f622 = dimensionPixelSize;
        }
        GridLayoutManager gridLayoutManager3 = this.f1005;
        int dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(1, obtainStyledAttributes.getDimensionPixelSize(7, 0));
        if (gridLayoutManager3.f620 == 0) {
            gridLayoutManager3.f616 = dimensionPixelSize2;
            gridLayoutManager3.f599 = dimensionPixelSize2;
        } else {
            gridLayoutManager3.f616 = dimensionPixelSize2;
            gridLayoutManager3.f622 = dimensionPixelSize2;
        }
        if (obtainStyledAttributes.hasValue(0)) {
            setGravity(obtainStyledAttributes.getInt(0, 0));
        }
        obtainStyledAttributes.recycle();
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    /* renamed from: ˑʼ, reason: contains not printable characters */
    public final void mo655(int i, int i2) {
        m968(i, i2, false);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    /* renamed from: ᵎʻ, reason: contains not printable characters */
    public final void mo656(int i) {
        GridLayoutManager gridLayoutManager = this.f1005;
        if ((gridLayoutManager.f601 & 64) != 0) {
            gridLayoutManager.m501(i, false);
        } else {
            super.mo656(i);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    /* renamed from: ﹶᐧ, reason: contains not printable characters */
    public final void mo657(int i) {
        GridLayoutManager gridLayoutManager = this.f1005;
        if ((gridLayoutManager.f601 & 64) != 0) {
            gridLayoutManager.m501(i, false);
        } else {
            super.mo657(i);
        }
    }
}
