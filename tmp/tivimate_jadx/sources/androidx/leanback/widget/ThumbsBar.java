package androidx.leanback.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import ar.tvplayer.tv.R;

/* loaded from: classes.dex */
public class ThumbsBar extends LinearLayout {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final int f781;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public int f782;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final int f783;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public int f784;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public boolean f785;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final int f786;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final int f787;

    public ThumbsBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f782 = -1;
        new SparseArray();
        this.f785 = false;
        this.f786 = context.getResources().getDimensionPixelSize(R.dimen.77h);
        this.f781 = context.getResources().getDimensionPixelSize(R.dimen.4f6);
        this.f787 = context.getResources().getDimensionPixelSize(R.dimen.5ij);
        this.f783 = context.getResources().getDimensionPixelSize(R.dimen.3t2);
        this.f784 = context.getResources().getDimensionPixelSize(R.dimen.55i);
    }

    public int getHeroIndex() {
        return getChildCount() / 2;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int heroIndex = getHeroIndex();
        View childAt = getChildAt(heroIndex);
        int width = (getWidth() / 2) - (childAt.getMeasuredWidth() / 2);
        int measuredWidth = (childAt.getMeasuredWidth() / 2) + (getWidth() / 2);
        childAt.layout(width, getPaddingTop(), measuredWidth, childAt.getMeasuredHeight() + getPaddingTop());
        int measuredHeight = (childAt.getMeasuredHeight() / 2) + getPaddingTop();
        for (int i5 = heroIndex - 1; i5 >= 0; i5--) {
            int i6 = width - this.f784;
            View childAt2 = getChildAt(i5);
            childAt2.layout(i6 - childAt2.getMeasuredWidth(), measuredHeight - (childAt2.getMeasuredHeight() / 2), i6, (childAt2.getMeasuredHeight() / 2) + measuredHeight);
            width = i6 - childAt2.getMeasuredWidth();
        }
        while (true) {
            heroIndex++;
            if (heroIndex >= this.f782) {
                return;
            }
            int i7 = measuredWidth + this.f784;
            View childAt3 = getChildAt(heroIndex);
            childAt3.layout(i7, measuredHeight - (childAt3.getMeasuredHeight() / 2), childAt3.getMeasuredWidth() + i7, (childAt3.getMeasuredHeight() / 2) + measuredHeight);
            measuredWidth = i7 + childAt3.getMeasuredWidth();
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int measuredWidth = getMeasuredWidth();
        if (this.f785) {
            return;
        }
        int i3 = measuredWidth - this.f783;
        int i4 = ((i3 + r3) - 1) / (this.f786 + this.f784);
        if (i4 < 2) {
            i4 = 2;
        } else if ((i4 & 1) != 0) {
            i4++;
        }
        int i5 = i4 + 1;
        if (this.f782 != i5) {
            this.f782 = i5;
            m557();
        }
    }

    public void setNumberOfThumbs(int i) {
        this.f785 = true;
        this.f782 = i;
        m557();
    }

    public void setThumbSpace(int i) {
        this.f784 = i;
        requestLayout();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m557() {
        int i;
        int i2;
        while (getChildCount() > this.f782) {
            removeView(getChildAt(getChildCount() - 1));
        }
        while (true) {
            int childCount = getChildCount();
            int i3 = this.f782;
            i = this.f781;
            i2 = this.f786;
            if (childCount >= i3) {
                break;
            } else {
                addView(new ImageView(getContext()), new LinearLayout.LayoutParams(i2, i));
            }
        }
        int heroIndex = getHeroIndex();
        for (int i4 = 0; i4 < getChildCount(); i4++) {
            View childAt = getChildAt(i4);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
            if (heroIndex == i4) {
                layoutParams.width = this.f783;
                layoutParams.height = this.f787;
            } else {
                layoutParams.width = i2;
                layoutParams.height = i;
            }
            childAt.setLayoutParams(layoutParams);
        }
    }
}
