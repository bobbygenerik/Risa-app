package p291;

import android.net.Uri;
import android.text.TextUtils;
import androidx.media3.common.ParserException;
import com.google.android.gms.internal.measurement.ˏʻ;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xml.sax.helpers.DefaultHandler;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
import p017.AbstractC1004;
import p223.C3056;
import p266.C3454;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p364.InterfaceC4437;
import ˑי.ʽ;

/* renamed from: ٴᴵ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3617 extends DefaultHandler implements InterfaceC4437 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final XmlPullParserFactory f14158;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final Pattern f14156 = Pattern.compile("(\\d+)(?:/(\\d+))?");

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final Pattern f14153 = Pattern.compile("CC([1-4])=.*");

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final Pattern f14154 = Pattern.compile("([1-9]|[1-5][0-9]|6[0-3])=.*");

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final int[] f14157 = {2, 1, 2, 2, 2, 2, 1, 2, 2, 1, 1, 1, 1, 2, 1, 1, 2, 2, 2};

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static final int[] f14155 = {-1, 1, 2, 3, 4, 5, 6, 8, 2, 3, 4, 7, 8, 24, 8, 12, 10, 12, 14, 12, 14};

    public C3617() {
        try {
            this.f14158 = XmlPullParserFactory.newInstance();
        } catch (XmlPullParserException e) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e);
        }
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static C3628 m7581(XmlPullParser xmlPullParser, String str) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "schemeIdUri");
        if (attributeValue == null) {
            attributeValue = "";
        }
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "value");
        if (attributeValue2 == null) {
            attributeValue2 = null;
        }
        String attributeValue3 = xmlPullParser.getAttributeValue(null, "id");
        String str2 = attributeValue3 != null ? attributeValue3 : null;
        do {
            xmlPullParser.next();
        } while (!AbstractC3731.m7839(xmlPullParser, str));
        return new C3628(attributeValue, attributeValue2, str2);
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public static C3626 m7582(XmlPullParser xmlPullParser, C3626 c3626) {
        long j = c3626 != null ? c3626.f14160 : 1L;
        String attributeValue = xmlPullParser.getAttributeValue(null, "timescale");
        if (attributeValue != null) {
            j = Long.parseLong(attributeValue);
        }
        long j2 = j;
        long j3 = c3626 != null ? c3626.f14159 : 0L;
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "presentationTimeOffset");
        if (attributeValue2 != null) {
            j3 = Long.parseLong(attributeValue2);
        }
        long j4 = j3;
        long j5 = c3626 != null ? c3626.f14189 : 0L;
        long j6 = c3626 != null ? c3626.f14190 : 0L;
        String attributeValue3 = xmlPullParser.getAttributeValue(null, "indexRange");
        if (attributeValue3 != null) {
            String[] split = attributeValue3.split("-");
            j5 = Long.parseLong(split[0]);
            j6 = (Long.parseLong(split[1]) - j5) + 1;
        }
        long j7 = j6;
        long j8 = j5;
        C3613 c3613 = c3626 != null ? c3626.f14161 : null;
        while (true) {
            xmlPullParser.next();
            if (AbstractC3731.m7847(xmlPullParser, "Initialization")) {
                c3613 = m7585(xmlPullParser, "sourceURL", "range");
            } else {
                m7595(xmlPullParser);
            }
            C3613 c36132 = c3613;
            if (AbstractC3731.m7839(xmlPullParser, "SegmentBase")) {
                return new C3626(c36132, j2, j4, j8, j7);
            }
            c3613 = c36132;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x008f, code lost:
    
        if (r13 == 0) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0093, code lost:
    
        r10 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00cc, code lost:
    
        if (r13.equals("fa01") == false) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x019b, code lost:
    
        if (r13 == 0) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01ae, code lost:
    
        if (r13 < 33) goto L49;
     */
    /* renamed from: ʽ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m7583(org.xmlpull.v1.XmlPullParser r12, java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 536
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p291.C3617.m7583(org.xmlpull.v1.XmlPullParser, java.lang.String):int");
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static long m7584(XmlPullParser xmlPullParser, String str, long j) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        if (attributeValue == null) {
            return j;
        }
        Matcher matcher = AbstractC3712.f14476.matcher(attributeValue);
        if (!matcher.matches()) {
            return (long) (Double.parseDouble(attributeValue) * 3600.0d * 1000.0d);
        }
        boolean isEmpty = TextUtils.isEmpty(matcher.group(1));
        String group = matcher.group(3);
        double parseDouble = group != null ? Double.parseDouble(group) * 3.1556908E7d : 0.0d;
        String group2 = matcher.group(5);
        double parseDouble2 = parseDouble + (group2 != null ? Double.parseDouble(group2) * 2629739.0d : 0.0d);
        String group3 = matcher.group(7);
        double parseDouble3 = parseDouble2 + (group3 != null ? Double.parseDouble(group3) * 86400.0d : 0.0d);
        String group4 = matcher.group(10);
        double parseDouble4 = parseDouble3 + (group4 != null ? Double.parseDouble(group4) * 3600.0d : 0.0d);
        String group5 = matcher.group(12);
        double parseDouble5 = parseDouble4 + (group5 != null ? Double.parseDouble(group5) * 60.0d : 0.0d);
        String group6 = matcher.group(14);
        long parseDouble6 = (long) ((parseDouble5 + (group6 != null ? Double.parseDouble(group6) : 0.0d)) * 1000.0d);
        return !isEmpty ? -parseDouble6 : parseDouble6;
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static C3613 m7585(XmlPullParser xmlPullParser, String str, String str2) {
        long j;
        long j2;
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        String attributeValue2 = xmlPullParser.getAttributeValue(null, str2);
        if (attributeValue2 != null) {
            String[] split = attributeValue2.split("-");
            j = Long.parseLong(split[0]);
            if (split.length == 2) {
                j2 = (Long.parseLong(split[1]) - j) + 1;
                return new C3613(j, j2, attributeValue);
            }
        } else {
            j = 0;
        }
        j2 = -1;
        return new C3613(j, j2, attributeValue);
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public static int m7586(ArrayList arrayList) {
        int i = 0;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            if (ˏʻ.ᵎﹶ("http://dashif.org/guidelines/trickmode", ((C3628) arrayList.get(i2)).f14195)) {
                i = 16384;
            }
        }
        return i;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:31:0x00ff. Please report as an issue. */
    /* renamed from: ˏי, reason: contains not printable characters */
    public static ʽ m7587(XmlPullParser xmlPullParser, String str, ʽ r13) {
        String str2;
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        if (attributeValue == null) {
            return r13;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        arrayList.add("");
        int i = 0;
        while (i < attributeValue.length()) {
            int indexOf = attributeValue.indexOf("$", i);
            char c = 65535;
            if (indexOf == -1) {
                arrayList.set(arrayList2.size(), ((String) arrayList.get(arrayList2.size())) + attributeValue.substring(i));
                i = attributeValue.length();
            } else if (indexOf != i) {
                arrayList.set(arrayList2.size(), ((String) arrayList.get(arrayList2.size())) + attributeValue.substring(i, indexOf));
                i = indexOf;
            } else if (attributeValue.startsWith("$$", i)) {
                arrayList.set(arrayList2.size(), ((String) arrayList.get(arrayList2.size())) + "$");
                i += 2;
            } else {
                arrayList3.add("");
                int i2 = i + 1;
                int indexOf2 = attributeValue.indexOf("$", i2);
                String substring = attributeValue.substring(i2, indexOf2);
                if (substring.equals("RepresentationID")) {
                    arrayList2.add(1);
                } else {
                    int indexOf3 = substring.indexOf("%0");
                    if (indexOf3 != -1) {
                        str2 = substring.substring(indexOf3);
                        if (!str2.endsWith("d") && !str2.endsWith("x") && !str2.endsWith("X")) {
                            str2 = str2.concat("d");
                        }
                        substring = substring.substring(0, indexOf3);
                    } else {
                        str2 = "%01d";
                    }
                    substring.getClass();
                    switch (substring.hashCode()) {
                        case -1950496919:
                            if (substring.equals("Number")) {
                                c = 0;
                                break;
                            }
                            break;
                        case 2606829:
                            if (substring.equals("Time")) {
                                c = 1;
                                break;
                            }
                            break;
                        case 38199441:
                            if (substring.equals("Bandwidth")) {
                                c = 2;
                                break;
                            }
                            break;
                    }
                    switch (c) {
                        case 0:
                            arrayList2.add(2);
                            break;
                        case 1:
                            arrayList2.add(4);
                            break;
                        case 2:
                            arrayList2.add(3);
                            break;
                        default:
                            throw new IllegalArgumentException("Invalid template: ".concat(attributeValue));
                    }
                    arrayList3.set(arrayList2.size() - 1, str2);
                }
                arrayList.add("");
                i = indexOf2 + 1;
            }
        }
        return new ʽ(arrayList, arrayList2, arrayList3);
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static long m7588(XmlPullParser xmlPullParser, long j) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "availabilityTimeOffset");
        if (attributeValue == null) {
            return j;
        }
        if ("INF".equals(attributeValue)) {
            return Long.MAX_VALUE;
        }
        return Float.parseFloat(attributeValue) * 1000000.0f;
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public static ArrayList m7589(XmlPullParser xmlPullParser, long j, long j2) {
        long j3;
        ArrayList arrayList = new ArrayList();
        long j4 = 0;
        long j5 = -9223372036854775807L;
        boolean z = false;
        int i = 0;
        do {
            xmlPullParser.next();
            if (AbstractC3731.m7847(xmlPullParser, "S")) {
                String attributeValue = xmlPullParser.getAttributeValue(null, "t");
                long parseLong = attributeValue == null ? -9223372036854775807L : Long.parseLong(attributeValue);
                if (z) {
                    int i2 = i;
                    j3 = parseLong;
                    j4 = m7596(arrayList, j4, j5, i2, j3);
                } else {
                    j3 = parseLong;
                }
                if (j3 != -9223372036854775807L) {
                    j4 = j3;
                }
                String attributeValue2 = xmlPullParser.getAttributeValue(null, "d");
                j5 = attributeValue2 == null ? -9223372036854775807L : Long.parseLong(attributeValue2);
                String attributeValue3 = xmlPullParser.getAttributeValue(null, "r");
                i = attributeValue3 == null ? 0 : Integer.parseInt(attributeValue3);
                z = true;
            } else {
                m7595(xmlPullParser);
            }
        } while (!AbstractC3731.m7839(xmlPullParser, "SegmentTimeline"));
        if (z) {
            String str = AbstractC3712.f14481;
            m7596(arrayList, j4, j5, i, AbstractC3712.m7797(j2, j, 1000L, RoundingMode.DOWN));
        }
        return arrayList;
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static float m7590(XmlPullParser xmlPullParser, float f) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "frameRate");
        if (attributeValue != null) {
            Matcher matcher = f14156.matcher(attributeValue);
            if (matcher.matches()) {
                int parseInt = Integer.parseInt(matcher.group(1));
                return !TextUtils.isEmpty(matcher.group(2)) ? parseInt / Integer.parseInt(r2) : parseInt;
            }
        }
        return f;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0162  */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v24 */
    /* JADX WARN: Type inference failed for: r7v25 */
    /* JADX WARN: Type inference failed for: r7v26 */
    /* JADX WARN: Type inference failed for: r7v27 */
    /* JADX WARN: Type inference failed for: r7v28 */
    /* JADX WARN: Type inference failed for: r7v29 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4, types: [byte[]] */
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair m7591(org.xmlpull.v1.XmlPullParser r13) {
        /*
            Method dump skipped, instructions count: 396
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p291.C3617.m7591(org.xmlpull.v1.XmlPullParser):android.util.Pair");
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static int m7592(String str) {
        if (str != null) {
            char c = 65535;
            switch (str.hashCode()) {
                case -2060497896:
                    if (str.equals("subtitle")) {
                        c = 0;
                        break;
                    }
                    break;
                case -1724546052:
                    if (str.equals("description")) {
                        c = 1;
                        break;
                    }
                    break;
                case -1580883024:
                    if (str.equals("enhanced-audio-intelligibility")) {
                        c = 2;
                        break;
                    }
                    break;
                case -1574842690:
                    if (str.equals("forced_subtitle")) {
                        c = 3;
                        break;
                    }
                    break;
                case -1408024454:
                    if (str.equals("alternate")) {
                        c = 4;
                        break;
                    }
                    break;
                case -1396432756:
                    if (str.equals("forced-subtitle")) {
                        c = 5;
                        break;
                    }
                    break;
                case 99825:
                    if (str.equals("dub")) {
                        c = 6;
                        break;
                    }
                    break;
                case 3343801:
                    if (str.equals("main")) {
                        c = 7;
                        break;
                    }
                    break;
                case 3530173:
                    if (str.equals("sign")) {
                        c = '\b';
                        break;
                    }
                    break;
                case 552573414:
                    if (str.equals("caption")) {
                        c = '\t';
                        break;
                    }
                    break;
                case 899152809:
                    if (str.equals("commentary")) {
                        c = '\n';
                        break;
                    }
                    break;
                case 1629013393:
                    if (str.equals("emergency")) {
                        c = 11;
                        break;
                    }
                    break;
                case 1855372047:
                    if (str.equals("supplementary")) {
                        c = '\f';
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                case 3:
                case 5:
                    return 128;
                case 1:
                    return 512;
                case 2:
                    return 2048;
                case 4:
                    return 2;
                case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                    return 16;
                case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                    return 1;
                case C3056.BYTES_FIELD_NUMBER /* 8 */:
                    return 256;
                case '\t':
                    return 64;
                case '\n':
                    return 8;
                case 11:
                    return 32;
                case '\f':
                    return 4;
            }
        }
        return 0;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static int m7593(XmlPullParser xmlPullParser) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "contentType");
        if (TextUtils.isEmpty(attributeValue)) {
            return -1;
        }
        if ("audio".equals(attributeValue)) {
            return 1;
        }
        if ("video".equals(attributeValue)) {
            return 2;
        }
        if ("text".equals(attributeValue)) {
            return 3;
        }
        return "image".equals(attributeValue) ? 4 : -1;
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public static C3616 m7594(XmlPullParser xmlPullParser, C3616 c3616, long j, long j2, long j3, long j4, long j5) {
        long j6 = c3616 != null ? c3616.f14160 : 1L;
        List list = null;
        String attributeValue = xmlPullParser.getAttributeValue(null, "timescale");
        if (attributeValue != null) {
            j6 = Long.parseLong(attributeValue);
        }
        long j7 = j6;
        long j8 = c3616 != null ? c3616.f14159 : 0L;
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "presentationTimeOffset");
        if (attributeValue2 != null) {
            j8 = Long.parseLong(attributeValue2);
        }
        long j9 = j8;
        long j10 = c3616 != null ? c3616.f14169 : -9223372036854775807L;
        String attributeValue3 = xmlPullParser.getAttributeValue(null, "duration");
        if (attributeValue3 != null) {
            j10 = Long.parseLong(attributeValue3);
        }
        long j11 = j10;
        long j12 = c3616 != null ? c3616.f14168 : 1L;
        String attributeValue4 = xmlPullParser.getAttributeValue(null, "startNumber");
        if (attributeValue4 != null) {
            j12 = Long.parseLong(attributeValue4);
        }
        long j13 = j12;
        long j14 = j4 == -9223372036854775807L ? j3 : j4;
        long j15 = j14 == Long.MAX_VALUE ? -9223372036854775807L : j14;
        C3613 c3613 = null;
        List list2 = null;
        do {
            xmlPullParser.next();
            if (AbstractC3731.m7847(xmlPullParser, "Initialization")) {
                c3613 = m7585(xmlPullParser, "sourceURL", "range");
            } else if (AbstractC3731.m7847(xmlPullParser, "SegmentTimeline")) {
                list2 = m7589(xmlPullParser, j7, j2);
            } else if (AbstractC3731.m7847(xmlPullParser, "SegmentURL")) {
                if (list == null) {
                    list = new ArrayList();
                }
                list.add(m7585(xmlPullParser, "media", "mediaRange"));
            } else {
                m7595(xmlPullParser);
            }
        } while (!AbstractC3731.m7839(xmlPullParser, "SegmentList"));
        if (c3616 != null) {
            if (c3613 == null) {
                c3613 = c3616.f14161;
            }
            if (list2 == null) {
                list2 = c3616.f14172;
            }
            if (list == null) {
                list = c3616.f14152;
            }
        }
        return new C3616(c3613, j7, j9, j13, j11, list2, j15, list, AbstractC3712.m7757(j5), AbstractC3712.m7757(j));
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static void m7595(XmlPullParser xmlPullParser) {
        if (xmlPullParser.getEventType() == 2) {
            int i = 1;
            while (i != 0) {
                xmlPullParser.next();
                if (xmlPullParser.getEventType() == 2) {
                    i++;
                } else if (xmlPullParser.getEventType() == 3) {
                    i--;
                }
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static long m7596(ArrayList arrayList, long j, long j2, int i, long j3) {
        int i2;
        if (i >= 0) {
            i2 = i + 1;
        } else {
            String str = AbstractC3712.f14481;
            i2 = (int) ((((j3 - j) + j2) - 1) / j2);
        }
        for (int i3 = 0; i3 < i2; i3++) {
            arrayList.add(new C3623(j, j2));
            j += j2;
        }
        return j;
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public static C3611 m7597(XmlPullParser xmlPullParser, C3611 c3611, List list, long j, long j2, long j3, long j4, long j5) {
        long j6;
        long j7 = c3611 != null ? c3611.f14160 : 1L;
        C3613 c3613 = null;
        String attributeValue = xmlPullParser.getAttributeValue(null, "timescale");
        if (attributeValue != null) {
            j7 = Long.parseLong(attributeValue);
        }
        long j8 = j7;
        long j9 = c3611 != null ? c3611.f14159 : 0L;
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "presentationTimeOffset");
        if (attributeValue2 != null) {
            j9 = Long.parseLong(attributeValue2);
        }
        long j10 = j9;
        long j11 = c3611 != null ? c3611.f14169 : -9223372036854775807L;
        String attributeValue3 = xmlPullParser.getAttributeValue(null, "duration");
        if (attributeValue3 != null) {
            j11 = Long.parseLong(attributeValue3);
        }
        long j12 = j11;
        long j13 = c3611 != null ? c3611.f14168 : 1L;
        String attributeValue4 = xmlPullParser.getAttributeValue(null, "startNumber");
        if (attributeValue4 != null) {
            j13 = Long.parseLong(attributeValue4);
        }
        long j14 = j13;
        int i = 0;
        while (true) {
            if (i >= list.size()) {
                j6 = -1;
                break;
            }
            C3628 c3628 = (C3628) list.get(i);
            if (ˏʻ.ᵎﹶ("http://dashif.org/guidelines/last-segment-number", c3628.f14195)) {
                j6 = Long.parseLong(c3628.f14194);
                break;
            }
            i++;
        }
        long j15 = j6;
        long j16 = j4 == -9223372036854775807L ? j3 : j4;
        long j17 = j16 == Long.MAX_VALUE ? -9223372036854775807L : j16;
        ʽ m7587 = m7587(xmlPullParser, "media", c3611 != null ? c3611.f14122 : null);
        ʽ m75872 = m7587(xmlPullParser, "initialization", c3611 != null ? c3611.f14121 : null);
        List list2 = null;
        do {
            xmlPullParser.next();
            if (AbstractC3731.m7847(xmlPullParser, "Initialization")) {
                c3613 = m7585(xmlPullParser, "sourceURL", "range");
            } else if (AbstractC3731.m7847(xmlPullParser, "SegmentTimeline")) {
                list2 = m7589(xmlPullParser, j8, j2);
            } else {
                m7595(xmlPullParser);
            }
        } while (!AbstractC3731.m7839(xmlPullParser, "SegmentTemplate"));
        if (c3611 != null) {
            if (c3613 == null) {
                c3613 = c3611.f14161;
            }
            if (list2 == null) {
                list2 = c3611.f14172;
            }
        }
        return new C3611(c3613, j8, j10, j14, j15, j12, list2, j17, m75872, m7587, AbstractC3712.m7757(j5), AbstractC3712.m7757(j));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:693:0x10b0. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:192:0x0f6f A[LOOP:5: B:183:0x0410->B:192:0x0f6f, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:193:0x0e07 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:360:0x0c78 A[LOOP:11: B:351:0x0693->B:360:0x0c78, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:361:0x08e3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:368:0x092e  */
    /* JADX WARN: Removed duplicated region for block: B:379:0x0976  */
    /* JADX WARN: Removed duplicated region for block: B:382:0x0988  */
    /* JADX WARN: Removed duplicated region for block: B:389:0x099e  */
    /* JADX WARN: Removed duplicated region for block: B:407:0x09e2  */
    /* JADX WARN: Removed duplicated region for block: B:417:0x0a07  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x134f A[LOOP:1: B:35:0x00cd->B:43:0x134f, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x131b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:457:0x0aaf  */
    /* JADX WARN: Removed duplicated region for block: B:473:0x0b23  */
    /* JADX WARN: Removed duplicated region for block: B:476:0x0b31  */
    /* JADX WARN: Removed duplicated region for block: B:479:0x0b43  */
    /* JADX WARN: Removed duplicated region for block: B:482:0x0c0f  */
    /* JADX WARN: Removed duplicated region for block: B:485:0x0c2b  */
    /* JADX WARN: Removed duplicated region for block: B:492:0x0c4a  */
    /* JADX WARN: Removed duplicated region for block: B:498:0x0c32  */
    /* JADX WARN: Removed duplicated region for block: B:499:0x0c12  */
    /* JADX WARN: Removed duplicated region for block: B:500:0x0b51  */
    /* JADX WARN: Removed duplicated region for block: B:546:0x0b3a  */
    /* JADX WARN: Removed duplicated region for block: B:547:0x0b2c  */
    /* JADX WARN: Removed duplicated region for block: B:550:0x0afb A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:563:0x097f  */
    /* JADX WARN: Type inference failed for: r1v114, types: [ʽⁱ.ـˆ, java.lang.Object] */
    /* renamed from: ﾞʻ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p291.C3612 m7598(org.xmlpull.v1.XmlPullParser r163, android.net.Uri r164) {
        /*
            Method dump skipped, instructions count: 5018
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p291.C3617.m7598(org.xmlpull.v1.XmlPullParser, android.net.Uri):ٴᴵ.ʽ");
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static ArrayList m7599(XmlPullParser xmlPullParser, ArrayList arrayList, boolean z) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "dvb:priority");
        int parseInt = attributeValue != null ? Integer.parseInt(attributeValue) : z ? 1 : Integer.MIN_VALUE;
        String attributeValue2 = xmlPullParser.getAttributeValue(null, "dvb:weight");
        int parseInt2 = attributeValue2 != null ? Integer.parseInt(attributeValue2) : 1;
        String attributeValue3 = xmlPullParser.getAttributeValue(null, "serviceLocation");
        String str = "";
        do {
            xmlPullParser.next();
            if (xmlPullParser.getEventType() == 4) {
                str = xmlPullParser.getText();
            } else {
                m7595(xmlPullParser);
            }
        } while (!AbstractC3731.m7839(xmlPullParser, "BaseURL"));
        if (str != null && AbstractC3731.m7853(str)[0] != -1) {
            if (attributeValue3 == null) {
                attributeValue3 = str;
            }
            return AbstractC1004.m3290(new C3624(parseInt, parseInt2, str, attributeValue3));
        }
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < arrayList.size(); i++) {
            C3624 c3624 = (C3624) arrayList.get(i);
            String m7846 = AbstractC3731.m7846(c3624.f14182, str);
            String str2 = attributeValue3 == null ? m7846 : attributeValue3;
            if (z) {
                parseInt = c3624.f14179;
                parseInt2 = c3624.f14180;
                str2 = c3624.f14181;
            }
            arrayList2.add(new C3624(parseInt, parseInt2, m7846, str2));
        }
        return arrayList2;
    }

    @Override // p364.InterfaceC4437
    /* renamed from: ˈ */
    public final Object mo4043(Uri uri, C3454 c3454) {
        try {
            XmlPullParser newPullParser = this.f14158.newPullParser();
            newPullParser.setInput(c3454, null);
            if (newPullParser.next() == 2 && "MPD".equals(newPullParser.getName())) {
                return m7598(newPullParser, uri);
            }
            throw ParserException.m740("inputStream does not contain a valid media presentation description", null);
        } catch (XmlPullParserException e) {
            throw ParserException.m740(null, e);
        }
    }
}
