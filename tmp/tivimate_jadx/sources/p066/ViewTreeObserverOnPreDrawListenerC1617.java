package p066;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import p399.C4751;

/* renamed from: ʾˎ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ViewTreeObserverOnPreDrawListenerC1617 implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f6447 = 2;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Object f6448;

    public ViewTreeObserverOnPreDrawListenerC1617(CoordinatorLayout coordinatorLayout) {
        this.f6448 = coordinatorLayout;
    }

    public ViewTreeObserverOnPreDrawListenerC1617(C1614 c1614) {
        this.f6448 = new WeakReference(c1614);
    }

    public ViewTreeObserverOnPreDrawListenerC1617(C1619 c1619) {
        this.f6448 = new WeakReference(c1619);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        switch (this.f6447) {
            case 0:
                if (Log.isLoggable("CustomViewTarget", 2)) {
                    String str = "OnGlobalLayoutListener called attachStateListener=" + this;
                }
                C1614 c1614 = (C1614) ((WeakReference) this.f6448).get();
                if (c1614 == null) {
                    return true;
                }
                ArrayList arrayList = c1614.f6445;
                View view = c1614.f6446;
                if (arrayList.isEmpty()) {
                    return true;
                }
                int paddingRight = view.getPaddingRight() + view.getPaddingLeft();
                ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                int i = 0;
                int m4397 = c1614.m4397(view.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingRight);
                int paddingBottom = view.getPaddingBottom() + view.getPaddingTop();
                ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
                int m43972 = c1614.m4397(view.getHeight(), layoutParams2 != null ? layoutParams2.height : 0, paddingBottom);
                if (m4397 <= 0 && m4397 != Integer.MIN_VALUE) {
                    return true;
                }
                if (m43972 <= 0 && m43972 != Integer.MIN_VALUE) {
                    return true;
                }
                ArrayList arrayList2 = new ArrayList(arrayList);
                int size = arrayList2.size();
                while (i < size) {
                    Object obj = arrayList2.get(i);
                    i++;
                    ((C4751) ((InterfaceC1615) obj)).m9501(m4397, m43972);
                }
                ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
                if (viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnPreDrawListener(c1614.f6444);
                }
                c1614.f6444 = null;
                arrayList.clear();
                return true;
            case 1:
                if (Log.isLoggable("ViewTarget", 2)) {
                    String str2 = "OnGlobalLayoutListener called attachStateListener=" + this;
                }
                C1619 c1619 = (C1619) ((WeakReference) this.f6448).get();
                if (c1619 == null) {
                    return true;
                }
                ArrayList arrayList3 = c1619.f6455;
                View view2 = c1619.f6456;
                if (arrayList3.isEmpty()) {
                    return true;
                }
                int paddingRight2 = view2.getPaddingRight() + view2.getPaddingLeft();
                ViewGroup.LayoutParams layoutParams3 = view2.getLayoutParams();
                int i2 = 0;
                int m4399 = c1619.m4399(view2.getWidth(), layoutParams3 != null ? layoutParams3.width : 0, paddingRight2);
                int paddingBottom2 = view2.getPaddingBottom() + view2.getPaddingTop();
                ViewGroup.LayoutParams layoutParams4 = view2.getLayoutParams();
                int m43992 = c1619.m4399(view2.getHeight(), layoutParams4 != null ? layoutParams4.height : 0, paddingBottom2);
                if (m4399 <= 0 && m4399 != Integer.MIN_VALUE) {
                    return true;
                }
                if (m43992 <= 0 && m43992 != Integer.MIN_VALUE) {
                    return true;
                }
                ArrayList arrayList4 = new ArrayList(arrayList3);
                int size2 = arrayList4.size();
                while (i2 < size2) {
                    Object obj2 = arrayList4.get(i2);
                    i2++;
                    ((C4751) ((InterfaceC1615) obj2)).m9501(m4399, m43992);
                }
                ViewTreeObserver viewTreeObserver2 = view2.getViewTreeObserver();
                if (viewTreeObserver2.isAlive()) {
                    viewTreeObserver2.removeOnPreDrawListener(c1619.f6454);
                }
                c1619.f6454 = null;
                arrayList3.clear();
                return true;
            default:
                ((CoordinatorLayout) this.f6448).m101(0);
                return true;
        }
    }
}
