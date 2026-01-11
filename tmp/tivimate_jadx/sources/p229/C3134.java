package p229;

import android.view.View;
import ʼ.ᵎﹶ;

/* renamed from: ˑʼ.ᵢˏ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3134 extends ᵎﹶ {

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final /* synthetic */ AbstractComponentCallbacksC3123 f11977;

    public C3134(AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123) {
        this.f11977 = abstractComponentCallbacksC3123;
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final View m6877(int i) {
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = this.f11977;
        View view = abstractComponentCallbacksC3123.f11908;
        if (view != null) {
            return view.findViewById(i);
        }
        throw new IllegalStateException("Fragment " + abstractComponentCallbacksC3123 + " does not have a view");
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public final boolean m6878() {
        return this.f11977.f11908 != null;
    }
}
