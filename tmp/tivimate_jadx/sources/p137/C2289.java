package p137;

import android.widget.EditText;
import androidx.appcompat.widget.SwitchCompat;
import java.lang.ref.WeakReference;
import p275.AbstractC3519;
import p439.C5189;

/* renamed from: ˉˆ.ˑˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2289 extends AbstractC3519 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final WeakReference f8958;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f8959 = 1;

    public C2289(EditText editText) {
        this.f8958 = new WeakReference(editText);
    }

    public C2289(SwitchCompat switchCompat) {
        this.f8958 = new WeakReference(switchCompat);
    }

    @Override // p275.AbstractC3519
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void mo5338() {
        switch (this.f8959) {
            case 0:
                SwitchCompat switchCompat = (SwitchCompat) this.f8958.get();
                if (switchCompat != null) {
                    switchCompat.m59();
                    return;
                }
                return;
            default:
                C5189.m10165((EditText) this.f8958.get(), 1);
                return;
        }
    }

    @Override // p275.AbstractC3519
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public void mo5339() {
        switch (this.f8959) {
            case 0:
                SwitchCompat switchCompat = (SwitchCompat) this.f8958.get();
                if (switchCompat != null) {
                    switchCompat.m59();
                    return;
                }
                return;
            default:
                return;
        }
    }
}
