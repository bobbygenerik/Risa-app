package p065;

import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import androidx.constraintlayout.widget.ConstraintLayout;
import p072.C1637;

/* renamed from: ʾˋ.ﹳᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1611 extends AbstractC1609 {

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public boolean f6422;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public boolean f6423;

    @Override // p065.AbstractC1609, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f6422 || this.f6423) {
            ViewParent parent = getParent();
            if (parent instanceof ConstraintLayout) {
                ConstraintLayout constraintLayout = (ConstraintLayout) parent;
                int visibility = getVisibility();
                float elevation = getElevation();
                for (int i = 0; i < this.f6413; i++) {
                    View view = (View) constraintLayout.f257.get(this.f6409[i]);
                    if (view != null) {
                        if (this.f6422) {
                            view.setVisibility(visibility);
                        }
                        if (this.f6423 && elevation > 0.0f) {
                            view.setTranslationZ(view.getTranslationZ() + elevation);
                        }
                    }
                }
            }
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        m4388();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        m4388();
    }

    @Override // p065.AbstractC1609
    /* renamed from: ᵔᵢ */
    public void mo85(AttributeSet attributeSet) {
        super.mo85(attributeSet);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, AbstractC1597.f6290);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 6) {
                    this.f6422 = true;
                } else if (index == 22) {
                    this.f6423 = true;
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: ﾞʻ */
    public abstract void mo86(C1637 c1637, int i, int i2);

    @Override // p065.AbstractC1609
    /* renamed from: ﾞᴵ */
    public final void mo94(ConstraintLayout constraintLayout) {
        m4389(constraintLayout);
    }
}
