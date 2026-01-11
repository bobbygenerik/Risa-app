package p319;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.DialogInterface;
import android.os.Bundle;
import p296.AbstractC3659;

/* renamed from: ᴵˈ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class DialogFragmentC3924 extends DialogFragment {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public AlertDialog f15189;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public Dialog f15190;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public DialogInterface.OnCancelListener f15191;

    @Override // android.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.f15191;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        Dialog dialog = this.f15190;
        if (dialog != null) {
            return dialog;
        }
        setShowsDialog(false);
        if (this.f15189 == null) {
            Activity activity = getActivity();
            AbstractC3659.m7687(activity);
            this.f15189 = new AlertDialog.Builder(activity).create();
        }
        return this.f15189;
    }
}
