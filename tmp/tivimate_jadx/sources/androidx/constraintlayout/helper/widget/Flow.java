package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import java.util.ArrayList;
import p065.AbstractC1597;
import p065.AbstractC1611;
import p072.AbstractC1632;
import p072.C1635;
import p072.C1637;

/* loaded from: classes.dex */
public class Flow extends AbstractC1611 {

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public C1637 f251;

    public Flow(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // p065.AbstractC1609, android.view.View
    public final void onMeasure(int i, int i2) {
        mo86(this.f251, i, i2);
    }

    public void setFirstHorizontalBias(float f) {
        this.f251.f6621 = f;
        requestLayout();
    }

    public void setFirstHorizontalStyle(int i) {
        this.f251.f6607 = i;
        requestLayout();
    }

    public void setFirstVerticalBias(float f) {
        this.f251.f6628 = f;
        requestLayout();
    }

    public void setFirstVerticalStyle(int i) {
        this.f251.f6630 = i;
        requestLayout();
    }

    public void setHorizontalAlign(int i) {
        this.f251.f6617 = i;
        requestLayout();
    }

    public void setHorizontalBias(float f) {
        this.f251.f6631 = f;
        requestLayout();
    }

    public void setHorizontalGap(int i) {
        this.f251.f6609 = i;
        requestLayout();
    }

    public void setHorizontalStyle(int i) {
        this.f251.f6619 = i;
        requestLayout();
    }

    public void setLastHorizontalBias(float f) {
        this.f251.f6633 = f;
        requestLayout();
    }

    public void setLastHorizontalStyle(int i) {
        this.f251.f6627 = i;
        requestLayout();
    }

    public void setLastVerticalBias(float f) {
        this.f251.f6603 = f;
        requestLayout();
    }

    public void setLastVerticalStyle(int i) {
        this.f251.f6599 = i;
        requestLayout();
    }

    public void setMaxElementsWrap(int i) {
        this.f251.f6611 = i;
        requestLayout();
    }

    public void setOrientation(int i) {
        this.f251.f6615 = i;
        requestLayout();
    }

    public void setPadding(int i) {
        C1637 c1637 = this.f251;
        c1637.f6616 = i;
        c1637.f6605 = i;
        c1637.f6614 = i;
        c1637.f6601 = i;
        requestLayout();
    }

    public void setPaddingBottom(int i) {
        this.f251.f6605 = i;
        requestLayout();
    }

    public void setPaddingLeft(int i) {
        this.f251.f6613 = i;
        requestLayout();
    }

    public void setPaddingRight(int i) {
        this.f251.f6618 = i;
        requestLayout();
    }

    public void setPaddingTop(int i) {
        this.f251.f6616 = i;
        requestLayout();
    }

    public void setVerticalAlign(int i) {
        this.f251.f6634 = i;
        requestLayout();
    }

    public void setVerticalBias(float f) {
        this.f251.f6620 = f;
        requestLayout();
    }

    public void setVerticalGap(int i) {
        this.f251.f6602 = i;
        requestLayout();
    }

    public void setVerticalStyle(int i) {
        this.f251.f6623 = i;
        requestLayout();
    }

    public void setWrapMode(int i) {
        this.f251.f6608 = i;
        requestLayout();
    }

    @Override // p065.AbstractC1609
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void mo84(C1635 c1635, boolean z) {
        C1637 c1637 = this.f251;
        int i = c1637.f6614;
        if (i > 0 || c1637.f6601 > 0) {
            if (z) {
                c1637.f6613 = c1637.f6601;
                c1637.f6618 = i;
            } else {
                c1637.f6613 = i;
                c1637.f6618 = c1637.f6601;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [ʾᵎ.ʼˎ, ʾᵎ.ᵎﹶ] */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Object, ʼʼ.ⁱˊ] */
    @Override // p065.AbstractC1611, p065.AbstractC1609
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void mo85(AttributeSet attributeSet) {
        super.mo85(attributeSet);
        ?? abstractC1632 = new AbstractC1632();
        abstractC1632.f6616 = 0;
        abstractC1632.f6605 = 0;
        abstractC1632.f6614 = 0;
        abstractC1632.f6601 = 0;
        abstractC1632.f6613 = 0;
        abstractC1632.f6618 = 0;
        abstractC1632.f6604 = false;
        abstractC1632.f6606 = 0;
        abstractC1632.f6626 = 0;
        abstractC1632.f6622 = new Object();
        abstractC1632.f6600 = null;
        abstractC1632.f6619 = -1;
        abstractC1632.f6623 = -1;
        abstractC1632.f6607 = -1;
        abstractC1632.f6630 = -1;
        abstractC1632.f6627 = -1;
        abstractC1632.f6599 = -1;
        abstractC1632.f6631 = 0.5f;
        abstractC1632.f6620 = 0.5f;
        abstractC1632.f6621 = 0.5f;
        abstractC1632.f6628 = 0.5f;
        abstractC1632.f6633 = 0.5f;
        abstractC1632.f6603 = 0.5f;
        abstractC1632.f6609 = 0;
        abstractC1632.f6602 = 0;
        abstractC1632.f6617 = 2;
        abstractC1632.f6634 = 2;
        abstractC1632.f6608 = 0;
        abstractC1632.f6611 = -1;
        abstractC1632.f6615 = 0;
        abstractC1632.f6612 = new ArrayList();
        abstractC1632.f6629 = null;
        abstractC1632.f6625 = null;
        abstractC1632.f6610 = null;
        abstractC1632.f6624 = 0;
        this.f251 = abstractC1632;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, AbstractC1597.f6290);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 0) {
                    this.f251.f6615 = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 1) {
                    C1637 c1637 = this.f251;
                    int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                    c1637.f6616 = dimensionPixelSize;
                    c1637.f6605 = dimensionPixelSize;
                    c1637.f6614 = dimensionPixelSize;
                    c1637.f6601 = dimensionPixelSize;
                } else if (index == 18) {
                    C1637 c16372 = this.f251;
                    int dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                    c16372.f6614 = dimensionPixelSize2;
                    c16372.f6613 = dimensionPixelSize2;
                    c16372.f6618 = dimensionPixelSize2;
                } else if (index == 19) {
                    this.f251.f6601 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 2) {
                    this.f251.f6613 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 3) {
                    this.f251.f6616 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 4) {
                    this.f251.f6618 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 5) {
                    this.f251.f6605 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 54) {
                    this.f251.f6608 = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 44) {
                    this.f251.f6619 = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 53) {
                    this.f251.f6623 = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 38) {
                    this.f251.f6607 = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 46) {
                    this.f251.f6627 = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 40) {
                    this.f251.f6630 = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 48) {
                    this.f251.f6599 = obtainStyledAttributes.getInt(index, 0);
                } else if (index == 42) {
                    this.f251.f6631 = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 37) {
                    this.f251.f6621 = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 45) {
                    this.f251.f6633 = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 39) {
                    this.f251.f6628 = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 47) {
                    this.f251.f6603 = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 51) {
                    this.f251.f6620 = obtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 41) {
                    this.f251.f6617 = obtainStyledAttributes.getInt(index, 2);
                } else if (index == 50) {
                    this.f251.f6634 = obtainStyledAttributes.getInt(index, 2);
                } else if (index == 43) {
                    this.f251.f6609 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 52) {
                    this.f251.f6602 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 49) {
                    this.f251.f6611 = obtainStyledAttributes.getInt(index, -1);
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.f6410 = this.f251;
        m4390();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x073b  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x072a  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0738  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0757  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0759  */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v46 */
    @Override // p065.AbstractC1611
    /* renamed from: ﾞʻ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo86(p072.C1637 r39, int r40, int r41) {
        /*
            Method dump skipped, instructions count: 1901
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.helper.widget.Flow.mo86(ʾᵎ.ᵎﹶ, int, int):void");
    }
}
