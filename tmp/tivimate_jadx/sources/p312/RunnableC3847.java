package p312;

import ar.tvplayer.tv.player.ui.CustomPlayerView;

/* renamed from: ᐧⁱ.ʾˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC3847 implements Runnable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f14892;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ CustomPlayerView f14893;

    public /* synthetic */ RunnableC3847(CustomPlayerView customPlayerView, int i) {
        this.f14892 = i;
        this.f14893 = customPlayerView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f14892) {
            case 0:
                this.f14893.f14919.setVisibility(8);
                return;
            default:
                this.f14893.invalidate();
                return;
        }
    }
}
