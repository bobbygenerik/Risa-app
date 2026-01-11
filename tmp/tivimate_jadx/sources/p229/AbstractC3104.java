package p229;

import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.RunnableC0197;
import androidx.media3.decoder.ffmpeg.C0212;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;
import p003.RunnableC0786;
import p186.AbstractC2776;
import p186.AbstractC2823;

/* renamed from: ˑʼ.ˑʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3104 {
    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static void m6725(View view, Rect rect) {
        if (view.isAttachedToWindow()) {
            RectF rectF = new RectF();
            rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
            view.getMatrix().mapRect(rectF);
            rectF.offset(view.getLeft(), view.getTop());
            Object parent = view.getParent();
            while (parent instanceof View) {
                View view2 = (View) parent;
                rectF.offset(-view2.getScrollX(), -view2.getScrollY());
                view2.getMatrix().mapRect(rectF);
                rectF.offset(view2.getLeft(), view2.getTop());
                parent = view2.getParent();
            }
            view.getRootView().getLocationOnScreen(new int[2]);
            rectF.offset(r1[0], r1[1]);
            rect.set(Math.round(rectF.left), Math.round(rectF.top), Math.round(rectF.right), Math.round(rectF.bottom));
        }
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static boolean m6726(List list) {
        return list == null || list.isEmpty();
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static void m6727(List list, View view) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (list.get(i) == view) {
                return;
            }
        }
        WeakHashMap weakHashMap = AbstractC2823.f10603;
        if (AbstractC2776.m6176(view) != null) {
            list.add(view);
        }
        for (int i2 = size; i2 < list.size(); i2++) {
            View view2 = (View) list.get(i2);
            if (view2 instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view2;
                int childCount = viewGroup.getChildCount();
                for (int i3 = 0; i3 < childCount; i3++) {
                    View childAt = viewGroup.getChildAt(i3);
                    int i4 = 0;
                    while (true) {
                        if (i4 < size) {
                            if (list.get(i4) == childAt) {
                                break;
                            } else {
                                i4++;
                            }
                        } else if (AbstractC2776.m6176(childAt) != null) {
                            list.add(childAt);
                        }
                    }
                }
            }
        }
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public abstract void mo6728(AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123, Object obj, C0212 c0212, Runnable runnable);

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public abstract Object mo6729(Object obj);

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public Object mo6730(ViewGroup viewGroup, Object obj) {
        return null;
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public abstract void mo6731(Object obj, View view, ArrayList arrayList);

    /* renamed from: ʽ, reason: contains not printable characters */
    public void mo6732(Object obj) {
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public void mo6733(Object obj, C0212 c0212, RunnableC0197 runnableC0197, Runnable runnable) {
        ((RunnableC3141) runnable).run();
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public abstract void mo6734(Object obj, ArrayList arrayList, ArrayList arrayList2);

    /* renamed from: ˈ, reason: contains not printable characters */
    public void mo6735(Object obj, RunnableC0786 runnableC0786) {
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public abstract boolean mo6736(Object obj);

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public abstract Object mo6737(Object obj, Object obj2);

    /* renamed from: ˏי, reason: contains not printable characters */
    public abstract void mo6738(Object obj, Rect rect);

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public abstract void mo6739(ViewGroup viewGroup, Object obj);

    /* renamed from: יـ, reason: contains not printable characters */
    public abstract void mo6740(View view, Object obj);

    /* renamed from: ـˆ, reason: contains not printable characters */
    public abstract void mo6741(Object obj, View view, ArrayList arrayList);

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public abstract boolean mo6742(Object obj);

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public abstract Object mo6743(Object obj, Object obj2, Object obj3);

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public abstract Object mo6744(Object obj);

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public abstract void mo6745(Object obj, Object obj2, ArrayList arrayList, Object obj3, ArrayList arrayList2);

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public abstract void mo6746(Object obj, ArrayList arrayList);

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public abstract void mo6747(View view, Object obj);

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public void mo6748(Object obj, float f) {
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public abstract boolean mo6749();
}
