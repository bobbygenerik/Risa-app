package p200;

import android.util.Pair;
import androidx.media3.common.ParserException;
import androidx.media3.exoplayer.smoothstreaming.manifest.SsManifestParser$MissingFieldException;
import java.util.LinkedList;
import org.xmlpull.v1.XmlPullParser;

/* renamed from: ˎˉ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2906 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final AbstractC2906 f10951;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final LinkedList f10952 = new LinkedList();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f10953;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f10954;

    public AbstractC2906(AbstractC2906 abstractC2906, String str, String str2) {
        this.f10951 = abstractC2906;
        this.f10954 = str;
        this.f10953 = str2;
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static int m6425(XmlPullParser xmlPullParser, String str) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        if (attributeValue == null) {
            throw new SsManifestParser$MissingFieldException(str);
        }
        try {
            return Integer.parseInt(attributeValue);
        } catch (NumberFormatException e) {
            throw ParserException.m740(null, e);
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static int m6426(XmlPullParser xmlPullParser, String str) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        if (attributeValue == null) {
            return -1;
        }
        try {
            return Integer.parseInt(attributeValue);
        } catch (NumberFormatException e) {
            throw ParserException.m740(null, e);
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static long m6427(XmlPullParser xmlPullParser, String str, long j) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        if (attributeValue == null) {
            return j;
        }
        try {
            return Long.parseLong(attributeValue);
        } catch (NumberFormatException e) {
            throw ParserException.m740(null, e);
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Object m6428(String str) {
        int i = 0;
        while (true) {
            LinkedList linkedList = this.f10952;
            if (i >= linkedList.size()) {
                AbstractC2906 abstractC2906 = this.f10951;
                if (abstractC2906 == null) {
                    return null;
                }
                return abstractC2906.m6428(str);
            }
            Pair pair = (Pair) linkedList.get(i);
            if (((String) pair.first).equals(str)) {
                return pair.second;
            }
            i++;
        }
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public abstract void mo6429(XmlPullParser xmlPullParser);

    /* renamed from: ˈ, reason: contains not printable characters */
    public boolean mo6430(String str) {
        return false;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final Object m6431(XmlPullParser xmlPullParser) {
        boolean z = false;
        int i = 0;
        while (true) {
            int eventType = xmlPullParser.getEventType();
            AbstractC2906 abstractC2906 = null;
            if (eventType == 1) {
                return null;
            }
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if (this.f10953.equals(name)) {
                    mo6429(xmlPullParser);
                    z = true;
                } else if (z) {
                    if (i > 0) {
                        i++;
                    } else if (mo6430(name)) {
                        mo6429(xmlPullParser);
                    } else {
                        boolean equals = "QualityLevel".equals(name);
                        String str = this.f10954;
                        if (equals) {
                            abstractC2906 = new AbstractC2906(this, str, "QualityLevel");
                        } else if ("Protection".equals(name)) {
                            abstractC2906 = new AbstractC2906(this, str, "Protection");
                        } else if ("StreamIndex".equals(name)) {
                            abstractC2906 = new C2909(this, str);
                        }
                        if (abstractC2906 == null) {
                            i = 1;
                        } else {
                            mo6434(abstractC2906.m6431(xmlPullParser));
                        }
                    }
                }
            } else if (eventType != 3) {
                if (eventType == 4 && z && i == 0) {
                    mo6432(xmlPullParser);
                }
            } else if (!z) {
                continue;
            } else if (i > 0) {
                i--;
            } else {
                String name2 = xmlPullParser.getName();
                mo6436(xmlPullParser);
                if (!mo6430(name2)) {
                    return mo6433();
                }
            }
            xmlPullParser.next();
        }
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public void mo6432(XmlPullParser xmlPullParser) {
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public abstract Object mo6433();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public void mo6434(Object obj) {
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void m6435(Object obj, String str) {
        this.f10952.add(Pair.create(str, obj));
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public void mo6436(XmlPullParser xmlPullParser) {
    }
}
