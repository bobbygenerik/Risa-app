package p363;

import android.view.Window;
import p137.InterfaceC2263;
import p353.InterfaceC4316;
import p353.MenuC4312;

/* renamed from: ᵔᵢ.ᵔﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4429 implements InterfaceC2263, InterfaceC4316 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ LayoutInflaterFactory2C4430 f16483;

    public /* synthetic */ C4429(LayoutInflaterFactory2C4430 layoutInflaterFactory2C4430) {
        this.f16483 = layoutInflaterFactory2C4430;
    }

    @Override // p353.InterfaceC4316
    /* renamed from: ʽ */
    public void mo8744(MenuC4312 menuC4312, boolean z) {
        C4402 c4402;
        MenuC4312 mo8717 = menuC4312.mo8717();
        int i = 0;
        boolean z2 = mo8717 != menuC4312;
        if (z2) {
            menuC4312 = mo8717;
        }
        LayoutInflaterFactory2C4430 layoutInflaterFactory2C4430 = this.f16483;
        C4402[] c4402Arr = layoutInflaterFactory2C4430.f16510;
        int length = c4402Arr != null ? c4402Arr.length : 0;
        while (true) {
            if (i < length) {
                c4402 = c4402Arr[i];
                if (c4402 != null && c4402.f16378 == menuC4312) {
                    break;
                } else {
                    i++;
                }
            } else {
                c4402 = null;
                break;
            }
        }
        if (c4402 != null) {
            if (!z2) {
                layoutInflaterFactory2C4430.m8970(c4402, z);
            } else {
                layoutInflaterFactory2C4430.m8952(c4402.f16380, c4402, mo8717);
                layoutInflaterFactory2C4430.m8970(c4402, true);
            }
        }
    }

    @Override // p353.InterfaceC4316
    /* renamed from: ˉˆ */
    public boolean mo8745(MenuC4312 menuC4312) {
        Window.Callback callback;
        if (menuC4312 != menuC4312.mo8717()) {
            return true;
        }
        LayoutInflaterFactory2C4430 layoutInflaterFactory2C4430 = this.f16483;
        if (!layoutInflaterFactory2C4430.f16505 || (callback = layoutInflaterFactory2C4430.f16530.getCallback()) == null || layoutInflaterFactory2C4430.f16522) {
            return true;
        }
        callback.onMenuOpened(108, menuC4312);
        return true;
    }
}
