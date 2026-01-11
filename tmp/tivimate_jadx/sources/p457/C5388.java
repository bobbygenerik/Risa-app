package p457;

import android.hardware.display.DisplayManager;

/* renamed from: ﾞˏ.ʾᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5388 implements DisplayManager.DisplayListener {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final DisplayManager f20518;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C5405 f20519;

    public C5388(C5405 c5405, DisplayManager displayManager) {
        this.f20519 = c5405;
        this.f20518 = displayManager;
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayAdded(int i) {
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayChanged(int i) {
        if (i == 0) {
            C5405.m10833(this.f20519, this.f20518.getDisplay(0));
        }
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayRemoved(int i) {
    }
}
