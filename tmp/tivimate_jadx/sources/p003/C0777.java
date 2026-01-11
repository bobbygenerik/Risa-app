package p003;

import android.content.Context;
import android.media.metrics.LogSessionId;
import android.media.metrics.MediaMetricsManager;
import android.media.metrics.NetworkEvent;
import android.media.metrics.PlaybackErrorEvent;
import android.media.metrics.PlaybackMetrics;
import android.media.metrics.PlaybackSession;
import android.media.metrics.PlaybackStateEvent;
import android.media.metrics.TrackChangeEvent;
import android.net.Uri;
import android.os.SystemClock;
import android.util.Pair;
import androidx.media3.common.PlaybackException;
import com.google.android.gms.internal.play_billing.ʽﹳ;
import java.util.HashMap;
import java.util.concurrent.Executor;
import p055.AbstractC1445;
import p055.C1444;
import p055.C1466;
import p055.C1467;
import p055.C1495;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p420.C4987;

/* renamed from: ʻʿ.ʼᐧ */
/* loaded from: classes.dex */
public final class C0777 implements InterfaceC0788 {

    /* renamed from: ʻٴ */
    public boolean f3215;

    /* renamed from: ʼʼ */
    public int f3216;

    /* renamed from: ʼᐧ */
    public ʽﹳ f3218;

    /* renamed from: ʽ */
    public final C0780 f3219;

    /* renamed from: ʽﹳ */
    public C1495 f3220;

    /* renamed from: ʾˋ */
    public int f3221;

    /* renamed from: ʾᵎ */
    public boolean f3222;

    /* renamed from: ˆʾ */
    public String f3223;

    /* renamed from: ˈ */
    public final PlaybackSession f3224;

    /* renamed from: ˉˆ */
    public PlaybackException f3226;

    /* renamed from: ˏי */
    public C1495 f3227;

    /* renamed from: יـ */
    public C1495 f3229;

    /* renamed from: ـˆ */
    public int f3230;

    /* renamed from: ٴﹶ */
    public PlaybackMetrics.Builder f3231;

    /* renamed from: ᴵˊ */
    public boolean f3232;

    /* renamed from: ᵔﹳ */
    public ʽﹳ f3236;

    /* renamed from: ᵢˏ */
    public int f3237;

    /* renamed from: ﹳٴ */
    public final Context f3239;

    /* renamed from: ﹳᐧ */
    public ʽﹳ f3240;

    /* renamed from: ﾞʻ */
    public int f3241;

    /* renamed from: ⁱˊ */
    public final Executor f3238 = AbstractC3731.m7867();

    /* renamed from: ﾞᴵ */
    public final C1466 f3242 = new C1466();

    /* renamed from: ᵎﹶ */
    public final C1467 f3233 = new C1467();

    /* renamed from: ʼˎ */
    public final HashMap f3217 = new HashMap();

    /* renamed from: ᵔᵢ */
    public final HashMap f3235 = new HashMap();

    /* renamed from: ˑﹳ */
    public final long f3228 = SystemClock.elapsedRealtime();

    /* renamed from: ˉʿ */
    public int f3225 = 0;

    /* renamed from: ᵔʾ */
    public int f3234 = 0;

    public C0777(Context context, PlaybackSession playbackSession) {
        this.f3239 = context.getApplicationContext();
        this.f3224 = playbackSession;
        C0780 c0780 = new C0780();
        this.f3219 = c0780;
        c0780.f3258 = this;
    }

    /* renamed from: ʽ */
    public static /* synthetic */ void m2802(C0777 c0777, NetworkEvent networkEvent) {
        c0777.f3224.reportNetworkEvent(networkEvent);
    }

    /* renamed from: ˈ */
    public static /* synthetic */ void m2803(C0777 c0777, TrackChangeEvent trackChangeEvent) {
        c0777.f3224.reportTrackChangeEvent(trackChangeEvent);
    }

    /* renamed from: ˑﹳ */
    public static /* synthetic */ void m2804(C0777 c0777, PlaybackStateEvent playbackStateEvent) {
        c0777.f3224.reportPlaybackStateEvent(playbackStateEvent);
    }

    /* renamed from: ᵎﹶ */
    public static C0777 m2805(Context context) {
        MediaMetricsManager mediaMetricsManager = (MediaMetricsManager) context.getSystemService("media_metrics");
        if (mediaMetricsManager == null) {
            return null;
        }
        return new C0777(context, mediaMetricsManager.createPlaybackSession());
    }

    /* renamed from: ⁱˊ */
    public static /* synthetic */ void m2806(C0777 c0777, PlaybackMetrics playbackMetrics) {
        c0777.f3224.reportPlaybackMetrics(playbackMetrics);
    }

    /* renamed from: ﹳٴ */
    public static /* synthetic */ void m2807(C0777 c0777, PlaybackErrorEvent playbackErrorEvent) {
        c0777.f3224.reportPlaybackErrorEvent(playbackErrorEvent);
    }

    /* renamed from: ʼˎ */
    public final LogSessionId m2808() {
        return this.f3224.getSessionId();
    }

    /* renamed from: ˆʾ */
    public final void m2809(AbstractC1445 abstractC1445, C4987 c4987) {
        PlaybackMetrics.Builder builder = this.f3231;
        if (c4987 == null) {
            return;
        }
        int mo4228 = abstractC1445.mo4228(c4987.f18631);
        char c = 65535;
        if (mo4228 == -1) {
            return;
        }
        C1467 c1467 = this.f3233;
        int i = 0;
        abstractC1445.mo4231(mo4228, c1467, false);
        int i2 = c1467.f5744;
        C1466 c1466 = this.f3242;
        abstractC1445.m4226(i2, c1466);
        C1444 c1444 = c1466.f5730.f5781;
        if (c1444 != null) {
            Uri uri = c1444.f5629;
            String str = c1444.f5628;
            if (str != null) {
                switch (str.hashCode()) {
                    case -979127466:
                        if (str.equals("application/x-mpegURL")) {
                            c = 0;
                            break;
                        }
                        break;
                    case -156749520:
                        if (str.equals("application/vnd.ms-sstr+xml")) {
                            c = 1;
                            break;
                        }
                        break;
                    case 64194685:
                        if (str.equals("application/dash+xml")) {
                            c = 2;
                            break;
                        }
                        break;
                    case 1154777587:
                        if (str.equals("application/x-rtsp")) {
                            c = 3;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        i = 2;
                        break;
                    case 1:
                        i = 1;
                        break;
                    case 2:
                        break;
                    case 3:
                        i = 3;
                        break;
                    default:
                        i = 4;
                        break;
                }
            } else {
                i = AbstractC3712.m7801(uri);
            }
            i = i != 0 ? i != 1 ? i != 2 ? 1 : 4 : 5 : 3;
        }
        builder.setStreamType(i);
        if (c1466.f5733 != -9223372036854775807L && !c1466.f5736 && !c1466.f5728 && !c1466.m4267()) {
            builder.setMediaDurationMillis(AbstractC3712.m7755(c1466.f5733));
        }
        builder.setPlaybackType(c1466.m4267() ? 2 : 1);
        this.f3232 = true;
    }

    /* renamed from: ˉʿ */
    public final void m2810(C0789 c0789, String str) {
        C4987 c4987 = c0789.f3281;
        if ((c4987 == null || !c4987.m9838()) && str.equals(this.f3223)) {
            m2813();
        }
        this.f3235.remove(str);
        this.f3217.remove(str);
    }

    /* JADX WARN: Removed duplicated region for block: B:130:0x0479  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x04a8  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x04d2  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0501  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x051b  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0547  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0552  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x056a  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x05c6  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x05f3  */
    /* JADX WARN: Removed duplicated region for block: B:186:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:187:0x056e  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x0557  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x0503  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x0506  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x0509  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x050b  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x050e  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x0510  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x0512  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x0514  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x0516  */
    /* renamed from: ٴﹶ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m2811(p055.InterfaceC1488 r23, ﹶﾞ.ⁱי r24) {
        /*
            Method dump skipped, instructions count: 1592
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p003.C0777.m2811(ʽⁱ.ᵔٴ, ﹶﾞ.ⁱי):void");
    }

    /* renamed from: ᵔʾ */
    public final void m2812(int i, long j, C1495 c1495, int i2) {
        int i3;
        TrackChangeEvent.Builder timeSinceCreatedMillis = new TrackChangeEvent.Builder(i).setTimeSinceCreatedMillis(j - this.f3228);
        int i4 = 0;
        if (c1495 != null) {
            timeSinceCreatedMillis.setTrackState(1);
            if (i2 != 1) {
                i3 = 3;
                if (i2 != 2) {
                    i3 = i2 != 3 ? 1 : 4;
                }
            } else {
                i3 = 2;
            }
            timeSinceCreatedMillis.setTrackChangeReason(i3);
            String str = c1495.f5913;
            if (str != null) {
                timeSinceCreatedMillis.setContainerMimeType(str);
            }
            String str2 = c1495.f5930;
            if (str2 != null) {
                timeSinceCreatedMillis.setSampleMimeType(str2);
            }
            String str3 = c1495.f5924;
            if (str3 != null) {
                timeSinceCreatedMillis.setCodecName(str3);
            }
            int i5 = c1495.f5908;
            if (i5 != -1) {
                timeSinceCreatedMillis.setBitrate(i5);
            }
            int i6 = c1495.f5905;
            if (i6 != -1) {
                timeSinceCreatedMillis.setWidth(i6);
            }
            int i7 = c1495.f5899;
            if (i7 != -1) {
                timeSinceCreatedMillis.setHeight(i7);
            }
            int i8 = c1495.f5916;
            if (i8 != -1) {
                timeSinceCreatedMillis.setChannelCount(i8);
            }
            int i9 = c1495.f5923;
            if (i9 != -1) {
                timeSinceCreatedMillis.setAudioSampleRate(i9);
            }
            String str4 = c1495.f5910;
            if (str4 != null) {
                String str5 = AbstractC3712.f14481;
                String[] split = str4.split("-", -1);
                Pair create = Pair.create(split[0], split.length >= 2 ? split[1] : null);
                timeSinceCreatedMillis.setLanguage((String) create.first);
                Object obj = create.second;
                if (obj != null) {
                    timeSinceCreatedMillis.setLanguageRegion((String) obj);
                }
            }
            float f = c1495.f5900;
            if (f != -1.0f) {
                timeSinceCreatedMillis.setVideoFrameRate(f);
            }
        } else {
            timeSinceCreatedMillis.setTrackState(0);
        }
        this.f3232 = true;
        this.f3238.execute(new RunnableC0786(this, i4, timeSinceCreatedMillis.build()));
    }

    /* renamed from: ᵔᵢ */
    public final void m2813() {
        PlaybackMetrics.Builder builder = this.f3231;
        if (builder != null && this.f3232) {
            builder.setAudioUnderrunCount(this.f3221);
            this.f3231.setVideoFramesDropped(this.f3216);
            this.f3231.setVideoFramesPlayed(this.f3237);
            Long l = (Long) this.f3235.get(this.f3223);
            this.f3231.setNetworkTransferDurationMillis(l == null ? 0L : l.longValue());
            Long l2 = (Long) this.f3217.get(this.f3223);
            this.f3231.setNetworkBytesRead(l2 == null ? 0L : l2.longValue());
            this.f3231.setStreamSource((l2 == null || l2.longValue() <= 0) ? 0 : 1);
            this.f3238.execute(new RunnableC0786(this, 3, this.f3231.build()));
        }
        this.f3231 = null;
        this.f3223 = null;
        this.f3221 = 0;
        this.f3216 = 0;
        this.f3237 = 0;
        this.f3229 = null;
        this.f3227 = null;
        this.f3220 = null;
        this.f3232 = false;
    }

    /* renamed from: ﾞʻ */
    public final void m2814(C0789 c0789, String str) {
        C4987 c4987 = c0789.f3281;
        if (c4987 == null || !c4987.m9838()) {
            m2813();
            this.f3223 = str;
            this.f3231 = new PlaybackMetrics.Builder().setPlayerName("AndroidXMedia3").setPlayerVersion("1.8.0");
            m2809(c0789.f3285, c4987);
        }
    }

    /* renamed from: ﾞᴵ */
    public final boolean m2815(ʽﹳ r3) {
        String str;
        if (r3 == null) {
            return false;
        }
        String str2 = (String) r3.ˈٴ;
        C0780 c0780 = this.f3219;
        synchronized (c0780) {
            str = c0780.f3263;
        }
        return str2.equals(str);
    }
}
