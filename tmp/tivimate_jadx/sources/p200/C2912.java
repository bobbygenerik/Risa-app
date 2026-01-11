package p200;

import androidx.media3.exoplayer.smoothstreaming.manifest.SsManifestParser$MissingFieldException;
import java.util.ArrayList;
import java.util.Collections;
import org.xmlpull.v1.XmlPullParser;
import p055.AbstractC1464;
import p055.C1490;
import p055.C1495;
import p171.AbstractC2649;

/* renamed from: ˎˉ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2912 extends AbstractC2906 {

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public C1495 f11000;

    /* JADX WARN: Removed duplicated region for block: B:43:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0095  */
    /* renamed from: ˉʿ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.ArrayList m6439(java.lang.String r10) {
        /*
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            boolean r1 = android.text.TextUtils.isEmpty(r10)
            if (r1 != 0) goto L98
            byte[] r10 = p305.AbstractC3712.m7762(r10)
            byte[] r1 = p305.AbstractC3715.f14490
            int r1 = r10.length
            r2 = 4
            if (r1 > r2) goto L16
            goto L22
        L16:
            r1 = 0
            r3 = r1
        L18:
            byte[] r4 = p305.AbstractC3715.f14490
            if (r3 >= r2) goto L28
            r5 = r10[r3]
            r4 = r4[r3]
            if (r5 == r4) goto L25
        L22:
            r1 = 0
            goto L8f
        L25:
            int r3 = r3 + 1
            goto L18
        L28:
            java.util.ArrayList r3 = new java.util.ArrayList
            r3.<init>()
            r4 = r1
        L2e:
            java.lang.Integer r5 = java.lang.Integer.valueOf(r4)
            r3.add(r5)
            int r4 = r4 + r2
            int r5 = r10.length
            int r5 = r5 - r2
        L38:
            r6 = -1
            if (r4 > r5) goto L53
            int r7 = r10.length
            int r7 = r7 - r4
            if (r7 > r2) goto L40
            goto L4d
        L40:
            r7 = r1
        L41:
            byte[] r8 = p305.AbstractC3715.f14490
            if (r7 >= r2) goto L54
            int r9 = r4 + r7
            r9 = r10[r9]
            r8 = r8[r7]
            if (r9 == r8) goto L50
        L4d:
            int r4 = r4 + 1
            goto L38
        L50:
            int r7 = r7 + 1
            goto L41
        L53:
            r4 = r6
        L54:
            if (r4 != r6) goto L2e
            int r2 = r3.size()
            byte[][] r2 = new byte[r2]
            r4 = r1
        L5d:
            int r5 = r3.size()
            if (r4 >= r5) goto L8e
            java.lang.Object r5 = r3.get(r4)
            java.lang.Integer r5 = (java.lang.Integer) r5
            int r5 = r5.intValue()
            int r6 = r3.size()
            int r6 = r6 + (-1)
            if (r4 >= r6) goto L82
            int r6 = r4 + 1
            java.lang.Object r6 = r3.get(r6)
            java.lang.Integer r6 = (java.lang.Integer) r6
            int r6 = r6.intValue()
            goto L83
        L82:
            int r6 = r10.length
        L83:
            int r6 = r6 - r5
            byte[] r7 = new byte[r6]
            java.lang.System.arraycopy(r10, r5, r7, r1, r6)
            r2[r4] = r7
            int r4 = r4 + 1
            goto L5d
        L8e:
            r1 = r2
        L8f:
            if (r1 != 0) goto L95
            r0.add(r10)
            return r0
        L95:
            java.util.Collections.addAll(r0, r1)
        L98:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p200.C2912.m6439(java.lang.String):java.util.ArrayList");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v4, types: [java.util.List] */
    @Override // p200.AbstractC2906
    /* renamed from: ˆʾ */
    public final void mo6429(XmlPullParser xmlPullParser) {
        int i;
        C1490 c1490 = new C1490();
        String attributeValue = xmlPullParser.getAttributeValue(null, "FourCC");
        if (attributeValue == null) {
            throw new SsManifestParser$MissingFieldException("FourCC");
        }
        String str = (attributeValue.equalsIgnoreCase("H264") || attributeValue.equalsIgnoreCase("X264") || attributeValue.equalsIgnoreCase("AVC1") || attributeValue.equalsIgnoreCase("DAVC")) ? "video/avc" : (attributeValue.equalsIgnoreCase("AAC") || attributeValue.equalsIgnoreCase("AACL") || attributeValue.equalsIgnoreCase("AACH") || attributeValue.equalsIgnoreCase("AACP")) ? "audio/mp4a-latm" : (attributeValue.equalsIgnoreCase("TTML") || attributeValue.equalsIgnoreCase("DFXP")) ? "application/ttml+xml" : (attributeValue.equalsIgnoreCase("ac-3") || attributeValue.equalsIgnoreCase("dac3")) ? "audio/ac3" : (attributeValue.equalsIgnoreCase("ec-3") || attributeValue.equalsIgnoreCase("dec3")) ? "audio/eac3" : attributeValue.equalsIgnoreCase("dtsc") ? "audio/vnd.dts" : (attributeValue.equalsIgnoreCase("dtsh") || attributeValue.equalsIgnoreCase("dtsl")) ? "audio/vnd.dts.hd" : attributeValue.equalsIgnoreCase("dtse") ? "audio/vnd.dts.hd;profile=lbr" : attributeValue.equalsIgnoreCase("opus") ? "audio/opus" : null;
        int intValue = ((Integer) m6428("Type")).intValue();
        if (intValue == 2) {
            ArrayList m6439 = m6439(xmlPullParser.getAttributeValue(null, "CodecPrivateData"));
            c1490.f5886 = AbstractC1464.m4251("video/mp4");
            c1490.f5865 = AbstractC2906.m6425(xmlPullParser, "MaxWidth");
            c1490.f5854 = AbstractC2906.m6425(xmlPullParser, "MaxHeight");
            c1490.f5851 = m6439;
        } else if (intValue == 1) {
            if (str == null) {
                str = "audio/mp4a-latm";
            }
            int m6425 = AbstractC2906.m6425(xmlPullParser, "Channels");
            int m64252 = AbstractC2906.m6425(xmlPullParser, "SamplingRate");
            ArrayList m64392 = m6439(xmlPullParser.getAttributeValue(null, "CodecPrivateData"));
            boolean isEmpty = m64392.isEmpty();
            ArrayList arrayList = m64392;
            if (isEmpty) {
                arrayList = m64392;
                if ("audio/mp4a-latm".equals(str)) {
                    arrayList = Collections.singletonList(AbstractC2649.m5925(m64252, m6425));
                }
            }
            c1490.f5886 = AbstractC1464.m4251("audio/mp4");
            c1490.f5873 = m6425;
            c1490.f5864 = m64252;
            c1490.f5851 = arrayList;
        } else if (intValue == 3) {
            String str2 = (String) m6428("Subtype");
            if (str2 != null) {
                if (str2.equals("CAPT")) {
                    i = 64;
                } else if (str2.equals("DESC")) {
                    i = 1024;
                }
                c1490.f5886 = AbstractC1464.m4251("application/mp4");
                c1490.f5887 = i;
            }
            i = 0;
            c1490.f5886 = AbstractC1464.m4251("application/mp4");
            c1490.f5887 = i;
        } else {
            c1490.f5886 = AbstractC1464.m4251("application/mp4");
        }
        c1490.f5884 = xmlPullParser.getAttributeValue(null, "Index");
        c1490.f5883 = (String) m6428("Name");
        c1490.f5861 = AbstractC1464.m4251(str);
        c1490.f5880 = AbstractC2906.m6425(xmlPullParser, "Bitrate");
        c1490.f5859 = (String) m6428("Language");
        this.f11000 = new C1495(c1490);
    }

    @Override // p200.AbstractC2906
    /* renamed from: ⁱˊ */
    public final Object mo6433() {
        return this.f11000;
    }
}
