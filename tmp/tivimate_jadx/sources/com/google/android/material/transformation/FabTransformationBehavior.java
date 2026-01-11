package com.google.android.material.transformation;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import p039.C1287;

@Deprecated
/* loaded from: classes.dex */
public abstract class FabTransformationBehavior extends ExpandableTransformationBehavior {
    public FabTransformationBehavior() {
        new Rect();
        new RectF();
        new RectF();
    }

    public FabTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        new Rect();
        new RectF();
        new RectF();
    }

    @Override // p039.AbstractC1291
    /* renamed from: ʽ */
    public final void mo2344(C1287 c1287) {
        if (c1287.f4979 == 0) {
            c1287.f4979 = 80;
        }
    }

    @Override // com.google.android.material.transformation.ExpandableBehavior, p039.AbstractC1291
    /* renamed from: ⁱˊ */
    public final void mo2331(View view) {
        if (view.getVisibility() == 8) {
            throw new IllegalStateException("This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead.");
        }
    }
}
