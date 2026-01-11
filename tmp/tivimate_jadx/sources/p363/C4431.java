package p363;

import android.content.DialogInterface;
import android.view.View;
import android.widget.AdapterView;

/* renamed from: ᵔᵢ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4431 implements AdapterView.OnItemClickListener {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ C4435 f16538;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C4411 f16539;

    public C4431(C4411 c4411, C4435 c4435) {
        this.f16539 = c4411;
        this.f16538 = c4435;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        C4411 c4411 = this.f16539;
        DialogInterface.OnClickListener onClickListener = c4411.f16416;
        C4435 c4435 = this.f16538;
        onClickListener.onClick(c4435.f16572, i);
        if (c4411.f16421) {
            return;
        }
        c4435.f16572.dismiss();
    }
}
