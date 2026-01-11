package p011;

import android.content.DialogInterface;

/* renamed from: ʻᐧ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class DialogInterfaceOnClickListenerC0871 implements DialogInterface.OnClickListener {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ C0873 f3717;

    public DialogInterfaceOnClickListenerC0871(C0873 c0873) {
        this.f3717 = c0873;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        C0873 c0873 = this.f3717;
        c0873.f3718 = i;
        c0873.f3652 = -1;
        dialogInterface.dismiss();
    }
}
