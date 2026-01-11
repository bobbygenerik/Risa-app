package androidx.fragment.app;

import android.animation.LayoutTransition;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import ar.tvplayer.tv.R;
import java.util.ArrayList;
import java.util.WeakHashMap;
import p006.AbstractC0834;
import p137.AbstractC2305;
import p186.AbstractC2780;
import p186.AbstractC2823;
import p186.C2816;
import p229.AbstractComponentCallbacksC3123;
import p229.C3085;
import p229.C3105;
import p229.C3114;
import p229.C3120;
import p229.C3137;
import p363.AbstractActivityC4410;

/* loaded from: classes.dex */
public final class FragmentContainerView extends FrameLayout {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public View.OnApplyWindowInsetsListener f522;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final ArrayList f523;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public boolean f524;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final ArrayList f525;

    public FragmentContainerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        String str;
        this.f523 = new ArrayList();
        this.f525 = new ArrayList();
        this.f524 = true;
        if (attributeSet != null) {
            String classAttribute = attributeSet.getClassAttribute();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0834.f3572, 0, 0);
            if (classAttribute == null) {
                classAttribute = obtainStyledAttributes.getString(0);
                str = "android:name";
            } else {
                str = "class";
            }
            obtainStyledAttributes.recycle();
            if (classAttribute == null || isInEditMode()) {
                return;
            }
            throw new UnsupportedOperationException("FragmentContainerView must be within a FragmentActivity to use " + str + "=\"" + classAttribute + '\"');
        }
    }

    public FragmentContainerView(Context context, AttributeSet attributeSet, C3085 c3085) {
        super(context, attributeSet);
        View view;
        this.f523 = new ArrayList();
        this.f525 = new ArrayList();
        this.f524 = true;
        String classAttribute = attributeSet.getClassAttribute();
        int i = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0834.f3572, 0, 0);
        classAttribute = classAttribute == null ? obtainStyledAttributes.getString(0) : classAttribute;
        String string = obtainStyledAttributes.getString(1);
        obtainStyledAttributes.recycle();
        int id = getId();
        AbstractComponentCallbacksC3123 m6672 = c3085.m6672(id);
        if (classAttribute != null && m6672 == null) {
            if (id == -1) {
                throw new IllegalStateException(AbstractC2305.m5378("FragmentContainerView must have an android:id to add Fragment ", classAttribute, string != null ? " with tag ".concat(string) : ""));
            }
            C3105 m6699 = c3085.m6699();
            context.getClassLoader();
            AbstractComponentCallbacksC3123 m6752 = m6699.m6752(classAttribute);
            m6752.f11904 = id;
            m6752.f11897 = id;
            m6752.f11898 = string;
            m6752.f11917 = c3085;
            C3114 c3114 = c3085.f11729;
            m6752.f11936 = c3114;
            m6752.f11926 = true;
            if ((c3114 == null ? null : c3114.f11851) != null) {
                m6752.f11926 = true;
            }
            C3137 c3137 = new C3137(c3085);
            c3137.f11996 = true;
            m6752.f11888 = this;
            m6752.f11914 = true;
            c3137.m6879(getId(), m6752, string, 1);
            if (c3137.f12006) {
                throw new IllegalStateException("This transaction is already being added to the back stack");
            }
            c3137.f12008 = false;
            c3137.f12012.m6695(c3137, true);
        }
        ArrayList arrayList = c3085.f11725.ʻٴ();
        int size = arrayList.size();
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            C3120 c3120 = (C3120) obj;
            AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = c3120.f11861;
            if (abstractComponentCallbacksC3123.f11897 == getId() && (view = abstractComponentCallbacksC3123.f11908) != null && view.getParent() == null) {
                abstractComponentCallbacksC3123.f11888 = this;
                c3120.m6774();
                c3120.m6769();
            }
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        Object tag = view.getTag(R.id.3cv);
        if ((tag instanceof AbstractComponentCallbacksC3123 ? (AbstractComponentCallbacksC3123) tag : null) != null) {
            super.addView(view, i, layoutParams);
            return;
        }
        throw new IllegalStateException(("Views added to a FragmentContainerView must be associated with a Fragment. View " + view + " is not associated with a Fragment.").toString());
    }

    @Override // android.view.ViewGroup, android.view.View
    public final WindowInsets dispatchApplyWindowInsets(WindowInsets windowInsets) {
        C2816 c2816;
        C2816 m6253 = C2816.m6253(null, windowInsets);
        View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = this.f522;
        if (onApplyWindowInsetsListener != null) {
            c2816 = C2816.m6253(null, onApplyWindowInsetsListener.onApplyWindowInsets(this, windowInsets));
        } else {
            WeakHashMap weakHashMap = AbstractC2823.f10603;
            WindowInsets m6258 = m6253.m6258();
            if (m6258 != null) {
                WindowInsets m6187 = AbstractC2780.m6187(this, m6258);
                if (!m6187.equals(m6258)) {
                    m6253 = C2816.m6253(this, m6187);
                }
            }
            c2816 = m6253;
        }
        if (!c2816.f10589.mo6196()) {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                AbstractC2823.m6280(getChildAt(i), c2816);
            }
        }
        return windowInsets;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        if (this.f524) {
            ArrayList arrayList = this.f523;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                super.drawChild(canvas, (View) obj, getDrawingTime());
            }
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j) {
        if (this.f524) {
            ArrayList arrayList = this.f523;
            if (!arrayList.isEmpty() && arrayList.contains(view)) {
                return false;
            }
        }
        return super.drawChild(canvas, view, j);
    }

    @Override // android.view.ViewGroup
    public final void endViewTransition(View view) {
        this.f525.remove(view);
        if (this.f523.remove(view)) {
            this.f524 = true;
        }
        super.endViewTransition(view);
    }

    public final <F extends AbstractComponentCallbacksC3123> F getFragment() {
        AbstractActivityC4410 abstractActivityC4410;
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123;
        C3085 m8914;
        View view = this;
        while (true) {
            abstractActivityC4410 = null;
            if (view == null) {
                abstractComponentCallbacksC3123 = null;
                break;
            }
            Object tag = view.getTag(R.id.3cv);
            abstractComponentCallbacksC3123 = tag instanceof AbstractComponentCallbacksC3123 ? (AbstractComponentCallbacksC3123) tag : null;
            if (abstractComponentCallbacksC3123 != null) {
                break;
            }
            Object parent = view.getParent();
            view = parent instanceof View ? (View) parent : null;
        }
        if (abstractComponentCallbacksC3123 == null) {
            Context context = getContext();
            while (true) {
                if (!(context instanceof ContextWrapper)) {
                    break;
                }
                if (context instanceof AbstractActivityC4410) {
                    abstractActivityC4410 = (AbstractActivityC4410) context;
                    break;
                }
                context = ((ContextWrapper) context).getBaseContext();
            }
            if (abstractActivityC4410 == null) {
                throw new IllegalStateException("View " + this + " is not within a subclass of FragmentActivity.");
            }
            m8914 = abstractActivityC4410.m8914();
        } else {
            if (!abstractComponentCallbacksC3123.m6786()) {
                throw new IllegalStateException("The Fragment " + abstractComponentCallbacksC3123 + " that owns View " + this + " has already been destroyed. Nested fragments should always use the child FragmentManager.");
            }
            m8914 = abstractComponentCallbacksC3123.m6788();
        }
        return (F) m8914.m6672(getId());
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        return windowInsets;
    }

    @Override // android.view.ViewGroup
    public final void removeAllViewsInLayout() {
        int childCount = getChildCount();
        while (true) {
            childCount--;
            if (-1 >= childCount) {
                super.removeAllViewsInLayout();
                return;
            }
            m414(getChildAt(childCount));
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        m414(view);
        super.removeView(view);
    }

    @Override // android.view.ViewGroup
    public final void removeViewAt(int i) {
        m414(getChildAt(i));
        super.removeViewAt(i);
    }

    @Override // android.view.ViewGroup
    public final void removeViewInLayout(View view) {
        m414(view);
        super.removeViewInLayout(view);
    }

    @Override // android.view.ViewGroup
    public final void removeViews(int i, int i2) {
        int i3 = i + i2;
        for (int i4 = i; i4 < i3; i4++) {
            m414(getChildAt(i4));
        }
        super.removeViews(i, i2);
    }

    @Override // android.view.ViewGroup
    public final void removeViewsInLayout(int i, int i2) {
        int i3 = i + i2;
        for (int i4 = i; i4 < i3; i4++) {
            m414(getChildAt(i4));
        }
        super.removeViewsInLayout(i, i2);
    }

    public final void setDrawDisappearingViewsLast(boolean z) {
        this.f524 = z;
    }

    @Override // android.view.ViewGroup
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        throw new UnsupportedOperationException("FragmentContainerView does not support Layout Transitions or animateLayoutChanges=\"true\".");
    }

    @Override // android.view.View
    public void setOnApplyWindowInsetsListener(View.OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        this.f522 = onApplyWindowInsetsListener;
    }

    @Override // android.view.ViewGroup
    public final void startViewTransition(View view) {
        if (view.getParent() == this) {
            this.f525.add(view);
        }
        super.startViewTransition(view);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m414(View view) {
        if (this.f525.contains(view)) {
            this.f523.add(view);
        }
    }
}
