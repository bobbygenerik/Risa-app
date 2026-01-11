package p311;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import androidx.media3.decoder.ffmpeg.C0211;
import ar.tvplayer.tv.player.ui.CustomPlayerView;
import java.util.Arrays;
import java.util.List;
import p003.C0779;
import p003.C0785;
import p003.C0789;
import p003.C0792;
import p035.ExecutorC1212;
import p047.C1368;
import p055.AbstractC1445;
import p055.C1467;
import p055.C1469;
import p055.C1495;
import p171.InterfaceC2626;
import p179.C2697;
import p223.C3056;
import p262.C3433;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p305.InterfaceC3734;
import p312.AbstractC3857;
import p392.C4644;
import p392.C4652;
import p392.C4679;
import p392.C4682;
import p392.C4687;
import p392.C4699;
import p392.SurfaceHolderCallbackC4642;
import p395.C4720;
import p395.C4724;
import p411.C4894;
import p420.C4961;
import p420.C4987;
import p425.C5025;
import p425.C5030;
import p425.InterfaceC5046;
import p425.RunnableC5044;
import p433.C5119;
import p433.C5125;
import p433.C5130;
import p457.C5384;
import p457.C5390;
import p457.InterfaceC5385;
import ʻʿ.ˈ;
import ᐧﹳ.ʽ;

/* renamed from: ᐧᵢ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC3805 implements Runnable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ Object f14725;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f14726;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f14727;

    public /* synthetic */ RunnableC3805(Object obj, int i, Object obj2) {
        this.f14726 = i;
        this.f14727 = obj;
        this.f14725 = obj2;
    }

    public /* synthetic */ RunnableC3805(Object obj, C1495 c1495, C4687 c4687, int i) {
        this.f14726 = i;
        this.f14727 = obj;
        this.f14725 = c1495;
    }

    public /* synthetic */ RunnableC3805(C3433 c3433, InterfaceC3826 interfaceC3826, Throwable th) {
        this.f14726 = 0;
        this.f14727 = interfaceC3826;
        this.f14725 = th;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    private final void m7984() {
        C3433 c3433 = (C3433) this.f14727;
        synchronized (((C4699) this.f14725)) {
        }
        InterfaceC5046 interfaceC5046 = (InterfaceC5046) c3433.f13456;
        String str = AbstractC3712.f14481;
        C4644 c4644 = ((SurfaceHolderCallbackC4642) interfaceC5046).f17344;
        C0779 c0779 = c4644.f17373;
        c0779.m2848(c0779.m2859((C4987) c0779.f3248.f18054), 1013, new C0792(7));
        c4644.f17360 = null;
    }

    @Override // java.lang.Runnable
    public final void run() {
        long j;
        boolean z;
        boolean z2 = true;
        switch (this.f14726) {
            case 0:
                ((InterfaceC3826) this.f14727).mo7342((Throwable) this.f14725);
                return;
            case 1:
                AbstractC3857.m8023((CustomPlayerView) this.f14727, (Bitmap) this.f14725);
                return;
            case 2:
                ExecutorC1212 executorC1212 = (ExecutorC1212) this.f14727;
                Runnable runnable = (Runnable) this.f14725;
                executorC1212.getClass();
                try {
                    runnable.run();
                    return;
                } finally {
                    executorC1212.m3755();
                }
            case 3:
                C4644 c4644 = (C4644) this.f14727;
                C2697 c2697 = (C2697) this.f14725;
                int i = c4644.f17388 - c2697.f10273;
                c4644.f17388 = i;
                if (c2697.f10271) {
                    c4644.f17367 = c2697.f10272;
                    c4644.f17416 = true;
                }
                if (i == 0) {
                    AbstractC1445 abstractC1445 = ((C4682) c2697.f10275).f17591;
                    if (!c4644.f17415.f17591.m4217() && abstractC1445.m4217()) {
                        c4644.f17357 = -1;
                        c4644.f17375 = 0L;
                    }
                    if (!abstractC1445.m4217()) {
                        List asList = Arrays.asList(((C4679) abstractC1445).f17563);
                        AbstractC3731.m7857(asList.size() == c4644.f17381.size());
                        for (int i2 = 0; i2 < asList.size(); i2++) {
                            ((C4652) c4644.f17381.get(i2)).f17440 = (AbstractC1445) asList.get(i2);
                        }
                    }
                    long j2 = -9223372036854775807L;
                    if (c4644.f17416) {
                        if (((C4682) c2697.f10275).f17590.equals(c4644.f17415.f17590) && ((C4682) c2697.f10275).f17579 == c4644.f17415.f17584) {
                            z2 = false;
                        }
                        if (z2) {
                            if (abstractC1445.m4217() || ((C4682) c2697.f10275).f17590.m9838()) {
                                j2 = ((C4682) c2697.f10275).f17579;
                            } else {
                                C4682 c4682 = (C4682) c2697.f10275;
                                C4987 c4987 = c4682.f17590;
                                long j3 = c4682.f17579;
                                Object obj = c4987.f18631;
                                C1467 c1467 = c4644.f17366;
                                abstractC1445.mo4225(obj, c1467);
                                j2 = j3 + c1467.f5746;
                            }
                        }
                        j = j2;
                        z = z2;
                    } else {
                        j = -9223372036854775807L;
                        z = false;
                    }
                    c4644.f17416 = false;
                    c4644.m9237((C4682) c2697.f10275, 1, z, c4644.f17367, j, -1, false);
                    return;
                }
                return;
            case 4:
                C4720 c4720 = (C4720) this.f14727;
                C1495 c1495 = (C1495) this.f14725;
                C4724 c4724 = c4720.f17839;
                if (c4724.f17866 == 0 || c4720.f17837) {
                    return;
                }
                Looper looper = c4724.f17855;
                looper.getClass();
                c4720.f17840 = c4724.m9478(looper, c4720.f17838, c1495, false);
                c4724.f17865.add(c4720);
                return;
            case 5:
                ((C4894) this.f14727).m9689((String) this.f14725, Boolean.FALSE);
                return;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                ((InterfaceC3734) this.f14727).accept(this.f14725);
                return;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                ((C4961) this.f14727).m9786((InterfaceC2626) this.f14725);
                return;
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                m7984();
                return;
            case 9:
                C3433 c3433 = (C3433) this.f14727;
                C1495 c14952 = (C1495) this.f14725;
                InterfaceC5046 interfaceC5046 = (InterfaceC5046) c3433.f13456;
                String str = AbstractC3712.f14481;
                C4644 c46442 = ((SurfaceHolderCallbackC4642) interfaceC5046).f17344;
                c46442.f17360 = c14952;
                C0779 c0779 = c46442.f17373;
                c0779.m2848(c0779.m2841(), 1009, new C0792(15));
                return;
            case 10:
                ʽ r0 = (ʽ) this.f14727;
                C5025 c5025 = (C5025) this.f14725;
                int i3 = 2;
                switch (r0.ʾˋ) {
                    case 17:
                        C3433 c34332 = ((C0211) r0.ᴵˊ).f1158;
                        Handler handler = (Handler) c34332.f13458;
                        if (handler != null) {
                            handler.post(new RunnableC5044(c34332, c5025, i3));
                            return;
                        }
                        return;
                    default:
                        C3433 c34333 = ((C5030) r0.ᴵˊ).f18825;
                        Handler handler2 = (Handler) c34333.f13458;
                        if (handler2 != null) {
                            handler2.post(new RunnableC5044(c34333, c5025, i3));
                            return;
                        }
                        return;
                }
            case 11:
                ((C1368) ((C5119) ((C5125) this.f14727).f19281.ᴵˊ).f19236.f5215.get(((C5130) this.f14725).f19359)).m4045(true);
                return;
            case 12:
                ((C5390) ((C5384) this.f14727).f20505).f20571.mo9154((C1469) this.f14725);
                return;
            case 13:
                C3433 c34334 = (C3433) this.f14727;
                C1469 c1469 = (C1469) this.f14725;
                InterfaceC5385 interfaceC5385 = (InterfaceC5385) c34334.f13456;
                String str2 = AbstractC3712.f14481;
                C4644 c46443 = ((SurfaceHolderCallbackC4642) interfaceC5385).f17344;
                c46443.f17390 = c1469;
                c46443.f17365.ᵎﹶ(25, new C0785(c1469));
                return;
            case 14:
                C3433 c34335 = (C3433) this.f14727;
                C1495 c14953 = (C1495) this.f14725;
                InterfaceC5385 interfaceC53852 = (InterfaceC5385) c34335.f13456;
                String str3 = AbstractC3712.f14481;
                C4644 c46444 = ((SurfaceHolderCallbackC4642) interfaceC53852).f17344;
                c46444.f17382 = c14953;
                C0779 c07792 = c46444.f17373;
                c07792.m2848(c07792.m2841(), 1017, new C0792(12));
                return;
            default:
                C3433 c34336 = (C3433) this.f14727;
                C4699 c4699 = (C4699) this.f14725;
                synchronized (c4699) {
                }
                InterfaceC5385 interfaceC53853 = (InterfaceC5385) c34336.f13456;
                String str4 = AbstractC3712.f14481;
                C4644 c46445 = ((SurfaceHolderCallbackC4642) interfaceC53853).f17344;
                C0779 c07793 = c46445.f17373;
                C0789 m2859 = c07793.m2859((C4987) c07793.f3248.f18054);
                c07793.m2848(m2859, 1020, new ˈ(m2859, c4699, 1));
                c46445.f17382 = null;
                return;
        }
    }
}
