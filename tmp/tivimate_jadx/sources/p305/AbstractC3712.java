package p305;

import android.app.UiModeManager;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Point;
import android.hardware.display.DisplayManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.Display;
import android.view.WindowManager;
import androidx.media3.common.ParserException;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.measurement.ˏʻ;
import j$.util.DesugarTimeZone;
import j$.util.Objects;
import java.io.Closeable;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Formatter;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p010.AbstractC0844;
import p027.C1090;
import p035.AbstractC1220;
import p055.AbstractC1464;
import p055.C1490;
import p055.C1495;
import p055.InterfaceC1488;
import p223.C3056;
import p392.C4644;
import ˈˋ.ʾˊ;

/* renamed from: ᐧˎ.ʼʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3712 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static final String[] f14472;

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final long[] f14473;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static final int[] f14474;

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final Pattern f14475;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final Pattern f14476;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static final int[] f14477;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static HashMap f14478;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static final String[] f14479;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final byte[] f14480;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final String f14481;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static final int[] f14482;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final Pattern f14483;

    static {
        int i = Build.VERSION.SDK_INT;
        String str = Build.DEVICE;
        String str2 = Build.MANUFACTURER;
        f14481 = str + ", " + Build.MODEL + ", " + str2 + ", " + i;
        f14480 = new byte[0];
        f14473 = new long[0];
        f14475 = Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)))?");
        f14476 = Pattern.compile("^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$");
        Pattern.compile("%([A-Fa-f0-9]{2})");
        f14483 = Pattern.compile("(?:.*\\.)?isml?(?:/(manifest(.*))?)?", 2);
        f14479 = new String[]{"alb", "sq", "arm", "hy", "baq", "eu", "bur", "my", "tib", "bo", "chi", "zh", "cze", "cs", "dut", "nl", "ger", "de", "gre", "el", "fre", "fr", "geo", "ka", "ice", "is", "mac", "mk", "mao", "mi", "may", "ms", "per", "fa", "rum", "ro", "scc", "hbs-srp", "slo", "sk", "wel", "cy", "id", "ms-ind", "iw", "he", "heb", "he", "ji", "yi", "arb", "ar-arb", "in", "ms-ind", "ind", "ms-ind", "nb", "no-nob", "nob", "no-nob", "nn", "no-nno", "nno", "no-nno", "tw", "ak-twi", "twi", "ak-twi", "bs", "hbs-bos", "bos", "hbs-bos", "hr", "hbs-hrv", "hrv", "hbs-hrv", "sr", "hbs-srp", "srp", "hbs-srp", "cmn", "zh-cmn", "hak", "zh-hak", "nan", "zh-nan", "hsn", "zh-hsn"};
        f14472 = new String[]{"i-lux", "lb", "i-hak", "zh-hak", "i-navajo", "nv", "no-bok", "no-nob", "no-nyn", "no-nno", "zh-guoyu", "zh-cmn", "zh-hakka", "zh-hak", "zh-min-nan", "zh-nan", "zh-xiang", "zh-hsn"};
        f14474 = new int[]{0, 79764919, 159529838, 222504665, 319059676, 398814059, 445009330, 507990021, 638119352, 583659535, 797628118, 726387553, 890018660, 835552979, 1015980042, 944750013, 1276238704, 1221641927, 1167319070, 1095957929, 1595256236, 1540665371, 1452775106, 1381403509, 1780037320, 1859660671, 1671105958, 1733955601, 2031960084, 2111593891, 1889500026, 1952343757, -1742489888, -1662866601, -1851683442, -1788833735, -1960329156, -1880695413, -2103051438, -2040207643, -1104454824, -1159051537, -1213636554, -1284997759, -1389417084, -1444007885, -1532160278, -1603531939, -734892656, -789352409, -575645954, -646886583, -952755380, -1007220997, -827056094, -898286187, -231047128, -151282273, -71779514, -8804623, -515967244, -436212925, -390279782, -327299027, 881225847, 809987520, 1023691545, 969234094, 662832811, 591600412, 771767749, 717299826, 311336399, 374308984, 453813921, 533576470, 25881363, 88864420, 134795389, 214552010, 2023205639, 2086057648, 1897238633, 1976864222, 1804852699, 1867694188, 1645340341, 1724971778, 1587496639, 1516133128, 1461550545, 1406951526, 1302016099, 1230646740, 1142491917, 1087903418, -1398421865, -1469785312, -1524105735, -1578704818, -1079922613, -1151291908, -1239184603, -1293773166, -1968362705, -1905510760, -2094067647, -2014441994, -1716953613, -1654112188, -1876203875, -1796572374, -525066777, -462094256, -382327159, -302564546, -206542021, -143559028, -97365931, -17609246, -960696225, -1031934488, -817968335, -872425850, -709327229, -780559564, -600130067, -654598054, 1762451694, 1842216281, 1619975040, 1682949687, 2047383090, 2127137669, 1938468188, 2001449195, 1325665622, 1271206113, 1183200824, 1111960463, 1543535498, 1489069629, 1434599652, 1363369299, 622672798, 568075817, 748617968, 677256519, 907627842, 853037301, 1067152940, 995781531, 51762726, 131386257, 177728840, 240578815, 269590778, 349224269, 429104020, 491947555, -248556018, -168932423, -122852000, -60002089, -500490030, -420856475, -341238852, -278395381, -685261898, -739858943, -559578920, -630940305, -1004286614, -1058877219, -845023740, -916395085, -1119974018, -1174433591, -1262701040, -1333941337, -1371866206, -1426332139, -1481064244, -1552294533, -1690935098, -1611170447, -1833673816, -1770699233, -2009983462, -1930228819, -2119160460, -2056179517, 1569362073, 1498123566, 1409854455, 1355396672, 1317987909, 1246755826, 1192025387, 1137557660, 2072149281, 2135122070, 1912620623, 1992383480, 1753615357, 1816598090, 1627664531, 1707420964, 295390185, 358241886, 404320391, 483945776, 43990325, 106832002, 186451547, 266083308, 932423249, 861060070, 1041341759, 986742920, 613929101, 542559546, 756411363, 701822548, -978770311, -1050133554, -869589737, -924188512, -693284699, -764654318, -550540341, -605129092, -475935807, -413084042, -366743377, -287118056, -257573603, -194731862, -114850189, -35218492, -1984365303, -1921392450, -2143631769, -2063868976, -1698919467, -1635936670, -1824608069, -1744851700, -1347415887, -1418654458, -1506661409, -1561119128, -1129027987, -1200260134, -1254728445, -1309196108};
        f14477 = new int[]{0, 4129, 8258, 12387, 16516, 20645, 24774, 28903, 33032, 37161, 41290, 45419, 49548, 53677, 57806, 61935};
        f14482 = new int[]{0, 7, 14, 9, 28, 27, 18, 21, 56, 63, 54, 49, 36, 35, 42, 45, 112, 119, 126, 121, 108, 107, 98, 101, 72, 79, 70, 65, 84, 83, 90, 93, 224, 231, 238, 233, 252, 251, 242, 245, 216, 223, 214, 209, 196, 195, 202, 205, 144, 151, 158, 153, 140, 139, 130, 133, 168, 175, 166, 161, 180, 179, 186, 189, 199, 192, 201, 206, 219, 220, 213, 210, 255, 248, 241, 246, 227, 228, 237, 234, 183, 176, 185, 190, 171, 172, 165, 162, 143, 136, 129, 134, 147, 148, 157, 154, 39, 32, 41, 46, 59, 60, 53, 50, 31, 24, 17, 22, 3, 4, 13, 10, 87, 80, 89, 94, 75, 76, 69, 66, 111, 104, 97, 102, 115, 116, 125, 122, 137, 142, 135, 128, 149, 146, ModuleDescriptor.MODULE_VERSION, 156, 177, 182, 191, 184, 173, 170, 163, 164, 249, 254, 247, 240, 229, 226, 235, 236, 193, 198, 207, 200, 221, 218, 211, 212, 105, 110, 103, 96, 117, 114, 123, 124, 81, 86, 95, 88, 77, 74, 67, 68, 25, 30, 23, 16, 5, 2, 11, 12, 33, 38, 47, 40, 61, 58, 51, 52, 78, 73, 64, 71, 82, 85, 92, 91, 118, 113, 120, 127, 106, 109, 100, 99, 62, 57, 48, 55, 34, 37, 44, 43, 6, 1, 8, 15, 26, 29, 20, 19, 174, 169, 160, 167, 178, 181, 188, 187, 150, 145, 152, 159, 138, 141, 132, 131, 222, 217, 208, 215, 194, 197, 204, 203, 230, 225, 232, 239, 250, 253, 244, 243};
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public static int m7754(int i, String str) {
        int i2 = 0;
        for (String str2 : m7781(str)) {
            if (i == AbstractC1464.m4250(AbstractC1464.m4257(str2))) {
                i2++;
            }
        }
        return i2;
    }

    /* renamed from: ʻᵎ, reason: contains not printable characters */
    public static long m7755(long j) {
        return (j == -9223372036854775807L || j == Long.MIN_VALUE) ? j : j / 1000;
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public static Locale m7756() {
        return Build.VERSION.SDK_INT >= 24 ? Locale.getDefault(Locale.Category.DISPLAY) : Locale.getDefault();
    }

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public static long m7757(long j) {
        return (j == -9223372036854775807L || j == Long.MIN_VALUE) ? j : j * 1000;
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static int m7758(int i, int i2, int i3) {
        return Math.max(i2, Math.min(i, i3));
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public static Handler m7759(Handler.Callback callback) {
        Looper myLooper = Looper.myLooper();
        AbstractC3731.m7868(myLooper);
        return new Handler(myLooper, callback);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static int m7760(C1090 c1090, long j) {
        int i = c1090.f4254 - 1;
        int i2 = 0;
        while (i2 <= i) {
            int i3 = (i2 + i) >>> 1;
            if (c1090.m3469(i3) < j) {
                i2 = i3 + 1;
            } else {
                i = i3 - 1;
            }
        }
        int i4 = i + 1;
        if (i4 < c1090.f4254 && c1090.m3469(i4) == j) {
            return i4;
        }
        if (i == -1) {
            return 0;
        }
        return i;
    }

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static long m7761(long j) {
        return j == -9223372036854775807L ? System.currentTimeMillis() : SystemClock.elapsedRealtime() + j;
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public static byte[] m7762(String str) {
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            bArr[i] = (byte) (Character.digit(str.charAt(i2 + 1), 16) + (Character.digit(str.charAt(i2), 16) << 4));
        }
        return bArr;
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static int m7763(String str) {
        String[] split;
        int length;
        int i = 0;
        if (str == null || (length = (split = str.split("_", -1)).length) < 2) {
            return 0;
        }
        String str2 = split[length - 1];
        boolean z = length >= 3 && "neg".equals(split[length - 2]);
        try {
            str2.getClass();
            i = Integer.parseInt(str2);
            if (z) {
                return -i;
            }
        } catch (NumberFormatException unused) {
        }
        return i;
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public static Point m7764(Context context) {
        DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
        Display display = displayManager != null ? displayManager.getDisplay(0) : null;
        if (display == null) {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            windowManager.getClass();
            display = windowManager.getDefaultDisplay();
        }
        if (display.getDisplayId() == 0 && m7778(context)) {
            String m7798 = Build.VERSION.SDK_INT < 28 ? m7798("sys.display-size") : m7798("vendor.display-size");
            if (!TextUtils.isEmpty(m7798)) {
                try {
                    String[] split = m7798.trim().split("x", -1);
                    if (split.length == 2) {
                        int parseInt = Integer.parseInt(split[0]);
                        int parseInt2 = Integer.parseInt(split[1]);
                        if (parseInt > 0 && parseInt2 > 0) {
                            return new Point(parseInt, parseInt2);
                        }
                    }
                } catch (NumberFormatException unused) {
                }
                AbstractC3731.m7842("Util", "Invalid display size: " + m7798);
            }
            if ("Sony".equals(Build.MANUFACTURER) && Build.MODEL.startsWith("BRAVIA") && context.getPackageManager().hasSystemFeature("com.sony.dtv.hardware.panel.qfhd")) {
                return new Point(3840, 2160);
            }
        }
        Point point = new Point();
        Display.Mode mode = display.getMode();
        point.x = mode.getPhysicalWidth();
        point.y = mode.getPhysicalHeight();
        return point;
    }

    /* renamed from: ʿ, reason: contains not printable characters */
    public static long m7765(int i, long j) {
        return m7797(j, 1000000L, i, RoundingMode.DOWN);
    }

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public static void m7766(long[] jArr, long j) {
        long j2;
        RoundingMode roundingMode = RoundingMode.DOWN;
        int i = 0;
        if (j >= 1000000 && j % 1000000 == 0) {
            long j3 = ʾˊ.ᵔʾ(j, 1000000L, RoundingMode.UNNECESSARY);
            while (i < jArr.length) {
                jArr[i] = ʾˊ.ᵔʾ(jArr[i], j3, roundingMode);
                i++;
            }
            return;
        }
        if (j < 1000000 && 1000000 % j == 0) {
            long j4 = ʾˊ.ᵔʾ(1000000L, j, RoundingMode.UNNECESSARY);
            while (i < jArr.length) {
                jArr[i] = ʾˊ.ʽʽ(jArr[i], j4);
                i++;
            }
            return;
        }
        int i2 = 0;
        while (i2 < jArr.length) {
            long j5 = jArr[i2];
            if (j5 != 0) {
                if (j >= j5 && j % j5 == 0) {
                    jArr[i2] = ʾˊ.ᵔʾ(1000000L, ʾˊ.ᵔʾ(j, j5, RoundingMode.UNNECESSARY), roundingMode);
                } else if (j >= j5 || j5 % j != 0) {
                    j2 = j;
                    jArr[i2] = m7791(j5, 1000000L, j2, roundingMode);
                    i2++;
                    j = j2;
                } else {
                    jArr[i2] = ʾˊ.ʽʽ(1000000L, ʾˊ.ᵔʾ(j5, j, RoundingMode.UNNECESSARY));
                }
            }
            j2 = j;
            i2++;
            j = j2;
        }
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static long m7767(long j, long j2, long j3) {
        return Math.max(j2, Math.min(j, j3));
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0062, code lost:
    
        return false;
     */
    /* renamed from: ˆﾞ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m7768(p305.C3732 r3, p305.C3732 r4, java.util.zip.Inflater r5) {
        /*
            int r0 = r3.m7904()
            r1 = 0
            if (r0 != 0) goto L8
            return r1
        L8:
            byte[] r0 = r4.f14534
            int r0 = r0.length
            int r2 = r3.m7904()
            if (r0 >= r2) goto L1a
            int r0 = r3.m7904()
            int r0 = r0 * 2
            r4.m7877(r0)
        L1a:
            if (r5 != 0) goto L21
            java.util.zip.Inflater r5 = new java.util.zip.Inflater
            r5.<init>()
        L21:
            byte[] r0 = r3.f14534
            int r2 = r3.f14533
            int r3 = r3.m7904()
            r5.setInput(r0, r2, r3)
            r3 = r1
        L2d:
            byte[] r0 = r4.f14534     // Catch: java.lang.Throwable -> L44 java.util.zip.DataFormatException -> L67
            int r2 = r0.length     // Catch: java.lang.Throwable -> L44 java.util.zip.DataFormatException -> L67
            int r2 = r2 - r3
            int r0 = r5.inflate(r0, r3, r2)     // Catch: java.lang.Throwable -> L44 java.util.zip.DataFormatException -> L67
            int r3 = r3 + r0
            boolean r0 = r5.finished()     // Catch: java.lang.Throwable -> L44 java.util.zip.DataFormatException -> L67
            if (r0 == 0) goto L46
            r4.m7891(r3)     // Catch: java.lang.Throwable -> L44 java.util.zip.DataFormatException -> L67
            r5.reset()
            r3 = 1
            return r3
        L44:
            r3 = move-exception
            goto L63
        L46:
            boolean r0 = r5.needsDictionary()     // Catch: java.lang.Throwable -> L44 java.util.zip.DataFormatException -> L67
            if (r0 != 0) goto L5f
            boolean r0 = r5.needsInput()     // Catch: java.lang.Throwable -> L44 java.util.zip.DataFormatException -> L67
            if (r0 == 0) goto L53
            goto L5f
        L53:
            byte[] r0 = r4.f14534     // Catch: java.lang.Throwable -> L44 java.util.zip.DataFormatException -> L67
            int r2 = r0.length     // Catch: java.lang.Throwable -> L44 java.util.zip.DataFormatException -> L67
            if (r3 != r2) goto L2d
            int r0 = r0.length     // Catch: java.lang.Throwable -> L44 java.util.zip.DataFormatException -> L67
            int r0 = r0 * 2
            r4.m7877(r0)     // Catch: java.lang.Throwable -> L44 java.util.zip.DataFormatException -> L67
            goto L2d
        L5f:
            r5.reset()
            return r1
        L63:
            r5.reset()
            throw r3
        L67:
            r5.reset()
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: p305.AbstractC3712.m7768(ᐧˎ.ﹳᐧ, ᐧˎ.ﹳᐧ, java.util.zip.Inflater):boolean");
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static int m7769(int[] iArr, int i, boolean z, boolean z2) {
        int i2;
        int i3;
        int binarySearch = Arrays.binarySearch(iArr, i);
        if (binarySearch < 0) {
            i3 = -(binarySearch + 2);
        } else {
            while (true) {
                i2 = binarySearch - 1;
                if (i2 < 0 || iArr[i2] != i) {
                    break;
                }
                binarySearch = i2;
            }
            i3 = z ? binarySearch : i2;
        }
        return z2 ? Math.max(0, i3) : i3;
    }

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public static boolean m7770(int i) {
        return i == 3 || i == 2 || i == 268435456 || i == 21 || i == 1342177280 || i == 22 || i == 1610612736 || i == 4;
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static int m7771(int i, ByteOrder byteOrder) {
        if (i == 8) {
            return 3;
        }
        if (i == 16) {
            return byteOrder.equals(ByteOrder.LITTLE_ENDIAN) ? 2 : 268435456;
        }
        if (i == 24) {
            return byteOrder.equals(ByteOrder.LITTLE_ENDIAN) ? 21 : 1342177280;
        }
        if (i != 32) {
            return 0;
        }
        return byteOrder.equals(ByteOrder.LITTLE_ENDIAN) ? 22 : 1610612736;
    }

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public static long m7772(String str) {
        Matcher matcher = f14475.matcher(str);
        if (!matcher.matches()) {
            throw ParserException.m741(null, "Invalid date/time format: " + str);
        }
        int i = 0;
        if (matcher.group(9) != null && !matcher.group(9).equalsIgnoreCase("Z")) {
            i = Integer.parseInt(matcher.group(13)) + (Integer.parseInt(matcher.group(12)) * 60);
            if ("-".equals(matcher.group(11))) {
                i *= -1;
            }
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar(DesugarTimeZone.getTimeZone("GMT"));
        gregorianCalendar.clear();
        gregorianCalendar.set(Integer.parseInt(matcher.group(1)), Integer.parseInt(matcher.group(2)) - 1, Integer.parseInt(matcher.group(3)), Integer.parseInt(matcher.group(4)), Integer.parseInt(matcher.group(5)), Integer.parseInt(matcher.group(6)));
        if (!TextUtils.isEmpty(matcher.group(8))) {
            gregorianCalendar.set(14, new BigDecimal("0." + matcher.group(8)).movePointRight(3).intValue());
        }
        long timeInMillis = gregorianCalendar.getTimeInMillis();
        return i != 0 ? timeInMillis - (i * 60000) : timeInMillis;
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static boolean m7773(SparseArray sparseArray, SparseArray sparseArray2) {
        if (sparseArray == null) {
            return sparseArray2 == null;
        }
        if (sparseArray2 == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 31) {
            return sparseArray.contentEquals(sparseArray2);
        }
        int size = sparseArray.size();
        if (size != sparseArray2.size()) {
            return false;
        }
        for (int i = 0; i < size; i++) {
            if (!Objects.equals(sparseArray.valueAt(i), sparseArray2.get(sparseArray.keyAt(i)))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public static int m7774(int i, int i2, int i3, byte[] bArr) {
        while (i < i2) {
            i3 = f14474[((i3 >>> 24) ^ (bArr[i] & 255)) & 255] ^ (i3 << 8);
            i++;
        }
        return i3;
    }

    /* renamed from: ˉـ, reason: contains not printable characters */
    public static void m7775(ArrayList arrayList, int i, int i2) {
        if (i < 0 || i2 > arrayList.size() || i > i2) {
            throw new IllegalArgumentException();
        }
        if (i != i2) {
            arrayList.subList(i, i2).clear();
        }
    }

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public static String[] m7776() {
        Configuration configuration = Resources.getSystem().getConfiguration();
        String[] split = Build.VERSION.SDK_INT >= 24 ? configuration.getLocales().toLanguageTags().split(",", -1) : new String[]{configuration.locale.toLanguageTag()};
        for (int i = 0; i < split.length; i++) {
            split[i] = m7786(split[i]);
        }
        return split;
    }

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static long m7777(long j, float f) {
        return f == 1.0f ? j : Math.round(j / f);
    }

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public static boolean m7778(Context context) {
        UiModeManager uiModeManager = (UiModeManager) context.getApplicationContext().getSystemService("uimode");
        return uiModeManager != null && uiModeManager.getCurrentModeType() == 4;
    }

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public static boolean m7779(int i) {
        return i == 10 || i == 13;
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public static int m7780(int i) {
        if (i != 2) {
            if (i == 3) {
                return 1;
            }
            if (i != 4) {
                if (i != 21) {
                    if (i != 22) {
                        if (i != 268435456) {
                            if (i != 1342177280) {
                                if (i != 1610612736) {
                                    throw new IllegalArgumentException();
                                }
                            }
                        }
                    }
                }
                return 3;
            }
            return 4;
        }
        return 2;
    }

    /* renamed from: ˏᵢ, reason: contains not printable characters */
    public static String[] m7781(String str) {
        return TextUtils.isEmpty(str) ? new String[0] : str.trim().split("(\\s*,\\s*)", -1);
    }

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public static boolean m7782(Context context) {
        int i = Build.VERSION.SDK_INT;
        if (i < 29 || context.getApplicationInfo().targetSdkVersion < 29) {
            return true;
        }
        if (i == 30) {
            String str = Build.MODEL;
            if (ˏʻ.ᵎﹶ(str, "moto g(20)") || ˏʻ.ᵎﹶ(str, "rmx3231")) {
                return true;
            }
        }
        return i == 34 && ˏʻ.ᵎﹶ(Build.MODEL, "sm-x200");
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static int m7783(long[] jArr, long j, boolean z) {
        int i;
        int binarySearch = Arrays.binarySearch(jArr, j);
        if (binarySearch < 0) {
            i = -(binarySearch + 2);
        } else {
            while (true) {
                int i2 = binarySearch - 1;
                if (i2 < 0 || jArr[i2] != j) {
                    break;
                }
                binarySearch = i2;
            }
            i = binarySearch;
        }
        return z ? Math.max(0, i) : i;
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public static int m7784(int i) {
        if (i == 10) {
            return Build.VERSION.SDK_INT >= 32 ? 737532 : 6396;
        }
        if (i == 12) {
            return 743676;
        }
        if (i == 24) {
            return Build.VERSION.SDK_INT >= 32 ? 67108860 : 0;
        }
        switch (i) {
            case 1:
                return 4;
            case 2:
                return 12;
            case 3:
                return 28;
            case 4:
                return 204;
            case 5:
                return 220;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return 252;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                return 1276;
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                return 6396;
            default:
                return 0;
        }
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public static String m7785(int i, String str) {
        String[] m7781 = m7781(str);
        if (m7781.length == 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (String str2 : m7781) {
            if (i == AbstractC1464.m4250(AbstractC1464.m4257(str2))) {
                if (sb.length() > 0) {
                    sb.append(",");
                }
                sb.append(str2);
            }
        }
        if (sb.length() > 0) {
            return sb.toString();
        }
        return null;
    }

    /* renamed from: ـˏ, reason: contains not printable characters */
    public static String m7786(String str) {
        if (str == null) {
            return null;
        }
        String replace = str.replace('_', '-');
        if (!replace.isEmpty() && !replace.equals("und")) {
            str = replace;
        }
        String str2 = ˏʻ.ˈⁱ(str);
        int i = 0;
        String str3 = str2.split("-", 2)[0];
        if (f14478 == null) {
            String[] iSOLanguages = Locale.getISOLanguages();
            int length = iSOLanguages.length;
            String[] strArr = f14479;
            HashMap hashMap = new HashMap(length + strArr.length);
            for (String str4 : iSOLanguages) {
                try {
                    String iSO3Language = new Locale(str4).getISO3Language();
                    if (!TextUtils.isEmpty(iSO3Language)) {
                        hashMap.put(iSO3Language, str4);
                    }
                } catch (MissingResourceException unused) {
                }
            }
            for (int i2 = 0; i2 < strArr.length; i2 += 2) {
                hashMap.put(strArr[i2], strArr[i2 + 1]);
            }
            f14478 = hashMap;
        }
        String str5 = (String) f14478.get(str3);
        if (str5 != null) {
            StringBuilder m3020 = AbstractC0844.m3020(str5);
            m3020.append(str2.substring(str3.length()));
            str2 = m3020.toString();
            str3 = str5;
        }
        if (!"no".equals(str3) && !"i".equals(str3) && !"zh".equals(str3)) {
            return str2;
        }
        while (true) {
            String[] strArr2 = f14472;
            if (i >= strArr2.length) {
                return str2;
            }
            if (str2.startsWith(strArr2[i])) {
                return strArr2[i + 1] + str2.substring(strArr2[i].length());
            }
            i += 2;
        }
    }

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public static String m7787(int i) {
        switch (i) {
            case -2:
                return "none";
            case -1:
                return "unknown";
            case 0:
                return "default";
            case 1:
                return "audio";
            case 2:
                return "video";
            case 3:
                return "text";
            case 4:
                return "image";
            case 5:
                return "metadata";
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return "camera motion";
            default:
                return i >= 10000 ? AbstractC1220.m3773(i, "custom (", ")") : "?";
        }
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public static String m7788(StringBuilder sb, Formatter formatter, long j) {
        if (j == -9223372036854775807L) {
            j = 0;
        }
        String str = j < 0 ? "-" : "";
        long abs = (Math.abs(j) + 500) / 1000;
        long j2 = abs % 60;
        long j3 = (abs / 60) % 60;
        long j4 = abs / 3600;
        sb.setLength(0);
        return j4 > 0 ? formatter.format("%s%d:%02d:%02d", str, Long.valueOf(j4), Long.valueOf(j3), Long.valueOf(j2)).toString() : formatter.format("%s%02d:%02d", str, Long.valueOf(j3), Long.valueOf(j2)).toString();
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static boolean m7789(SparseArray sparseArray, int i) {
        return sparseArray.indexOfKey(i) >= 0;
    }

    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public static boolean m7790(InterfaceC1488 interfaceC1488, boolean z) {
        if (interfaceC1488 != null) {
            C4644 c4644 = (C4644) interfaceC1488;
            if (c4644.m9248() && c4644.m9259() != 1 && c4644.m9259() != 4) {
                if (!z) {
                    return false;
                }
                c4644.m9241();
                if (c4644.f17415.f17587 == 0) {
                    return false;
                }
                c4644.m9241();
                if (c4644.f17415.f17587 == 4) {
                    return false;
                }
            }
        }
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0092, code lost:
    
        if (java.lang.Math.abs(r9 - r2) == 0.5d) goto L54;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:23:0x007d. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00f1  */
    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long m7791(long r9, long r11, long r13, java.math.RoundingMode r15) {
        /*
            Method dump skipped, instructions count: 318
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p305.AbstractC3712.m7791(long, long, long, java.math.RoundingMode):long");
    }

    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public static String m7792(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (int i = 0; i < bArr.length; i++) {
            sb.append(Character.forDigit((bArr[i] >> 4) & 15, 16));
            sb.append(Character.forDigit(bArr[i] & 15, 16));
        }
        return sb.toString();
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static long m7793(long j, float f) {
        return f == 1.0f ? j : Math.round(j * f);
    }

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public static void m7794(Handler handler, Runnable runnable) {
        Looper looper = handler.getLooper();
        if (looper.getThread().isAlive()) {
            if (looper == Looper.myLooper()) {
                runnable.run();
            } else {
                handler.post(runnable);
            }
        }
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static C1495 m7795(int i, int i2, int i3) {
        C1490 c1490 = new C1490();
        c1490.f5861 = AbstractC1464.m4251("audio/raw");
        c1490.f5873 = i2;
        c1490.f5864 = i3;
        c1490.f5870 = i;
        return new C1495(c1490);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0047 A[RETURN] */
    /* renamed from: ᵎˊ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m7796(p055.InterfaceC1488 r6) {
        /*
            r0 = 0
            if (r6 != 0) goto L4
            return r0
        L4:
            r1 = r6
            ⁱי.ʼʼ r1 = (p392.C4644) r1
            int r2 = r1.m9259()
            r3 = 1
            if (r2 != r3) goto L1d
            r4 = 2
            r5 = r6
            ʽⁱ.ᵎﹶ r5 = (ʽⁱ.ᵎﹶ) r5
            boolean r4 = r5.ᐧﹶ(r4)
            if (r4 == 0) goto L1d
            r1.m9240()
        L1b:
            r0 = r3
            goto L39
        L1d:
            r1 = 4
            if (r2 != r1) goto L39
            r2 = r6
            ʽⁱ.ᵎﹶ r2 = (ʽⁱ.ᵎﹶ) r2
            boolean r1 = r2.ᐧﹶ(r1)
            if (r1 == 0) goto L39
            r1 = r2
            ⁱי.ʼʼ r1 = (p392.C4644) r1
            int r1 = r1.m9238()
            r4 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r2.ـˊ(r4, r0, r1)
            goto L1b
        L39:
            ʽⁱ.ᵎﹶ r6 = (ʽⁱ.ᵎﹶ) r6
            boolean r1 = r6.ᐧﹶ(r3)
            if (r1 == 0) goto L47
            ⁱי.ʼʼ r6 = (p392.C4644) r6
            r6.m9221(r3)
            return r3
        L47:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p305.AbstractC3712.m7796(ʽⁱ.ᵔٴ):boolean");
    }

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public static long m7797(long j, long j2, long j3, RoundingMode roundingMode) {
        if (j == 0 || j2 == 0) {
            return 0L;
        }
        return (j3 < j2 || j3 % j2 != 0) ? (j3 >= j2 || j2 % j3 != 0) ? (j3 < j || j3 % j != 0) ? (j3 >= j || j % j3 != 0) ? m7791(j, j2, j3, roundingMode) : ʾˊ.ʽʽ(j2, ʾˊ.ᵔʾ(j, j3, RoundingMode.UNNECESSARY)) : ʾˊ.ᵔʾ(j2, ʾˊ.ᵔʾ(j3, j, RoundingMode.UNNECESSARY), roundingMode) : ʾˊ.ʽʽ(j, ʾˊ.ᵔʾ(j2, j3, RoundingMode.UNNECESSARY)) : ʾˊ.ᵔʾ(j, ʾˊ.ᵔʾ(j3, j2, RoundingMode.UNNECESSARY), roundingMode);
    }

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public static String m7798(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class).invoke(cls, str);
        } catch (Exception e) {
            AbstractC3731.m7863("Util", "Failed to read system property ".concat(str), e);
            return null;
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static void m7799(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static int m7800(SparseArray sparseArray) {
        if (Build.VERSION.SDK_INT >= 31) {
            return sparseArray.contentHashCode();
        }
        int i = 17;
        for (int i2 = 0; i2 < sparseArray.size(); i2++) {
            i = Objects.hashCode(sparseArray.valueAt(i2)) + ((sparseArray.keyAt(i2) + (i * 31)) * 31);
        }
        return i;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0048, code lost:
    
        if (r0.equals("m3u8") == false) goto L16;
     */
    /* renamed from: ᵔי, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m7801(android.net.Uri r8) {
        /*
            java.lang.String r0 = r8.getScheme()
            r1 = 3
            if (r0 == 0) goto L18
            java.lang.String r2 = "rtsp"
            boolean r2 = com.google.android.gms.internal.measurement.ˏʻ.ᵎﹶ(r2, r0)
            if (r2 != 0) goto L17
            java.lang.String r2 = "rtspt"
            boolean r0 = com.google.android.gms.internal.measurement.ˏʻ.ᵎﹶ(r2, r0)
            if (r0 == 0) goto L18
        L17:
            return r1
        L18:
            java.lang.String r0 = r8.getLastPathSegment()
            r2 = 4
            if (r0 != 0) goto L21
            goto La4
        L21:
            r3 = 46
            int r3 = r0.lastIndexOf(r3)
            r4 = 0
            r5 = 2
            r6 = 1
            if (r3 < 0) goto L78
            int r3 = r3 + r6
            java.lang.String r0 = r0.substring(r3)
            java.lang.String r0 = com.google.android.gms.internal.measurement.ˏʻ.ˈⁱ(r0)
            r0.getClass()
            int r3 = r0.hashCode()
            r7 = -1
            switch(r3) {
                case 104579: goto L61;
                case 108321: goto L56;
                case 3242057: goto L4b;
                case 3299913: goto L42;
                default: goto L40;
            }
        L40:
            r1 = r7
            goto L6b
        L42:
            java.lang.String r3 = "m3u8"
            boolean r0 = r0.equals(r3)
            if (r0 != 0) goto L6b
            goto L40
        L4b:
            java.lang.String r1 = "isml"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L54
            goto L40
        L54:
            r1 = r5
            goto L6b
        L56:
            java.lang.String r1 = "mpd"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L5f
            goto L40
        L5f:
            r1 = r6
            goto L6b
        L61:
            java.lang.String r1 = "ism"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L6a
            goto L40
        L6a:
            r1 = r4
        L6b:
            switch(r1) {
                case 0: goto L74;
                case 1: goto L72;
                case 2: goto L74;
                case 3: goto L70;
                default: goto L6e;
            }
        L6e:
            r0 = r2
            goto L75
        L70:
            r0 = r5
            goto L75
        L72:
            r0 = r4
            goto L75
        L74:
            r0 = r6
        L75:
            if (r0 == r2) goto L78
            return r0
        L78:
            java.lang.String r8 = r8.getPath()
            r8.getClass()
            java.util.regex.Pattern r0 = p305.AbstractC3712.f14483
            java.util.regex.Matcher r8 = r0.matcher(r8)
            boolean r0 = r8.matches()
            if (r0 == 0) goto La4
            java.lang.String r8 = r8.group(r5)
            if (r8 == 0) goto La3
            java.lang.String r0 = "format=mpd-time-csf"
            boolean r0 = r8.contains(r0)
            if (r0 == 0) goto L9a
            return r4
        L9a:
            java.lang.String r0 = "format=m3u8-aapl"
            boolean r8 = r8.contains(r0)
            if (r8 == 0) goto La3
            return r5
        La3:
            return r6
        La4:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: p305.AbstractC3712.m7801(android.net.Uri):int");
    }

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public static void m7802(int i) {
        Integer.toString(i, 36);
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static float m7803(float f, float f2, float f3) {
        return Math.max(f2, Math.min(f, f3));
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public static String m7804(byte[] bArr) {
        return new String(bArr, StandardCharsets.UTF_8);
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public static int m7805(int i) {
        if (i == 2 || i == 4) {
            return 6005;
        }
        if (i == 10) {
            return 6004;
        }
        if (i == 7) {
            return 6005;
        }
        if (i == 8) {
            return 6003;
        }
        switch (i) {
            case 15:
                return 6003;
            case 16:
            case 18:
                return 6005;
            case 17:
            case 19:
            case 20:
            case 21:
            case 22:
                return 6004;
            default:
                switch (i) {
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                        return 6002;
                    default:
                        return 6006;
                }
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static int m7806(List list, Long l, boolean z) {
        int i;
        int binarySearch = Collections.binarySearch(list, l);
        if (binarySearch < 0) {
            i = -(binarySearch + 2);
        } else {
            while (true) {
                int i2 = binarySearch - 1;
                if (i2 < 0 || ((Comparable) list.get(i2)).compareTo(l) != 0) {
                    break;
                }
                binarySearch = i2;
            }
            i = binarySearch;
        }
        return z ? Math.max(0, i) : i;
    }

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public static Object[] m7807(int i, Object[] objArr) {
        AbstractC3731.m7849(i <= objArr.length);
        return Arrays.copyOf(objArr, i);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static int m7808(long[] jArr, long j, boolean z) {
        int i;
        int binarySearch = Arrays.binarySearch(jArr, j);
        if (binarySearch < 0) {
            return ~binarySearch;
        }
        while (true) {
            i = binarySearch + 1;
            if (i >= jArr.length || jArr[i] != j) {
                break;
            }
            binarySearch = i;
        }
        return z ? binarySearch : i;
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public static int m7809(int i) {
        if (i == 30) {
            return 34;
        }
        switch (i) {
            case 2:
            case 3:
                return 3;
            case 4:
            case 5:
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return 21;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                return 23;
            case 9:
            case 10:
            case 11:
            case 12:
                return 28;
            default:
                switch (i) {
                    case 14:
                        return 25;
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                        return 28;
                    default:
                        switch (i) {
                            case 20:
                                return 30;
                            case 21:
                            case 22:
                                return 31;
                            default:
                                return Integer.MAX_VALUE;
                        }
                }
        }
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static boolean m7810(Object[] objArr, Object obj) {
        for (Object obj2 : objArr) {
            if (Objects.equals(obj2, obj)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static int m7811(int i, int i2) {
        return ((i + i2) - 1) / i2;
    }
}
