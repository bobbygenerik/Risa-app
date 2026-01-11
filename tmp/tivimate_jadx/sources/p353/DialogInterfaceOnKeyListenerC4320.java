package p353;

import android.content.DialogInterface;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import p363.DialogInterfaceC4428;

/* renamed from: ᵔʾ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class DialogInterfaceOnKeyListenerC4320 implements DialogInterface.OnKeyListener, DialogInterface.OnClickListener, DialogInterface.OnDismissListener, InterfaceC4316 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public C4330 f16018;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public SubMenuC4310 f16019;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public DialogInterfaceC4428 f16020;

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        SubMenuC4310 subMenuC4310 = this.f16019;
        C4330 c4330 = this.f16018;
        if (c4330.f16099 == null) {
            c4330.f16099 = new C4317(c4330);
        }
        subMenuC4310.m8730(c4330.f16099.getItem(i), null, 0);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        this.f16018.mo5353(this.f16019, true);
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public final boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        Window window;
        View decorView;
        KeyEvent.DispatcherState keyDispatcherState;
        View decorView2;
        KeyEvent.DispatcherState keyDispatcherState2;
        SubMenuC4310 subMenuC4310 = this.f16019;
        if (i == 82 || i == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                Window window2 = this.f16020.getWindow();
                if (window2 != null && (decorView2 = window2.getDecorView()) != null && (keyDispatcherState2 = decorView2.getKeyDispatcherState()) != null) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                    return true;
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled() && (window = this.f16020.getWindow()) != null && (decorView = window.getDecorView()) != null && (keyDispatcherState = decorView.getKeyDispatcherState()) != null && keyDispatcherState.isTracking(keyEvent)) {
                subMenuC4310.m8723(true);
                dialogInterface.dismiss();
                return true;
            }
        }
        return subMenuC4310.performShortcut(i, keyEvent, 0);
    }

    @Override // p353.InterfaceC4316
    /* renamed from: ʽ */
    public final void mo8744(MenuC4312 menuC4312, boolean z) {
        DialogInterfaceC4428 dialogInterfaceC4428;
        if ((z || menuC4312 == this.f16019) && (dialogInterfaceC4428 = this.f16020) != null) {
            dialogInterfaceC4428.dismiss();
        }
    }

    @Override // p353.InterfaceC4316
    /* renamed from: ˉˆ */
    public final boolean mo8745(MenuC4312 menuC4312) {
        return false;
    }
}
