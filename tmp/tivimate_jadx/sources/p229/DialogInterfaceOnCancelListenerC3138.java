package p229;

import android.app.Dialog;
import android.content.DialogInterface;

/* renamed from: ˑʼ.ﹳᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class DialogInterfaceOnCancelListenerC3138 implements DialogInterface.OnCancelListener {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ DialogInterfaceOnCancelListenerC3073 f12015;

    public DialogInterfaceOnCancelListenerC3138(DialogInterfaceOnCancelListenerC3073 dialogInterfaceOnCancelListenerC3073) {
        this.f12015 = dialogInterfaceOnCancelListenerC3073;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        DialogInterfaceOnCancelListenerC3073 dialogInterfaceOnCancelListenerC3073 = this.f12015;
        Dialog dialog = dialogInterfaceOnCancelListenerC3073.f11678;
        if (dialog != null) {
            dialogInterfaceOnCancelListenerC3073.onCancel(dialog);
        }
    }
}
