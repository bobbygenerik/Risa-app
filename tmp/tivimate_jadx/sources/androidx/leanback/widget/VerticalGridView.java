package androidx.leanback.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import p186.AbstractC2823;

/* loaded from: classes.dex */
public class VerticalGridView extends AbstractC0145 {
    public VerticalGridView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public VerticalGridView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        this.f1005.m495(1);
        m654(context, attributeSet);
        int[] iArr = AbstractC0130.f971;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
        AbstractC2823.m6282(this, context, iArr, attributeSet, obtainStyledAttributes, 0);
        setColumnWidth(obtainStyledAttributes);
        setNumColumns(obtainStyledAttributes.getInt(1, 1));
        obtainStyledAttributes.recycle();
    }

    public void setColumnWidth(int i) {
        this.f1005.m466(i);
        requestLayout();
    }

    public void setColumnWidth(TypedArray typedArray) {
        if (typedArray.peekValue(0) != null) {
            setColumnWidth(typedArray.getLayoutDimension(0, 0));
        }
    }

    public void setNumColumns(int i) {
        GridLayoutManager gridLayoutManager = this.f1005;
        if (i < 0) {
            gridLayoutManager.getClass();
            throw new IllegalArgumentException();
        }
        gridLayoutManager.f629 = i;
        requestLayout();
    }
}
