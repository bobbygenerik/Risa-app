package p229;

import android.app.Dialog;
import android.content.DialogInterface;

/* renamed from: ˑʼ.יـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class DialogInterfaceOnDismissListenerC3108 implements DialogInterface.OnDismissListener {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ DialogInterfaceOnCancelListenerC3073 f11840;

    public DialogInterfaceOnDismissListenerC3108(DialogInterfaceOnCancelListenerC3073 dialogInterfaceOnCancelListenerC3073) {
        this.f11840 = dialogInterfaceOnCancelListenerC3073;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        DialogInterfaceOnCancelListenerC3073 dialogInterfaceOnCancelListenerC3073 = this.f11840;
        Dialog dialog = dialogInterfaceOnCancelListenerC3073.f11678;
        if (dialog != null) {
            dialogInterfaceOnCancelListenerC3073.onDismiss(dialog);
        }
    }
}
