package p137;

import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.widget.ListAdapter;
import androidx.appcompat.app.AlertController$RecycleListView;
import p363.C4411;
import p363.C4426;
import p363.DialogInterfaceC4428;

/* renamed from: ˉˆ.ٴʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class DialogInterfaceOnClickListenerC2303 implements InterfaceC2262, DialogInterface.OnClickListener {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public CharSequence f8990;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public DialogInterfaceC4428 f8991;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ C2290 f8992;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public C2319 f8993;

    public DialogInterfaceOnClickListenerC2303(C2290 c2290) {
        this.f8992 = c2290;
    }

    @Override // p137.InterfaceC2262
    public final void dismiss() {
        DialogInterfaceC4428 dialogInterfaceC4428 = this.f8991;
        if (dialogInterfaceC4428 != null) {
            dialogInterfaceC4428.dismiss();
            this.f8991 = null;
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        C2290 c2290 = this.f8992;
        c2290.setSelection(i);
        if (c2290.getOnItemClickListener() != null) {
            c2290.performItemClick(null, i, this.f8993.getItemId(i));
        }
        dismiss();
    }

    @Override // p137.InterfaceC2262
    /* renamed from: ʼˎ */
    public final void mo5292(Drawable drawable) {
    }

    @Override // p137.InterfaceC2262
    /* renamed from: ʼᐧ */
    public final void mo5270(ListAdapter listAdapter) {
        this.f8993 = (C2319) listAdapter;
    }

    @Override // p137.InterfaceC2262
    /* renamed from: ʽ */
    public final Drawable mo5293() {
        return null;
    }

    @Override // p137.InterfaceC2262
    /* renamed from: ˆʾ */
    public final void mo5294(int i) {
    }

    @Override // p137.InterfaceC2262
    /* renamed from: ˉʿ */
    public final void mo5287(int i, int i2) {
        if (this.f8993 == null) {
            return;
        }
        C2290 c2290 = this.f8992;
        C4426 c4426 = new C4426(c2290.getPopupContext());
        CharSequence charSequence = this.f8990;
        if (charSequence != null) {
            c4426.setTitle(charSequence);
        }
        C2319 c2319 = this.f8993;
        int selectedItemPosition = c2290.getSelectedItemPosition();
        C4411 c4411 = c4426.f16470;
        c4411.f16409 = c2319;
        c4411.f16416 = this;
        c4411.f16413 = selectedItemPosition;
        c4411.f16421 = true;
        DialogInterfaceC4428 create = c4426.create();
        this.f8991 = create;
        AlertController$RecycleListView alertController$RecycleListView = create.f16481.f16576;
        alertController$RecycleListView.setTextDirection(i);
        alertController$RecycleListView.setTextAlignment(i2);
        this.f8991.show();
    }

    @Override // p137.InterfaceC2262
    /* renamed from: ˉˆ */
    public final CharSequence mo5288() {
        return this.f8990;
    }

    @Override // p137.InterfaceC2262
    /* renamed from: ٴﹶ */
    public final void mo5290(int i) {
    }

    @Override // p137.InterfaceC2262
    /* renamed from: ᵎﹶ */
    public final void mo5291(CharSequence charSequence) {
        this.f8990 = charSequence;
    }

    @Override // p137.InterfaceC2262
    /* renamed from: ᵔʾ */
    public final int mo5295() {
        return 0;
    }

    @Override // p137.InterfaceC2262
    /* renamed from: ⁱˊ */
    public final int mo5296() {
        return 0;
    }

    @Override // p137.InterfaceC2262
    /* renamed from: ﹳٴ */
    public final boolean mo5297() {
        DialogInterfaceC4428 dialogInterfaceC4428 = this.f8991;
        if (dialogInterfaceC4428 != null) {
            return dialogInterfaceC4428.isShowing();
        }
        return false;
    }

    @Override // p137.InterfaceC2262
    /* renamed from: ﾞʻ */
    public final void mo5298(int i) {
    }
}
