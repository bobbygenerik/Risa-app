package p032;

import android.media.MediaCodecInfo;
import android.os.Build;
import android.util.Pair;
import com.google.android.gms.internal.measurement.ˏʻ;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import p017.AbstractC0993;
import p017.C0956;
import p017.C0968;
import p027.C1090;
import p055.AbstractC1464;
import p055.C1495;
import p305.AbstractC3715;
import p305.AbstractC3731;
import ﹳˋ.ʼˎ;

/* renamed from: ʼᵢ.ـˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1162 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final HashMap f4449 = new HashMap();

    /* renamed from: ʽ, reason: contains not printable characters */
    public static String m3619(MediaCodecInfo mediaCodecInfo, String str, String str2) {
        for (String str3 : mediaCodecInfo.getSupportedTypes()) {
            if (str3.equalsIgnoreCase(str2)) {
                return str3;
            }
        }
        if (str2.equals("video/dolby-vision")) {
            if ("OMX.MS.HEVCDV.Decoder".equals(str)) {
                return "video/hevcdv";
            }
            if ("OMX.RTK.video.decoder".equals(str) || "OMX.realtek.video.decoder.tunneled".equals(str)) {
                return "video/dv_hevc";
            }
            return null;
        }
        if (str2.equals("video/mv-hevc")) {
            if ("c2.qti.mvhevc.decoder".equals(str) || "c2.qti.mvhevc.decoder.secure".equals(str)) {
                return "video/x-mvhevc";
            }
            return null;
        }
        if (str2.equals("audio/alac") && "OMX.lge.alac.decoder".equals(str)) {
            return "audio/x-lg-alac";
        }
        if (str2.equals("audio/flac") && "OMX.lge.flac.decoder".equals(str)) {
            return "audio/x-lg-flac";
        }
        if (str2.equals("audio/ac3") && "OMX.lge.ac3.decoder".equals(str)) {
            return "audio/lg-ac3";
        }
        return null;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static synchronized List m3620(String str, boolean z, boolean z2) {
        synchronized (AbstractC1162.class) {
            try {
                C1159 c1159 = new C1159(str, z, z2);
                HashMap hashMap = f4449;
                List list = (List) hashMap.get(c1159);
                if (list != null) {
                    return list;
                }
                ArrayList m3621 = m3621(c1159, new C1090(z, z2, str.equals("video/mv-hevc")));
                if (z && m3621.isEmpty() && Build.VERSION.SDK_INT <= 23) {
                    m3621 = m3621(c1159, new ʼˎ(5));
                    if (!m3621.isEmpty()) {
                        AbstractC3731.m7850("MediaCodecUtil", "MediaCodecList API didn't list secure decoder for: " + str + ". Assuming: " + ((C1165) m3621.get(0)).f4462);
                    }
                }
                m3625(str, m3621);
                AbstractC0993 m3264 = AbstractC0993.m3264(m3621);
                hashMap.put(c1159, m3264);
                return m3264;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x0119 A[Catch: Exception -> 0x0163, TRY_ENTER, TryCatch #4 {Exception -> 0x0163, blocks: (B:3:0x000a, B:5:0x001f, B:7:0x0029, B:11:0x0138, B:12:0x0035, B:15:0x0040, B:50:0x0111, B:53:0x0119, B:55:0x011f, B:58:0x0140, B:59:0x0161), top: B:2:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0140 A[ADDED_TO_REGION, SYNTHETIC] */
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.ArrayList m3621(p032.C1159 r20, p032.InterfaceC1153 r21) {
        /*
            Method dump skipped, instructions count: 364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p032.AbstractC1162.m3621(ʼᵢ.ˏי, ʼᵢ.ʽﹳ):java.util.ArrayList");
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static boolean m3622(MediaCodecInfo mediaCodecInfo, String str, boolean z, String str2) {
        if (mediaCodecInfo.isEncoder()) {
            return false;
        }
        if (!z && str.endsWith(".secure")) {
            return false;
        }
        int i = Build.VERSION.SDK_INT;
        if (i < 24 && (("OMX.SEC.aac.dec".equals(str) || "OMX.Exynos.AAC.Decoder".equals(str)) && "samsung".equals(Build.MANUFACTURER))) {
            String str3 = Build.DEVICE;
            if (str3.startsWith("zeroflte") || str3.startsWith("zerolte") || str3.startsWith("zenlte") || "SC-05G".equals(str3) || "marinelteatt".equals(str3) || "404SC".equals(str3) || "SC-04G".equals(str3) || "SCV31".equals(str3)) {
                return false;
            }
        }
        return (i <= 23 && "audio/eac3-joc".equals(str2) && "OMX.MTK.AUDIO.DECODER.DSPAC3".equals(str)) ? false : true;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static boolean m3623(MediaCodecInfo mediaCodecInfo, String str) {
        if (Build.VERSION.SDK_INT >= 29) {
            return mediaCodecInfo.isSoftwareOnly();
        }
        if (AbstractC1464.m4258(str)) {
            return true;
        }
        String str2 = ˏʻ.ˈⁱ(mediaCodecInfo.getName());
        if (str2.startsWith("arc.")) {
            return false;
        }
        if (str2.startsWith("omx.google.") || str2.startsWith("omx.ffmpeg.")) {
            return true;
        }
        if ((str2.startsWith("omx.sec.") && str2.contains(".sw.")) || str2.equals("omx.qcom.video.decoder.hevcswvdec") || str2.startsWith("c2.android.") || str2.startsWith("c2.google.")) {
            return true;
        }
        return (str2.startsWith("omx.") || str2.startsWith("c2.")) ? false : true;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static String m3624(C1495 c1495) {
        Pair m7812;
        String str = c1495.f5930;
        String str2 = c1495.f5930;
        if ("audio/eac3-joc".equals(str)) {
            return "audio/eac3";
        }
        if ("video/dolby-vision".equals(str2) && (m7812 = AbstractC3715.m7812(c1495)) != null) {
            int intValue = ((Integer) m7812.first).intValue();
            if (intValue == 16 || intValue == 256) {
                return "video/hevc";
            }
            if (intValue == 512) {
                return "video/avc";
            }
            if (intValue == 1024) {
                return "video/av01";
            }
        }
        if ("video/mv-hevc".equals(str2)) {
            return "video/hevc";
        }
        return null;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m3625(String str, ArrayList arrayList) {
        if ("audio/raw".equals(str)) {
            if (Build.VERSION.SDK_INT < 26 && Build.DEVICE.equals("R9") && arrayList.size() == 1 && ((C1165) arrayList.get(0)).f4462.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                arrayList.add(C1165.m3630("OMX.google.raw.decoder", "audio/raw", "audio/raw", null, false, true, false, false));
            }
            Collections.sort(arrayList, new C1161(0, new Object()));
        }
        if (Build.VERSION.SDK_INT >= 32 || arrayList.size() <= 1 || !"OMX.qti.audio.decoder.flac".equals(((C1165) arrayList.get(0)).f4462)) {
            return;
        }
        arrayList.add((C1165) arrayList.remove(0));
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static C0956 m3626(InterfaceC1170 interfaceC1170, C1495 c1495, boolean z, boolean z2) {
        List mo3583 = interfaceC1170.mo3583(c1495.f5930, z, z2);
        String m3624 = m3624(c1495);
        List mo35832 = m3624 == null ? C0956.f3901 : interfaceC1170.mo3583(m3624, z, z2);
        C0968 m3261 = AbstractC0993.m3261();
        m3261.m3236(mo3583);
        m3261.m3236(mo35832);
        return m3261.m3249();
    }
}
