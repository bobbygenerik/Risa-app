package p422;

import android.content.res.AssetManager;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.support.v4.media.session.AbstractC0001;
import android.util.Log;
import com.bumptech.glide.ˈ;
import j$.util.DesugarTimeZone;
import java.io.EOFException;
import java.io.FileDescriptor;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Pattern;
import java.util.zip.CRC32;
import p307.AbstractC3740;

/* renamed from: ﹳﹳ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5006 {

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public static final byte[] f18703;

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public static final byte[] f18704;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public static final byte[] f18705;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final int[] f18706;

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public static final byte[] f18707;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static final byte[] f18708;

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public static final byte[] f18709;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public static final byte[] f18710;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final byte[] f18711;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static final int[] f18712;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public static final byte[] f18713;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public static final HashMap[] f18714;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static final C5004[][] f18715;

    /* renamed from: ˏי, reason: contains not printable characters */
    public static final byte[] f18716;

    /* renamed from: יـ, reason: contains not printable characters */
    public static final byte[] f18717;

    /* renamed from: ـˆ, reason: contains not printable characters */
    public static final byte[] f18718;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public static final HashSet f18719;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public static final C5004[] f18720;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final String[] f18721;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final C5004 f18722;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public static final HashMap f18723;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public static final HashMap[] f18724;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static final int[] f18725;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public static final Charset f18726;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public static final byte[] f18727;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public static final byte[] f18728;

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public static final byte[] f18729;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public static final byte[] f18730;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static final boolean f18731 = Log.isLoggable("ExifInterface", 3);

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public int f18732;

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f18733;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public int f18734;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final HashMap[] f18735;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final HashSet f18736;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public int f18737;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public boolean f18738;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public int f18739;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final AssetManager.AssetInputStream f18740;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final FileDescriptor f18741;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public ByteOrder f18742;

    static {
        Arrays.asList(1, 6, 3, 8);
        Arrays.asList(2, 7, 4, 5);
        f18712 = new int[]{8, 8, 8};
        f18725 = new int[]{8};
        f18713 = new byte[]{-1, -40, -1};
        f18705 = new byte[]{102, 116, 121, 112};
        f18728 = new byte[]{109, 105, 102, 49};
        f18730 = new byte[]{104, 101, 105, 99};
        f18717 = new byte[]{79, 76, 89, 77, 80, 0};
        f18716 = new byte[]{79, 76, 89, 77, 80, 85, 83, 0, 73, 73};
        f18707 = new byte[]{-119, 80, 78, 71, 13, 10, 26, 10};
        f18703 = new byte[]{101, 88, 73, 102};
        f18718 = new byte[]{73, 72, 68, 82};
        f18709 = new byte[]{73, 69, 78, 68};
        f18704 = new byte[]{82, 73, 70, 70};
        f18729 = new byte[]{87, 69, 66, 80};
        f18708 = new byte[]{69, 88, 73, 70};
        "VP8X".getBytes(Charset.defaultCharset());
        "VP8L".getBytes(Charset.defaultCharset());
        "VP8 ".getBytes(Charset.defaultCharset());
        "ANIM".getBytes(Charset.defaultCharset());
        "ANMF".getBytes(Charset.defaultCharset());
        f18721 = new String[]{"", "BYTE", "STRING", "USHORT", "ULONG", "URATIONAL", "SBYTE", "UNDEFINED", "SSHORT", "SLONG", "SRATIONAL", "SINGLE", "DOUBLE", "IFD"};
        f18706 = new int[]{0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8, 1};
        f18711 = new byte[]{65, 83, 67, 73, 73, 0, 0, 0};
        C5004[] c5004Arr = {new C5004(254, 4, "NewSubfileType"), new C5004(255, 4, "SubfileType"), new C5004(256, 3, 4, "ImageWidth"), new C5004(257, 3, 4, "ImageLength"), new C5004(258, 3, "BitsPerSample"), new C5004(259, 3, "Compression"), new C5004(262, 3, "PhotometricInterpretation"), new C5004(270, 2, "ImageDescription"), new C5004(271, 2, "Make"), new C5004(272, 2, "Model"), new C5004(273, 3, 4, "StripOffsets"), new C5004(274, 3, "Orientation"), new C5004(277, 3, "SamplesPerPixel"), new C5004(278, 3, 4, "RowsPerStrip"), new C5004(279, 3, 4, "StripByteCounts"), new C5004(282, 5, "XResolution"), new C5004(283, 5, "YResolution"), new C5004(284, 3, "PlanarConfiguration"), new C5004(296, 3, "ResolutionUnit"), new C5004(301, 3, "TransferFunction"), new C5004(305, 2, "Software"), new C5004(306, 2, "DateTime"), new C5004(315, 2, "Artist"), new C5004(318, 5, "WhitePoint"), new C5004(319, 5, "PrimaryChromaticities"), new C5004(330, 4, "SubIFDPointer"), new C5004(513, 4, "JPEGInterchangeFormat"), new C5004(514, 4, "JPEGInterchangeFormatLength"), new C5004(529, 5, "YCbCrCoefficients"), new C5004(530, 3, "YCbCrSubSampling"), new C5004(531, 3, "YCbCrPositioning"), new C5004(532, 5, "ReferenceBlackWhite"), new C5004(33432, 2, "Copyright"), new C5004(34665, 4, "ExifIFDPointer"), new C5004(34853, 4, "GPSInfoIFDPointer"), new C5004(4, 4, "SensorTopBorder"), new C5004(5, 4, "SensorLeftBorder"), new C5004(6, 4, "SensorBottomBorder"), new C5004(7, 4, "SensorRightBorder"), new C5004(23, 3, "ISO"), new C5004(46, 7, "JpgFromRaw"), new C5004(700, 1, "Xmp")};
        C5004[] c5004Arr2 = {new C5004(33434, 5, "ExposureTime"), new C5004(33437, 5, "FNumber"), new C5004(34850, 3, "ExposureProgram"), new C5004(34852, 2, "SpectralSensitivity"), new C5004(34855, 3, "PhotographicSensitivity"), new C5004(34856, 7, "OECF"), new C5004(34864, 3, "SensitivityType"), new C5004(34865, 4, "StandardOutputSensitivity"), new C5004(34866, 4, "RecommendedExposureIndex"), new C5004(34867, 4, "ISOSpeed"), new C5004(34868, 4, "ISOSpeedLatitudeyyy"), new C5004(34869, 4, "ISOSpeedLatitudezzz"), new C5004(36864, 2, "ExifVersion"), new C5004(36867, 2, "DateTimeOriginal"), new C5004(36868, 2, "DateTimeDigitized"), new C5004(36880, 2, "OffsetTime"), new C5004(36881, 2, "OffsetTimeOriginal"), new C5004(36882, 2, "OffsetTimeDigitized"), new C5004(37121, 7, "ComponentsConfiguration"), new C5004(37122, 5, "CompressedBitsPerPixel"), new C5004(37377, 10, "ShutterSpeedValue"), new C5004(37378, 5, "ApertureValue"), new C5004(37379, 10, "BrightnessValue"), new C5004(37380, 10, "ExposureBiasValue"), new C5004(37381, 5, "MaxApertureValue"), new C5004(37382, 5, "SubjectDistance"), new C5004(37383, 3, "MeteringMode"), new C5004(37384, 3, "LightSource"), new C5004(37385, 3, "Flash"), new C5004(37386, 5, "FocalLength"), new C5004(37396, 3, "SubjectArea"), new C5004(37500, 7, "MakerNote"), new C5004(37510, 7, "UserComment"), new C5004(37520, 2, "SubSecTime"), new C5004(37521, 2, "SubSecTimeOriginal"), new C5004(37522, 2, "SubSecTimeDigitized"), new C5004(40960, 7, "FlashpixVersion"), new C5004(40961, 3, "ColorSpace"), new C5004(40962, 3, 4, "PixelXDimension"), new C5004(40963, 3, 4, "PixelYDimension"), new C5004(40964, 2, "RelatedSoundFile"), new C5004(40965, 4, "InteroperabilityIFDPointer"), new C5004(41483, 5, "FlashEnergy"), new C5004(41484, 7, "SpatialFrequencyResponse"), new C5004(41486, 5, "FocalPlaneXResolution"), new C5004(41487, 5, "FocalPlaneYResolution"), new C5004(41488, 3, "FocalPlaneResolutionUnit"), new C5004(41492, 3, "SubjectLocation"), new C5004(41493, 5, "ExposureIndex"), new C5004(41495, 3, "SensingMethod"), new C5004(41728, 7, "FileSource"), new C5004(41729, 7, "SceneType"), new C5004(41730, 7, "CFAPattern"), new C5004(41985, 3, "CustomRendered"), new C5004(41986, 3, "ExposureMode"), new C5004(41987, 3, "WhiteBalance"), new C5004(41988, 5, "DigitalZoomRatio"), new C5004(41989, 3, "FocalLengthIn35mmFilm"), new C5004(41990, 3, "SceneCaptureType"), new C5004(41991, 3, "GainControl"), new C5004(41992, 3, "Contrast"), new C5004(41993, 3, "Saturation"), new C5004(41994, 3, "Sharpness"), new C5004(41995, 7, "DeviceSettingDescription"), new C5004(41996, 3, "SubjectDistanceRange"), new C5004(42016, 2, "ImageUniqueID"), new C5004(42032, 2, "CameraOwnerName"), new C5004(42033, 2, "BodySerialNumber"), new C5004(42034, 5, "LensSpecification"), new C5004(42035, 2, "LensMake"), new C5004(42036, 2, "LensModel"), new C5004(42240, 5, "Gamma"), new C5004(50706, 1, "DNGVersion"), new C5004(50720, 3, 4, "DefaultCropSize")};
        C5004[] c5004Arr3 = {new C5004(0, 1, "GPSVersionID"), new C5004(1, 2, "GPSLatitudeRef"), new C5004(2, 5, 10, "GPSLatitude"), new C5004(3, 2, "GPSLongitudeRef"), new C5004(4, 5, 10, "GPSLongitude"), new C5004(5, 1, "GPSAltitudeRef"), new C5004(6, 5, "GPSAltitude"), new C5004(7, 5, "GPSTimeStamp"), new C5004(8, 2, "GPSSatellites"), new C5004(9, 2, "GPSStatus"), new C5004(10, 2, "GPSMeasureMode"), new C5004(11, 5, "GPSDOP"), new C5004(12, 2, "GPSSpeedRef"), new C5004(13, 5, "GPSSpeed"), new C5004(14, 2, "GPSTrackRef"), new C5004(15, 5, "GPSTrack"), new C5004(16, 2, "GPSImgDirectionRef"), new C5004(17, 5, "GPSImgDirection"), new C5004(18, 2, "GPSMapDatum"), new C5004(19, 2, "GPSDestLatitudeRef"), new C5004(20, 5, "GPSDestLatitude"), new C5004(21, 2, "GPSDestLongitudeRef"), new C5004(22, 5, "GPSDestLongitude"), new C5004(23, 2, "GPSDestBearingRef"), new C5004(24, 5, "GPSDestBearing"), new C5004(25, 2, "GPSDestDistanceRef"), new C5004(26, 5, "GPSDestDistance"), new C5004(27, 7, "GPSProcessingMethod"), new C5004(28, 7, "GPSAreaInformation"), new C5004(29, 2, "GPSDateStamp"), new C5004(30, 3, "GPSDifferential"), new C5004(31, 5, "GPSHPositioningError")};
        C5004[] c5004Arr4 = {new C5004(1, 2, "InteroperabilityIndex")};
        C5004[] c5004Arr5 = {new C5004(254, 4, "NewSubfileType"), new C5004(255, 4, "SubfileType"), new C5004(256, 3, 4, "ThumbnailImageWidth"), new C5004(257, 3, 4, "ThumbnailImageLength"), new C5004(258, 3, "BitsPerSample"), new C5004(259, 3, "Compression"), new C5004(262, 3, "PhotometricInterpretation"), new C5004(270, 2, "ImageDescription"), new C5004(271, 2, "Make"), new C5004(272, 2, "Model"), new C5004(273, 3, 4, "StripOffsets"), new C5004(274, 3, "ThumbnailOrientation"), new C5004(277, 3, "SamplesPerPixel"), new C5004(278, 3, 4, "RowsPerStrip"), new C5004(279, 3, 4, "StripByteCounts"), new C5004(282, 5, "XResolution"), new C5004(283, 5, "YResolution"), new C5004(284, 3, "PlanarConfiguration"), new C5004(296, 3, "ResolutionUnit"), new C5004(301, 3, "TransferFunction"), new C5004(305, 2, "Software"), new C5004(306, 2, "DateTime"), new C5004(315, 2, "Artist"), new C5004(318, 5, "WhitePoint"), new C5004(319, 5, "PrimaryChromaticities"), new C5004(330, 4, "SubIFDPointer"), new C5004(513, 4, "JPEGInterchangeFormat"), new C5004(514, 4, "JPEGInterchangeFormatLength"), new C5004(529, 5, "YCbCrCoefficients"), new C5004(530, 3, "YCbCrSubSampling"), new C5004(531, 3, "YCbCrPositioning"), new C5004(532, 5, "ReferenceBlackWhite"), new C5004(33432, 2, "Copyright"), new C5004(34665, 4, "ExifIFDPointer"), new C5004(34853, 4, "GPSInfoIFDPointer"), new C5004(50706, 1, "DNGVersion"), new C5004(50720, 3, 4, "DefaultCropSize")};
        f18722 = new C5004(273, 3, "StripOffsets");
        f18715 = new C5004[][]{c5004Arr, c5004Arr2, c5004Arr3, c5004Arr4, c5004Arr5, c5004Arr, new C5004[]{new C5004(256, 7, "ThumbnailImage"), new C5004(8224, 4, "CameraSettingsIFDPointer"), new C5004(8256, 4, "ImageProcessingIFDPointer")}, new C5004[]{new C5004(257, 4, "PreviewImageStart"), new C5004(258, 4, "PreviewImageLength")}, new C5004[]{new C5004(4371, 3, "AspectFrame")}, new C5004[]{new C5004(55, 3, "ColorSpace")}};
        f18720 = new C5004[]{new C5004(330, 4, "SubIFDPointer"), new C5004(34665, 4, "ExifIFDPointer"), new C5004(34853, 4, "GPSInfoIFDPointer"), new C5004(40965, 4, "InteroperabilityIFDPointer"), new C5004(8224, 1, "CameraSettingsIFDPointer"), new C5004(8256, 1, "ImageProcessingIFDPointer")};
        f18714 = new HashMap[10];
        f18724 = new HashMap[10];
        f18719 = new HashSet(Arrays.asList("FNumber", "DigitalZoomRatio", "ExposureTime", "SubjectDistance", "GPSTimeStamp"));
        f18723 = new HashMap();
        Charset forName = Charset.forName("US-ASCII");
        f18726 = forName;
        f18710 = "Exif\u0000\u0000".getBytes(forName);
        f18727 = "http://ns.adobe.com/xap/1.0/\u0000".getBytes(forName);
        Locale locale = Locale.US;
        new SimpleDateFormat("yyyy:MM:dd HH:mm:ss", locale).setTimeZone(DesugarTimeZone.getTimeZone("UTC"));
        new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", locale).setTimeZone(DesugarTimeZone.getTimeZone("UTC"));
        int i = 0;
        while (true) {
            C5004[][] c5004Arr6 = f18715;
            if (i >= c5004Arr6.length) {
                HashMap hashMap = f18723;
                C5004[] c5004Arr7 = f18720;
                hashMap.put(Integer.valueOf(c5004Arr7[0].f18700), 5);
                hashMap.put(Integer.valueOf(c5004Arr7[1].f18700), 1);
                hashMap.put(Integer.valueOf(c5004Arr7[2].f18700), 2);
                hashMap.put(Integer.valueOf(c5004Arr7[3].f18700), 3);
                hashMap.put(Integer.valueOf(c5004Arr7[4].f18700), 7);
                hashMap.put(Integer.valueOf(c5004Arr7[5].f18700), 8);
                Pattern.compile(".*[1-9].*");
                Pattern.compile("^(\\d{2}):(\\d{2}):(\\d{2})$");
                Pattern.compile("^(\\d{4}):(\\d{2}):(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$");
                Pattern.compile("^(\\d{4})-(\\d{2})-(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$");
                return;
            }
            f18714[i] = new HashMap();
            f18724[i] = new HashMap();
            for (C5004 c5004 : c5004Arr6[i]) {
                f18714[i].put(Integer.valueOf(c5004.f18700), c5004);
                f18724[i].put(c5004.f18699, c5004);
            }
            i++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00e9 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:48:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C5006(java.io.InputStream r10) {
        /*
            Method dump skipped, instructions count: 234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p422.C5006.<init>(java.io.InputStream):void");
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public static ByteOrder m9860(C5008 c5008) {
        short readShort = c5008.readShort();
        boolean z = f18731;
        if (readShort == 18761) {
            if (z) {
            }
            return ByteOrder.LITTLE_ENDIAN;
        }
        if (readShort == 19789) {
            if (z) {
            }
            return ByteOrder.BIG_ENDIAN;
        }
        throw new IOException("Invalid byte order: " + Integer.toHexString(readShort));
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final void m9861(int i, int i2) {
        HashMap[] hashMapArr = this.f18735;
        boolean isEmpty = hashMapArr[i].isEmpty();
        boolean z = f18731;
        if (isEmpty || hashMapArr[i2].isEmpty()) {
            if (z) {
                return;
            } else {
                return;
            }
        }
        C5003 c5003 = (C5003) hashMapArr[i].get("ImageLength");
        C5003 c50032 = (C5003) hashMapArr[i].get("ImageWidth");
        C5003 c50033 = (C5003) hashMapArr[i2].get("ImageLength");
        C5003 c50034 = (C5003) hashMapArr[i2].get("ImageWidth");
        if (c5003 == null || c50032 == null) {
            if (z) {
                return;
            } else {
                return;
            }
        }
        if (c50033 == null || c50034 == null) {
            if (z) {
                return;
            } else {
                return;
            }
        }
        int m9857 = c5003.m9857(this.f18742);
        int m98572 = c50032.m9857(this.f18742);
        int m98573 = c50033.m9857(this.f18742);
        int m98574 = c50034.m9857(this.f18742);
        if (m9857 >= m98573 || m98572 >= m98574) {
            return;
        }
        HashMap hashMap = hashMapArr[i];
        hashMapArr[i] = hashMapArr[i2];
        hashMapArr[i2] = hashMap;
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void m9862(C5008 c5008) {
        boolean z = f18731;
        if (z) {
            String str = "getRafAttributes starting with: " + c5008;
        }
        c5008.m9887(84);
        byte[] bArr = new byte[4];
        byte[] bArr2 = new byte[4];
        byte[] bArr3 = new byte[4];
        c5008.read(bArr);
        c5008.read(bArr2);
        c5008.read(bArr3);
        int i = ByteBuffer.wrap(bArr).getInt();
        int i2 = ByteBuffer.wrap(bArr2).getInt();
        int i3 = ByteBuffer.wrap(bArr3).getInt();
        byte[] bArr4 = new byte[i2];
        c5008.m9887(i - c5008.f18745);
        c5008.read(bArr4);
        m9872(new C5008(bArr4), i, 5);
        c5008.m9887(i3 - c5008.f18745);
        c5008.f18748 = ByteOrder.BIG_ENDIAN;
        int readInt = c5008.readInt();
        if (z) {
            String str2 = "numberOfDirectoryEntry: " + readInt;
        }
        for (int i4 = 0; i4 < readInt; i4++) {
            int readUnsignedShort = c5008.readUnsignedShort();
            int readUnsignedShort2 = c5008.readUnsignedShort();
            if (readUnsignedShort == f18722.f18700) {
                short readShort = c5008.readShort();
                short readShort2 = c5008.readShort();
                C5003 m9853 = C5003.m9853(readShort, this.f18742);
                C5003 m98532 = C5003.m9853(readShort2, this.f18742);
                HashMap[] hashMapArr = this.f18735;
                hashMapArr[0].put("ImageLength", m9853);
                hashMapArr[0].put("ImageWidth", m98532);
                if (z) {
                    String str3 = "Updated to length: " + ((int) readShort) + ", width: " + ((int) readShort2);
                    return;
                }
                return;
            }
            c5008.m9887(readUnsignedShort2);
        }
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final void m9863() {
        int i = 0;
        while (true) {
            HashMap[] hashMapArr = this.f18735;
            if (i >= hashMapArr.length) {
                return;
            }
            StringBuilder m16 = AbstractC0001.m16(i, "The size of tag group[", "]: ");
            m16.append(hashMapArr[i].size());
            m16.toString();
            for (Map.Entry entry : hashMapArr[i].entrySet()) {
                C5003 c5003 = (C5003) entry.getValue();
                String str = "tagName: " + ((String) entry.getKey()) + ", tagType: " + c5003.toString() + ", tagValue: '" + c5003.m9859(this.f18742) + "'";
            }
            i++;
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C5003 m9864(String str) {
        if ("ISOSpeedRatings".equals(str)) {
            if (f18731) {
            }
            str = "PhotographicSensitivity";
        }
        for (int i = 0; i < f18715.length; i++) {
            C5003 c5003 = (C5003) this.f18735[i].get(str);
            if (c5003 != null) {
                return c5003;
            }
        }
        return null;
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final void m9865(C5008 c5008) {
        C5003 c5003;
        int m9857;
        HashMap hashMap = this.f18735[4];
        C5003 c50032 = (C5003) hashMap.get("Compression");
        if (c50032 == null) {
            m9869(c5008, hashMap);
            return;
        }
        int m98572 = c50032.m9857(this.f18742);
        if (m98572 != 1) {
            if (m98572 == 6) {
                m9869(c5008, hashMap);
                return;
            } else if (m98572 != 7) {
                return;
            }
        }
        C5003 c50033 = (C5003) hashMap.get("BitsPerSample");
        if (c50033 != null) {
            int[] iArr = (int[]) c50033.m9858(this.f18742);
            int[] iArr2 = f18712;
            if (Arrays.equals(iArr2, iArr) || (this.f18733 == 3 && (c5003 = (C5003) hashMap.get("PhotometricInterpretation")) != null && (((m9857 = c5003.m9857(this.f18742)) == 1 && Arrays.equals(iArr, f18725)) || (m9857 == 6 && Arrays.equals(iArr, iArr2))))) {
                C5003 c50034 = (C5003) hashMap.get("StripOffsets");
                C5003 c50035 = (C5003) hashMap.get("StripByteCounts");
                if (c50034 == null || c50035 == null) {
                    return;
                }
                long[] jArr = ˈ.ˆʾ(c50034.m9858(this.f18742));
                long[] jArr2 = ˈ.ˆʾ(c50035.m9858(this.f18742));
                if (jArr == null || jArr.length == 0) {
                    return;
                }
                if (jArr2 == null || jArr2.length == 0) {
                    return;
                }
                if (jArr.length != jArr2.length) {
                    return;
                }
                long j = 0;
                for (long j2 : jArr2) {
                    j += j2;
                }
                byte[] bArr = new byte[(int) j];
                this.f18738 = true;
                int i = 0;
                int i2 = 0;
                for (int i3 = 0; i3 < jArr.length; i3++) {
                    int i4 = (int) jArr[i3];
                    int i5 = (int) jArr2[i3];
                    if (i3 < jArr.length - 1 && i4 + i5 != jArr[i3 + 1]) {
                        this.f18738 = false;
                    }
                    int i6 = i4 - i;
                    if (i6 < 0) {
                        return;
                    }
                    long j3 = i6;
                    if (c5008.skip(j3) != j3) {
                        String str = "Failed to skip " + i6 + " bytes.";
                        return;
                    }
                    int i7 = i + i6;
                    byte[] bArr2 = new byte[i5];
                    if (c5008.read(bArr2) != i5) {
                        String str2 = "Failed to read " + i5 + " bytes.";
                        return;
                    }
                    i = i7 + i5;
                    System.arraycopy(bArr2, 0, bArr, i2, i5);
                    i2 += i5;
                }
                if (this.f18738) {
                    long j4 = jArr[0];
                    return;
                }
                return;
            }
        }
        if (f18731) {
        }
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final void m9866() {
        m9861(0, 5);
        m9861(0, 4);
        m9861(5, 4);
        HashMap[] hashMapArr = this.f18735;
        C5003 c5003 = (C5003) hashMapArr[1].get("PixelXDimension");
        C5003 c50032 = (C5003) hashMapArr[1].get("PixelYDimension");
        if (c5003 != null && c50032 != null) {
            hashMapArr[0].put("ImageWidth", c5003);
            hashMapArr[0].put("ImageLength", c50032);
        }
        if (hashMapArr[4].isEmpty() && m9877(hashMapArr[5])) {
            hashMapArr[4] = hashMapArr[5];
            hashMapArr[5] = new HashMap();
        }
        if (!m9877(hashMapArr[4])) {
        }
        m9871(0, "ThumbnailOrientation", "Orientation");
        m9871(0, "ThumbnailImageLength", "ImageLength");
        m9871(0, "ThumbnailImageWidth", "ImageWidth");
        m9871(5, "ThumbnailOrientation", "Orientation");
        m9871(5, "ThumbnailImageLength", "ImageLength");
        m9871(5, "ThumbnailImageWidth", "ImageWidth");
        m9871(4, "Orientation", "ThumbnailOrientation");
        m9871(4, "ImageLength", "ThumbnailImageLength");
        m9871(4, "ImageWidth", "ThumbnailImageWidth");
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void m9867(C5010 c5010) {
        m9870(c5010);
        m9873(c5010, 0);
        m9874(c5010, 0);
        m9874(c5010, 5);
        m9874(c5010, 4);
        m9866();
        if (this.f18733 == 8) {
            HashMap[] hashMapArr = this.f18735;
            C5003 c5003 = (C5003) hashMapArr[1].get("MakerNote");
            if (c5003 != null) {
                C5010 c50102 = new C5010(c5003.f18694);
                c50102.f18748 = this.f18742;
                c50102.m9887(6);
                m9873(c50102, 9);
                C5003 c50032 = (C5003) hashMapArr[9].get("ColorSpace");
                if (c50032 != null) {
                    hashMapArr[1].put("ColorSpace", c50032);
                }
            }
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m9868(C5010 c5010) {
        String str;
        String str2;
        String str3;
        if (Build.VERSION.SDK_INT < 28) {
            throw new UnsupportedOperationException("Reading EXIF from HEIF files is supported from SDK 28 and above");
        }
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            try {
                AbstractC5002.m9852(mediaMetadataRetriever, new C5009(c5010));
                String extractMetadata = mediaMetadataRetriever.extractMetadata(33);
                String extractMetadata2 = mediaMetadataRetriever.extractMetadata(34);
                String extractMetadata3 = mediaMetadataRetriever.extractMetadata(26);
                String extractMetadata4 = mediaMetadataRetriever.extractMetadata(17);
                if ("yes".equals(extractMetadata3)) {
                    str = mediaMetadataRetriever.extractMetadata(29);
                    str2 = mediaMetadataRetriever.extractMetadata(30);
                    str3 = mediaMetadataRetriever.extractMetadata(31);
                } else if ("yes".equals(extractMetadata4)) {
                    str = mediaMetadataRetriever.extractMetadata(18);
                    str2 = mediaMetadataRetriever.extractMetadata(19);
                    str3 = mediaMetadataRetriever.extractMetadata(24);
                } else {
                    str = null;
                    str2 = null;
                    str3 = null;
                }
                HashMap[] hashMapArr = this.f18735;
                if (str != null) {
                    hashMapArr[0].put("ImageWidth", C5003.m9853(Integer.parseInt(str), this.f18742));
                }
                if (str2 != null) {
                    hashMapArr[0].put("ImageLength", C5003.m9853(Integer.parseInt(str2), this.f18742));
                }
                if (str3 != null) {
                    int parseInt = Integer.parseInt(str3);
                    hashMapArr[0].put("Orientation", C5003.m9853(parseInt != 90 ? parseInt != 180 ? parseInt != 270 ? 1 : 8 : 3 : 6, this.f18742));
                }
                if (extractMetadata != null && extractMetadata2 != null) {
                    int parseInt2 = Integer.parseInt(extractMetadata);
                    int parseInt3 = Integer.parseInt(extractMetadata2);
                    if (parseInt3 <= 6) {
                        throw new IOException("Invalid exif length");
                    }
                    c5010.m9888(parseInt2);
                    byte[] bArr = new byte[6];
                    if (c5010.read(bArr) != 6) {
                        throw new IOException("Can't read identifier");
                    }
                    int i = parseInt2 + 6;
                    int i2 = parseInt3 - 6;
                    if (!Arrays.equals(bArr, f18710)) {
                        throw new IOException("Invalid identifier");
                    }
                    byte[] bArr2 = new byte[i2];
                    if (c5010.read(bArr2) != i2) {
                        throw new IOException("Can't read exif");
                    }
                    this.f18739 = i;
                    m9881(0, bArr2);
                }
                if (f18731) {
                    String str4 = "Heif meta: " + str + "x" + str2 + ", rotation " + str3;
                }
                mediaMetadataRetriever.release();
            } catch (RuntimeException unused) {
                throw new UnsupportedOperationException("Failed to read EXIF from HEIF file. Given stream is either malformed or unsupported.");
            }
        } catch (Throwable th) {
            mediaMetadataRetriever.release();
            throw th;
        }
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final void m9869(C5008 c5008, HashMap hashMap) {
        C5003 c5003 = (C5003) hashMap.get("JPEGInterchangeFormat");
        C5003 c50032 = (C5003) hashMap.get("JPEGInterchangeFormatLength");
        if (c5003 == null || c50032 == null) {
            return;
        }
        int m9857 = c5003.m9857(this.f18742);
        int m98572 = c50032.m9857(this.f18742);
        if (this.f18733 == 7) {
            m9857 += this.f18732;
        }
        if (m9857 > 0 && m98572 > 0 && this.f18740 == null && this.f18741 == null) {
            c5008.skip(m9857);
            c5008.read(new byte[m98572]);
        }
        if (f18731) {
            String str = "Setting thumbnail attributes with offset: " + m9857 + ", length: " + m98572;
        }
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final void m9870(C5010 c5010) {
        ByteOrder m9860 = m9860(c5010);
        this.f18742 = m9860;
        c5010.f18748 = m9860;
        int readUnsignedShort = c5010.readUnsignedShort();
        int i = this.f18733;
        if (i != 7 && i != 10 && readUnsignedShort != 42) {
            throw new IOException("Invalid start code: " + Integer.toHexString(readUnsignedShort));
        }
        int readInt = c5010.readInt();
        if (readInt < 8) {
            throw new IOException(AbstractC3740.m7932(readInt, "Invalid first Ifd offset: "));
        }
        int i2 = readInt - 8;
        if (i2 > 0) {
            c5010.m9887(i2);
        }
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public final void m9871(int i, String str, String str2) {
        HashMap[] hashMapArr = this.f18735;
        if (hashMapArr[i].isEmpty() || hashMapArr[i].get(str) == null) {
            return;
        }
        HashMap hashMap = hashMapArr[i];
        hashMap.put(str2, hashMap.get(str));
        hashMapArr[i].remove(str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:88:0x019c, code lost:
    
        r23.f18748 = r22.f18742;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x01a0, code lost:
    
        return;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:30:0x00a1. Please report as an issue. */
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m9872(p422.C5008 r23, int r24, int r25) {
        /*
            Method dump skipped, instructions count: 534
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p422.C5006.m9872(ﹳﹳ.ⁱˊ, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0250  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0269  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x02a0  */
    /* renamed from: יـ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m9873(p422.C5010 r36, int r37) {
        /*
            Method dump skipped, instructions count: 923
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p422.C5006.m9873(ﹳﹳ.ﾞᴵ, int):void");
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final void m9874(C5010 c5010, int i) {
        C5003 m9853;
        C5003 m98532;
        HashMap[] hashMapArr = this.f18735;
        C5003 c5003 = (C5003) hashMapArr[i].get("DefaultCropSize");
        C5003 c50032 = (C5003) hashMapArr[i].get("SensorTopBorder");
        C5003 c50033 = (C5003) hashMapArr[i].get("SensorLeftBorder");
        C5003 c50034 = (C5003) hashMapArr[i].get("SensorBottomBorder");
        C5003 c50035 = (C5003) hashMapArr[i].get("SensorRightBorder");
        if (c5003 != null) {
            if (c5003.f18696 == 5) {
                C5005[] c5005Arr = (C5005[]) c5003.m9858(this.f18742);
                if (c5005Arr == null || c5005Arr.length != 2) {
                    String str = "Invalid crop size values. cropSize=" + Arrays.toString(c5005Arr);
                    return;
                }
                m9853 = C5003.m9854(c5005Arr[0], this.f18742);
                m98532 = C5003.m9854(c5005Arr[1], this.f18742);
            } else {
                int[] iArr = (int[]) c5003.m9858(this.f18742);
                if (iArr == null || iArr.length != 2) {
                    String str2 = "Invalid crop size values. cropSize=" + Arrays.toString(iArr);
                    return;
                }
                m9853 = C5003.m9853(iArr[0], this.f18742);
                m98532 = C5003.m9853(iArr[1], this.f18742);
            }
            hashMapArr[i].put("ImageWidth", m9853);
            hashMapArr[i].put("ImageLength", m98532);
            return;
        }
        if (c50032 != null && c50033 != null && c50034 != null && c50035 != null) {
            int m9857 = c50032.m9857(this.f18742);
            int m98572 = c50034.m9857(this.f18742);
            int m98573 = c50035.m9857(this.f18742);
            int m98574 = c50033.m9857(this.f18742);
            if (m98572 <= m9857 || m98573 <= m98574) {
                return;
            }
            C5003 m98533 = C5003.m9853(m98572 - m9857, this.f18742);
            C5003 m98534 = C5003.m9853(m98573 - m98574, this.f18742);
            hashMapArr[i].put("ImageLength", m98533);
            hashMapArr[i].put("ImageWidth", m98534);
            return;
        }
        C5003 c50036 = (C5003) hashMapArr[i].get("ImageLength");
        C5003 c50037 = (C5003) hashMapArr[i].get("ImageWidth");
        if (c50036 == null || c50037 == null) {
            C5003 c50038 = (C5003) hashMapArr[i].get("JPEGInterchangeFormat");
            C5003 c50039 = (C5003) hashMapArr[i].get("JPEGInterchangeFormatLength");
            if (c50038 == null || c50039 == null) {
                return;
            }
            int m98575 = c50038.m9857(this.f18742);
            int m98576 = c50038.m9857(this.f18742);
            c5010.m9888(m98575);
            byte[] bArr = new byte[m98576];
            c5010.read(bArr);
            m9872(new C5008(bArr), m98575, i);
        }
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void m9875(C5010 c5010) {
        if (f18731) {
            String str = "getRw2Attributes starting with: " + c5010;
        }
        m9867(c5010);
        HashMap[] hashMapArr = this.f18735;
        C5003 c5003 = (C5003) hashMapArr[0].get("JpgFromRaw");
        if (c5003 != null) {
            m9872(new C5008(c5003.f18694), (int) c5003.f18693, 5);
        }
        C5003 c50032 = (C5003) hashMapArr[0].get("ISO");
        C5003 c50033 = (C5003) hashMapArr[1].get("PhotographicSensitivity");
        if (c50032 == null || c50033 != null) {
            return;
        }
        hashMapArr[1].put("PhotographicSensitivity", c50032);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m9876(C5010 c5010) {
        int i;
        int i2;
        m9867(c5010);
        HashMap[] hashMapArr = this.f18735;
        C5003 c5003 = (C5003) hashMapArr[1].get("MakerNote");
        if (c5003 != null) {
            C5010 c50102 = new C5010(c5003.f18694);
            c50102.f18748 = this.f18742;
            byte[] bArr = f18717;
            byte[] bArr2 = new byte[bArr.length];
            c50102.readFully(bArr2);
            c50102.m9888(0L);
            byte[] bArr3 = f18716;
            byte[] bArr4 = new byte[bArr3.length];
            c50102.readFully(bArr4);
            if (Arrays.equals(bArr2, bArr)) {
                c50102.m9888(8L);
            } else if (Arrays.equals(bArr4, bArr3)) {
                c50102.m9888(12L);
            }
            m9873(c50102, 6);
            C5003 c50032 = (C5003) hashMapArr[7].get("PreviewImageStart");
            C5003 c50033 = (C5003) hashMapArr[7].get("PreviewImageLength");
            if (c50032 != null && c50033 != null) {
                hashMapArr[5].put("JPEGInterchangeFormat", c50032);
                hashMapArr[5].put("JPEGInterchangeFormatLength", c50033);
            }
            C5003 c50034 = (C5003) hashMapArr[8].get("AspectFrame");
            if (c50034 != null) {
                int[] iArr = (int[]) c50034.m9858(this.f18742);
                if (iArr == null || iArr.length != 4) {
                    String str = "Invalid aspect frame values. frame=" + Arrays.toString(iArr);
                    return;
                }
                int i3 = iArr[2];
                int i4 = iArr[0];
                if (i3 <= i4 || (i = iArr[3]) <= (i2 = iArr[1])) {
                    return;
                }
                int i5 = (i3 - i4) + 1;
                int i6 = (i - i2) + 1;
                if (i5 < i6) {
                    int i7 = i5 + i6;
                    i6 = i7 - i6;
                    i5 = i7 - i6;
                }
                C5003 m9853 = C5003.m9853(i5, this.f18742);
                C5003 m98532 = C5003.m9853(i6, this.f18742);
                hashMapArr[0].put("ImageWidth", m9853);
                hashMapArr[0].put("ImageLength", m98532);
            }
        }
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final boolean m9877(HashMap hashMap) {
        C5003 c5003 = (C5003) hashMap.get("ImageLength");
        C5003 c50032 = (C5003) hashMap.get("ImageWidth");
        if (c5003 == null || c50032 == null) {
            return false;
        }
        return c5003.m9857(this.f18742) <= 512 && c50032.m9857(this.f18742) <= 512;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m9878(C5008 c5008) {
        if (f18731) {
            String str = "getPngAttributes starting with: " + c5008;
        }
        c5008.f18748 = ByteOrder.BIG_ENDIAN;
        byte[] bArr = f18707;
        c5008.m9887(bArr.length);
        int length = bArr.length;
        while (true) {
            try {
                int readInt = c5008.readInt();
                byte[] bArr2 = new byte[4];
                if (c5008.read(bArr2) != 4) {
                    throw new IOException("Encountered invalid length while parsing PNG chunktype");
                }
                int i = length + 8;
                if (i == 16 && !Arrays.equals(bArr2, f18718)) {
                    throw new IOException("Encountered invalid PNG file--IHDR chunk should appearas the first chunk");
                }
                if (Arrays.equals(bArr2, f18709)) {
                    return;
                }
                if (Arrays.equals(bArr2, f18703)) {
                    byte[] bArr3 = new byte[readInt];
                    if (c5008.read(bArr3) != readInt) {
                        throw new IOException("Failed to read given length for given PNG chunk type: " + ˈ.ˈ(bArr2));
                    }
                    int readInt2 = c5008.readInt();
                    CRC32 crc32 = new CRC32();
                    crc32.update(bArr2);
                    crc32.update(bArr3);
                    if (((int) crc32.getValue()) == readInt2) {
                        this.f18739 = i;
                        m9881(0, bArr3);
                        m9866();
                        m9865(new C5008(bArr3));
                        return;
                    }
                    throw new IOException("Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: " + readInt2 + ", calculated CRC value: " + crc32.getValue());
                }
                int i2 = readInt + 4;
                c5008.m9887(i2);
                length = i + i2;
            } catch (EOFException unused) {
                throw new IOException("Encountered corrupt PNG file.");
            }
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String m9879(String str) {
        C5003 m9864 = m9864(str);
        if (m9864 != null) {
            int i = m9864.f18696;
            if (!f18719.contains(str)) {
                return m9864.m9859(this.f18742);
            }
            if (str.equals("GPSTimeStamp")) {
                if (i != 5 && i != 10) {
                    String str2 = "GPS Timestamp format is not rational. format=" + i;
                    return null;
                }
                C5005[] c5005Arr = (C5005[]) m9864.m9858(this.f18742);
                if (c5005Arr == null || c5005Arr.length != 3) {
                    String str3 = "Invalid GPS Timestamp array. array=" + Arrays.toString(c5005Arr);
                    return null;
                }
                C5005 c5005 = c5005Arr[0];
                Integer valueOf = Integer.valueOf((int) (((float) c5005.f18702) / ((float) c5005.f18701)));
                C5005 c50052 = c5005Arr[1];
                Integer valueOf2 = Integer.valueOf((int) (((float) c50052.f18702) / ((float) c50052.f18701)));
                C5005 c50053 = c5005Arr[2];
                return String.format("%02d:%02d:%02d", valueOf, valueOf2, Integer.valueOf((int) (((float) c50053.f18702) / ((float) c50053.f18701))));
            }
            try {
                return Double.toString(m9864.m9856(this.f18742));
            } catch (NumberFormatException unused) {
            }
        }
        return null;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m9880() {
        String m9879 = m9879("DateTimeOriginal");
        HashMap[] hashMapArr = this.f18735;
        if (m9879 != null && m9879("DateTime") == null) {
            HashMap hashMap = hashMapArr[0];
            byte[] bytes = m9879.concat("\u0000").getBytes(f18726);
            hashMap.put("DateTime", new C5003(bytes, 2, bytes.length));
        }
        if (m9879("ImageWidth") == null) {
            hashMapArr[0].put("ImageWidth", C5003.m9855(0L, this.f18742));
        }
        if (m9879("ImageLength") == null) {
            hashMapArr[0].put("ImageLength", C5003.m9855(0L, this.f18742));
        }
        if (m9879("Orientation") == null) {
            hashMapArr[0].put("Orientation", C5003.m9855(0L, this.f18742));
        }
        if (m9879("LightSource") == null) {
            hashMapArr[1].put("LightSource", C5003.m9855(0L, this.f18742));
        }
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final void m9881(int i, byte[] bArr) {
        C5010 c5010 = new C5010(bArr);
        m9870(c5010);
        m9873(c5010, i);
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void m9882(C5008 c5008) {
        if (f18731) {
            String str = "getWebpAttributes starting with: " + c5008;
        }
        c5008.f18748 = ByteOrder.LITTLE_ENDIAN;
        c5008.m9887(f18704.length);
        int readInt = c5008.readInt() + 8;
        byte[] bArr = f18729;
        c5008.m9887(bArr.length);
        int length = bArr.length + 8;
        while (true) {
            try {
                byte[] bArr2 = new byte[4];
                if (c5008.read(bArr2) != 4) {
                    throw new IOException("Encountered invalid length while parsing WebP chunktype");
                }
                int readInt2 = c5008.readInt();
                int i = length + 8;
                if (Arrays.equals(f18708, bArr2)) {
                    byte[] bArr3 = new byte[readInt2];
                    if (c5008.read(bArr3) == readInt2) {
                        this.f18739 = i;
                        m9881(0, bArr3);
                        m9865(new C5008(bArr3));
                        return;
                    } else {
                        throw new IOException("Failed to read given length for given PNG chunk type: " + ˈ.ˈ(bArr2));
                    }
                }
                if (readInt2 % 2 == 1) {
                    readInt2++;
                }
                length = i + readInt2;
                if (length == readInt) {
                    return;
                }
                if (length > readInt) {
                    throw new IOException("Encountered WebP file with invalid chunk size");
                }
                c5008.m9887(readInt2);
            } catch (EOFException unused) {
                throw new IOException("Encountered corrupt WebP file.");
            }
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(14:14|15|(4:16|17|18|19)|(16:107|(2:109|110)(1:153)|112|113|(1:115)|116|(3:119|120|(4:125|(3:130|(1:132)(2:140|(1:142))|(3:135|136|137))(2:127|128)|129|121))|118|22|23|25|26|27|(1:93)(1:31)|32|(1:34)(8:36|37|39|40|41|(1:43)(1:79)|44|(1:46)(3:47|(2:48|(2:50|(2:53|54)(1:52))(2:77|78))|(1:56)(4:57|(2:58|(2:60|(1:63)(1:62))(3:68|69|(2:70|(1:76)(2:72|(1:75)(1:74)))))|64|(1:66)(1:67)))))|21|22|23|25|26|27|(1:29)|93|32|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:100:0x00f3, code lost:
    
        r5 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x00fa, code lost:
    
        if (r5 != null) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x00fc, code lost:
    
        r5.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x00ff, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x00f8, code lost:
    
        r2 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x00f5, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x00f6, code lost:
    
        r5 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0061, code lost:
    
        if (r9 < 16) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x00cd, code lost:
    
        if (r8 != null) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0100, code lost:
    
        if (r2 != null) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0102, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0105, code lost:
    
        r0 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x00f2, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0109 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x010b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0141 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0144  */
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m9883(java.io.BufferedInputStream r18) {
        /*
            Method dump skipped, instructions count: 416
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p422.C5006.m9883(java.io.BufferedInputStream):int");
    }
}
