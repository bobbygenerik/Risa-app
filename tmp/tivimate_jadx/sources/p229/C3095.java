package p229;

import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.RunnableC0197;
import androidx.media3.decoder.ffmpeg.C0212;
import com.parse.ˊﾞ;
import java.util.ArrayList;
import java.util.WeakHashMap;
import p003.RunnableC0786;
import p013.C0913;
import p036.C1267;
import p186.AbstractC2776;
import p186.AbstractC2785;
import p186.AbstractC2823;
import p186.ViewTreeObserverOnPreDrawListenerC2831;
import p255.C3359;
import p329.InterfaceC4104;
import p430.AbstractC5099;
import p430.AbstractC5114;
import ʽⁱ.ᵎﹶ;

/* renamed from: ˑʼ.ˉˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3095 extends AbstractC3111 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final ArrayList f11786;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final C0212 f11787 = new Object();

    /* renamed from: ʽ, reason: contains not printable characters */
    public final ArrayList f11788;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final C3359 f11789;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C3081 f11790;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final C3359 f11791;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final boolean f11792;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C3081 f11793;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final ArrayList f11794;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final Object f11795;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final C3359 f11796;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final ArrayList f11797;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public Object f11798;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public boolean f11799;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final ArrayList f11800;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final AbstractC3104 f11801;

    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.media3.decoder.ffmpeg.ˈ, java.lang.Object] */
    public C3095(ArrayList arrayList, C3081 c3081, C3081 c30812, AbstractC3104 abstractC3104, Object obj, ArrayList arrayList2, ArrayList arrayList3, C3359 c3359, ArrayList arrayList4, ArrayList arrayList5, C3359 c33592, C3359 c33593, boolean z) {
        this.f11788 = arrayList;
        this.f11790 = c3081;
        this.f11793 = c30812;
        this.f11801 = abstractC3104;
        this.f11795 = obj;
        this.f11797 = arrayList2;
        this.f11786 = arrayList3;
        this.f11789 = c3359;
        this.f11794 = arrayList4;
        this.f11800 = arrayList5;
        this.f11791 = c33592;
        this.f11796 = c33593;
        this.f11792 = z;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static void m6718(View view, ArrayList arrayList) {
        if (!(view instanceof ViewGroup)) {
            if (arrayList.contains(view)) {
                return;
            }
            arrayList.add(view);
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int i = AbstractC2785.f10543;
        if (viewGroup.isTransitionGroup()) {
            if (arrayList.contains(view)) {
                return;
            }
            arrayList.add(view);
            return;
        }
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if (childAt.getVisibility() == 0) {
                m6718(childAt, arrayList);
            }
        }
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void m6719(ArrayList arrayList, ViewGroup viewGroup, InterfaceC4104 interfaceC4104) {
        AbstractC3100.m6724(4, arrayList);
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = this.f11786;
        int size = arrayList3.size();
        for (int i = 0; i < size; i++) {
            View view = (View) arrayList3.get(i);
            WeakHashMap weakHashMap = AbstractC2823.f10603;
            arrayList2.add(AbstractC2776.m6176(view));
            AbstractC2776.m6177(view, null);
        }
        boolean m6654 = C3085.m6654(2);
        ArrayList arrayList4 = this.f11797;
        if (m6654) {
            int size2 = arrayList4.size();
            int i2 = 0;
            while (i2 < size2) {
                Object obj = arrayList4.get(i2);
                i2++;
                View view2 = (View) obj;
                StringBuilder sb = new StringBuilder("View: ");
                sb.append(view2);
                sb.append(" Name: ");
                WeakHashMap weakHashMap2 = AbstractC2823.f10603;
                sb.append(AbstractC2776.m6176(view2));
                sb.toString();
            }
            int size3 = arrayList3.size();
            int i3 = 0;
            while (i3 < size3) {
                Object obj2 = arrayList3.get(i3);
                i3++;
                View view3 = (View) obj2;
                StringBuilder sb2 = new StringBuilder("View: ");
                sb2.append(view3);
                sb2.append(" Name: ");
                WeakHashMap weakHashMap3 = AbstractC2823.f10603;
                sb2.append(AbstractC2776.m6176(view3));
                sb2.toString();
            }
        }
        interfaceC4104.mo716();
        int size4 = arrayList3.size();
        ArrayList arrayList5 = new ArrayList();
        for (int i4 = 0; i4 < size4; i4++) {
            View view4 = (View) arrayList4.get(i4);
            WeakHashMap weakHashMap4 = AbstractC2823.f10603;
            String m6176 = AbstractC2776.m6176(view4);
            arrayList5.add(m6176);
            if (m6176 != null) {
                AbstractC2776.m6177(view4, null);
                String str = (String) this.f11789.get(m6176);
                int i5 = 0;
                while (true) {
                    if (i5 >= size4) {
                        break;
                    }
                    if (str.equals(arrayList2.get(i5))) {
                        AbstractC2776.m6177((View) arrayList3.get(i5), m6176);
                        break;
                    }
                    i5++;
                }
            }
        }
        ViewTreeObserverOnPreDrawListenerC2831.m6289(viewGroup, new RunnableC3072(size4, arrayList3, arrayList2, arrayList4, arrayList5));
        AbstractC3100.m6724(0, arrayList);
        this.f11801.mo6734(this.f11795, arrayList4, arrayList3);
    }

    @Override // p229.AbstractC3111
    /* renamed from: ʽ */
    public final void mo6637(ViewGroup viewGroup) {
        boolean isLaidOut = viewGroup.isLaidOut();
        int i = 0;
        ArrayList arrayList = this.f11788;
        int i2 = 2;
        if (!isLaidOut || this.f11799) {
            int size = arrayList.size();
            int i3 = 0;
            while (i3 < size) {
                Object obj = arrayList.get(i3);
                i3++;
                C3078 c3078 = (C3078) obj;
                C3081 c3081 = (C3081) ((ᵎﹶ) c3078).ʾˋ;
                if (C3085.m6654(2)) {
                    if (this.f11799) {
                        String str = "SpecialEffectsController: TransitionSeekController was not created. Completing operation " + c3081;
                    } else {
                        String str2 = "SpecialEffectsController: Container " + viewGroup + " has not been laid out. Completing operation " + c3081;
                    }
                }
                ((C3081) ((ᵎﹶ) c3078).ʾˋ).m6643(this);
            }
            this.f11799 = false;
            return;
        }
        Object obj2 = this.f11798;
        AbstractC3104 abstractC3104 = this.f11801;
        C3081 c30812 = this.f11793;
        C3081 c30813 = this.f11790;
        if (obj2 != null) {
            abstractC3104.mo6732(obj2);
            if (C3085.m6654(2)) {
                String str3 = "Ending execution of operations from " + c30813 + " to " + c30812;
                return;
            }
            return;
        }
        C0913 m6720 = m6720(viewGroup, c30812, c30813);
        ArrayList arrayList2 = (ArrayList) m6720.f3836;
        Object obj3 = m6720.f3837;
        ArrayList arrayList3 = new ArrayList(AbstractC5114.m10060(arrayList, 10));
        int size2 = arrayList.size();
        int i4 = 0;
        while (i4 < size2) {
            Object obj4 = arrayList.get(i4);
            i4++;
            arrayList3.add((C3081) ((ᵎﹶ) ((C3078) obj4)).ʾˋ);
        }
        int size3 = arrayList3.size();
        while (i < size3) {
            Object obj5 = arrayList3.get(i);
            i++;
            C3081 c30814 = (C3081) obj5;
            abstractC3104.mo6728(c30814.f11701, obj3, this.f11787, new RunnableC3141(c30814, this, 1));
            i2 = i2;
        }
        m6719(arrayList2, viewGroup, new C3094(this, viewGroup, obj3));
        if (C3085.m6654(i2)) {
            String str4 = "Completed executing operations from " + c30813 + " to " + c30812;
        }
    }

    @Override // p229.AbstractC3111
    /* renamed from: ˈ */
    public final void mo6638(C1267 c1267) {
        Object obj = this.f11798;
        if (obj != null) {
            this.f11801.mo6748(obj, c1267.f4920);
        }
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Object, ˊʼ.ˏי] */
    @Override // p229.AbstractC3111
    /* renamed from: ˑﹳ */
    public final void mo6639(ViewGroup viewGroup) {
        Object obj;
        boolean isLaidOut = viewGroup.isLaidOut();
        int i = 0;
        ArrayList arrayList = this.f11788;
        if (!isLaidOut) {
            int size = arrayList.size();
            while (i < size) {
                Object obj2 = arrayList.get(i);
                i++;
                C3081 c3081 = (C3081) ((ᵎﹶ) ((C3078) obj2)).ʾˋ;
                if (C3085.m6654(2)) {
                    String str = "SpecialEffectsController: Container " + viewGroup + " has not been laid out. Skipping onStart for operation " + c3081;
                }
            }
            return;
        }
        boolean m6721 = m6721();
        C3081 c30812 = this.f11793;
        C3081 c30813 = this.f11790;
        if (m6721 && (obj = this.f11795) != null && !mo6722()) {
            String str2 = "Ignoring shared elements transition " + obj + " between " + c30813 + " and " + c30812 + " as neither fragment has set a Transition. In order to run a SharedElementTransition, you must also set either an enter or exit transition on a fragment involved in the transaction. The sharedElementTransition will run after the back gesture has been committed.";
        }
        if (mo6722() && m6721()) {
            ?? obj3 = new Object();
            C0913 m6720 = m6720(viewGroup, c30812, c30813);
            ArrayList arrayList2 = (ArrayList) m6720.f3836;
            Object obj4 = m6720.f3837;
            ArrayList arrayList3 = new ArrayList(AbstractC5114.m10060(arrayList, 10));
            int size2 = arrayList.size();
            int i2 = 0;
            while (i2 < size2) {
                Object obj5 = arrayList.get(i2);
                i2++;
                arrayList3.add((C3081) ((ᵎﹶ) ((C3078) obj5)).ʾˋ);
            }
            int size3 = arrayList3.size();
            while (i < size3) {
                Object obj6 = arrayList3.get(i);
                i++;
                C3081 c30814 = (C3081) obj6;
                RunnableC0197 runnableC0197 = new RunnableC0197(22, obj3);
                AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = c30814.f11701;
                this.f11801.mo6733(obj4, this.f11787, runnableC0197, new RunnableC3141(c30814, this, 0));
            }
            m6719(arrayList2, viewGroup, new C3129(this, viewGroup, obj4, obj3));
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final C0913 m6720(ViewGroup viewGroup, C3081 c3081, C3081 c30812) {
        ArrayList arrayList;
        ArrayList arrayList2;
        Object obj;
        AbstractC3104 abstractC3104;
        ArrayList arrayList3;
        View view;
        C3081 c30813 = c3081;
        View view2 = new View(viewGroup.getContext());
        Rect rect = new Rect();
        ArrayList arrayList4 = this.f11788;
        int size = arrayList4.size();
        View view3 = null;
        boolean z = false;
        int i = 0;
        while (true) {
            arrayList = this.f11786;
            arrayList2 = this.f11797;
            obj = this.f11795;
            abstractC3104 = this.f11801;
            if (i >= size) {
                break;
            }
            Object obj2 = arrayList4.get(i);
            i++;
            if (((C3078) obj2).f11696 == null || c30812 == null || c30813 == null || this.f11789.isEmpty() || obj == null) {
                size = size;
                z = z;
            } else {
                AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = c30813.f11701;
                int i2 = size;
                AbstractComponentCallbacksC3123 abstractComponentCallbacksC31232 = c30812.f11701;
                C3139 c3139 = AbstractC3100.f11812;
                if (this.f11792) {
                    abstractComponentCallbacksC31232.getClass();
                } else {
                    abstractComponentCallbacksC3123.getClass();
                }
                ViewTreeObserverOnPreDrawListenerC2831.m6289(viewGroup, new ˊﾞ(c30813, c30812, this, 4));
                C3359 c3359 = this.f11791;
                arrayList2.addAll(c3359.values());
                ArrayList arrayList5 = this.f11800;
                boolean z2 = z;
                if (!arrayList5.isEmpty()) {
                    View view4 = (View) c3359.get((String) arrayList5.get(0));
                    abstractC3104.mo6740(view4, obj);
                    view3 = view4;
                }
                C3359 c33592 = this.f11796;
                arrayList.addAll(c33592.values());
                ArrayList arrayList6 = this.f11794;
                if (arrayList6.isEmpty() || (view = (View) c33592.get((String) arrayList6.get(0))) == null) {
                    z = z2;
                } else {
                    ViewTreeObserverOnPreDrawListenerC2831.m6289(viewGroup, new RunnableC0786(abstractC3104, view, rect));
                    z = true;
                }
                abstractC3104.mo6741(obj, view2, arrayList2);
                Object obj3 = this.f11795;
                abstractC3104.mo6745(obj3, null, null, obj3, arrayList);
                size = i2;
            }
        }
        boolean z3 = z;
        ArrayList arrayList7 = new ArrayList();
        int size2 = arrayList4.size();
        int i3 = 0;
        Object obj4 = null;
        Object obj5 = null;
        while (i3 < size2) {
            Object obj6 = arrayList4.get(i3);
            int i4 = i3 + 1;
            C3078 c3078 = (C3078) obj6;
            ArrayList arrayList8 = arrayList4;
            C3081 c30814 = (C3081) ((ᵎﹶ) c3078).ʾˋ;
            int i5 = size2;
            Object mo6744 = abstractC3104.mo6744(c3078.f11697);
            if (mo6744 != null) {
                ArrayList arrayList9 = arrayList2;
                ArrayList arrayList10 = new ArrayList();
                Object obj7 = obj;
                AbstractComponentCallbacksC3123 abstractComponentCallbacksC31233 = c30814.f11701;
                Object obj8 = obj5;
                m6718(abstractComponentCallbacksC31233.f11908, arrayList10);
                if (obj7 != null && (c30814 == c30812 || c30814 == c30813)) {
                    if (c30814 == c30812) {
                        arrayList10.removeAll(AbstractC5099.m10031(arrayList9));
                    } else {
                        arrayList10.removeAll(AbstractC5099.m10031(arrayList));
                    }
                }
                if (arrayList10.isEmpty()) {
                    abstractC3104.mo6747(view2, mo6744);
                    arrayList3 = arrayList10;
                } else {
                    abstractC3104.mo6746(mo6744, arrayList10);
                    abstractC3104.mo6745(mo6744, mo6744, arrayList10, null, null);
                    arrayList3 = arrayList10;
                    if (c30814.f11709 == 3) {
                        c30814.f11700 = false;
                        ArrayList arrayList11 = new ArrayList(arrayList3);
                        arrayList11.remove(abstractComponentCallbacksC31233.f11908);
                        abstractC3104.mo6731(mo6744, abstractComponentCallbacksC31233.f11908, arrayList11);
                        ViewTreeObserverOnPreDrawListenerC2831.m6289(viewGroup, new RunnableC0197(23, arrayList3));
                    }
                }
                if (c30814.f11709 == 2) {
                    arrayList7.addAll(arrayList3);
                    if (z3) {
                        abstractC3104.mo6738(mo6744, rect);
                    }
                    if (C3085.m6654(2)) {
                        String str = "Entering Transition: " + mo6744;
                        int i6 = 0;
                        for (int size3 = arrayList3.size(); i6 < size3; size3 = size3) {
                            Object obj9 = arrayList3.get(i6);
                            i6++;
                            String str2 = "View: " + ((View) obj9);
                        }
                    }
                } else {
                    abstractC3104.mo6740(view3, mo6744);
                    if (C3085.m6654(2)) {
                        String str3 = "Exiting Transition: " + mo6744;
                        int i7 = 0;
                        for (int size4 = arrayList3.size(); i7 < size4; size4 = size4) {
                            Object obj10 = arrayList3.get(i7);
                            i7++;
                            String str4 = "View: " + ((View) obj10);
                        }
                    }
                }
                if (c3078.f11695) {
                    obj4 = abstractC3104.mo6737(obj4, mo6744);
                    c30813 = c3081;
                    i3 = i4;
                    arrayList4 = arrayList8;
                    size2 = i5;
                    arrayList2 = arrayList9;
                    obj = obj7;
                    obj5 = obj8;
                } else {
                    obj5 = abstractC3104.mo6737(obj8, mo6744);
                    c30813 = c3081;
                    i3 = i4;
                    arrayList4 = arrayList8;
                    size2 = i5;
                    arrayList2 = arrayList9;
                    obj = obj7;
                }
            } else {
                c30813 = c3081;
                i3 = i4;
                arrayList4 = arrayList8;
                size2 = i5;
            }
        }
        Object mo6743 = abstractC3104.mo6743(obj4, obj5, obj);
        if (C3085.m6654(2)) {
            String str5 = "Final merged transition: " + mo6743 + " for container " + viewGroup;
        }
        return new C0913(arrayList7, mo6743);
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final boolean m6721() {
        ArrayList arrayList = this.f11788;
        if (arrayList.isEmpty()) {
            return true;
        }
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            if (!((C3081) ((ᵎﹶ) ((C3078) obj)).ʾˋ).f11701.f11899) {
                return false;
            }
        }
        return true;
    }

    @Override // p229.AbstractC3111
    /* renamed from: ⁱˊ */
    public final void mo6640(ViewGroup viewGroup) {
        this.f11787.m783();
    }

    @Override // p229.AbstractC3111
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean mo6722() {
        Object obj;
        AbstractC3104 abstractC3104 = this.f11801;
        if (abstractC3104.mo6749()) {
            ArrayList arrayList = this.f11788;
            if (!arrayList.isEmpty()) {
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj2 = arrayList.get(i);
                    i++;
                    C3078 c3078 = (C3078) obj2;
                    if (Build.VERSION.SDK_INT < 34 || (obj = c3078.f11697) == null || !abstractC3104.mo6736(obj)) {
                        break;
                    }
                }
            }
            Object obj3 = this.f11795;
            if (obj3 == null || abstractC3104.mo6736(obj3)) {
                return true;
            }
        }
        return false;
    }
}
