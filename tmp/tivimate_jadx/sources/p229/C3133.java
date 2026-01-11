package p229;

import android.animation.AnimatorSet;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.datastore.preferences.protobuf.C0025;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import p013.C0913;
import p137.AbstractC2305;
import p152.AbstractC2444;
import p186.AbstractC2776;
import p186.AbstractC2823;
import p255.C3359;
import p255.C3368;
import p307.AbstractC3740;
import p404.C4790;
import p430.AbstractC5099;
import ʽⁱ.ᵎﹶ;

/* renamed from: ˑʼ.ᵔﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3133 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public boolean f11972;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public boolean f11973;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ViewGroup f11975;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public boolean f11976;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final ArrayList f11974 = new ArrayList();

    /* renamed from: ʽ, reason: contains not printable characters */
    public final ArrayList f11971 = new ArrayList();

    public C3133(ViewGroup viewGroup) {
        this.f11975 = viewGroup;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static boolean m6864(ArrayList arrayList) {
        boolean z;
        int size = arrayList.size();
        int i = 0;
        loop0: while (true) {
            z = true;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                C3081 c3081 = (C3081) obj;
                if (!c3081.f11705.isEmpty()) {
                    ArrayList arrayList2 = c3081.f11705;
                    if (arrayList2 == null || !arrayList2.isEmpty()) {
                        int size2 = arrayList2.size();
                        int i2 = 0;
                        while (i2 < size2) {
                            Object obj2 = arrayList2.get(i2);
                            i2++;
                            if (!((AbstractC3111) obj2).mo6722()) {
                                break;
                            }
                        }
                    }
                }
                z = false;
            }
            break loop0;
        }
        if (z) {
            ArrayList arrayList3 = new ArrayList();
            int size3 = arrayList.size();
            int i3 = 0;
            while (i3 < size3) {
                Object obj3 = arrayList.get(i3);
                i3++;
                AbstractC5099.m10033(((C3081) obj3).f11705, arrayList3);
            }
            if (!arrayList3.isEmpty()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static void m6865(C3359 c3359, View view) {
        WeakHashMap weakHashMap = AbstractC2823.f10603;
        String m6176 = AbstractC2776.m6176(view);
        if (m6176 != null) {
            c3359.put(m6176, view);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                if (childAt.getVisibility() == 0) {
                    m6865(c3359, childAt);
                }
            }
        }
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void m6866() {
        String str;
        String str2;
        if (C3085.m6654(2)) {
        }
        boolean isAttachedToWindow = this.f11975.isAttachedToWindow();
        synchronized (this.f11974) {
            try {
                m6869();
                m6876(this.f11974);
                ArrayList arrayList = new ArrayList(this.f11971);
                int size = arrayList.size();
                int i = 0;
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    ((C3081) obj).f11706 = false;
                }
                int size2 = arrayList.size();
                int i3 = 0;
                while (i3 < size2) {
                    Object obj2 = arrayList.get(i3);
                    i3++;
                    C3081 c3081 = (C3081) obj2;
                    if (C3085.m6654(2)) {
                        if (isAttachedToWindow) {
                            str2 = "";
                        } else {
                            str2 = "Container " + this.f11975 + " is not attached to window. ";
                        }
                        String str3 = "SpecialEffectsController: " + str2 + "Cancelling running operation " + c3081;
                    }
                    c3081.m6646(this.f11975);
                }
                ArrayList arrayList2 = new ArrayList(this.f11974);
                int size3 = arrayList2.size();
                int i4 = 0;
                while (i4 < size3) {
                    Object obj3 = arrayList2.get(i4);
                    i4++;
                    ((C3081) obj3).f11706 = false;
                }
                int size4 = arrayList2.size();
                while (i < size4) {
                    Object obj4 = arrayList2.get(i);
                    i++;
                    C3081 c30812 = (C3081) obj4;
                    if (C3085.m6654(2)) {
                        if (isAttachedToWindow) {
                            str = "";
                        } else {
                            str = "Container " + this.f11975 + " is not attached to window. ";
                        }
                        String str4 = "SpecialEffectsController: " + str + "Cancelling pending operation " + c30812;
                    }
                    c30812.m6646(this.f11975);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m6867(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AbstractC5099.m10033(((C3081) it.next()).f11705, arrayList);
        }
        List m10020 = AbstractC5099.m10020(AbstractC5099.m10031(arrayList));
        int size = m10020.size();
        for (int i = 0; i < size; i++) {
            ((AbstractC3111) m10020.get(i)).mo6637(this.f11975);
        }
        int size2 = list.size();
        for (int i2 = 0; i2 < size2; i2++) {
            m6875((C3081) list.get(i2));
        }
        List m100202 = AbstractC5099.m10020(list);
        int size3 = m100202.size();
        for (int i3 = 0; i3 < size3; i3++) {
            C3081 c3081 = (C3081) m100202.get(i3);
            if (c3081.f11705.isEmpty()) {
                c3081.m6645();
            }
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m6868(int i, int i2, C3120 c3120) {
        synchronized (this.f11974) {
            try {
                C3081 m6872 = m6872(c3120.f11861);
                if (m6872 == null) {
                    AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = c3120.f11861;
                    if (!abstractComponentCallbacksC3123.f11899 && !abstractComponentCallbacksC3123.f11934) {
                        m6872 = null;
                    }
                    m6872 = m6873(abstractComponentCallbacksC3123);
                }
                if (m6872 != null) {
                    m6872.m6644(i, i2);
                    return;
                }
                C3081 c3081 = new C3081(i, i2, c3120);
                this.f11974.add(c3081);
                c3081.f11703.add(new RunnableC3089(this, c3081, 1));
                c3081.f11703.add(new RunnableC3089(this, c3081, 2));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final void m6869() {
        ArrayList arrayList = this.f11974;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            C3081 c3081 = (C3081) obj;
            int i2 = 2;
            if (c3081.f11708 == 2) {
                int visibility = c3081.f11701.m6810().getVisibility();
                if (visibility != 0) {
                    i2 = 4;
                    if (visibility != 4) {
                        if (visibility != 8) {
                            throw new IllegalArgumentException(AbstractC3740.m7932(visibility, "Unknown visibility "));
                        }
                        i2 = 3;
                    }
                }
                c3081.m6644(i2, 1);
            }
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m6870() {
        boolean z;
        if (this.f11976) {
            return;
        }
        if (!this.f11975.isAttachedToWindow()) {
            m6866();
            this.f11973 = false;
            return;
        }
        synchronized (this.f11974) {
            try {
                ArrayList arrayList = new ArrayList(this.f11971);
                this.f11971.clear();
                int size = arrayList.size();
                int i = 0;
                while (true) {
                    z = true;
                    if (i >= size) {
                        break;
                    }
                    Object obj = arrayList.get(i);
                    i++;
                    C3081 c3081 = (C3081) obj;
                    if (this.f11974.isEmpty() || !c3081.f11701.f11899) {
                        z = false;
                    }
                    c3081.f11706 = z;
                }
                int size2 = arrayList.size();
                int i2 = 0;
                while (i2 < size2) {
                    Object obj2 = arrayList.get(i2);
                    i2++;
                    C3081 c30812 = (C3081) obj2;
                    if (this.f11972) {
                        if (C3085.m6654(2)) {
                            String str = "SpecialEffectsController: Completing non-seekable operation " + c30812;
                        }
                        c30812.m6645();
                    } else {
                        if (C3085.m6654(2)) {
                            String str2 = "SpecialEffectsController: Cancelling operation " + c30812;
                        }
                        c30812.m6646(this.f11975);
                    }
                    this.f11972 = false;
                    if (!c30812.f11711) {
                        this.f11971.add(c30812);
                    }
                }
                if (!this.f11974.isEmpty()) {
                    m6869();
                    ArrayList arrayList2 = new ArrayList(this.f11974);
                    if (arrayList2.isEmpty()) {
                        return;
                    }
                    this.f11974.clear();
                    this.f11971.addAll(arrayList2);
                    if (C3085.m6654(2)) {
                    }
                    m6874(arrayList2, this.f11973);
                    boolean m6864 = m6864(arrayList2);
                    int size3 = arrayList2.size();
                    int i3 = 0;
                    boolean z2 = true;
                    while (i3 < size3) {
                        Object obj3 = arrayList2.get(i3);
                        i3++;
                        if (!((C3081) obj3).f11701.f11899) {
                            z2 = false;
                        }
                    }
                    if (!z2 || m6864) {
                        z = false;
                    }
                    this.f11972 = z;
                    if (C3085.m6654(2)) {
                        String str3 = "SpecialEffectsController: Operation seekable = " + m6864 + " \ntransition = " + z2;
                    }
                    if (!z2) {
                        m6876(arrayList2);
                        m6867(arrayList2);
                    } else if (m6864) {
                        m6876(arrayList2);
                        int size4 = arrayList2.size();
                        for (int i4 = 0; i4 < size4; i4++) {
                            m6875((C3081) arrayList2.get(i4));
                        }
                    }
                    this.f11973 = false;
                    if (C3085.m6654(2)) {
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0061, code lost:
    
        r2 = (p229.C3081) r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0063, code lost:
    
        if (r2 == null) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0065, code lost:
    
        r3 = r2.f11701;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0067, code lost:
    
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0068, code lost:
    
        if (r3 == null) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x006a, code lost:
    
        r2 = r3.f11938;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x006c, code lost:
    
        if (r2 != null) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x006f, code lost:
    
        r1 = r2.f11878;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0071, code lost:
    
        r9.f11976 = r1;
     */
    /* renamed from: ٴﹶ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m6871() {
        /*
            r9 = this;
            java.util.ArrayList r0 = r9.f11974
            monitor-enter(r0)
            r9.m6869()     // Catch: java.lang.Throwable -> L5e
            java.util.ArrayList r1 = r9.f11974     // Catch: java.lang.Throwable -> L5e
            int r2 = r1.size()     // Catch: java.lang.Throwable -> L5e
            java.util.ListIterator r1 = r1.listIterator(r2)     // Catch: java.lang.Throwable -> L5e
        L10:
            boolean r2 = r1.hasPrevious()     // Catch: java.lang.Throwable -> L5e
            r3 = 0
            if (r2 == 0) goto L60
            java.lang.Object r2 = r1.previous()     // Catch: java.lang.Throwable -> L5e
            r4 = r2
            ˑʼ.ʽᵔ r4 = (p229.C3081) r4     // Catch: java.lang.Throwable -> L5e
            ˑʼ.ᴵᵔ r5 = r4.f11701     // Catch: java.lang.Throwable -> L5e
            android.view.View r5 = r5.f11908     // Catch: java.lang.Throwable -> L5e
            float r6 = r5.getAlpha()     // Catch: java.lang.Throwable -> L5e
            r7 = 0
            int r6 = (r6 > r7 ? 1 : (r6 == r7 ? 0 : -1))
            r7 = 2
            r8 = 4
            if (r6 != 0) goto L34
            int r6 = r5.getVisibility()     // Catch: java.lang.Throwable -> L5e
            if (r6 != 0) goto L34
            goto L57
        L34:
            int r5 = r5.getVisibility()     // Catch: java.lang.Throwable -> L5e
            if (r5 == 0) goto L56
            if (r5 == r8) goto L57
            r6 = 8
            if (r5 != r6) goto L42
            r8 = 3
            goto L57
        L42:
            java.lang.IllegalArgumentException r1 = new java.lang.IllegalArgumentException     // Catch: java.lang.Throwable -> L5e
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L5e
            java.lang.String r3 = "Unknown visibility "
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L5e
            r2.append(r5)     // Catch: java.lang.Throwable -> L5e
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L5e
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L5e
            throw r1     // Catch: java.lang.Throwable -> L5e
        L56:
            r8 = r7
        L57:
            int r4 = r4.f11709     // Catch: java.lang.Throwable -> L5e
            if (r4 != r7) goto L10
            if (r8 == r7) goto L10
            goto L61
        L5e:
            r1 = move-exception
            goto L75
        L60:
            r2 = r3
        L61:
            ˑʼ.ʽᵔ r2 = (p229.C3081) r2     // Catch: java.lang.Throwable -> L5e
            if (r2 == 0) goto L67
            ˑʼ.ᴵᵔ r3 = r2.f11701     // Catch: java.lang.Throwable -> L5e
        L67:
            r1 = 0
            if (r3 == 0) goto L71
            ˑʼ.ᴵˊ r2 = r3.f11938     // Catch: java.lang.Throwable -> L5e
            if (r2 != 0) goto L6f
            goto L71
        L6f:
            boolean r1 = r2.f11878     // Catch: java.lang.Throwable -> L5e
        L71:
            r9.f11976 = r1     // Catch: java.lang.Throwable -> L5e
            monitor-exit(r0)
            return
        L75:
            monitor-exit(r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: p229.C3133.m6871():void");
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final C3081 m6872(AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123) {
        Object obj;
        ArrayList arrayList = this.f11974;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                obj = null;
                break;
            }
            obj = arrayList.get(i);
            i++;
            C3081 c3081 = (C3081) obj;
            if (AbstractC2444.m5562(c3081.f11701, abstractComponentCallbacksC3123) && !c3081.f11704) {
                break;
            }
        }
        return (C3081) obj;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final C3081 m6873(AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123) {
        Object obj;
        ArrayList arrayList = this.f11971;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                obj = null;
                break;
            }
            obj = arrayList.get(i);
            i++;
            C3081 c3081 = (C3081) obj;
            if (AbstractC2444.m5562(c3081.f11701, abstractComponentCallbacksC3123) && !c3081.f11704) {
                break;
            }
        }
        return (C3081) obj;
    }

    /* JADX WARN: Type inference failed for: r12v1, types: [יـ.ﹳᐧ, יـ.ˑﹳ] */
    /* JADX WARN: Type inference failed for: r13v1, types: [יـ.ﹳᐧ, יـ.ˑﹳ] */
    /* JADX WARN: Type inference failed for: r9v3, types: [יـ.ﹳᐧ, יـ.ˑﹳ] */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m6874(ArrayList arrayList, boolean z) {
        Object obj;
        Object obj2;
        boolean z2;
        ArrayList arrayList2;
        ArrayList arrayList3;
        ArrayList arrayList4;
        int i;
        AbstractC3104 abstractC3104;
        ArrayList arrayList5;
        int i2;
        ArrayList arrayList6;
        ArrayList arrayList7;
        ArrayList arrayList8;
        ArrayList arrayList9;
        int i3 = 2;
        if (C3085.m6654(2)) {
        }
        int size = arrayList.size();
        int i4 = 0;
        int i5 = 0;
        while (true) {
            if (i5 >= size) {
                obj = null;
                break;
            }
            obj = arrayList.get(i5);
            i5++;
            C3081 c3081 = (C3081) obj;
            View view = c3081.f11701.f11908;
            if (view.getAlpha() != 0.0f || view.getVisibility() != 0) {
                int visibility = view.getVisibility();
                if (visibility == 0) {
                    if (c3081.f11709 != 2) {
                        break;
                    }
                } else if (visibility != 4 && visibility != 8) {
                    throw new IllegalArgumentException(AbstractC3740.m7932(visibility, "Unknown visibility "));
                }
            }
        }
        C3081 c30812 = (C3081) obj;
        ListIterator listIterator = arrayList.listIterator(arrayList.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                obj2 = null;
                break;
            }
            obj2 = listIterator.previous();
            C3081 c30813 = (C3081) obj2;
            View view2 = c30813.f11701.f11908;
            if (view2.getAlpha() != 0.0f || view2.getVisibility() != 0) {
                int visibility2 = view2.getVisibility();
                if (visibility2 == 0) {
                    continue;
                } else if (visibility2 != 4 && visibility2 != 8) {
                    throw new IllegalArgumentException(AbstractC3740.m7932(visibility2, "Unknown visibility "));
                }
            }
            if (c30813.f11709 == 2) {
                break;
            }
        }
        C3081 c30814 = (C3081) obj2;
        if (C3085.m6654(2)) {
            String str = "Executing operations from " + c30812 + " to " + c30814;
        }
        ArrayList arrayList10 = new ArrayList();
        ArrayList arrayList11 = new ArrayList();
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = ((C3081) AbstractC5099.m10028(arrayList)).f11701;
        int size2 = arrayList.size();
        int i6 = 0;
        while (i6 < size2) {
            Object obj3 = arrayList.get(i6);
            i6++;
            C3121 c3121 = ((C3081) obj3).f11701.f11938;
            C3121 c31212 = abstractComponentCallbacksC3123.f11938;
            c3121.f11879 = c31212.f11879;
            c3121.f11868 = c31212.f11868;
            c3121.f11870 = c31212.f11870;
            c3121.f11873 = c31212.f11873;
            i3 = i3;
        }
        int i7 = i3;
        int size3 = arrayList.size();
        int i8 = 0;
        while (i8 < size3) {
            Object obj4 = arrayList.get(i8);
            i8++;
            C3081 c30815 = (C3081) obj4;
            arrayList10.add(new C3128(c30815, z));
            arrayList11.add(new C3078(c30815, z, !z ? c30815 != c30814 : c30815 != c30812));
            c30815.f11703.add(new RunnableC3089(this, c30815, i4));
        }
        ArrayList arrayList12 = new ArrayList();
        int size4 = arrayList11.size();
        int i9 = 0;
        while (i9 < size4) {
            Object obj5 = arrayList11.get(i9);
            i9++;
            if (!((C3078) obj5).ʼـ()) {
                arrayList12.add(obj5);
            }
        }
        ArrayList arrayList13 = new ArrayList();
        int size5 = arrayList12.size();
        int i10 = 0;
        while (i10 < size5) {
            Object obj6 = arrayList12.get(i10);
            i10++;
            if (((C3078) obj6).m6642() != null) {
                arrayList13.add(obj6);
            }
        }
        int size6 = arrayList13.size();
        int i11 = 0;
        AbstractC3104 abstractC31042 = null;
        while (i11 < size6) {
            Object obj7 = arrayList13.get(i11);
            i11++;
            C3078 c3078 = (C3078) obj7;
            AbstractC3104 m6642 = c3078.m6642();
            if (abstractC31042 != null && m6642 != abstractC31042) {
                throw new IllegalArgumentException(("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + ((C3081) ((ᵎﹶ) c3078).ʾˋ).f11701 + " returned Transition " + c3078.f11697 + " which uses a different Transition type than other Fragments.").toString());
            }
            abstractC31042 = m6642;
        }
        if (abstractC31042 == null) {
            arrayList2 = arrayList10;
            z2 = true;
        } else {
            ArrayList arrayList14 = new ArrayList();
            ArrayList arrayList15 = new ArrayList();
            ?? c3368 = new C3368(0);
            ArrayList arrayList16 = new ArrayList();
            ArrayList arrayList17 = new ArrayList();
            ArrayList arrayList18 = arrayList16;
            ?? c33682 = new C3368(0);
            ArrayList arrayList19 = arrayList17;
            ?? c33683 = new C3368(0);
            int size7 = arrayList13.size();
            int i12 = 0;
            Object obj8 = null;
            z2 = true;
            while (i12 < size7) {
                Object obj9 = arrayList13.get(i12);
                int i13 = i12 + 1;
                Object obj10 = ((C3078) obj9).f11696;
                if (obj10 == null || c30812 == null) {
                    arrayList3 = arrayList14;
                    arrayList4 = arrayList10;
                } else {
                    arrayList3 = arrayList14;
                    AbstractComponentCallbacksC3123 abstractComponentCallbacksC31232 = c30812.f11701;
                    arrayList4 = arrayList10;
                    if (c30814 != null) {
                        AbstractComponentCallbacksC3123 abstractComponentCallbacksC31233 = c30814.f11701;
                        Object mo6729 = abstractC31042.mo6729(abstractC31042.mo6744(obj10));
                        i = size7;
                        C3121 c31213 = abstractComponentCallbacksC31233.f11938;
                        if (c31213 == null || (arrayList6 = c31213.f11875) == null) {
                            arrayList6 = new ArrayList();
                        }
                        abstractC3104 = abstractC31042;
                        C3121 c31214 = abstractComponentCallbacksC31232.f11938;
                        if (c31214 == null || (arrayList7 = c31214.f11875) == null) {
                            arrayList7 = new ArrayList();
                        }
                        arrayList5 = arrayList15;
                        C3121 c31215 = abstractComponentCallbacksC31232.f11938;
                        if (c31215 == null || (arrayList8 = c31215.f11877) == null) {
                            arrayList8 = new ArrayList();
                        }
                        int size8 = arrayList8.size();
                        i2 = i13;
                        int i14 = 0;
                        while (i14 < size8) {
                            int i15 = size8;
                            int indexOf = arrayList6.indexOf(arrayList8.get(i14));
                            if (indexOf != -1) {
                                arrayList6.set(indexOf, arrayList7.get(i14));
                            }
                            i14++;
                            size8 = i15;
                        }
                        C3121 c31216 = abstractComponentCallbacksC31233.f11938;
                        if (c31216 == null || (arrayList9 = c31216.f11877) == null) {
                            arrayList9 = new ArrayList();
                        }
                        C0913 c0913 = !z ? new C0913(null, null) : new C0913(null, null);
                        if (c0913.f3836 != null) {
                            throw new ClassCastException();
                        }
                        if (c0913.f3837 != null) {
                            throw new ClassCastException();
                        }
                        int size9 = arrayList6.size();
                        for (int i16 = 0; i16 < size9; i16++) {
                            c3368.put((String) arrayList6.get(i16), (String) arrayList9.get(i16));
                        }
                        if (C3085.m6654(i7)) {
                            int size10 = arrayList9.size();
                            int i17 = 0;
                            while (i17 < size10) {
                                Object obj11 = arrayList9.get(i17);
                                i17++;
                                int i18 = size10;
                                String str2 = "Name: " + ((String) obj11);
                                size10 = i18;
                            }
                            int size11 = arrayList6.size();
                            int i19 = 0;
                            while (i19 < size11) {
                                Object obj12 = arrayList6.get(i19);
                                i19++;
                                int i20 = size11;
                                String str3 = "Name: " + ((String) obj12);
                                size11 = i20;
                            }
                        }
                        m6865(c33682, abstractComponentCallbacksC31232.f11908);
                        c33682.m7195(arrayList6);
                        c3368.m7195(c33682.keySet());
                        m6865(c33683, abstractComponentCallbacksC31233.f11908);
                        c33683.m7195(arrayList9);
                        c33683.m7195(c3368.values());
                        C3139 c3139 = AbstractC3100.f11812;
                        for (int i21 = c3368.f13167 - 1; -1 < i21; i21--) {
                            if (!c33683.containsKey((String) c3368.m7220(i21))) {
                                c3368.mo4688(i21);
                            }
                        }
                        Set keySet = c3368.keySet();
                        Iterator it = ((C0025) c33682.entrySet()).iterator();
                        while (it.hasNext()) {
                            it.next();
                            View view3 = (View) ((Map.Entry) it).getValue();
                            WeakHashMap weakHashMap = AbstractC2823.f10603;
                            if (!AbstractC5099.m10015(keySet, AbstractC2776.m6176(view3))) {
                                it.remove();
                            }
                        }
                        Collection values = c3368.values();
                        Iterator it2 = ((C0025) c33683.entrySet()).iterator();
                        while (it2.hasNext()) {
                            it2.next();
                            View view4 = (View) ((Map.Entry) it2).getValue();
                            WeakHashMap weakHashMap2 = AbstractC2823.f10603;
                            if (!AbstractC5099.m10015(values, AbstractC2776.m6176(view4))) {
                                it2.remove();
                            }
                        }
                        if (c3368.isEmpty()) {
                            String str4 = "Ignoring shared elements transition " + mo6729 + " between " + c30812 + " and " + c30814 + " as there are no matching elements in both the entering and exiting fragment. In order to run a SharedElementTransition, both fragments involved must have the element.";
                            arrayList3.clear();
                            arrayList5.clear();
                            arrayList14 = arrayList3;
                            arrayList19 = arrayList6;
                            arrayList18 = arrayList9;
                            arrayList10 = arrayList4;
                            size7 = i;
                            abstractC31042 = abstractC3104;
                            arrayList15 = arrayList5;
                            i12 = i2;
                            obj8 = null;
                        } else {
                            arrayList14 = arrayList3;
                            arrayList19 = arrayList6;
                            arrayList18 = arrayList9;
                            obj8 = mo6729;
                            arrayList10 = arrayList4;
                            size7 = i;
                            abstractC31042 = abstractC3104;
                            arrayList15 = arrayList5;
                            i12 = i2;
                        }
                    }
                }
                i = size7;
                abstractC3104 = abstractC31042;
                arrayList5 = arrayList15;
                i2 = i13;
                arrayList14 = arrayList3;
                arrayList10 = arrayList4;
                size7 = i;
                abstractC31042 = abstractC3104;
                arrayList15 = arrayList5;
                i12 = i2;
            }
            ArrayList arrayList20 = arrayList14;
            ArrayList arrayList21 = arrayList10;
            AbstractC3104 abstractC31043 = abstractC31042;
            ArrayList arrayList22 = arrayList15;
            if (obj8 == null) {
                if (!arrayList13.isEmpty()) {
                    int size12 = arrayList13.size();
                    int i22 = 0;
                    while (i22 < size12) {
                        Object obj13 = arrayList13.get(i22);
                        i22++;
                        if (((C3078) obj13).f11697 == null) {
                        }
                    }
                }
                arrayList2 = arrayList21;
            }
            arrayList2 = arrayList21;
            C3095 c3095 = new C3095(arrayList13, c30812, c30814, abstractC31043, obj8, arrayList20, arrayList22, c3368, arrayList18, arrayList19, c33682, c33683, z);
            int size13 = arrayList13.size();
            int i23 = 0;
            while (i23 < size13) {
                Object obj14 = arrayList13.get(i23);
                i23++;
                ((C3081) ((ᵎﹶ) ((C3078) obj14)).ʾˋ).f11702.add(c3095);
            }
        }
        ArrayList arrayList23 = new ArrayList();
        ArrayList arrayList24 = new ArrayList();
        int size14 = arrayList2.size();
        int i24 = 0;
        while (i24 < size14) {
            Object obj15 = arrayList2.get(i24);
            i24++;
            AbstractC5099.m10033(((C3081) ((ᵎﹶ) ((C3128) obj15)).ʾˋ).f11705, arrayList24);
        }
        boolean isEmpty = arrayList24.isEmpty();
        int size15 = arrayList2.size();
        boolean z3 = false;
        int i25 = 0;
        while (i25 < size15) {
            Object obj16 = arrayList2.get(i25);
            i25++;
            C3128 c3128 = (C3128) obj16;
            Context context = this.f11975.getContext();
            C3081 c30816 = (C3081) ((ᵎﹶ) c3128).ʾˋ;
            C4790 m6862 = c3128.m6862(context);
            if (m6862 != null) {
                if (((AnimatorSet) m6862.f18034) == null) {
                    arrayList23.add(c3128);
                } else {
                    AbstractComponentCallbacksC3123 abstractComponentCallbacksC31234 = c30816.f11701;
                    if (c30816.f11705.isEmpty()) {
                        if (c30816.f11709 == 3) {
                            c30816.f11700 = false;
                        }
                        c30816.f11702.add(new C3077(c3128));
                        z3 = z2;
                    } else if (C3085.m6654(i7)) {
                        String str5 = "Ignoring Animator set on " + abstractComponentCallbacksC31234 + " as this Fragment was involved in a Transition.";
                    }
                }
            }
        }
        int i26 = 0;
        int size16 = arrayList23.size();
        while (i26 < size16) {
            Object obj17 = arrayList23.get(i26);
            i26++;
            C3128 c31282 = (C3128) obj17;
            C3081 c30817 = (C3081) ((ᵎﹶ) c31282).ʾˋ;
            AbstractComponentCallbacksC3123 abstractComponentCallbacksC31235 = c30817.f11701;
            if (isEmpty) {
                if (!z3) {
                    c30817.f11702.add(new C3142(c31282));
                } else if (C3085.m6654(i7)) {
                    String str6 = "Ignoring Animation set on " + abstractComponentCallbacksC31235 + " as Animations cannot run alongside Animators.";
                }
            } else if (C3085.m6654(i7)) {
                String str7 = "Ignoring Animation set on " + abstractComponentCallbacksC31235 + " as Animations cannot run alongside Transitions.";
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m6875(C3081 c3081) {
        if (c3081.f11700) {
            AbstractC2305.m5381(c3081.f11709, c3081.f11701.m6810(), this.f11975);
            c3081.f11700 = false;
        }
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void m6876(List list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            C3081 c3081 = (C3081) list.get(i);
            C3120 c3120 = c3081.f11710;
            if (!c3081.f11707) {
                c3081.f11707 = true;
                int i2 = c3081.f11708;
                if (i2 == 2) {
                    AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = c3120.f11861;
                    View findFocus = abstractComponentCallbacksC3123.f11908.findFocus();
                    if (findFocus != null) {
                        abstractComponentCallbacksC3123.m6787().f11867 = findFocus;
                        if (C3085.m6654(2)) {
                            String str = "requestFocus: Saved focused view " + findFocus + " for Fragment " + abstractComponentCallbacksC3123;
                        }
                    }
                    View m6810 = c3081.f11701.m6810();
                    if (m6810.getParent() == null) {
                        if (C3085.m6654(2)) {
                            String str2 = "Adding fragment " + abstractComponentCallbacksC3123 + " view " + m6810 + " to container in onStart";
                        }
                        c3120.m6774();
                        m6810.setAlpha(0.0f);
                    }
                    if (m6810.getAlpha() == 0.0f && m6810.getVisibility() == 0) {
                        if (C3085.m6654(2)) {
                            String str3 = "Making view " + m6810 + " INVISIBLE in onStart";
                        }
                        m6810.setVisibility(4);
                    }
                    C3121 c3121 = abstractComponentCallbacksC3123.f11938;
                    m6810.setAlpha(c3121 == null ? 1.0f : c3121.f11872);
                    if (C3085.m6654(2)) {
                        StringBuilder sb = new StringBuilder("Setting view alpha to ");
                        C3121 c31212 = abstractComponentCallbacksC3123.f11938;
                        sb.append(c31212 != null ? c31212.f11872 : 1.0f);
                        sb.append(" in onStart");
                        sb.toString();
                    }
                } else if (i2 == 3) {
                    AbstractComponentCallbacksC3123 abstractComponentCallbacksC31232 = c3120.f11861;
                    View m68102 = abstractComponentCallbacksC31232.m6810();
                    if (C3085.m6654(2)) {
                        String str4 = "Clearing focus " + m68102.findFocus() + " on view " + m68102 + " for Fragment " + abstractComponentCallbacksC31232;
                    }
                    m68102.clearFocus();
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AbstractC5099.m10033(((C3081) it.next()).f11705, arrayList);
        }
        List m10020 = AbstractC5099.m10020(AbstractC5099.m10031(arrayList));
        int size2 = m10020.size();
        for (int i3 = 0; i3 < size2; i3++) {
            AbstractC3111 abstractC3111 = (AbstractC3111) m10020.get(i3);
            if (!abstractC3111.f11845) {
                abstractC3111.mo6639(this.f11975);
            }
            abstractC3111.f11845 = true;
        }
    }
}
