package p032;

import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.os.Build;
import android.util.Pair;
import android.util.Range;
import com.google.android.gms.internal.measurement.ᵎ;
import j$.util.Objects;
import java.util.HashMap;
import p021.AbstractC1031;
import p055.AbstractC1464;
import p055.C1446;
import p055.C1495;
import p137.AbstractC2305;
import p305.AbstractC3712;
import p305.AbstractC3715;
import p305.AbstractC3731;
import p307.AbstractC3740;
import p392.C4687;

/* renamed from: ʼᵢ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1165 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final boolean f4453;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f4454;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public int f4455;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final MediaCodecInfo.CodecCapabilities f4456;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final boolean f4457;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public int f4458;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final boolean f4459;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final boolean f4460;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f4461;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f4462;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public float f4463;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final boolean f4464;

    public C1165(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        str.getClass();
        this.f4462 = str;
        this.f4461 = str2;
        this.f4454 = str3;
        this.f4456 = codecCapabilities;
        this.f4459 = z;
        this.f4457 = z4;
        this.f4464 = z5;
        this.f4460 = z6;
        this.f4453 = AbstractC1464.m4256(str2);
        this.f4463 = -3.4028235E38f;
        this.f4455 = -1;
        this.f4458 = -1;
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static C1165 m3630(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2, boolean z3, boolean z4) {
        boolean z5;
        String str4;
        String str5;
        MediaCodecInfo.CodecCapabilities codecCapabilities2;
        boolean z6;
        boolean z7;
        boolean z8;
        String str6;
        boolean z9 = codecCapabilities != null && codecCapabilities.isFeatureSupported("adaptive-playback");
        if (codecCapabilities != null) {
            codecCapabilities.isFeatureSupported("tunneled-playback");
        }
        boolean z10 = z4 || (codecCapabilities != null && codecCapabilities.isFeatureSupported("secure-playback"));
        if (Build.VERSION.SDK_INT >= 35 && codecCapabilities != null && codecCapabilities.isFeatureSupported("detached-surface")) {
            String str7 = Build.MANUFACTURER;
            if (!str7.equals("Xiaomi") && !str7.equals("OPPO") && !str7.equals("realme") && !str7.equals("motorola") && !str7.equals("LENOVO")) {
                z5 = true;
                str6 = str;
                str5 = str3;
                codecCapabilities2 = codecCapabilities;
                z6 = z;
                z7 = z2;
                z8 = z3;
                str4 = str2;
                return new C1165(str6, str4, str5, codecCapabilities2, z6, z7, z8, z9, z10, z5);
            }
        }
        z5 = false;
        str4 = str2;
        str5 = str3;
        codecCapabilities2 = codecCapabilities;
        z6 = z;
        z7 = z2;
        z8 = z3;
        str6 = str;
        return new C1165(str6, str4, str5, codecCapabilities2, z6, z7, z8, z9, z10, z5);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static boolean m3631(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2, double d) {
        Range<Double> achievableFrameRatesFor;
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        Point point = new Point(AbstractC3712.m7811(i, widthAlignment) * widthAlignment, AbstractC3712.m7811(i2, heightAlignment) * heightAlignment);
        int i3 = point.x;
        int i4 = point.y;
        if (d == -1.0d || d < 1.0d) {
            return videoCapabilities.isSizeSupported(i3, i4);
        }
        double floor = Math.floor(d);
        if (videoCapabilities.areSizeAndRateSupported(i3, i4, floor)) {
            return Build.VERSION.SDK_INT < 24 || (achievableFrameRatesFor = videoCapabilities.getAchievableFrameRatesFor(i3, i4)) == null || floor <= achievableFrameRatesFor.getUpper().doubleValue();
        }
        return false;
    }

    public final String toString() {
        return this.f4462;
    }

    /* JADX WARN: Removed duplicated region for block: B:135:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00df  */
    /* renamed from: ʽ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m3632(p055.C1495 r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 564
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p032.C1165.m3632(ʽⁱ.ﹳᐧ, boolean):boolean");
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final boolean m3633(C1495 c1495) {
        return (Objects.equals(c1495.f5930, "audio/flac") && c1495.f5915 == 22 && Build.VERSION.SDK_INT < 34 && this.f4462.equals("c2.android.flac.decoder")) ? false : true;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final boolean m3634(C1495 c1495) {
        int i;
        String str = c1495.f5930;
        String str2 = this.f4461;
        if ((!str2.equals(str) && !str2.equals(AbstractC1162.m3624(c1495))) || !m3632(c1495, true) || !m3633(c1495)) {
            return false;
        }
        if (this.f4453) {
            int i2 = c1495.f5905;
            if (i2 > 0 && (i = c1495.f5899) > 0) {
                return m3635(i2, i, c1495.f5900);
            }
        } else {
            int i3 = c1495.f5923;
            MediaCodecInfo.CodecCapabilities codecCapabilities = this.f4456;
            if (i3 != -1) {
                if (codecCapabilities == null) {
                    m3636("sampleRate.caps");
                    return false;
                }
                MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
                if (audioCapabilities == null) {
                    m3636("sampleRate.aCaps");
                    return false;
                }
                if (!audioCapabilities.isSampleRateSupported(i3)) {
                    m3636("sampleRate.support, " + i3);
                    return false;
                }
            }
            int i4 = c1495.f5916;
            if (i4 != -1) {
                if (codecCapabilities == null) {
                    m3636("channelCount.caps");
                    return false;
                }
                MediaCodecInfo.AudioCapabilities audioCapabilities2 = codecCapabilities.getAudioCapabilities();
                if (audioCapabilities2 == null) {
                    m3636("channelCount.aCaps");
                    return false;
                }
                int maxInputChannelCount = audioCapabilities2.getMaxInputChannelCount();
                if (maxInputChannelCount <= 1 && ((Build.VERSION.SDK_INT < 26 || maxInputChannelCount <= 0) && !"audio/mpeg".equals(str2) && !"audio/3gpp".equals(str2) && !"audio/amr-wb".equals(str2) && !"audio/mp4a-latm".equals(str2) && !"audio/vorbis".equals(str2) && !"audio/opus".equals(str2) && !"audio/raw".equals(str2) && !"audio/flac".equals(str2) && !"audio/g711-alaw".equals(str2) && !"audio/g711-mlaw".equals(str2) && !"audio/gsm".equals(str2))) {
                    int i5 = "audio/ac3".equals(str2) ? 6 : "audio/eac3".equals(str2) ? 16 : 30;
                    AbstractC3731.m7850("MediaCodecInfo", "AssumedMaxChannelAdjustment: " + this.f4462 + ", [" + maxInputChannelCount + " to " + i5 + "]");
                    maxInputChannelCount = i5;
                }
                if (maxInputChannelCount < i4) {
                    m3636("channelCount.support, " + i4);
                    return false;
                }
            }
        }
        return true;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final boolean m3635(int i, int i2, double d) {
        Boolean bool;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f4456;
        if (codecCapabilities == null) {
            m3636("sizeAndRate.caps");
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            m3636("sizeAndRate.vCaps");
            return false;
        }
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 29) {
            int m3367 = (i3 < 29 || ((bool = ᵎ.ʾˋ) != null && bool.booleanValue())) ? 0 : AbstractC1031.m3367(videoCapabilities, i, i2, d);
            if (m3367 != 2) {
                if (m3367 == 1) {
                    StringBuilder m7944 = AbstractC3740.m7944("sizeAndRate.cover, ", i, "x", i2, "@");
                    m7944.append(d);
                    m3636(m7944.toString());
                    return false;
                }
            }
            return true;
        }
        if (!m3631(videoCapabilities, i, i2, d)) {
            if (i < i2) {
                String str = this.f4462;
                if ((!"OMX.MTK.VIDEO.DECODER.HEVC".equals(str) || !"mcv5a".equals(Build.DEVICE)) && m3631(videoCapabilities, i2, i, d)) {
                    StringBuilder m79442 = AbstractC3740.m7944("sizeAndRate.rotated, ", i, "x", i2, "@");
                    m79442.append(d);
                    AbstractC3731.m7852("MediaCodecInfo", "AssumedSupport [" + m79442.toString() + "] [" + str + ", " + this.f4461 + "] [" + AbstractC3712.f14481 + "]");
                    return true;
                }
            }
            StringBuilder m79443 = AbstractC3740.m7944("sizeAndRate.support, ", i, "x", i2, "@");
            m79443.append(d);
            m3636(m79443.toString());
            return false;
        }
        return true;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m3636(String str) {
        StringBuilder m5370 = AbstractC2305.m5370("NoSupport [", str, "] [");
        m5370.append(this.f4462);
        m5370.append(", ");
        m5370.append(this.f4461);
        m5370.append("] [");
        m5370.append(AbstractC3712.f14481);
        m5370.append("]");
        AbstractC3731.m7852("MediaCodecInfo", m5370.toString());
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C4687 m3637(C1495 c1495, C1495 c14952) {
        C1495 c14953;
        C1495 c14954;
        int i;
        String str = c1495.f5930;
        C1446 c1446 = c1495.f5912;
        String str2 = c14952.f5930;
        C1446 c14462 = c14952.f5912;
        int i2 = !Objects.equals(str, str2) ? 8 : 0;
        if (this.f4453) {
            if (c1495.f5935 != c14952.f5935) {
                i2 |= 1024;
            }
            boolean z = (c1495.f5905 == c14952.f5905 && c1495.f5899 == c14952.f5899) ? false : true;
            if (!this.f4457 && z) {
                i2 |= 512;
            }
            if ((!C1446.m4233(c1446) || !C1446.m4233(c14462)) && !Objects.equals(c1446, c14462)) {
                i2 |= 2048;
            }
            if (Build.MODEL.startsWith("SM-T230") && "OMX.MARVELL.VIDEO.HW.CODA7542DECODER".equals(this.f4462) && !c1495.m4299(c14952)) {
                i2 |= 2;
            }
            int i3 = c1495.f5921;
            if (i3 != -1 && (i = c1495.f5907) != -1 && i3 == c14952.f5921 && i == c14952.f5907 && z) {
                i2 |= 2;
            }
            if (i2 == 0) {
                return new C4687(this.f4462, c1495, c14952, c1495.m4299(c14952) ? 3 : 2, 0);
            }
            c14953 = c1495;
            c14954 = c14952;
        } else {
            c14953 = c1495;
            c14954 = c14952;
            if (c14953.f5916 != c14954.f5916) {
                i2 |= 4096;
            }
            if (c14953.f5923 != c14954.f5923) {
                i2 |= 8192;
            }
            if (c14953.f5915 != c14954.f5915) {
                i2 |= 16384;
            }
            String str3 = this.f4461;
            if (i2 == 0 && "audio/mp4a-latm".equals(str3)) {
                HashMap hashMap = AbstractC1162.f4449;
                Pair m7812 = AbstractC3715.m7812(c14953);
                Pair m78122 = AbstractC3715.m7812(c14954);
                if (m7812 != null && m78122 != null) {
                    int intValue = ((Integer) m7812.first).intValue();
                    int intValue2 = ((Integer) m78122.first).intValue();
                    if (intValue == 42 && intValue2 == 42) {
                        return new C4687(this.f4462, c14953, c14954, 3, 0);
                    }
                }
            }
            if (!c14953.m4299(c14954)) {
                i2 |= 32;
            }
            if ("audio/opus".equals(str3)) {
                i2 |= 2;
            }
            if (i2 == 0) {
                return new C4687(this.f4462, c14953, c14954, 1, 0);
            }
        }
        return new C4687(this.f4462, c14953, c14954, 0, i2);
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final boolean m3638(C1495 c1495) {
        if (this.f4453) {
            return this.f4457;
        }
        HashMap hashMap = AbstractC1162.f4449;
        Pair m7812 = AbstractC3715.m7812(c1495);
        return m7812 != null && ((Integer) m7812.first).intValue() == 42;
    }
}
