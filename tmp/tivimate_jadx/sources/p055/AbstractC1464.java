package p055;

import android.text.TextUtils;
import com.google.android.gms.internal.measurement.ˏʻ;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p003.C0781;
import p223.C3056;
import p305.AbstractC3712;
import p307.AbstractC3740;

/* renamed from: ʽⁱ.ˉٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1464 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final ArrayList f5725 = new ArrayList();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final Pattern f5724 = Pattern.compile("^mp4a\\.([a-zA-Z0-9]{2})(?:\\.([0-9]{1,2}))?$");

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static int m4250(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (m4258(str)) {
            return 1;
        }
        if (m4256(str)) {
            return 2;
        }
        if (m4260(str)) {
            return 3;
        }
        if (m4255(str)) {
            return 4;
        }
        if ("application/id3".equals(str) || "application/x-emsg".equals(str) || "application/x-scte35".equals(str) || "application/x-icy".equals(str) || "application/vnd.dvb.ait".equals(str)) {
            return 5;
        }
        if ("application/x-camera-motion".equals(str)) {
            return 6;
        }
        ArrayList arrayList = f5725;
        if (arrayList.size() <= 0) {
            return -1;
        }
        throw AbstractC3740.m7931(0, arrayList);
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public static String m4251(String str) {
        if (str == null) {
            return null;
        }
        String str2 = ˏʻ.ˈⁱ(str);
        str2.getClass();
        char c = 65535;
        switch (str2.hashCode()) {
            case -1833600100:
                if (str2.equals("video/x-mvhevc")) {
                    c = 0;
                    break;
                }
                break;
            case -1007807498:
                if (str2.equals("audio/x-flac")) {
                    c = 1;
                    break;
                }
                break;
            case -979095690:
                if (str2.equals("application/x-mpegurl")) {
                    c = 2;
                    break;
                }
                break;
            case -586683234:
                if (str2.equals("audio/x-wav")) {
                    c = 3;
                    break;
                }
                break;
            case -432836268:
                if (str2.equals("audio/mpeg-l1")) {
                    c = 4;
                    break;
                }
                break;
            case -432836267:
                if (str2.equals("audio/mpeg-l2")) {
                    c = 5;
                    break;
                }
                break;
            case 187090231:
                if (str2.equals("audio/mp3")) {
                    c = 6;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return "video/mv-hevc";
            case 1:
                return "audio/flac";
            case 2:
                return "application/x-mpegURL";
            case 3:
                return "audio/wav";
            case 4:
                return "audio/mpeg-L1";
            case 5:
                return "audio/mpeg-L2";
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return "audio/mpeg";
            default:
                return str2;
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static String m4252(String str, String str2) {
        if (str != null && str2 != null) {
            String[] m7781 = AbstractC3712.m7781(str);
            StringBuilder sb = new StringBuilder();
            for (String str3 : m7781) {
                if (str2.equals(m4257(str3))) {
                    if (sb.length() > 0) {
                        sb.append(",");
                    }
                    sb.append(str3);
                }
            }
            if (sb.length() > 0) {
                return sb.toString();
            }
        }
        return null;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static String m4253(String str) {
        if (str == null) {
            return null;
        }
        for (String str2 : AbstractC3712.m7781(str)) {
            String m4257 = m4257(str2);
            if (m4257 != null && m4256(m4257)) {
                return m4257;
            }
        }
        return null;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static int m4254(String str, String str2) {
        C0781 m4259;
        str.getClass();
        char c = 65535;
        switch (str.hashCode()) {
            case -2123537834:
                if (str.equals("audio/eac3-joc")) {
                    c = 0;
                    break;
                }
                break;
            case -1365340241:
                if (str.equals("audio/vnd.dts.hd;profile=lbr")) {
                    c = 1;
                    break;
                }
                break;
            case -1095064472:
                if (str.equals("audio/vnd.dts")) {
                    c = 2;
                    break;
                }
                break;
            case -53558318:
                if (str.equals("audio/mp4a-latm")) {
                    c = 3;
                    break;
                }
                break;
            case 187078296:
                if (str.equals("audio/ac3")) {
                    c = 4;
                    break;
                }
                break;
            case 187078297:
                if (str.equals("audio/ac4")) {
                    c = 5;
                    break;
                }
                break;
            case 550520934:
                if (str.equals("audio/vnd.dts.uhd;profile=p2")) {
                    c = 6;
                    break;
                }
                break;
            case 1504578661:
                if (str.equals("audio/eac3")) {
                    c = 7;
                    break;
                }
                break;
            case 1504831518:
                if (str.equals("audio/mpeg")) {
                    c = '\b';
                    break;
                }
                break;
            case 1504891608:
                if (str.equals("audio/opus")) {
                    c = '\t';
                    break;
                }
                break;
            case 1505942594:
                if (str.equals("audio/vnd.dts.hd")) {
                    c = '\n';
                    break;
                }
                break;
            case 1556697186:
                if (str.equals("audio/true-hd")) {
                    c = 11;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return 18;
            case 1:
                return 8;
            case 2:
                return 7;
            case 3:
                if (str2 == null || (m4259 = m4259(str2)) == null) {
                    return 0;
                }
                return m4259.m2877();
            case 4:
                return 5;
            case 5:
                return 17;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return 30;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                return 6;
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                return 9;
            case '\t':
                return 20;
            case '\n':
                return 8;
            case 11:
                return 14;
            default:
                return 0;
        }
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static boolean m4255(String str) {
        return "image".equals(m4261(str)) || "application/x-image-uri".equals(str);
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public static boolean m4256(String str) {
        return "video".equals(m4261(str));
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static String m4257(String str) {
        C0781 m4259;
        String str2 = null;
        if (str != null) {
            String str3 = ˏʻ.ˈⁱ(str.trim());
            if (str3.startsWith("avc1") || str3.startsWith("avc3")) {
                return "video/avc";
            }
            if (str3.startsWith("hev1") || str3.startsWith("hvc1")) {
                return "video/hevc";
            }
            if (str3.startsWith("dvav") || str3.startsWith("dva1") || str3.startsWith("dvhe") || str3.startsWith("dvh1")) {
                return "video/dolby-vision";
            }
            if (str3.startsWith("av01")) {
                return "video/av01";
            }
            if (str3.startsWith("vp9") || str3.startsWith("vp09")) {
                return "video/x-vnd.on2.vp9";
            }
            if (str3.startsWith("vp8") || str3.startsWith("vp08")) {
                return "video/x-vnd.on2.vp8";
            }
            if (str3.startsWith("mp4a")) {
                if (str3.startsWith("mp4a.") && (m4259 = m4259(str3)) != null) {
                    str2 = m4265(m4259.f3265);
                }
                return str2 == null ? "audio/mp4a-latm" : str2;
            }
            if (str3.startsWith("mha1")) {
                return "audio/mha1";
            }
            if (str3.startsWith("mhm1")) {
                return "audio/mhm1";
            }
            if (str3.startsWith("ac-3") || str3.startsWith("dac3")) {
                return "audio/ac3";
            }
            if (str3.startsWith("ec-3") || str3.startsWith("dec3")) {
                return "audio/eac3";
            }
            if (str3.startsWith("ec+3")) {
                return "audio/eac3-joc";
            }
            if (str3.startsWith("ac-4") || str3.startsWith("dac4")) {
                return "audio/ac4";
            }
            if (str3.startsWith("dtsc")) {
                return "audio/vnd.dts";
            }
            if (str3.startsWith("dtse")) {
                return "audio/vnd.dts.hd;profile=lbr";
            }
            if (str3.startsWith("dtsh") || str3.startsWith("dtsl")) {
                return "audio/vnd.dts.hd";
            }
            if (str3.startsWith("dtsx")) {
                return "audio/vnd.dts.uhd;profile=p2";
            }
            if (str3.startsWith("opus")) {
                return "audio/opus";
            }
            if (str3.startsWith("vorbis")) {
                return "audio/vorbis";
            }
            if (str3.startsWith("flac")) {
                return "audio/flac";
            }
            if (str3.startsWith("stpp")) {
                return "application/ttml+xml";
            }
            if (str3.startsWith("wvtt")) {
                return "text/vtt";
            }
            if (str3.contains("cea708")) {
                return "application/cea-708";
            }
            if (str3.contains("eia608") || str3.contains("cea608")) {
                return "application/cea-608";
            }
            ArrayList arrayList = f5725;
            if (arrayList.size() > 0) {
                throw AbstractC3740.m7931(0, arrayList);
            }
        }
        return null;
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static boolean m4258(String str) {
        return "audio".equals(m4261(str));
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static C0781 m4259(String str) {
        Matcher matcher = f5724.matcher(str);
        if (!matcher.matches()) {
            return null;
        }
        String group = matcher.group(1);
        group.getClass();
        String group2 = matcher.group(2);
        try {
            return new C0781(Integer.parseInt(group, 16), group2 != null ? Integer.parseInt(group2) : 0);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static boolean m4260(String str) {
        return "text".equals(m4261(str)) || "application/x-media3-cues".equals(str) || "application/cea-608".equals(str) || "application/cea-708".equals(str) || "application/x-mp4-cea-608".equals(str) || "application/x-subrip".equals(str) || "application/ttml+xml".equals(str) || "application/x-quicktime-tx3g".equals(str) || "application/x-mp4-vtt".equals(str) || "application/x-rawcc".equals(str) || "application/vobsub".equals(str) || "application/pgs".equals(str) || "application/dvbsubs".equals(str);
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static String m4261(String str) {
        int indexOf;
        if (str == null || (indexOf = str.indexOf(47)) == -1) {
            return null;
        }
        return str.substring(0, indexOf);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static String m4262(String str) {
        if (str == null) {
            return null;
        }
        for (String str2 : AbstractC3712.m7781(str)) {
            String m4257 = m4257(str2);
            if (m4257 != null && m4258(m4257)) {
                return m4257;
            }
        }
        return null;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static boolean m4263(String str, String str2) {
        C0781 m4259;
        int m2877;
        if (str == null) {
            return false;
        }
        char c = 65535;
        switch (str.hashCode()) {
            case -2123537834:
                if (str.equals("audio/eac3-joc")) {
                    c = 0;
                    break;
                }
                break;
            case -432837260:
                if (str.equals("audio/mpeg-L1")) {
                    c = 1;
                    break;
                }
                break;
            case -432837259:
                if (str.equals("audio/mpeg-L2")) {
                    c = 2;
                    break;
                }
                break;
            case -53558318:
                if (str.equals("audio/mp4a-latm")) {
                    c = 3;
                    break;
                }
                break;
            case 187078296:
                if (str.equals("audio/ac3")) {
                    c = 4;
                    break;
                }
                break;
            case 187094639:
                if (str.equals("audio/raw")) {
                    c = 5;
                    break;
                }
                break;
            case 1504578661:
                if (str.equals("audio/eac3")) {
                    c = 6;
                    break;
                }
                break;
            case 1504619009:
                if (str.equals("audio/flac")) {
                    c = 7;
                    break;
                }
                break;
            case 1504831518:
                if (str.equals("audio/mpeg")) {
                    c = '\b';
                    break;
                }
                break;
            case 1903231877:
                if (str.equals("audio/g711-alaw")) {
                    c = '\t';
                    break;
                }
                break;
            case 1903589369:
                if (str.equals("audio/g711-mlaw")) {
                    c = '\n';
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
            case 1:
            case 2:
            case 4:
            case 5:
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
            case '\t':
            case '\n':
                return true;
            case 3:
                return (str2 == null || (m4259 = m4259(str2)) == null || (m2877 = m4259.m2877()) == 0 || m2877 == 16) ? false : true;
            default:
                return false;
        }
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static boolean m4264(String str, String str2) {
        if (str == null) {
            return false;
        }
        if (str.startsWith("dvhe") || str.startsWith("dvh1")) {
            return true;
        }
        if (str2 == null) {
            return false;
        }
        return (str2.startsWith("dvhe") && str.startsWith("hev1")) || (str2.startsWith("dvh1") && str.startsWith("hvc1")) || ((str2.startsWith("dvav") && str.startsWith("avc3")) || ((str2.startsWith("dva1") && str.startsWith("avc1")) || (str2.startsWith("dav1") && str.startsWith("av01"))));
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static String m4265(int i) {
        if (i == 32) {
            return "video/mp4v-es";
        }
        if (i == 33) {
            return "video/avc";
        }
        if (i == 35) {
            return "video/hevc";
        }
        if (i == 64) {
            return "audio/mp4a-latm";
        }
        if (i == 163) {
            return "video/wvc1";
        }
        if (i == 177) {
            return "video/x-vnd.on2.vp9";
        }
        if (i == 221) {
            return "audio/vorbis";
        }
        if (i == 165) {
            return "audio/ac3";
        }
        if (i == 166) {
            return "audio/eac3";
        }
        switch (i) {
            case 96:
            case 97:
            case 98:
            case 99:
            case 100:
            case 101:
                return "video/mpeg2";
            case 102:
            case 103:
            case 104:
                return "audio/mp4a-latm";
            case 105:
            case 107:
                return "audio/mpeg";
            case 106:
                return "video/mpeg";
            case 108:
                return "image/jpeg";
            default:
                switch (i) {
                    case 169:
                    case 172:
                        return "audio/vnd.dts";
                    case 170:
                    case 171:
                        return "audio/vnd.dts.hd";
                    case 173:
                        return "audio/opus";
                    case 174:
                        return "audio/ac4";
                    default:
                        return null;
                }
        }
    }
}
