package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.lang.ref.WeakReference;
import p137.InterfaceC2253;
import p350.AbstractC4295;

/* loaded from: classes.dex */
public final class ViewStubCompat extends View {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public WeakReference f247;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public int f248;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public LayoutInflater f249;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f250;

    public ViewStubCompat(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f248 = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC4295.f15904, 0, 0);
        this.f250 = obtainStyledAttributes.getResourceId(2, -1);
        this.f248 = obtainStyledAttributes.getResourceId(1, 0);
        setId(obtainStyledAttributes.getResourceId(0, -1));
        obtainStyledAttributes.recycle();
        setVisibility(8);
        setWillNotDraw(true);
    }

    @Override // android.view.View
    public final void dispatchDraw(Canvas canvas) {
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
    }

    public int getInflatedId() {
        return this.f250;
    }

    public LayoutInflater getLayoutInflater() {
        return this.f249;
    }

    public int getLayoutResource() {
        return this.f248;
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        setMeasuredDimension(0, 0);
    }

    public void setInflatedId(int i) {
        this.f250 = i;
    }

    public void setLayoutInflater(LayoutInflater layoutInflater) {
        this.f249 = layoutInflater;
    }

    public void setLayoutResource(int i) {
        this.f248 = i;
    }

    public void setOnInflateListener(InterfaceC2253 interfaceC2253) {
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        WeakReference weakReference = this.f247;
        if (weakReference != null) {
            View view = (View) weakReference.get();
            if (view == null) {
                throw new IllegalStateException("setVisibility called on un-referenced view");
            }
            view.setVisibility(i);
            return;
        }
        super.setVisibility(i);
        if (i == 0 || i == 4) {
            m83();
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final View m83() {
        ViewParent parent = getParent();
        if (!(parent instanceof ViewGroup)) {
            throw new IllegalStateException("ViewStub must have a non-null ViewGroup viewParent");
        }
        if (this.f248 == 0) {
            throw new IllegalArgumentException("ViewStub must have a valid layoutResource");
        }
        ViewGroup viewGroup = (ViewGroup) parent;
        LayoutInflater layoutInflater = this.f249;
        if (layoutInflater == null) {
            layoutInflater = LayoutInflater.from(getContext());
        }
        View inflate = layoutInflater.inflate(this.f248, viewGroup, false);
        int i = this.f250;
        if (i != -1) {
            inflate.setId(i);
        }
        int indexOfChild = viewGroup.indexOfChild(this);
        viewGroup.removeViewInLayout(this);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams != null) {
            viewGroup.addView(inflate, indexOfChild, layoutParams);
        } else {
            viewGroup.addView(inflate, indexOfChild);
        }
        this.f247 = new WeakReference(inflate);
        return inflate;
    }
}
