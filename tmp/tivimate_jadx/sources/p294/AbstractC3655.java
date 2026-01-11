package p294;

import androidx.fragment.app.strictmode.Violation;
import p229.AbstractComponentCallbacksC3123;
import p229.C3085;

/* renamed from: ٴﹳ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3655 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C3656 f14317 = C3656.f14318;

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final void m7673(AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123, String str) {
        m7674(new Violation(abstractComponentCallbacksC3123, "Attempting to reuse fragment " + abstractComponentCallbacksC3123 + " with previous ID " + str));
        m7675(abstractComponentCallbacksC3123).getClass();
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static void m7674(Violation violation) {
        if (C3085.m6654(3)) {
            "StrictMode violation in ".concat(violation.f526.getClass().getName());
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C3656 m7675(AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123) {
        while (abstractComponentCallbacksC3123 != null) {
            if (abstractComponentCallbacksC3123.m6786()) {
                abstractComponentCallbacksC3123.m6805();
            }
            abstractComponentCallbacksC3123 = abstractComponentCallbacksC3123.f11928;
        }
        return f14317;
    }
}
