package p137;

import androidx.appcompat.widget.ActionBarOverlayLayout;

/* renamed from: ˉˆ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC2333 implements Runnable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f9073;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ ActionBarOverlayLayout f9074;

    public /* synthetic */ RunnableC2333(ActionBarOverlayLayout actionBarOverlayLayout, int i) {
        this.f9073 = i;
        this.f9074 = actionBarOverlayLayout;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f9073) {
            case 0:
                ActionBarOverlayLayout actionBarOverlayLayout = this.f9074;
                actionBarOverlayLayout.m47();
                actionBarOverlayLayout.f122 = actionBarOverlayLayout.f109.animate().translationY(0.0f).setListener(actionBarOverlayLayout.f111);
                return;
            default:
                ActionBarOverlayLayout actionBarOverlayLayout2 = this.f9074;
                actionBarOverlayLayout2.m47();
                actionBarOverlayLayout2.f122 = actionBarOverlayLayout2.f109.animate().translationY(-actionBarOverlayLayout2.f109.getHeight()).setListener(actionBarOverlayLayout2.f111);
                return;
        }
    }
}
