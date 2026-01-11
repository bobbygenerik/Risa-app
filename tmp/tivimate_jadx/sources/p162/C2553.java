package p162;

import androidx.leanback.widget.ʻٴ;
import androidx.media3.extractor.text.SubtitleDecoderException;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
import p003.C0781;
import p035.AbstractC1220;
import p051.C1393;
import p051.InterfaceC1390;
import p051.InterfaceC1398;
import p137.AbstractC2305;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p305.InterfaceC3734;
import ﹳˋ.ٴﹶ;

/* renamed from: ˊـ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2553 implements InterfaceC1398 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final XmlPullParserFactory f9686;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final Pattern f9683 = Pattern.compile("^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$");

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final Pattern f9678 = Pattern.compile("^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$");

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final Pattern f9679 = Pattern.compile("^(([0-9]*.)?[0-9]+)(px|em|%)$");

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final Pattern f9684 = Pattern.compile("^([-+]?\\d+\\.?\\d*?)%$");

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static final Pattern f9681 = Pattern.compile("^([-+]?\\d+\\.?\\d*?)% ([-+]?\\d+\\.?\\d*?)%$");

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public static final Pattern f9682 = Pattern.compile("^([-+]?\\d+\\.?\\d*?)px ([-+]?\\d+\\.?\\d*?)px$");

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public static final Pattern f9680 = Pattern.compile("^(\\d+) (\\d+)$");

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public static final C2552 f9685 = new C2552(30.0f, 1, 1);

    public C2553() {
        try {
            XmlPullParserFactory newInstance = XmlPullParserFactory.newInstance();
            this.f9686 = newInstance;
            newInstance.setNamespaceAware(true);
        } catch (XmlPullParserException e) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:115:0x0238, code lost:
    
        if (p305.AbstractC3731.m7847(r20, "metadata") != false) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x023a, code lost:
    
        r20.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0243, code lost:
    
        if (p305.AbstractC3731.m7847(r20, "image") == false) goto L114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0245, code lost:
    
        r6 = p305.AbstractC3731.m7855(r20, "id");
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x0249, code lost:
    
        if (r6 == null) goto L114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x024b, code lost:
    
        r25.put(r6, r20.nextText());
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x025b, code lost:
    
        if (p305.AbstractC3731.m7839(r20, "metadata") == false) goto L130;
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0225  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01d7  */
    /* renamed from: ʼˎ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m5712(org.xmlpull.v1.XmlPullParser r20, java.util.HashMap r21, int r22, p003.C0781 r23, java.util.HashMap r24, java.util.HashMap r25) {
        /*
            Method dump skipped, instructions count: 638
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p162.C2553.m5712(org.xmlpull.v1.XmlPullParser, java.util.HashMap, int, ʻʿ.ˉˆ, java.util.HashMap, java.util.HashMap):void");
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static C2554 m5713(C2554 c2554) {
        return c2554 == null ? new C2554() : c2554;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static C2551 m5714(XmlPullParser xmlPullParser, C2551 c2551, HashMap hashMap, C2552 c2552) {
        long j;
        char c;
        String[] split;
        int attributeCount = xmlPullParser.getAttributeCount();
        String[] strArr = null;
        C2554 m5718 = m5718(xmlPullParser, null);
        String str = null;
        String str2 = "";
        long j2 = -9223372036854775807L;
        long j3 = -9223372036854775807L;
        long j4 = -9223372036854775807L;
        for (int i = 0; i < attributeCount; i++) {
            String attributeName = xmlPullParser.getAttributeName(i);
            String attributeValue = xmlPullParser.getAttributeValue(i);
            attributeName.getClass();
            switch (attributeName.hashCode()) {
                case -934795532:
                    if (attributeName.equals("region")) {
                        c = 0;
                        break;
                    }
                    break;
                case 99841:
                    if (attributeName.equals("dur")) {
                        c = 1;
                        break;
                    }
                    break;
                case 100571:
                    if (attributeName.equals("end")) {
                        c = 2;
                        break;
                    }
                    break;
                case 93616297:
                    if (attributeName.equals("begin")) {
                        c = 3;
                        break;
                    }
                    break;
                case 109780401:
                    if (attributeName.equals("style")) {
                        c = 4;
                        break;
                    }
                    break;
                case 1292595405:
                    if (attributeName.equals("backgroundImage")) {
                        c = 5;
                        break;
                    }
                    break;
            }
            c = 65535;
            switch (c) {
                case 0:
                    if (!hashMap.containsKey(attributeValue)) {
                        break;
                    } else {
                        str2 = attributeValue;
                        continue;
                    }
                case 1:
                    j4 = m5720(attributeValue, c2552);
                    break;
                case 2:
                    j3 = m5720(attributeValue, c2552);
                    break;
                case 3:
                    j2 = m5720(attributeValue, c2552);
                    break;
                case 4:
                    String trim = attributeValue.trim();
                    if (trim.isEmpty()) {
                        split = new String[0];
                    } else {
                        String str3 = AbstractC3712.f14481;
                        split = trim.split("\\s+", -1);
                    }
                    if (split.length > 0) {
                        strArr = split;
                        break;
                    }
                    break;
                case 5:
                    if (attributeValue.startsWith("#")) {
                        str = attributeValue.substring(1);
                        break;
                    }
                    break;
            }
        }
        if (c2551 != null) {
            long j5 = c2551.f9665;
            if (j5 != -9223372036854775807L) {
                if (j2 != -9223372036854775807L) {
                    j2 += j5;
                }
                if (j3 != -9223372036854775807L) {
                    j3 += j5;
                }
            }
        }
        if (j3 == -9223372036854775807L) {
            if (j4 != -9223372036854775807L) {
                j3 = j2 + j4;
            } else if (c2551 != null) {
                long j6 = c2551.f9667;
                if (j6 != -9223372036854775807L) {
                    j = j6;
                    return new C2551(xmlPullParser.getName(), null, j2, j, m5718, strArr, str2, str, c2551);
                }
            }
        }
        j = j3;
        return new C2551(xmlPullParser.getName(), null, j2, j, m5718, strArr, str2, str, c2551);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static boolean m5715(String str) {
        return str.equals("tt") || str.equals("head") || str.equals("body") || str.equals("div") || str.equals("p") || str.equals("span") || str.equals("br") || str.equals("style") || str.equals("styling") || str.equals("layout") || str.equals("region") || str.equals("metadata") || str.equals("image") || str.equals("data") || str.equals("information");
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static C0781 m5716(XmlPullParser xmlPullParser) {
        String m7855 = AbstractC3731.m7855(xmlPullParser, "extent");
        if (m7855 == null) {
            return null;
        }
        Matcher matcher = f9682.matcher(m7855);
        if (!matcher.matches()) {
            AbstractC3731.m7850("TtmlParser", "Ignoring non-pixel tts extent: ".concat(m7855));
            return null;
        }
        try {
            String group = matcher.group(1);
            group.getClass();
            int parseInt = Integer.parseInt(group);
            String group2 = matcher.group(2);
            group2.getClass();
            return new C0781(parseInt, Integer.parseInt(group2));
        } catch (NumberFormatException unused) {
            AbstractC3731.m7850("TtmlParser", "Ignoring malformed tts extent: ".concat(m7855));
            return null;
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static int m5717(XmlPullParser xmlPullParser) {
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "cellResolution");
        if (attributeValue == null) {
            return 15;
        }
        Matcher matcher = f9680.matcher(attributeValue);
        if (!matcher.matches()) {
            AbstractC3731.m7850("TtmlParser", "Ignoring malformed cell resolution: ".concat(attributeValue));
            return 15;
        }
        boolean z = true;
        try {
            String group = matcher.group(1);
            group.getClass();
            int parseInt = Integer.parseInt(group);
            String group2 = matcher.group(2);
            group2.getClass();
            int parseInt2 = Integer.parseInt(group2);
            if (parseInt == 0 || parseInt2 == 0) {
                z = false;
            }
            AbstractC3731.m7843("Invalid cell resolution " + parseInt + " " + parseInt2, z);
            return parseInt2;
        } catch (NumberFormatException unused) {
            AbstractC3731.m7850("TtmlParser", "Ignoring malformed cell resolution: ".concat(attributeValue));
            return 15;
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x014e. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:214:0x04b8. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:109:0x02c4  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x021f  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x024f  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x02a5  */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* renamed from: ٴﹶ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p162.C2554 m5718(org.xmlpull.v1.XmlPullParser r18, p162.C2554 r19) {
        /*
            Method dump skipped, instructions count: 1510
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p162.C2553.m5718(org.xmlpull.v1.XmlPullParser, ˊـ.ᵎﹶ):ˊـ.ᵎﹶ");
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static C2552 m5719(XmlPullParser xmlPullParser) {
        float f;
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRate");
        int parseInt = attributeValue != null ? Integer.parseInt(attributeValue) : 30;
        String attributeValue2 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRateMultiplier");
        if (attributeValue2 != null) {
            String str = AbstractC3712.f14481;
            AbstractC3731.m7843("frameRateMultiplier doesn't have 2 parts", attributeValue2.split(" ", -1).length == 2);
            f = Integer.parseInt(r2[0]) / Integer.parseInt(r2[1]);
        } else {
            f = 1.0f;
        }
        C2552 c2552 = f9685;
        int i = c2552.f9676;
        String attributeValue3 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "subFrameRate");
        if (attributeValue3 != null) {
            i = Integer.parseInt(attributeValue3);
        }
        int i2 = c2552.f9675;
        String attributeValue4 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "tickRate");
        if (attributeValue4 != null) {
            i2 = Integer.parseInt(attributeValue4);
        }
        return new C2552(parseInt * f, i, i2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00aa, code lost:
    
        if (r13.equals("ms") == false) goto L21;
     */
    /* renamed from: ﾞʻ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long m5720(java.lang.String r13, p162.C2552 r14) {
        /*
            Method dump skipped, instructions count: 296
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p162.C2553.m5720(java.lang.String, ˊـ.ˈ):long");
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static void m5721(String str, C2554 c2554) {
        Matcher matcher;
        String str2 = AbstractC3712.f14481;
        char c = 65535;
        String[] split = str.split("\\s+", -1);
        int length = split.length;
        Pattern pattern = f9679;
        if (length == 1) {
            matcher = pattern.matcher(str);
        } else {
            if (split.length != 2) {
                throw new Exception(AbstractC1220.m3782(new StringBuilder("Invalid number of entries for fontSize: "), split.length, "."));
            }
            matcher = pattern.matcher(split[1]);
            AbstractC3731.m7850("TtmlParser", "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first.");
        }
        if (!matcher.matches()) {
            throw new Exception(AbstractC2305.m5378("Invalid expression for fontSize: '", str, "'."));
        }
        String group = matcher.group(3);
        group.getClass();
        switch (group.hashCode()) {
            case 37:
                if (group.equals("%")) {
                    c = 0;
                    break;
                }
                break;
            case 3240:
                if (group.equals("em")) {
                    c = 1;
                    break;
                }
                break;
            case 3592:
                if (group.equals("px")) {
                    c = 2;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                c2554.f9691 = 3;
                break;
            case 1:
                c2554.f9691 = 2;
                break;
            case 2:
                c2554.f9691 = 1;
                break;
            default:
                throw new Exception(AbstractC2305.m5378("Invalid unit for fontSize: '", group, "'."));
        }
        String group2 = matcher.group(1);
        group2.getClass();
        c2554.f9698 = Float.parseFloat(group2);
    }

    @Override // p051.InterfaceC1398
    public final /* synthetic */ void reset() {
    }

    @Override // p051.InterfaceC1398
    /* renamed from: ᵎﹶ */
    public final int mo4116() {
        return 1;
    }

    @Override // p051.InterfaceC1398
    /* renamed from: ⁱˊ */
    public final InterfaceC1390 mo4117(byte[] bArr, int i, int i2) {
        try {
            XmlPullParser newPullParser = this.f9686.newPullParser();
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            HashMap hashMap3 = new HashMap();
            hashMap2.put("", new C2557("", -3.4028235E38f, -3.4028235E38f, Integer.MIN_VALUE, Integer.MIN_VALUE, -3.4028235E38f, -3.4028235E38f, Integer.MIN_VALUE, -3.4028235E38f, Integer.MIN_VALUE));
            C0781 c0781 = null;
            newPullParser.setInput(new ByteArrayInputStream(bArr, i, i2), null);
            ArrayDeque arrayDeque = new ArrayDeque();
            C2552 c2552 = f9685;
            int i3 = 0;
            int i4 = 15;
            ʻٴ r9 = null;
            for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.getEventType()) {
                C2551 c2551 = (C2551) arrayDeque.peek();
                if (i3 == 0) {
                    String name = newPullParser.getName();
                    if (eventType == 2) {
                        if ("tt".equals(name)) {
                            c2552 = m5719(newPullParser);
                            i4 = m5717(newPullParser);
                            c0781 = m5716(newPullParser);
                        }
                        C2552 c25522 = c2552;
                        C0781 c07812 = c0781;
                        int i5 = i4;
                        if (m5715(name)) {
                            if ("head".equals(name)) {
                                m5712(newPullParser, hashMap, i5, c07812, hashMap2, hashMap3);
                            } else {
                                try {
                                    C2551 m5714 = m5714(newPullParser, c2551, hashMap2, c25522);
                                    arrayDeque.push(m5714);
                                    if (c2551 != null) {
                                        if (c2551.f9666 == null) {
                                            c2551.f9666 = new ArrayList();
                                        }
                                        c2551.f9666.add(m5714);
                                    }
                                } catch (SubtitleDecoderException e) {
                                    AbstractC3731.m7859("TtmlParser", "Suppressing parser error", e);
                                }
                            }
                            i4 = i5;
                            c0781 = c07812;
                            c2552 = c25522;
                        } else {
                            AbstractC3731.m7845("TtmlParser", "Ignoring unsupported tag: " + newPullParser.getName());
                        }
                        i3++;
                        i4 = i5;
                        c0781 = c07812;
                        c2552 = c25522;
                    } else if (eventType == 4) {
                        c2551.getClass();
                        C2551 m5704 = C2551.m5704(newPullParser.getText());
                        if (c2551.f9666 == null) {
                            c2551.f9666 = new ArrayList();
                        }
                        c2551.f9666.add(m5704);
                    } else if (eventType == 3) {
                        if (newPullParser.getName().equals("tt")) {
                            C2551 c25512 = (C2551) arrayDeque.peek();
                            c25512.getClass();
                            r9 = new ʻٴ(c25512, hashMap, hashMap2, hashMap3);
                        }
                        arrayDeque.pop();
                    }
                } else if (eventType == 2) {
                    i3++;
                } else if (eventType == 3) {
                    i3--;
                }
                newPullParser.next();
            }
            r9.getClass();
            return r9;
        } catch (IOException e2) {
            throw new IllegalStateException("Unexpected error when reading input.", e2);
        } catch (XmlPullParserException e3) {
            throw new IllegalStateException("Unable to decode source", e3);
        }
    }

    @Override // p051.InterfaceC1398
    /* renamed from: ﹳٴ */
    public final void mo4118(byte[] bArr, int i, int i2, C1393 c1393, InterfaceC3734 interfaceC3734) {
        ٴﹶ.ᵎˊ(mo4117(bArr, i, i2), c1393, interfaceC3734);
    }
}
