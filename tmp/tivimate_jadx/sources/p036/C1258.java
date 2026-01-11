package p036;

import android.window.OnBackInvokedCallback;
import p329.InterfaceC4104;
import p363.LayoutInflaterFactory2C4430;

/* renamed from: ʽ.ˉˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C1258 implements OnBackInvokedCallback {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f4881;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f4882;

    public /* synthetic */ C1258(int i, Object obj) {
        this.f4882 = i;
        this.f4881 = obj;
    }

    public final void onBackInvoked() {
        switch (this.f4882) {
            case 0:
                ((InterfaceC4104) this.f4881).mo716();
                return;
            case 1:
                ((Runnable) this.f4881).run();
                return;
            default:
                ((LayoutInflaterFactory2C4430) this.f4881).m8957();
                return;
        }
    }
}
