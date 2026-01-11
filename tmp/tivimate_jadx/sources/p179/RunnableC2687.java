package p179;

import android.view.View;
import android.view.ViewPropertyAnimator;
import java.util.ArrayList;
import ʿי.ـᵎ;

/* renamed from: ˋˋ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC2687 implements Runnable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ ـᵎ f10231;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f10232;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ ArrayList f10233;

    public /* synthetic */ RunnableC2687(ـᵎ r1, ArrayList arrayList, int i) {
        this.f10232 = i;
        this.f10231 = r1;
        this.f10233 = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f10232) {
            case 0:
                ArrayList arrayList = this.f10233;
                int size = arrayList.size();
                int i = 0;
                while (true) {
                    ـᵎ r4 = this.f10231;
                    if (i >= size) {
                        arrayList.clear();
                        r4.ᵔʾ.remove(arrayList);
                        return;
                    }
                    Object obj = arrayList.get(i);
                    i++;
                    C2695 c2695 = (C2695) obj;
                    AbstractC2673 abstractC2673 = c2695.f10269;
                    int i2 = c2695.f10268;
                    int i3 = c2695.f10265;
                    int i4 = c2695.f10266;
                    int i5 = c2695.f10267;
                    View view = abstractC2673.f10176;
                    int i6 = i4 - i2;
                    int i7 = i5 - i3;
                    if (i6 != 0) {
                        view.animate().translationX(0.0f);
                    }
                    if (i7 != 0) {
                        view.animate().translationY(0.0f);
                    }
                    ViewPropertyAnimator animate = view.animate();
                    r4.ᵔﹳ.add(abstractC2673);
                    animate.setDuration(r4.f10363).setListener(new C2747(r4, abstractC2673, i6, view, i7, animate, 0)).start();
                }
            case 1:
                ArrayList arrayList2 = this.f10233;
                int size2 = arrayList2.size();
                int i8 = 0;
                while (true) {
                    ـᵎ r42 = this.f10231;
                    if (i8 >= size2) {
                        arrayList2.clear();
                        r42.ˉˆ.remove(arrayList2);
                        return;
                    }
                    Object obj2 = arrayList2.get(i8);
                    i8++;
                    C2734 c2734 = (C2734) obj2;
                    ArrayList arrayList3 = r42.יـ;
                    long j = r42.f10366;
                    AbstractC2673 abstractC26732 = c2734.f10443;
                    View view2 = abstractC26732 == null ? null : abstractC26732.f10176;
                    AbstractC2673 abstractC26733 = c2734.f10442;
                    View view3 = abstractC26733 != null ? abstractC26733.f10176 : null;
                    if (view2 != null) {
                        ViewPropertyAnimator duration = view2.animate().setDuration(j);
                        arrayList3.add(c2734.f10443);
                        duration.translationX(c2734.f10441 - c2734.f10439);
                        duration.translationY(c2734.f10444 - c2734.f10440);
                        duration.alpha(0.0f).setListener(new C2694(r42, c2734, duration, view2, 0)).start();
                    }
                    if (view3 != null) {
                        ViewPropertyAnimator animate2 = view3.animate();
                        arrayList3.add(c2734.f10442);
                        animate2.translationX(0.0f).translationY(0.0f).setDuration(j).alpha(1.0f).setListener(new C2694(r42, c2734, animate2, view3, 1)).start();
                    }
                }
            default:
                ArrayList arrayList4 = this.f10233;
                int size3 = arrayList4.size();
                int i9 = 0;
                while (true) {
                    ـᵎ r3 = this.f10231;
                    if (i9 >= size3) {
                        arrayList4.clear();
                        r3.ˉʿ.remove(arrayList4);
                        return;
                    }
                    Object obj3 = arrayList4.get(i9);
                    i9++;
                    AbstractC2673 abstractC26734 = (AbstractC2673) obj3;
                    View view4 = abstractC26734.f10176;
                    ViewPropertyAnimator animate3 = view4.animate();
                    r3.ʼᐧ.add(abstractC26734);
                    animate3.alpha(1.0f).setDuration(r3.f10361).setListener(new C2720(r3, abstractC26734, view4, animate3)).start();
                }
        }
    }
}
