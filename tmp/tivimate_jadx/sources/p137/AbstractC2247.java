package p137;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import com.parse.ٴʼ;
import p186.AbstractC2823;
import p350.AbstractC4295;

/* renamed from: ˉˆ.ʽⁱ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2247 extends ViewGroup {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f8793;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public boolean f8794;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public int f8795;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public int f8796;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public int f8797;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public boolean f8798;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public int f8799;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public int[] f8800;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public float f8801;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f8802;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public int f8803;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public Drawable f8804;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public int[] f8805;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public int f8806;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public int f8807;

    public AbstractC2247(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, 0);
        this.f8794 = true;
        this.f8802 = -1;
        this.f8793 = 0;
        this.f8803 = 8388659;
        int[] iArr = AbstractC4295.f15916;
        ٴʼ r8 = ٴʼ.ʿᵢ(0, 0, context, attributeSet, iArr);
        AbstractC2823.m6282(this, context, iArr, attributeSet, (TypedArray) r8.ᴵˊ, 0);
        TypedArray typedArray = (TypedArray) r8.ᴵˊ;
        int i2 = typedArray.getInt(1, -1);
        if (i2 >= 0) {
            setOrientation(i2);
        }
        int i3 = typedArray.getInt(0, -1);
        if (i3 >= 0) {
            setGravity(i3);
        }
        boolean z = typedArray.getBoolean(2, true);
        if (!z) {
            setBaselineAligned(z);
        }
        this.f8801 = typedArray.getFloat(4, -1.0f);
        this.f8802 = typedArray.getInt(3, -1);
        this.f8798 = typedArray.getBoolean(7, false);
        setDividerDrawable(r8.ˑٴ(5));
        this.f8807 = typedArray.getInt(8, 0);
        this.f8796 = typedArray.getDimensionPixelSize(6, 0);
        r8.ᐧᴵ();
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C2295;
    }

    @Override // android.view.View
    public int getBaseline() {
        int i;
        if (this.f8802 < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i2 = this.f8802;
        if (childCount <= i2) {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
        View childAt = getChildAt(i2);
        int baseline = childAt.getBaseline();
        if (baseline == -1) {
            if (this.f8802 == 0) {
                return -1;
            }
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
        }
        int i3 = this.f8793;
        if (this.f8797 == 1 && (i = this.f8803 & 112) != 48) {
            if (i == 16) {
                i3 += ((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.f8799) / 2;
            } else if (i == 80) {
                i3 = ((getBottom() - getTop()) - getPaddingBottom()) - this.f8799;
            }
        }
        return i3 + ((LinearLayout.LayoutParams) ((C2295) childAt.getLayoutParams())).topMargin + baseline;
    }

    public int getBaselineAlignedChildIndex() {
        return this.f8802;
    }

    public Drawable getDividerDrawable() {
        return this.f8804;
    }

    public int getDividerPadding() {
        return this.f8796;
    }

    public int getDividerWidth() {
        return this.f8806;
    }

    public int getGravity() {
        return this.f8803;
    }

    public int getOrientation() {
        return this.f8797;
    }

    public int getShowDividers() {
        return this.f8807;
    }

    public int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.f8801;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int right;
        int left;
        int i;
        if (this.f8804 == null) {
            return;
        }
        int i2 = 0;
        if (this.f8797 == 1) {
            int virtualChildCount = getVirtualChildCount();
            while (i2 < virtualChildCount) {
                View childAt = getChildAt(i2);
                if (childAt != null && childAt.getVisibility() != 8 && m5258(i2)) {
                    m5259(canvas, (childAt.getTop() - ((LinearLayout.LayoutParams) ((C2295) childAt.getLayoutParams())).topMargin) - this.f8795);
                }
                i2++;
            }
            if (m5258(virtualChildCount)) {
                View childAt2 = getChildAt(virtualChildCount - 1);
                m5259(canvas, childAt2 == null ? (getHeight() - getPaddingBottom()) - this.f8795 : childAt2.getBottom() + ((LinearLayout.LayoutParams) ((C2295) childAt2.getLayoutParams())).bottomMargin);
                return;
            }
            return;
        }
        int virtualChildCount2 = getVirtualChildCount();
        boolean z = AbstractC2257.f8861;
        boolean z2 = getLayoutDirection() == 1;
        while (i2 < virtualChildCount2) {
            View childAt3 = getChildAt(i2);
            if (childAt3 != null && childAt3.getVisibility() != 8 && m5258(i2)) {
                C2295 c2295 = (C2295) childAt3.getLayoutParams();
                m5260(canvas, z2 ? childAt3.getRight() + ((LinearLayout.LayoutParams) c2295).rightMargin : (childAt3.getLeft() - ((LinearLayout.LayoutParams) c2295).leftMargin) - this.f8806);
            }
            i2++;
        }
        if (m5258(virtualChildCount2)) {
            View childAt4 = getChildAt(virtualChildCount2 - 1);
            if (childAt4 != null) {
                C2295 c22952 = (C2295) childAt4.getLayoutParams();
                if (z2) {
                    left = childAt4.getLeft() - ((LinearLayout.LayoutParams) c22952).leftMargin;
                    i = this.f8806;
                    right = left - i;
                } else {
                    right = childAt4.getRight() + ((LinearLayout.LayoutParams) c22952).rightMargin;
                }
            } else if (z2) {
                right = getPaddingLeft();
            } else {
                left = getWidth() - getPaddingRight();
                i = this.f8806;
                right = left - i;
            }
            m5260(canvas, right);
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0191  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r23, int r24, int r25, int r26, int r27) {
        /*
            Method dump skipped, instructions count: 461
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p137.AbstractC2247.onLayout(boolean, int, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:222:0x04f8  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x053d  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x0547  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x0526  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0148  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r39, int r40) {
        /*
            Method dump skipped, instructions count: 2150
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p137.AbstractC2247.onMeasure(int, int):void");
    }

    public void setBaselineAligned(boolean z) {
        this.f8794 = z;
    }

    public void setBaselineAlignedChildIndex(int i) {
        if (i >= 0 && i < getChildCount()) {
            this.f8802 = i;
            return;
        }
        throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable == this.f8804) {
            return;
        }
        this.f8804 = drawable;
        if (drawable != null) {
            this.f8806 = drawable.getIntrinsicWidth();
            this.f8795 = drawable.getIntrinsicHeight();
        } else {
            this.f8806 = 0;
            this.f8795 = 0;
        }
        setWillNotDraw(drawable == null);
        requestLayout();
    }

    public void setDividerPadding(int i) {
        this.f8796 = i;
    }

    public void setGravity(int i) {
        if (this.f8803 != i) {
            if ((8388615 & i) == 0) {
                i |= 8388611;
            }
            if ((i & 112) == 0) {
                i |= 48;
            }
            this.f8803 = i;
            requestLayout();
        }
    }

    public void setHorizontalGravity(int i) {
        int i2 = i & 8388615;
        int i3 = this.f8803;
        if ((8388615 & i3) != i2) {
            this.f8803 = i2 | ((-8388616) & i3);
            requestLayout();
        }
    }

    public void setMeasureWithLargestChildEnabled(boolean z) {
        this.f8798 = z;
    }

    public void setOrientation(int i) {
        if (this.f8797 != i) {
            this.f8797 = i;
            requestLayout();
        }
    }

    public void setShowDividers(int i) {
        if (i != this.f8807) {
            requestLayout();
        }
        this.f8807 = i;
    }

    public void setVerticalGravity(int i) {
        int i2 = i & 112;
        int i3 = this.f8803;
        if ((i3 & 112) != i2) {
            this.f8803 = i2 | (i3 & (-113));
            requestLayout();
        }
    }

    public void setWeightSum(float f) {
        this.f8801 = Math.max(0.0f, f);
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final boolean m5258(int i) {
        if (i == 0) {
            return (this.f8807 & 1) != 0;
        }
        if (i == getChildCount()) {
            return (this.f8807 & 4) != 0;
        }
        if ((this.f8807 & 2) != 0) {
            for (int i2 = i - 1; i2 >= 0; i2--) {
                if (getChildAt(i2).getVisibility() != 8) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m5259(Canvas canvas, int i) {
        this.f8804.setBounds(getPaddingLeft() + this.f8796, i, (getWidth() - getPaddingRight()) - this.f8796, this.f8795 + i);
        this.f8804.draw(canvas);
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m5260(Canvas canvas, int i) {
        this.f8804.setBounds(i, getPaddingTop() + this.f8796, this.f8806 + i, (getHeight() - getPaddingBottom()) - this.f8796);
        this.f8804.draw(canvas);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [android.widget.LinearLayout$LayoutParams, ˉˆ.יﹳ] */
    @Override // android.view.ViewGroup
    /* renamed from: ᵎﹶ, reason: merged with bridge method [inline-methods] */
    public C2295 generateLayoutParams(AttributeSet attributeSet) {
        return new LinearLayout.LayoutParams(getContext(), attributeSet);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [android.widget.LinearLayout$LayoutParams, ˉˆ.יﹳ] */
    /* JADX WARN: Type inference failed for: r0v3, types: [android.widget.LinearLayout$LayoutParams, ˉˆ.יﹳ] */
    /* JADX WARN: Type inference failed for: r0v4, types: [android.widget.LinearLayout$LayoutParams, ˉˆ.יﹳ] */
    @Override // android.view.ViewGroup
    /* renamed from: ᵔᵢ, reason: merged with bridge method [inline-methods] */
    public C2295 generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C2295 ? new LinearLayout.LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new LinearLayout.LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LinearLayout.LayoutParams(layoutParams);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [android.widget.LinearLayout$LayoutParams, ˉˆ.יﹳ] */
    /* JADX WARN: Type inference failed for: r0v3, types: [android.widget.LinearLayout$LayoutParams, ˉˆ.יﹳ] */
    @Override // android.view.ViewGroup
    /* renamed from: ﾞᴵ, reason: merged with bridge method [inline-methods] */
    public C2295 generateDefaultLayoutParams() {
        int i = this.f8797;
        if (i == 0) {
            return new LinearLayout.LayoutParams(-2, -2);
        }
        if (i == 1) {
            return new LinearLayout.LayoutParams(-1, -2);
        }
        return null;
    }
}
