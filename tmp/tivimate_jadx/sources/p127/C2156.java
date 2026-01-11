package p127;

import androidx.leanback.widget.ˉˆ;
import com.google.android.gms.internal.measurement.ˏʻ;
import com.google.android.gms.internal.play_billing.ʽﹳ;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import p017.AbstractC0993;
import p017.AbstractC1004;
import p017.C0944;
import p017.C0956;
import p017.C0968;
import p017.C0972;
import p017.C0981;
import p017.C0988;

/* renamed from: ˈـ.ˉˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2156 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C0981 f8383;

    static {
        new C2156(new ˉˆ(20));
    }

    public C2156(ˉˆ r5) {
        C0981 c0981;
        C0944 c0944 = (C0944) ((ˉˆ) r5.ᴵˊ).ᴵˊ;
        if (c0944 == null) {
            c0981 = C0988.f3967;
        } else {
            Collection entrySet = c0944.entrySet();
            if (((AbstractCollection) entrySet).isEmpty()) {
                c0981 = C0988.f3967;
            } else {
                C0972 c0972 = (C0972) entrySet;
                ʽﹳ r0 = new ʽﹳ(c0972.f3933.size());
                Iterator it = c0972.iterator();
                int i = 0;
                while (it.hasNext()) {
                    Map.Entry entry = (Map.Entry) it.next();
                    Object key = entry.getKey();
                    C0956 m3249 = ((C0968) entry.getValue()).m3249();
                    r0.ʼʼ(key, m3249);
                    i += m3249.f3903;
                }
                c0981 = new C0981(r0.ˑﹳ(), i);
            }
        }
        this.f8383 = c0981;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static String m5111(String str) {
        return ˏʻ.ᵎﹶ(str, "Accept") ? "Accept" : ˏʻ.ᵎﹶ(str, "Allow") ? "Allow" : ˏʻ.ᵎﹶ(str, "Authorization") ? "Authorization" : ˏʻ.ᵎﹶ(str, "Bandwidth") ? "Bandwidth" : ˏʻ.ᵎﹶ(str, "Blocksize") ? "Blocksize" : ˏʻ.ᵎﹶ(str, "Cache-Control") ? "Cache-Control" : ˏʻ.ᵎﹶ(str, "Connection") ? "Connection" : ˏʻ.ᵎﹶ(str, "Content-Base") ? "Content-Base" : ˏʻ.ᵎﹶ(str, "Content-Encoding") ? "Content-Encoding" : ˏʻ.ᵎﹶ(str, "Content-Language") ? "Content-Language" : ˏʻ.ᵎﹶ(str, "Content-Length") ? "Content-Length" : ˏʻ.ᵎﹶ(str, "Content-Location") ? "Content-Location" : ˏʻ.ᵎﹶ(str, "Content-Type") ? "Content-Type" : ˏʻ.ᵎﹶ(str, "CSeq") ? "CSeq" : ˏʻ.ᵎﹶ(str, "Date") ? "Date" : ˏʻ.ᵎﹶ(str, "Expires") ? "Expires" : ˏʻ.ᵎﹶ(str, "Location") ? "Location" : ˏʻ.ᵎﹶ(str, "Proxy-Authenticate") ? "Proxy-Authenticate" : ˏʻ.ᵎﹶ(str, "Proxy-Require") ? "Proxy-Require" : ˏʻ.ᵎﹶ(str, "Public") ? "Public" : ˏʻ.ᵎﹶ(str, "Range") ? "Range" : ˏʻ.ᵎﹶ(str, "RTP-Info") ? "RTP-Info" : ˏʻ.ᵎﹶ(str, "RTCP-Interval") ? "RTCP-Interval" : ˏʻ.ᵎﹶ(str, "Scale") ? "Scale" : ˏʻ.ᵎﹶ(str, "Session") ? "Session" : ˏʻ.ᵎﹶ(str, "Speed") ? "Speed" : ˏʻ.ᵎﹶ(str, "Supported") ? "Supported" : ˏʻ.ᵎﹶ(str, "Timestamp") ? "Timestamp" : ˏʻ.ᵎﹶ(str, "Transport") ? "Transport" : ˏʻ.ᵎﹶ(str, "User-Agent") ? "User-Agent" : ˏʻ.ᵎﹶ(str, "Via") ? "Via" : ˏʻ.ᵎﹶ(str, "WWW-Authenticate") ? "WWW-Authenticate" : str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2156) {
            return this.f8383.equals(((C2156) obj).f8383);
        }
        return false;
    }

    public final int hashCode() {
        return this.f8383.hashCode();
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String m5112(String str) {
        AbstractC0993 m3252 = this.f8383.m3252(m5111(str));
        if (m3252.isEmpty()) {
            return null;
        }
        return (String) AbstractC1004.m3281(m3252);
    }
}
