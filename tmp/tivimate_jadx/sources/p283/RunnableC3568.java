package p283;

import android.content.Context;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import androidx.media3.decoder.ffmpeg.C0211;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.ui.DefaultTimeBar;
import ar.tvplayer.core.ui.view.DelayedProgressBar;
import com.bumptech.glide.C0229;
import com.google.android.gms.internal.measurement.ˏʻ;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.carousel.CarouselLayoutManager;
import com.google.android.material.sidesheet.SideSheetBehavior;
import java.io.File;
import java.util.Locale;
import p007.InterfaceC0835;
import p008.C0838;
import p012.C0882;
import p076.AbstractC1659;
import p142.C2381;
import p223.C3056;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p305.C3711;
import p305.C3714;
import p305.RunnableC3730;
import p312.C3860;
import p324.InterfaceC4036;
import p359.C4360;
import p364.C4444;
import p364.C4446;
import p364.C4454;
import p392.C4644;
import p392.C4654;
import p392.C4683;
import p392.C4696;
import p395.C4717;
import p395.C4720;
import p395.InterfaceC4735;
import p425.C5030;
import p425.C5031;
import p457.C5390;
import p457.C5404;
import ʿˋ.ˉʿ;
import ˏˆ.ﹳٴ;
import ᐧﹳ.ʽ;
import ﾞﾞ.ⁱˊ;

/* renamed from: ٴˉ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC3568 implements Runnable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f13954;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f13955;

    public /* synthetic */ RunnableC3568(int i, Object obj) {
        this.f13954 = i;
        this.f13955 = obj;
    }

    public /* synthetic */ RunnableC3568(C4683 c4683, C4654 c4654) {
        this.f13954 = 11;
        this.f13955 = c4654;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    private final void m7524() {
        C4654 c4654 = (C4654) this.f13955;
        try {
            synchronized (c4654) {
            }
            try {
                c4654.f17446.mo780(c4654.f17442, c4654.f17443);
            } finally {
                c4654.m9264(true);
            }
        } catch (ExoPlaybackException e) {
            AbstractC3731.m7863("ExoPlayerImplInternal", "Unexpected error delivering message on external thread.", e);
            throw new RuntimeException(e);
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        TelephonyManager telephonyManager;
        int i = 0;
        switch (this.f13954) {
            case 0:
                MaterialButton.m2363((MaterialButton) this.f13955);
                return;
            case 1:
                ﹳٴ r0 = (ﹳٴ) this.f13955;
                ((C4360) ((InterfaceC0835) r0.ᴵᵔ)).m8834(new C3569(5, r0));
                return;
            case 2:
                C3714 c3714 = (C3714) this.f13955;
                C4454 c4454 = (C4454) c3714.f14487.get();
                if (c4454 != null) {
                    int m7838 = c3714.f14485.m7838();
                    C4446 c4446 = c4454.f16673;
                    synchronized (c4446) {
                        int i2 = c4446.f16626;
                        if (i2 == 0 || c4446.f16623) {
                            if (i2 != m7838 || c4446.f16622 == null) {
                                c4446.f16626 = m7838;
                                if (m7838 != 1 && m7838 != 0 && m7838 != 8) {
                                    if (c4446.f16622 == null) {
                                        Context context = c4446.f16629;
                                        String str2 = AbstractC3712.f14481;
                                        if (context != null && (telephonyManager = (TelephonyManager) context.getSystemService("phone")) != null) {
                                            String networkCountryIso = telephonyManager.getNetworkCountryIso();
                                            if (!TextUtils.isEmpty(networkCountryIso)) {
                                                str = ˏʻ.ᴵˑ(networkCountryIso);
                                                c4446.f16622 = str;
                                            }
                                        }
                                        str = ˏʻ.ᴵˑ(Locale.getDefault().getCountry());
                                        c4446.f16622 = str;
                                    }
                                    c4446.f16630 = c4446.m8989(m7838);
                                    c4446.f16620.getClass();
                                    long elapsedRealtime = SystemClock.elapsedRealtime();
                                    c4446.m8988(c4446.f16625 > 0 ? (int) (elapsedRealtime - c4446.f16627) : 0, c4446.f16617, c4446.f16630);
                                    c4446.f16627 = elapsedRealtime;
                                    c4446.f16617 = 0L;
                                    c4446.f16624 = 0L;
                                    c4446.f16619 = 0L;
                                    C4444 c4444 = c4446.f16631;
                                    c4444.f16608.clear();
                                    c4444.f16604 = -1;
                                    c4444.f16605 = 0;
                                    c4444.f16606 = 0;
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        return;
                    }
                }
                return;
            case 3:
                DefaultTimeBar defaultTimeBar = (DefaultTimeBar) this.f13955;
                int i3 = DefaultTimeBar.f1259;
                defaultTimeBar.m802(false);
                return;
            case 4:
                ((C3860) this.f13955).m8056();
                return;
            case 5:
                InterfaceC4036 interfaceC4036 = (InterfaceC4036) this.f13955;
                if (interfaceC4036 != null) {
                    interfaceC4036.mo3899(null);
                    return;
                }
                return;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                C0838 c0838 = (C0838) this.f13955;
                c0838.f3574 = false;
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) c0838.f3576;
                C2381 c2381 = sideSheetBehavior.f2810;
                if (c2381 != null && c2381.m5470()) {
                    c0838.m2980(c0838.f3577);
                    return;
                } else {
                    if (sideSheetBehavior.f2824 == 2) {
                        sideSheetBehavior.m2421(c0838.f3577);
                        return;
                    }
                    return;
                }
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                File file = (File) this.f13955;
                File databasePath = ⁱˊ.ﹳٴ().getDatabasePath("TvPlayer.db");
                ˉʿ.ˈ(databasePath, new File(file, "TvPlayer.db"));
                ˉʿ.ᵎﹶ(databasePath.getPath() + "-shm", file.getPath() + "/TvPlayer.db-shm");
                ˉʿ.ᵎﹶ(databasePath.getPath() + "-wal", file.getPath() + "/TvPlayer.db-wal");
                return;
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                C0229 c0229 = (C0229) this.f13955;
                ((Context) c0229.f1646).unregisterReceiver((C4696) c0229.f1643);
                return;
            case 9:
                C4696 c4696 = (C4696) this.f13955;
                if (c4696.f17734.f1644) {
                    c4696.f17736.f17344.m9243(3, false);
                    return;
                }
                return;
            case 10:
                C4644 c4644 = (C4644) this.f13955;
                C0882 c0882 = c4644.f17397;
                Context context2 = c4644.f17400;
                String str3 = AbstractC3712.f14481;
                Integer valueOf = Integer.valueOf(AbstractC1659.m4534(context2).generateAudioSessionId());
                c0882.f3745 = valueOf;
                RunnableC3730 runnableC3730 = new RunnableC3730(c0882, valueOf, i);
                C3711 c3711 = (C3711) c0882.f3740;
                if (c3711.f14471.getLooper().getThread().isAlive()) {
                    c3711.m7750(runnableC3730);
                    return;
                }
                return;
            case 11:
                m7524();
                return;
            case 12:
                C4720 c4720 = (C4720) this.f13955;
                if (c4720.f17837) {
                    return;
                }
                InterfaceC4735 interfaceC4735 = c4720.f17840;
                if (interfaceC4735 != null) {
                    interfaceC4735.mo9462(c4720.f17838);
                }
                c4720.f17839.f17865.remove(c4720);
                c4720.f17837 = true;
                return;
            case 13:
                ((C4717) this.f13955).mo9462(null);
                return;
            case 14:
                C5031 c5031 = (C5031) this.f13955;
                if (c5031.f18898 >= 300000) {
                    ʽ r1 = c5031.f18870;
                    switch (r1.ʾˋ) {
                        case 17:
                            ((C0211) r1.ᴵˊ).f1171 = true;
                            break;
                        default:
                            ((C5030) r1.ᴵˊ).f18820 = true;
                            break;
                    }
                    c5031.f18898 = 0L;
                    return;
                }
                return;
            case 15:
                DelayedProgressBar delayedProgressBar = (DelayedProgressBar) this.f13955;
                int i4 = DelayedProgressBar.ʽʽ;
                delayedProgressBar.setVisibility(0);
                return;
            case 16:
                ((ʽ) this.f13955).ʽﹳ();
                return;
            case 17:
                ((CarouselLayoutManager) this.f13955).m5982();
                return;
            case 18:
                ((C5390) this.f13955).f20571.mo9145();
                return;
            default:
                ((C5404) this.f13955).f20622--;
                return;
        }
    }
}
