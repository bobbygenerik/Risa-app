package p428;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.Spatializer;
import android.os.Handler;
import android.os.Looper;
import j$.util.Objects;
import p055.C1471;
import p055.C1495;
import p076.AbstractC1659;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p425.ExecutorC5029;

/* renamed from: ﹶʽ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5065 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Handler f19069;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C5079 f19070;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean f19071;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Spatializer f19072;

    public C5065(Context context, C5078 c5078, Boolean bool) {
        AudioManager m4534 = context == null ? null : AbstractC1659.m4534(context);
        if (m4534 == null || (bool != null && bool.booleanValue())) {
            this.f19072 = null;
            this.f19071 = false;
            this.f19069 = null;
            this.f19070 = null;
            return;
        }
        Spatializer spatializer = m4534.getSpatializer();
        this.f19072 = spatializer;
        this.f19071 = spatializer.getImmersiveAudioLevel() != 0;
        C5079 c5079 = new C5079(c5078);
        this.f19070 = c5079;
        Looper myLooper = Looper.myLooper();
        AbstractC3731.m7868(myLooper);
        Handler handler = new Handler(myLooper);
        this.f19069 = handler;
        spatializer.addOnSpatializerStateChangedListener(new ExecutorC5029(handler), c5079);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean m9968() {
        Spatializer spatializer = this.f19072;
        spatializer.getClass();
        return spatializer.isEnabled();
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m9969() {
        C5079 c5079;
        Handler handler;
        Spatializer spatializer = this.f19072;
        if (spatializer == null || (c5079 = this.f19070) == null || (handler = this.f19069) == null) {
            return;
        }
        spatializer.removeOnSpatializerStateChangedListener(c5079);
        handler.removeCallbacksAndMessages(null);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean m9970() {
        Spatializer spatializer = this.f19072;
        spatializer.getClass();
        return spatializer.isAvailable();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean m9971(C1471 c1471, C1495 c1495) {
        String str = c1495.f5930;
        String str2 = c1495.f5930;
        int i = c1495.f5916;
        if (Objects.equals(str, "audio/eac3-joc")) {
            if (i == 16) {
                i = 12;
            }
        } else if (Objects.equals(str2, "audio/iamf")) {
            if (i == -1) {
                i = 6;
            }
        } else if (Objects.equals(str2, "audio/ac4") && (i == 18 || i == 21)) {
            i = 24;
        }
        int m7784 = AbstractC3712.m7784(i);
        if (m7784 == 0) {
            return false;
        }
        AudioFormat.Builder channelMask = new AudioFormat.Builder().setEncoding(2).setChannelMask(m7784);
        int i2 = c1495.f5923;
        if (i2 != -1) {
            channelMask.setSampleRate(i2);
        }
        Spatializer spatializer = this.f19072;
        spatializer.getClass();
        return spatializer.canBeSpatialized((AudioAttributes) c1471.m4277().ʾˋ, channelMask.build());
    }
}
