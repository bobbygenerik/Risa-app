package androidx.media3.decoder.ffmpeg;

import java.util.Arrays;
import p055.AbstractC1449;
import p223.C3056;
import p305.AbstractC3731;

/* loaded from: classes.dex */
public abstract class FfmpegLibrary {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static int f1153;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static String f1154;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C0212 f1155;

    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.media3.decoder.ffmpeg.ˈ, java.lang.Object] */
    static {
        AbstractC1449.m4241("media3.decoder.ffmpeg");
        ?? obj = new Object();
        obj.f1184 = new String[]{"ffmpegJNI"};
        f1155 = obj;
        f1153 = -1;
    }

    private static native int ffmpegGetInputBufferPaddingSize();

    private static native String ffmpegGetVersion();

    private static native boolean ffmpegHasDecoder(String str);

    /* renamed from: ʽ, reason: contains not printable characters */
    public static String m751() {
        if (!m752()) {
            return null;
        }
        if (f1154 == null) {
            f1154 = ffmpegGetVersion();
        }
        return f1154;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static boolean m752() {
        C0212 c0212 = f1155;
        synchronized (c0212) {
            if (c0212.f1186) {
                return c0212.f1185;
            }
            c0212.f1186 = true;
            try {
                for (String str : (String[]) c0212.f1184) {
                    System.loadLibrary(str);
                }
                c0212.f1185 = true;
            } catch (UnsatisfiedLinkError unused) {
                AbstractC3731.m7850("LibraryLoader", "Failed to load " + Arrays.toString((String[]) c0212.f1184));
            }
            return c0212.f1185;
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static boolean m753(String str) {
        String m755;
        if (!m752() || (m755 = m755(str)) == null) {
            return false;
        }
        if (ffmpegHasDecoder(m755)) {
            return true;
        }
        AbstractC3731.m7850("FfmpegLibrary", "No " + m755 + " decoder available. Check the FFmpeg build configuration.");
        return false;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static int m754() {
        if (!m752()) {
            return -1;
        }
        if (f1153 == -1) {
            f1153 = ffmpegGetInputBufferPaddingSize();
        }
        return f1153;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static String m755(String str) {
        str.getClass();
        char c = 65535;
        switch (str.hashCode()) {
            case -2123537834:
                if (str.equals("audio/eac3-joc")) {
                    c = 0;
                    break;
                }
                break;
            case -1662541442:
                if (str.equals("video/hevc")) {
                    c = 1;
                    break;
                }
                break;
            case -1606874997:
                if (str.equals("audio/amr-wb")) {
                    c = 2;
                    break;
                }
                break;
            case -1095064472:
                if (str.equals("audio/vnd.dts")) {
                    c = 3;
                    break;
                }
                break;
            case -1003765268:
                if (str.equals("audio/vorbis")) {
                    c = 4;
                    break;
                }
                break;
            case -432837260:
                if (str.equals("audio/mpeg-L1")) {
                    c = 5;
                    break;
                }
                break;
            case -432837259:
                if (str.equals("audio/mpeg-L2")) {
                    c = 6;
                    break;
                }
                break;
            case -53558318:
                if (str.equals("audio/mp4a-latm")) {
                    c = 7;
                    break;
                }
                break;
            case 187078296:
                if (str.equals("audio/ac3")) {
                    c = '\b';
                    break;
                }
                break;
            case 1331836730:
                if (str.equals("video/avc")) {
                    c = '\t';
                    break;
                }
                break;
            case 1503095341:
                if (str.equals("audio/3gpp")) {
                    c = '\n';
                    break;
                }
                break;
            case 1504470054:
                if (str.equals("audio/alac")) {
                    c = 11;
                    break;
                }
                break;
            case 1504578661:
                if (str.equals("audio/eac3")) {
                    c = '\f';
                    break;
                }
                break;
            case 1504619009:
                if (str.equals("audio/flac")) {
                    c = '\r';
                    break;
                }
                break;
            case 1504831518:
                if (str.equals("audio/mpeg")) {
                    c = 14;
                    break;
                }
                break;
            case 1504891608:
                if (str.equals("audio/opus")) {
                    c = 15;
                    break;
                }
                break;
            case 1505942594:
                if (str.equals("audio/vnd.dts.hd")) {
                    c = 16;
                    break;
                }
                break;
            case 1556697186:
                if (str.equals("audio/true-hd")) {
                    c = 17;
                    break;
                }
                break;
            case 1903231877:
                if (str.equals("audio/g711-alaw")) {
                    c = 18;
                    break;
                }
                break;
            case 1903589369:
                if (str.equals("audio/g711-mlaw")) {
                    c = 19;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
            case '\f':
                return "eac3";
            case 1:
                return "hevc";
            case 2:
                return "amrwb";
            case 3:
            case 16:
                return "dca";
            case 4:
                return "vorbis";
            case 5:
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
            case 14:
                return "mp3";
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                return "aac";
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                return "ac3";
            case '\t':
                return "h264";
            case '\n':
                return "amrnb";
            case 11:
                return "alac";
            case '\r':
                return "flac";
            case 15:
                return "opus";
            case 17:
                return "truehd";
            case 18:
                return "pcm_alaw";
            case 19:
                return "pcm_mulaw";
            default:
                return null;
        }
    }
}
