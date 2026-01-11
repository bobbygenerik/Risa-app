package p137;

import android.view.View;
import p353.InterfaceC4323;
import p353.MenuC4312;

/* renamed from: ˉˆ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC2326 implements Runnable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C2349 f9062;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C2308 f9063;

    public RunnableC2326(C2308 c2308, C2349 c2349) {
        this.f9063 = c2308;
        this.f9062 = c2349;
    }

    @Override // java.lang.Runnable
    public final void run() {
        InterfaceC4323 interfaceC4323;
        C2308 c2308 = this.f9063;
        MenuC4312 menuC4312 = c2308.f9003;
        if (menuC4312 != null && (interfaceC4323 = menuC4312.f15961) != null) {
            interfaceC4323.mo5222(menuC4312);
        }
        View view = (View) c2308.f9009;
        if (view != null && view.getWindowToken() != null) {
            C2349 c2349 = this.f9062;
            if (!c2349.m8749()) {
                if (c2349.f16017 != null) {
                    c2349.m8748(0, 0, false, false);
                }
            }
            c2308.f9002 = c2349;
        }
        c2308.f9024 = null;
    }
}
