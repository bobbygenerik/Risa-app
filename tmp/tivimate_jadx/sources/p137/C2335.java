package p137;

import android.app.Activity;
import android.content.Context;
import android.widget.PopupWindow;
import androidx.leanback.widget.ʻٴ;
import p353.C4318;
import ʼⁱ.ˊﹳ;
import ʼⁱ.ٴʿ;
import ʿˋ.ˋᵔ;

/* renamed from: ˉˆ.ⁱᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2335 implements PopupWindow.OnDismissListener {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f9075;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f9076;

    public /* synthetic */ C2335(int i, Object obj) {
        this.f9075 = i;
        this.f9076 = obj;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        switch (this.f9075) {
            case 0:
                ٴʿ r0 = (ٴʿ) ((ʻٴ) this.f9076).ˊʻ;
                if (r0 != null) {
                    ˊﹳ r02 = r0.ᴵˊ;
                    r02.ʻᴵ = null;
                    Context mo4203 = r02.mo4203();
                    Activity activity = AbstractC2305.m5366(mo4203) ? (Activity) mo4203 : null;
                    if (activity != null) {
                        ˋᵔ.ʼˈ(activity, true);
                        return;
                    }
                    return;
                }
                return;
            default:
                ((C4318) this.f9076).mo5436();
                return;
        }
    }
}
