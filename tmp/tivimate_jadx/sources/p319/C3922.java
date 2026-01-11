package p319;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import p229.DialogInterfaceOnCancelListenerC3073;
import p296.AbstractC3659;

/* renamed from: ᴵˈ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C3922 extends DialogInterfaceOnCancelListenerC3073 {

    /* renamed from: ˈـ, reason: contains not printable characters */
    public AlertDialog f15185;

    /* renamed from: יˉ, reason: contains not printable characters */
    public Dialog f15186;

    /* renamed from: ﾞˋ, reason: contains not printable characters */
    public DialogInterface.OnCancelListener f15187;

    @Override // p229.DialogInterfaceOnCancelListenerC3073, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.f15187;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    @Override // p229.DialogInterfaceOnCancelListenerC3073
    /* renamed from: ˎʾ */
    public final Dialog mo2399(Bundle bundle) {
        Dialog dialog = this.f15186;
        if (dialog != null) {
            return dialog;
        }
        this.f11666 = false;
        if (this.f15185 == null) {
            Context mo4203 = mo4203();
            AbstractC3659.m7687(mo4203);
            this.f15185 = new AlertDialog.Builder(mo4203).create();
        }
        return this.f15185;
    }
}
