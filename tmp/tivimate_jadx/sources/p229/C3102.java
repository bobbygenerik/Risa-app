package p229;

import android.view.View;
import androidx.lifecycle.InterfaceC0162;
import androidx.lifecycle.InterfaceC0187;

/* renamed from: ˑʼ.ˏי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3102 implements InterfaceC0187 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ DialogInterfaceOnCancelListenerC3073 f11818;

    public C3102(DialogInterfaceOnCancelListenerC3073 dialogInterfaceOnCancelListenerC3073) {
        this.f11818 = dialogInterfaceOnCancelListenerC3073;
    }

    @Override // androidx.lifecycle.InterfaceC0187
    /* renamed from: ﹳٴ */
    public final void mo701(Object obj) {
        if (((InterfaceC0162) obj) != null) {
            DialogInterfaceOnCancelListenerC3073 dialogInterfaceOnCancelListenerC3073 = this.f11818;
            if (dialogInterfaceOnCancelListenerC3073.f11666) {
                View m6810 = dialogInterfaceOnCancelListenerC3073.m6810();
                if (m6810.getParent() != null) {
                    throw new IllegalStateException("DialogFragment can not be attached to a container view");
                }
                if (dialogInterfaceOnCancelListenerC3073.f11678 != null) {
                    if (C3085.m6654(3)) {
                        String str = "DialogFragment " + this + " setting the content view on " + dialogInterfaceOnCancelListenerC3073.f11678;
                    }
                    dialogInterfaceOnCancelListenerC3073.f11678.setContentView(m6810);
                }
            }
        }
    }
}
