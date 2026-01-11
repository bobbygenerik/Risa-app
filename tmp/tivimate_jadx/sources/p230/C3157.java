package p230;

import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import androidx.lifecycle.RunnableC0197;
import androidx.media3.decoder.ffmpeg.C0212;
import ar.tvplayer.tv.R;
import com.google.android.gms.internal.play_billing.ʽﹳ;
import java.util.ArrayList;
import p003.RunnableC0786;
import p131.C2196;
import p229.AbstractC3104;
import p229.AbstractComponentCallbacksC3123;
import ʾʼ.ـˏ;

/* renamed from: ˑʿ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C3157 extends AbstractC3104 {
    @Override // p229.AbstractC3104
    /* renamed from: ʻٴ */
    public final void mo6728(AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123, Object obj, C0212 c0212, Runnable runnable) {
        mo6733(obj, c0212, null, runnable);
    }

    @Override // p229.AbstractC3104
    /* renamed from: ʼʼ */
    public final Object mo6729(Object obj) {
        if (obj == null) {
            return null;
        }
        C3170 c3170 = new C3170();
        c3170.m6983((AbstractC3143) obj);
        return c3170;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v5, types: [ˑʿ.ʼʼ, android.view.ViewTreeObserver$OnPreDrawListener, java.lang.Object, android.view.View$OnAttachStateChangeListener] */
    @Override // p229.AbstractC3104
    /* renamed from: ʼˎ */
    public final Object mo6730(ViewGroup viewGroup, Object obj) {
        AbstractC3143 abstractC3143 = (AbstractC3143) obj;
        ArrayList arrayList = AbstractC3180.f12135;
        if (arrayList.contains(viewGroup) || !viewGroup.isLaidOut() || Build.VERSION.SDK_INT < 34) {
            return null;
        }
        if (!abstractC3143.mo6930()) {
            throw new IllegalArgumentException("The Transition must support seeking.");
        }
        arrayList.add(viewGroup);
        AbstractC3143 clone = abstractC3143.clone();
        C3170 c3170 = new C3170();
        c3170.m6983(clone);
        AbstractC3180.m6994(viewGroup, c3170);
        viewGroup.setTag(R.id.6t1, null);
        ?? obj2 = new Object();
        obj2.f12056 = c3170;
        obj2.f12057 = viewGroup;
        viewGroup.addOnAttachStateChangeListener(obj2);
        viewGroup.getViewTreeObserver().addOnPreDrawListener(obj2);
        viewGroup.invalidate();
        C3183 c3183 = new C3183(c3170);
        c3170.f12033 = c3183;
        c3170.m6932(c3183);
        return c3170.f12033;
    }

    @Override // p229.AbstractC3104
    /* renamed from: ʼᐧ */
    public final void mo6731(Object obj, View view, ArrayList arrayList) {
        ((AbstractC3143) obj).m6932(new C3169(view, arrayList));
    }

    @Override // p229.AbstractC3104
    /* renamed from: ʽ */
    public final void mo6732(Object obj) {
        C3183 c3183 = (C3183) obj;
        c3183.m6997();
        c3183.f12139.m5861((float) (c3183.f12141.f12032 + 1));
    }

    @Override // p229.AbstractC3104
    /* renamed from: ʽﹳ */
    public final void mo6733(Object obj, C0212 c0212, RunnableC0197 runnableC0197, Runnable runnable) {
        AbstractC3143 abstractC3143 = (AbstractC3143) obj;
        C2196 c2196 = new C2196(runnableC0197, abstractC3143, runnable, 2);
        synchronized (c0212) {
            while (c0212.f1185) {
                try {
                    try {
                        c0212.wait();
                    } catch (InterruptedException unused) {
                    }
                } finally {
                }
            }
            if (((C2196) c0212.f1184) != c2196) {
                c0212.f1184 = c2196;
                if (c0212.f1186) {
                    Runnable runnable2 = (Runnable) c2196.f8656;
                    AbstractC3143 abstractC31432 = (AbstractC3143) c2196.f8653;
                    Runnable runnable3 = (Runnable) c2196.f8655;
                    if (runnable2 == null) {
                        abstractC31432.cancel();
                        runnable3.run();
                    } else {
                        runnable2.run();
                    }
                }
            }
        }
        abstractC3143.m6932(new ـˏ(5, runnable));
    }

    @Override // p229.AbstractC3104
    /* renamed from: ʾᵎ */
    public final void mo6734(Object obj, ArrayList arrayList, ArrayList arrayList2) {
        C3170 c3170 = (C3170) obj;
        if (c3170 != null) {
            ArrayList arrayList3 = c3170.f12040;
            arrayList3.clear();
            arrayList3.addAll(arrayList2);
            m6953(c3170, arrayList, arrayList2);
        }
    }

    @Override // p229.AbstractC3104
    /* renamed from: ˈ */
    public final void mo6735(Object obj, RunnableC0786 runnableC0786) {
        C3183 c3183 = (C3183) obj;
        c3183.f12144 = runnableC0786;
        c3183.m6997();
        c3183.f12139.m5861(0.0f);
    }

    @Override // p229.AbstractC3104
    /* renamed from: ˉʿ */
    public final boolean mo6736(Object obj) {
        boolean mo6930 = ((AbstractC3143) obj).mo6930();
        if (!mo6930) {
            String str = "Predictive back not available for AndroidX Transition " + obj + ". Please enable seeking support for the designated transition by overriding isSeekingSupported().";
        }
        return mo6930;
    }

    @Override // p229.AbstractC3104
    /* renamed from: ˉˆ */
    public final Object mo6737(Object obj, Object obj2) {
        C3170 c3170 = new C3170();
        if (obj != null) {
            c3170.m6983((AbstractC3143) obj);
        }
        c3170.m6983((AbstractC3143) obj2);
        return c3170;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [ʽٴ.ˈ, java.lang.Object] */
    @Override // p229.AbstractC3104
    /* renamed from: ˏי */
    public final void mo6738(Object obj, Rect rect) {
        ((AbstractC3143) obj).mo6927(new Object());
    }

    @Override // p229.AbstractC3104
    /* renamed from: ˑﹳ */
    public final void mo6739(ViewGroup viewGroup, Object obj) {
        AbstractC3180.m6996(viewGroup, (AbstractC3143) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [ʽٴ.ˈ, java.lang.Object] */
    @Override // p229.AbstractC3104
    /* renamed from: יـ */
    public final void mo6740(View view, Object obj) {
        if (view != null) {
            AbstractC3104.m6725(view, new Rect());
            ((AbstractC3143) obj).mo6927(new Object());
        }
    }

    @Override // p229.AbstractC3104
    /* renamed from: ـˆ */
    public final void mo6741(Object obj, View view, ArrayList arrayList) {
        C3170 c3170 = (C3170) obj;
        ArrayList arrayList2 = c3170.f12040;
        arrayList2.clear();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            AbstractC3104.m6727(arrayList2, (View) arrayList.get(i));
        }
        arrayList2.add(view);
        arrayList.add(view);
        mo6746(c3170, arrayList);
    }

    @Override // p229.AbstractC3104
    /* renamed from: ᵎﹶ */
    public final boolean mo6742(Object obj) {
        return obj instanceof AbstractC3143;
    }

    @Override // p229.AbstractC3104
    /* renamed from: ᵔʾ */
    public final Object mo6743(Object obj, Object obj2, Object obj3) {
        AbstractC3143 abstractC3143 = (AbstractC3143) obj;
        AbstractC3143 abstractC31432 = (AbstractC3143) obj2;
        AbstractC3143 abstractC31433 = (AbstractC3143) obj3;
        if (abstractC3143 != null && abstractC31432 != null) {
            C3170 c3170 = new C3170();
            c3170.m6983(abstractC3143);
            c3170.m6983(abstractC31432);
            c3170.m6982(1);
            abstractC3143 = c3170;
        } else if (abstractC3143 == null) {
            abstractC3143 = abstractC31432 != null ? abstractC31432 : null;
        }
        if (abstractC31433 == null) {
            return abstractC3143;
        }
        C3170 c31702 = new C3170();
        if (abstractC3143 != null) {
            c31702.m6983(abstractC3143);
        }
        c31702.m6983(abstractC31433);
        return c31702;
    }

    @Override // p229.AbstractC3104
    /* renamed from: ᵔᵢ */
    public final Object mo6744(Object obj) {
        if (obj != null) {
            return ((AbstractC3143) obj).clone();
        }
        return null;
    }

    @Override // p229.AbstractC3104
    /* renamed from: ᵔﹳ */
    public final void mo6745(Object obj, Object obj2, ArrayList arrayList, Object obj3, ArrayList arrayList2) {
        ((AbstractC3143) obj).m6932(new C3184(this, obj2, arrayList, obj3, arrayList2));
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public final void m6953(Object obj, ArrayList arrayList, ArrayList arrayList2) {
        AbstractC3143 abstractC3143 = (AbstractC3143) obj;
        int i = 0;
        if (abstractC3143 instanceof C3170) {
            C3170 c3170 = (C3170) abstractC3143;
            int size = c3170.f12108.size();
            while (i < size) {
                m6953(c3170.m6985(i), arrayList, arrayList2);
                i++;
            }
            return;
        }
        if (AbstractC3104.m6726(abstractC3143.f12049)) {
            ArrayList arrayList3 = abstractC3143.f12040;
            if (arrayList3.size() == arrayList.size() && arrayList3.containsAll(arrayList)) {
                int size2 = arrayList2 == null ? 0 : arrayList2.size();
                while (i < size2) {
                    abstractC3143.mo6931((View) arrayList2.get(i));
                    i++;
                }
                for (int size3 = arrayList.size() - 1; size3 >= 0; size3--) {
                    abstractC3143.mo6924((View) arrayList.get(size3));
                }
            }
        }
    }

    @Override // p229.AbstractC3104
    /* renamed from: ⁱˊ */
    public final void mo6746(Object obj, ArrayList arrayList) {
        AbstractC3143 abstractC3143 = (AbstractC3143) obj;
        if (abstractC3143 == null) {
            return;
        }
        int i = 0;
        if (abstractC3143 instanceof C3170) {
            C3170 c3170 = (C3170) abstractC3143;
            int size = c3170.f12108.size();
            while (i < size) {
                mo6746(c3170.m6985(i), arrayList);
                i++;
            }
            return;
        }
        if (AbstractC3104.m6726(abstractC3143.f12049) && AbstractC3104.m6726(abstractC3143.f12040)) {
            int size2 = arrayList.size();
            while (i < size2) {
                abstractC3143.mo6931((View) arrayList.get(i));
                i++;
            }
        }
    }

    @Override // p229.AbstractC3104
    /* renamed from: ﹳٴ */
    public final void mo6747(View view, Object obj) {
        ((AbstractC3143) obj).mo6931(view);
    }

    @Override // p229.AbstractC3104
    /* renamed from: ﹳᐧ */
    public final void mo6748(Object obj, float f) {
        C3183 c3183 = (C3183) obj;
        boolean z = c3183.f12142;
        if (z) {
            C3170 c3170 = c3183.f12141;
            long j = c3170.f12032;
            long j2 = f * ((float) j);
            if (j2 == 0) {
                j2 = 1;
            }
            if (j2 == j) {
                j2 = j - 1;
            }
            if (c3183.f12139 != null) {
                throw new IllegalStateException("setCurrentPlayTimeMillis() called after animation has been started");
            }
            long j3 = c3183.f12143;
            if (j2 == j3 || !z) {
                return;
            }
            if (!c3183.f12138) {
                if (j2 == 0 && j3 > 0) {
                    j2 = -1;
                } else if (j2 == j && j3 < j) {
                    j2 = j + 1;
                }
                if (j2 != j3) {
                    c3170.mo6926(j2, j3);
                    c3183.f12143 = j2;
                }
            }
            ʽﹳ r13 = c3183.f12140;
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            int i = (r13.ᴵˊ + 1) % 20;
            r13.ᴵˊ = i;
            ((long[]) r13.ʽʽ)[i] = currentAnimationTimeMillis;
            ((float[]) r13.ˈٴ)[i] = (float) j2;
        }
    }

    @Override // p229.AbstractC3104
    /* renamed from: ﾞʻ */
    public final boolean mo6749() {
        return true;
    }
}
