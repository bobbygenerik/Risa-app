package p036;

import android.window.BackEvent;
import android.window.OnBackAnimationCallback;
import p329.InterfaceC4104;
import p329.InterfaceC4106;

/* renamed from: ʽ.ᵔﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1266 implements OnBackAnimationCallback {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC4104 f4916;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC4104 f4917;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC4106 f4918;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC4106 f4919;

    public C1266(InterfaceC4106 interfaceC4106, InterfaceC4106 interfaceC41062, InterfaceC4104 interfaceC4104, InterfaceC4104 interfaceC41042) {
        this.f4919 = interfaceC4106;
        this.f4918 = interfaceC41062;
        this.f4916 = interfaceC4104;
        this.f4917 = interfaceC41042;
    }

    public final void onBackCancelled() {
        this.f4917.mo716();
    }

    public final void onBackInvoked() {
        this.f4916.mo716();
    }

    public final void onBackProgressed(BackEvent backEvent) {
        this.f4918.mo3844(new C1267(backEvent));
    }

    public final void onBackStarted(BackEvent backEvent) {
        this.f4919.mo3844(new C1267(backEvent));
    }
}
