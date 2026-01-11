package p200;

import androidx.media3.common.ParserException;
import androidx.media3.exoplayer.smoothstreaming.manifest.SsManifestParser$MissingFieldException;
import java.math.RoundingMode;
import java.util.LinkedList;
import org.xmlpull.v1.XmlPullParser;
import p055.C1461;
import p055.C1486;
import p055.C1490;
import p055.C1495;
import p305.AbstractC3712;
import p305.AbstractC3731;

/* renamed from: ˎˉ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2908 extends AbstractC2906 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public long f10958;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public long f10959;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public C2911 f10960;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final LinkedList f10961;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public int f10962;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public int f10963;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public long f10964;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public boolean f10965;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f10966;

    public C2908(String str) {
        super(null, str, "SmoothStreamingMedia");
        this.f10962 = -1;
        this.f10960 = null;
        this.f10961 = new LinkedList();
    }

    @Override // p200.AbstractC2906
    /* renamed from: ˆʾ */
    public final void mo6429(XmlPullParser xmlPullParser) {
        this.f10966 = AbstractC2906.m6425(xmlPullParser, "MajorVersion");
        this.f10963 = AbstractC2906.m6425(xmlPullParser, "MinorVersion");
        this.f10964 = AbstractC2906.m6427(xmlPullParser, "TimeScale", 10000000L);
        String attributeValue = xmlPullParser.getAttributeValue(null, "Duration");
        if (attributeValue == null) {
            throw new SsManifestParser$MissingFieldException("Duration");
        }
        try {
            this.f10958 = Long.parseLong(attributeValue);
            this.f10959 = AbstractC2906.m6427(xmlPullParser, "DVRWindowLength", 0L);
            this.f10962 = AbstractC2906.m6426(xmlPullParser, "LookaheadCount");
            String attributeValue2 = xmlPullParser.getAttributeValue(null, "IsLive");
            this.f10965 = attributeValue2 != null ? Boolean.parseBoolean(attributeValue2) : false;
            m6435(Long.valueOf(this.f10964), "TimeScale");
        } catch (NumberFormatException e) {
            throw ParserException.m740(null, e);
        }
    }

    @Override // p200.AbstractC2906
    /* renamed from: ⁱˊ */
    public final Object mo6433() {
        C2911 c2911;
        long m7797;
        LinkedList linkedList = this.f10961;
        int size = linkedList.size();
        C2910[] c2910Arr = new C2910[size];
        linkedList.toArray(c2910Arr);
        C2911 c29112 = this.f10960;
        if (c29112 != null) {
            C1486 c1486 = new C1486(new C1461(c29112.f10999, null, "video/mp4", c29112.f10998));
            for (int i = 0; i < size; i++) {
                C2910 c2910 = c2910Arr[i];
                int i2 = c2910.f10994;
                if (i2 == 2 || i2 == 1) {
                    C1495[] c1495Arr = c2910.f10984;
                    for (int i3 = 0; i3 < c1495Arr.length; i3++) {
                        C1490 m4300 = c1495Arr[i3].m4300();
                        m4300.f5881 = c1486;
                        c1495Arr[i3] = new C1495(m4300);
                    }
                }
            }
        }
        int i4 = this.f10966;
        int i5 = this.f10963;
        long j = this.f10964;
        long j2 = this.f10958;
        long j3 = this.f10959;
        int i6 = this.f10962;
        boolean z = this.f10965;
        C2911 c29113 = this.f10960;
        long j4 = -9223372036854775807L;
        if (j2 == 0) {
            c2911 = c29113;
            m7797 = -9223372036854775807L;
        } else {
            String str = AbstractC3712.f14481;
            c2911 = c29113;
            m7797 = AbstractC3712.m7797(j2, 1000000L, j, RoundingMode.DOWN);
        }
        if (j3 != 0) {
            String str2 = AbstractC3712.f14481;
            j4 = AbstractC3712.m7797(j3, 1000000L, j, RoundingMode.DOWN);
        }
        return new C2905(i4, i5, m7797, j4, i6, z, c2911, c2910Arr);
    }

    @Override // p200.AbstractC2906
    /* renamed from: ﹳٴ */
    public final void mo6434(Object obj) {
        if (obj instanceof C2910) {
            this.f10961.add((C2910) obj);
        } else if (obj instanceof C2911) {
            AbstractC3731.m7857(this.f10960 == null);
            this.f10960 = (C2911) obj;
        }
    }
}
