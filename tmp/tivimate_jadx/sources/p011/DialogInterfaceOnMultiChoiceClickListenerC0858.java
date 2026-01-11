package p011;

import android.content.DialogInterface;
import java.util.HashSet;

/* renamed from: ʻᐧ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class DialogInterfaceOnMultiChoiceClickListenerC0858 implements DialogInterface.OnMultiChoiceClickListener {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ C0868 f3669;

    public DialogInterfaceOnMultiChoiceClickListenerC0858(C0868 c0868) {
        this.f3669 = c0868;
    }

    @Override // android.content.DialogInterface.OnMultiChoiceClickListener
    public final void onClick(DialogInterface dialogInterface, int i, boolean z) {
        C0868 c0868 = this.f3669;
        HashSet hashSet = c0868.f3697;
        if (z) {
            c0868.f3700 = hashSet.add(c0868.f3698[i].toString()) | c0868.f3700;
        } else {
            c0868.f3700 = hashSet.remove(c0868.f3698[i].toString()) | c0868.f3700;
        }
    }
}
