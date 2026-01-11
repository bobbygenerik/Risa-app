package p079;

import org.xmlpull.v1.XmlPullParser;
import p017.AbstractC0993;
import p017.C0956;
import p017.C0968;
import p305.AbstractC3731;

/* renamed from: ʿʽ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1683 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final String[] f6834 = {"Camera:MotionPhoto", "GCamera:MotionPhoto", "Camera:MicroVideo", "GCamera:MicroVideo"};

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final String[] f6833 = {"Camera:MotionPhotoPresentationTimestampUs", "GCamera:MotionPhotoPresentationTimestampUs", "Camera:MicroVideoPresentationTimestampUs", "GCamera:MicroVideoPresentationTimestampUs"};

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final String[] f6832 = {"Camera:MicroVideoOffset", "GCamera:MicroVideoOffset"};

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static C0956 m4602(XmlPullParser xmlPullParser, String str, String str2) {
        C0968 m3261 = AbstractC0993.m3261();
        String concat = str.concat(":Item");
        String concat2 = str.concat(":Directory");
        do {
            xmlPullParser.next();
            if (AbstractC3731.m7847(xmlPullParser, concat)) {
                String concat3 = str2.concat(":Mime");
                String concat4 = str2.concat(":Semantic");
                String concat5 = str2.concat(":Length");
                String concat6 = str2.concat(":Padding");
                String m7855 = AbstractC3731.m7855(xmlPullParser, concat3);
                String m78552 = AbstractC3731.m7855(xmlPullParser, concat4);
                String m78553 = AbstractC3731.m7855(xmlPullParser, concat5);
                String m78554 = AbstractC3731.m7855(xmlPullParser, concat6);
                if (m7855 == null || m78552 == null) {
                    return C0956.f3901;
                }
                m3261.m3239(new C1684(m78553 != null ? Long.parseLong(m78553) : 0L, m78554 != null ? Long.parseLong(m78554) : 0L, m7855));
            }
        } while (!AbstractC3731.m7839(xmlPullParser, concat2));
        return m3261.m3249();
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x005e, code lost:
    
        if (r6 == (-1)) goto L20;
     */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p079.C1681 m4603(java.lang.String r19) {
        /*
            org.xmlpull.v1.XmlPullParserFactory r0 = org.xmlpull.v1.XmlPullParserFactory.newInstance()
            org.xmlpull.v1.XmlPullParser r0 = r0.newPullParser()
            java.io.StringReader r1 = new java.io.StringReader
            r2 = r19
            r1.<init>(r2)
            r0.setInput(r1)
            r0.next()
            java.lang.String r1 = "x:xmpmeta"
            boolean r2 = p305.AbstractC3731.m7847(r0, r1)
            r3 = 0
            if (r2 == 0) goto Ld0
            ʼʻ.ٴᵢ r2 = p017.AbstractC0993.f3977
            ʼʻ.ʿᵢ r2 = p017.C0956.f3901
            r4 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r6 = r4
        L28:
            r0.next()
            java.lang.String r8 = "rdf:Description"
            boolean r8 = p305.AbstractC3731.m7847(r0, r8)
            r9 = 0
            if (r8 == 0) goto L9c
            r2 = r9
        L35:
            r6 = 4
            if (r2 >= r6) goto Lc9
            java.lang.String[] r7 = p079.AbstractC1683.f6834
            r7 = r7[r2]
            java.lang.String r7 = p305.AbstractC3731.m7855(r0, r7)
            if (r7 == 0) goto L99
            int r2 = java.lang.Integer.parseInt(r7)
            r7 = 1
            if (r2 != r7) goto Lc9
            r2 = r9
        L4a:
            if (r2 >= r6) goto L60
            java.lang.String[] r7 = p079.AbstractC1683.f6833
            r7 = r7[r2]
            java.lang.String r7 = p305.AbstractC3731.m7855(r0, r7)
            if (r7 == 0) goto L62
            long r6 = java.lang.Long.parseLong(r7)
            r10 = -1
            int r2 = (r6 > r10 ? 1 : (r6 == r10 ? 0 : -1))
            if (r2 != 0) goto L65
        L60:
            r6 = r4
            goto L65
        L62:
            int r2 = r2 + 1
            goto L4a
        L65:
            r2 = r9
        L66:
            r8 = 2
            if (r2 >= r8) goto L94
            java.lang.String[] r8 = p079.AbstractC1683.f6832
            r8 = r8[r2]
            java.lang.String r8 = p305.AbstractC3731.m7855(r0, r8)
            if (r8 == 0) goto L91
            long r11 = java.lang.Long.parseLong(r8)
            ʿʽ.ⁱˊ r13 = new ʿʽ.ⁱˊ
            r14 = 0
            r16 = 0
            java.lang.String r18 = "image/jpeg"
            r13.<init>(r14, r16, r18)
            r2 = r13
            ʿʽ.ⁱˊ r10 = new ʿʽ.ⁱˊ
            java.lang.String r15 = "video/mp4"
            r13 = 0
            r10.<init>(r11, r13, r15)
            ʼʻ.ʿᵢ r2 = p017.AbstractC0993.m3266(r2, r10)
            goto Lbd
        L91:
            int r2 = r2 + 1
            goto L66
        L94:
            ʼʻ.ٴᵢ r2 = p017.AbstractC0993.f3977
            ʼʻ.ʿᵢ r2 = p017.C0956.f3901
            goto Lbd
        L99:
            int r2 = r2 + 1
            goto L35
        L9c:
            java.lang.String r8 = "Container:Directory"
            boolean r8 = p305.AbstractC3731.m7847(r0, r8)
            if (r8 == 0) goto Lad
            java.lang.String r2 = "Container"
            java.lang.String r8 = "Item"
            ʼʻ.ʿᵢ r2 = m4602(r0, r2, r8)
            goto Lbd
        Lad:
            java.lang.String r8 = "GContainer:Directory"
            boolean r8 = p305.AbstractC3731.m7847(r0, r8)
            if (r8 == 0) goto Lbd
            java.lang.String r2 = "GContainer"
            java.lang.String r8 = "GContainerItem"
            ʼʻ.ʿᵢ r2 = m4602(r0, r2, r8)
        Lbd:
            boolean r8 = p305.AbstractC3731.m7839(r0, r1)
            if (r8 == 0) goto L28
            boolean r0 = r2.isEmpty()
            if (r0 == 0) goto Lca
        Lc9:
            return r3
        Lca:
            ʿʽ.ʽ r0 = new ʿʽ.ʽ
            r0.<init>(r6, r2, r9)
            return r0
        Ld0:
            java.lang.String r0 = "Couldn't find xmp metadata"
            androidx.media3.common.ParserException r0 = androidx.media3.common.ParserException.m741(r3, r0)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p079.AbstractC1683.m4603(java.lang.String):ʿʽ.ʽ");
    }
}
