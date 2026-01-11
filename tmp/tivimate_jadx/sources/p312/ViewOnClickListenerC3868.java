package p312;

import android.os.Build;
import android.view.SurfaceView;
import android.view.View;
import android.widget.ImageView;
import androidx.media3.common.PlaybackException;
import androidx.media3.ui.SubtitleView;
import ar.tvplayer.tv.player.ui.CustomPlayerView;
import com.parse.ˊﾞ;
import java.util.List;
import p055.AbstractC1445;
import p055.C1454;
import p055.C1456;
import p055.C1463;
import p055.C1467;
import p055.C1469;
import p055.C1471;
import p055.C1475;
import p055.C1476;
import p055.C1480;
import p055.C1482;
import p055.C1483;
import p055.C1485;
import p055.InterfaceC1487;
import p055.InterfaceC1488;
import p388.C4620;
import p392.C4644;
import p392.C4682;
import ʽⁱ.ᵎﹶ;

/* renamed from: ᐧⁱ.ᴵˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ViewOnClickListenerC3868 implements InterfaceC1487, View.OnClickListener, InterfaceC3863, InterfaceC3867 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ CustomPlayerView f15051;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C1467 f15052 = new C1467();

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public Object f15053;

    public ViewOnClickListenerC3868(CustomPlayerView customPlayerView) {
        this.f15051 = customPlayerView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f15051.m8040();
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ʻٴ */
    public final /* synthetic */ void mo2822(float f) {
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ʼʼ */
    public final /* synthetic */ void mo2823(int i) {
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ʼˈ */
    public final /* synthetic */ void mo2824(boolean z) {
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ʼᐧ */
    public final /* synthetic */ void mo2826(C1463 c1463) {
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ʽʽ */
    public final void mo2828(int i) {
        CustomPlayerView customPlayerView = this.f15051;
        customPlayerView.ᵔʾ();
        customPlayerView.m8025();
        if (!customPlayerView.m8041() || !customPlayerView.f14934) {
            customPlayerView.m8034(false);
            return;
        }
        C3860 c3860 = customPlayerView.f14949;
        if (c3860 != null) {
            c3860.m8059();
        }
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ʽﹳ */
    public final void mo2829(int i, boolean z) {
        CustomPlayerView customPlayerView = this.f15051;
        customPlayerView.ᵔʾ();
        if (!customPlayerView.m8041() || !customPlayerView.f14934) {
            customPlayerView.m8034(false);
            return;
        }
        C3860 c3860 = customPlayerView.f14949;
        if (c3860 != null) {
            c3860.m8059();
        }
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ʾᵎ */
    public final /* synthetic */ void mo2831(C1475 c1475) {
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ˆʾ */
    public final /* synthetic */ void mo2832(int i) {
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ˆﾞ */
    public final void mo2833(int i, C1456 c1456, C1456 c14562) {
        C3860 c3860;
        CustomPlayerView customPlayerView = this.f15051;
        if (customPlayerView.m8041() && customPlayerView.f14934 && (c3860 = customPlayerView.f14949) != null) {
            c3860.m8059();
        }
        if (i == 1 || i == 4) {
            customPlayerView.ᵔʾ();
        }
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ˈ */
    public final /* synthetic */ void mo2834(int i) {
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ˈʿ */
    public final /* synthetic */ void mo2835(C1482 c1482) {
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ˉʿ */
    public final /* synthetic */ void mo2837(boolean z) {
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ˉˆ */
    public final /* synthetic */ void mo2838(boolean z) {
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ˉٴ */
    public final /* synthetic */ void mo2839(PlaybackException playbackException) {
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ˏי */
    public final /* synthetic */ void mo2843(int i, boolean z) {
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ˑٴ */
    public final void mo2844(C4620 c4620) {
        SubtitleView subtitleView = this.f15051.f14948;
        if (subtitleView != null) {
            subtitleView.setCues(c4620.f17229);
        }
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ˑﹳ */
    public final /* synthetic */ void mo2845(C1485 c1485) {
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ٴᵢ */
    public final /* synthetic */ void mo2850(C1483 c1483) {
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ٴﹶ */
    public final void mo2851(C1454 c1454) {
        int mo4228;
        CustomPlayerView customPlayerView = this.f15051;
        ᵎﹶ r0 = customPlayerView.f14918;
        r0.getClass();
        ᵎﹶ r1 = r0;
        AbstractC1445 m9254 = r1.ᐧﹶ(17) ? ((C4644) r0).m9254() : AbstractC1445.f5630;
        if (m9254.m4217()) {
            this.f15053 = null;
        } else {
            boolean z = r1.ᐧﹶ(30);
            C1467 c1467 = this.f15052;
            if (z) {
                C4644 c4644 = (C4644) r0;
                if (!c4644.m9236().f5658.isEmpty()) {
                    c4644.m9241();
                    if (c4644.f17415.f17591.m4217()) {
                        mo4228 = 0;
                    } else {
                        C4682 c4682 = c4644.f17415;
                        mo4228 = c4682.f17591.mo4228(c4682.f17590.f18631);
                    }
                    this.f15053 = m9254.mo4231(mo4228, c1467, true).f5748;
                }
            }
            Object obj = this.f15053;
            if (obj != null) {
                int mo42282 = m9254.mo4228(obj);
                if (mo42282 != -1) {
                    if (((C4644) r0).m9238() == m9254.mo4231(mo42282, c1467, false).f5744) {
                        return;
                    }
                }
                this.f15053 = null;
            }
        }
        customPlayerView.m8037(false);
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ᵎˊ */
    public final void mo2854(int i, int i2) {
        CustomPlayerView customPlayerView = this.f15051;
        View view = customPlayerView.f14926;
        if (Build.VERSION.SDK_INT == 34 && (view instanceof SurfaceView) && customPlayerView.f14917) {
            C3869 c3869 = customPlayerView.f14930;
            c3869.getClass();
            customPlayerView.f14924.post(new ˊﾞ(c3869, (SurfaceView) view, new RunnableC3847(customPlayerView, 1), 9));
        }
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ᵎⁱ */
    public final /* synthetic */ void mo2855(boolean z) {
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ᵎﹶ */
    public final /* synthetic */ void mo2856(C1480 c1480, int i) {
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ᵔʾ */
    public final void mo2857() {
        CustomPlayerView customPlayerView = this.f15051;
        customPlayerView.f14925 = true;
        View view = customPlayerView.f14919;
        if (view != null && view.getVisibility() == 0) {
            view.animate().alpha(0.0f).withLayer().setDuration(150L).withEndAction(new RunnableC3847(customPlayerView, 0));
        }
        customPlayerView.f14937 = false;
        if (!customPlayerView.m8026()) {
            customPlayerView.m8031();
            return;
        }
        ImageView imageView = customPlayerView.f14939;
        if (imageView != null) {
            imageView.setVisibility(4);
        }
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ᵔᵢ */
    public final /* synthetic */ void mo2860(C1476 c1476) {
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ᵔﹳ */
    public final /* synthetic */ void mo2861(C1471 c1471) {
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ᵢˏ */
    public final /* synthetic */ void mo2862(PlaybackException playbackException) {
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ⁱˊ */
    public final /* synthetic */ void mo2863(int i) {
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ﹳٴ */
    public final void mo2865(C1469 c1469) {
        CustomPlayerView customPlayerView;
        InterfaceC1488 interfaceC1488;
        if (c1469.equals(C1469.f5752) || (interfaceC1488 = (customPlayerView = this.f15051).f14918) == null || ((C4644) interfaceC1488).m9259() == 1) {
            return;
        }
        customPlayerView.m8029();
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ﹳᐧ */
    public final /* synthetic */ void mo2866(List list) {
    }
}
