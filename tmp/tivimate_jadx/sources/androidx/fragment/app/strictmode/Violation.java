package androidx.fragment.app.strictmode;

import p229.AbstractComponentCallbacksC3123;

/* loaded from: classes.dex */
public abstract class Violation extends RuntimeException {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final AbstractComponentCallbacksC3123 f526;

    public Violation(AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123, String str) {
        super(str);
        this.f526 = abstractComponentCallbacksC3123;
    }
}
