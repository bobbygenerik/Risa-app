package p200;

import androidx.media3.common.ParserException;
import androidx.media3.exoplayer.smoothstreaming.manifest.SsManifestParser$MissingFieldException;
import java.util.ArrayList;
import java.util.LinkedList;
import org.xmlpull.v1.XmlPullParser;
import p055.C1495;

/* renamed from: ˎˉ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2909 extends AbstractC2906 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public long f10967;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public String f10968;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public String f10969;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public int f10970;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public int f10971;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final String f10972;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public String f10973;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public int f10974;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public int f10975;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public String f10976;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public ArrayList f10977;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public long f10978;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public int f10979;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final LinkedList f10980;

    public C2909(AbstractC2906 abstractC2906, String str) {
        super(abstractC2906, str, "StreamIndex");
        this.f10972 = str;
        this.f10980 = new LinkedList();
    }

    @Override // p200.AbstractC2906
    /* renamed from: ˆʾ */
    public final void mo6429(XmlPullParser xmlPullParser) {
        int i = 1;
        if (!"c".equals(xmlPullParser.getName())) {
            String attributeValue = xmlPullParser.getAttributeValue(null, "Type");
            if (attributeValue == null) {
                throw new SsManifestParser$MissingFieldException("Type");
            }
            if (!"audio".equalsIgnoreCase(attributeValue)) {
                if ("video".equalsIgnoreCase(attributeValue)) {
                    i = 2;
                } else {
                    if (!"text".equalsIgnoreCase(attributeValue)) {
                        throw ParserException.m740("Invalid key value[" + attributeValue + "]", null);
                    }
                    i = 3;
                }
            }
            this.f10974 = i;
            m6435(Integer.valueOf(i), "Type");
            if (this.f10974 == 3) {
                String attributeValue2 = xmlPullParser.getAttributeValue(null, "Subtype");
                if (attributeValue2 == null) {
                    throw new SsManifestParser$MissingFieldException("Subtype");
                }
                this.f10976 = attributeValue2;
            } else {
                this.f10976 = xmlPullParser.getAttributeValue(null, "Subtype");
            }
            m6435(this.f10976, "Subtype");
            String attributeValue3 = xmlPullParser.getAttributeValue(null, "Name");
            this.f10969 = attributeValue3;
            m6435(attributeValue3, "Name");
            String attributeValue4 = xmlPullParser.getAttributeValue(null, "Url");
            if (attributeValue4 == null) {
                throw new SsManifestParser$MissingFieldException("Url");
            }
            this.f10973 = attributeValue4;
            this.f10979 = AbstractC2906.m6426(xmlPullParser, "MaxWidth");
            this.f10970 = AbstractC2906.m6426(xmlPullParser, "MaxHeight");
            this.f10975 = AbstractC2906.m6426(xmlPullParser, "DisplayWidth");
            this.f10971 = AbstractC2906.m6426(xmlPullParser, "DisplayHeight");
            String attributeValue5 = xmlPullParser.getAttributeValue(null, "Language");
            this.f10968 = attributeValue5;
            m6435(attributeValue5, "Language");
            long m6426 = AbstractC2906.m6426(xmlPullParser, "TimeScale");
            this.f10967 = m6426;
            if (m6426 == -1) {
                this.f10967 = ((Long) m6428("TimeScale")).longValue();
            }
            this.f10977 = new ArrayList();
            return;
        }
        int size = this.f10977.size();
        long m6427 = AbstractC2906.m6427(xmlPullParser, "t", -9223372036854775807L);
        if (m6427 == -9223372036854775807L) {
            if (size == 0) {
                m6427 = 0;
            } else {
                if (this.f10978 == -1) {
                    throw ParserException.m740("Unable to infer start time", null);
                }
                m6427 = this.f10978 + ((Long) this.f10977.get(size - 1)).longValue();
            }
        }
        this.f10977.add(Long.valueOf(m6427));
        this.f10978 = AbstractC2906.m6427(xmlPullParser, "d", -9223372036854775807L);
        long m64272 = AbstractC2906.m6427(xmlPullParser, "r", 1L);
        if (m64272 > 1 && this.f10978 == -9223372036854775807L) {
            throw ParserException.m740("Repeated chunk with unspecified duration", null);
        }
        while (true) {
            long j = i;
            if (j >= m64272) {
                return;
            }
            this.f10977.add(Long.valueOf((this.f10978 * j) + m6427));
            i++;
        }
    }

    @Override // p200.AbstractC2906
    /* renamed from: ˈ */
    public final boolean mo6430(String str) {
        return "c".equals(str);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r3v0 ￋﾎￋﾉ.￢ﾁﾱￋﾊ, still in use, count: 2, list:
          (r3v0 ￋﾎￋﾉ.￢ﾁﾱￋﾊ) from 0x0082: MOVE (r26v0 ￋﾎￋﾉ.￢ﾁﾱￋﾊ) = (r3v0 ￋﾎￋﾉ.￢ﾁﾱￋﾊ)
          (r3v0 ￋﾎￋﾉ.￢ﾁﾱￋﾊ) from 0x004e: MOVE (r26v4 ￋﾎￋﾉ.￢ﾁﾱￋﾊ) = (r3v0 ￋﾎￋﾉ.￢ﾁﾱￋﾊ)
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:151)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:116)
        	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:80)
        	at jadx.core.utils.InsnRemover.addAndUnbind(InsnRemover.java:56)
        	at jadx.core.dex.visitors.ModVisitor.removeStep(ModVisitor.java:447)
        	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
        */
    @Override // p200.AbstractC2906
    /* renamed from: ⁱˊ */
    public final java.lang.Object mo6433() {
        /*
            Method dump skipped, instructions count: 372
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p200.C2909.mo6433():java.lang.Object");
    }

    @Override // p200.AbstractC2906
    /* renamed from: ﹳٴ */
    public final void mo6434(Object obj) {
        if (obj instanceof C1495) {
            this.f10980.add((C1495) obj);
        }
    }
}
