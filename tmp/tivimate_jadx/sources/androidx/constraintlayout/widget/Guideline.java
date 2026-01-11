package androidx.constraintlayout.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import p065.C1600;

/* loaded from: classes.dex */
public class Guideline extends View {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public boolean f271;

    public Guideline(Context context) {
        super(context);
        this.f271 = true;
        super.setVisibility(8);
    }

    public Guideline(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f271 = true;
        super.setVisibility(8);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        setMeasuredDimension(0, 0);
    }

    public void setFilterRedundantCalls(boolean z) {
        this.f271 = z;
    }

    public void setGuidelineBegin(int i) {
        C1600 c1600 = (C1600) getLayoutParams();
        if (this.f271 && c1600.f6366 == i) {
            return;
        }
        c1600.f6366 = i;
        setLayoutParams(c1600);
    }

    public void setGuidelineEnd(int i) {
        C1600 c1600 = (C1600) getLayoutParams();
        if (this.f271 && c1600.f6364 == i) {
            return;
        }
        c1600.f6364 = i;
        setLayoutParams(c1600);
    }

    public void setGuidelinePercent(float f) {
        C1600 c1600 = (C1600) getLayoutParams();
        if (this.f271 && c1600.f6311 == f) {
            return;
        }
        c1600.f6311 = f;
        setLayoutParams(c1600);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
    }
}
