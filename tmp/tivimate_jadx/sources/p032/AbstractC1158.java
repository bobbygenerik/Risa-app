package p032;

import android.app.job.JobParameters;
import android.content.res.Configuration;
import android.graphics.Typeface;
import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.media.MediaDrm;
import android.media.MediaFormat;
import android.media.metrics.LogSessionId;
import android.os.Build;
import androidx.work.impl.background.systemjob.SystemJobService;
import p003.C0783;
import p223.C3056;
import p366.C4473;
import p404.C4799;
import p425.C5053;
import ʻʿ.ᵔﹳ;
import ᴵˋ.ˊʻ;

/* renamed from: ʼᵢ.ˉˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1158 {
    /* renamed from: ʽ, reason: contains not printable characters */
    public static Typeface m3610(Configuration configuration, Typeface typeface) {
        int m9029;
        if (Build.VERSION.SDK_INT < 31 || (m9029 = C4473.m9029(configuration)) == Integer.MAX_VALUE || m9029 == 0 || typeface == null) {
            return null;
        }
        return Typeface.create(typeface, ˊʻ.ˑﹳ(typeface.getWeight() + C4473.m9029(configuration), 1, 1000), typeface.isItalic());
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static boolean m3611(MediaDrm mediaDrm, String str, int i) {
        return mediaDrm.requiresSecureDecoder(str, i);
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static void m3612(AudioTrack audioTrack, C0783 c0783) {
        LogSessionId m2878 = c0783.m2878();
        if (m2878.equals(ᵔﹳ.ˑﹳ())) {
            return;
        }
        audioTrack.setLogSessionId(m2878);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static void m3613(C4799 c4799, C0783 c0783) {
        LogSessionId m2878 = c0783.m2878();
        if (m2878.equals(ᵔﹳ.ˑﹳ())) {
            return;
        }
        ((MediaFormat) c4799.f18053).setString("log-session-id", m2878.getStringId());
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static int m3614(JobParameters jobParameters) {
        int stopReason = jobParameters.getStopReason();
        String str = SystemJobService.f1582;
        switch (stopReason) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return stopReason;
            default:
                return -512;
        }
    }

    /* JADX WARN: Type inference failed for: r4v1, types: [java.lang.Object, ʻˆ.ˑﹳ] */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C5053 m3615(AudioFormat audioFormat, AudioAttributes audioAttributes, boolean z) {
        int playbackOffloadSupport = AudioManager.getPlaybackOffloadSupport(audioFormat, audioAttributes);
        if (playbackOffloadSupport == 0) {
            return C5053.f19013;
        }
        ?? obj = new Object();
        boolean z2 = Build.VERSION.SDK_INT > 32 && playbackOffloadSupport == 2;
        obj.f3423 = true;
        obj.f3422 = z2;
        obj.f3421 = z;
        return obj.m2923();
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static void m3616(MediaDrm mediaDrm, byte[] bArr, C0783 c0783) {
        LogSessionId m2878 = c0783.m2878();
        if (m2878.equals(ᵔﹳ.ˑﹳ())) {
            return;
        }
        MediaDrm.PlaybackComponent playbackComponent = mediaDrm.getPlaybackComponent(bArr);
        playbackComponent.getClass();
        playbackComponent.setLogSessionId(m2878);
    }
}
