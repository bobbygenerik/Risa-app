package p229;

import android.transition.Transition;
import ʽⁱ.ᵎﹶ;

/* renamed from: ˑʼ.ʼᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3078 extends ᵎﹶ {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final boolean f11695;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final Object f11696;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Object f11697;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3078(C3081 c3081, boolean z, boolean z2) {
        super(c3081);
        Object obj;
        Object obj2;
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = c3081.f11701;
        int i = c3081.f11709;
        Object obj3 = AbstractComponentCallbacksC3123.f11886;
        Object obj4 = null;
        if (i == 2) {
            if (z) {
                C3121 c3121 = abstractComponentCallbacksC3123.f11938;
                if (c3121 != null) {
                    obj2 = c3121.f11881;
                    if (obj2 == obj3) {
                        if (c3121 != null) {
                            obj = c3121.f11874;
                            obj2 = obj;
                        }
                    }
                }
                obj2 = null;
            } else {
                C3121 c31212 = abstractComponentCallbacksC3123.f11938;
                if (c31212 != null) {
                    obj = c31212.f11866;
                    obj2 = obj;
                }
                obj2 = null;
            }
        } else if (z) {
            C3121 c31213 = abstractComponentCallbacksC3123.f11938;
            if (c31213 != null) {
                obj2 = c31213.f11869;
                if (obj2 == obj3) {
                    obj = c31213 == null ? null : c31213.f11866;
                    obj2 = obj;
                }
            }
            obj2 = null;
        } else {
            C3121 c31214 = abstractComponentCallbacksC3123.f11938;
            if (c31214 != null) {
                obj = c31214.f11874;
                obj2 = obj;
            }
            obj2 = null;
        }
        this.f11697 = obj2;
        if (i == 2) {
            if (z) {
                C3121 c31215 = abstractComponentCallbacksC3123.f11938;
            } else {
                C3121 c31216 = abstractComponentCallbacksC3123.f11938;
            }
        }
        this.f11695 = true;
        if (z2) {
            if (z) {
                C3121 c31217 = abstractComponentCallbacksC3123.f11938;
                if (c31217 != null && c31217 != null) {
                    obj4 = c31217.f11871;
                }
            } else {
                C3121 c31218 = abstractComponentCallbacksC3123.f11938;
                if (c31218 != null) {
                    obj4 = c31218.f11871;
                }
            }
        }
        this.f11696 = obj4;
    }

    /* renamed from: ʽˑ, reason: contains not printable characters */
    public final AbstractC3104 m6641(Object obj) {
        if (obj == null) {
            return null;
        }
        C3139 c3139 = AbstractC3100.f11812;
        if (obj instanceof Transition) {
            return c3139;
        }
        AbstractC3104 abstractC3104 = AbstractC3100.f11811;
        if (abstractC3104 != null && abstractC3104.mo6742(obj)) {
            return abstractC3104;
        }
        throw new IllegalArgumentException("Transition " + obj + " for fragment " + ((C3081) ((ᵎﹶ) this).ʾˋ).f11701 + " is not a valid framework Transition or AndroidX Transition");
    }

    /* renamed from: ﹶˎ, reason: contains not printable characters */
    public final AbstractC3104 m6642() {
        Object obj = this.f11697;
        AbstractC3104 m6641 = m6641(obj);
        Object obj2 = this.f11696;
        AbstractC3104 m66412 = m6641(obj2);
        if (m6641 == null || m66412 == null || m6641 == m66412) {
            return m6641 == null ? m66412 : m6641;
        }
        throw new IllegalArgumentException(("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + ((C3081) ((ᵎﹶ) this).ʾˋ).f11701 + " returned Transition " + obj + " which uses a different Transition  type than its shared element transition " + obj2).toString());
    }
}
