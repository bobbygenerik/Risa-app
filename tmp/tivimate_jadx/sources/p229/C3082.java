package p229;

import android.app.Dialog;
import android.view.View;
import ʼ.ᵎﹶ;

/* renamed from: ˑʼ.ʽﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3082 extends ᵎﹶ {

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final /* synthetic */ DialogInterfaceOnCancelListenerC3073 f11712;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final /* synthetic */ C3134 f11713;

    public C3082(DialogInterfaceOnCancelListenerC3073 dialogInterfaceOnCancelListenerC3073, C3134 c3134) {
        this.f11712 = dialogInterfaceOnCancelListenerC3073;
        this.f11713 = c3134;
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final View m6647(int i) {
        C3134 c3134 = this.f11713;
        if (c3134.m6878()) {
            return c3134.m6877(i);
        }
        Dialog dialog = this.f11712.f11678;
        if (dialog != null) {
            return dialog.findViewById(i);
        }
        return null;
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public final boolean m6648() {
        return this.f11713.m6878() || this.f11712.f11668;
    }
}
