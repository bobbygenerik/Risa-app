package p012;

import android.text.TextUtils;
import com.parse.ٴʼ;
import com.parse.ᵔʾ;
import j$.util.Objects;
import java.io.IOException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;
import p010.AbstractC0844;
import p034.InterfaceC1193;
import p034.InterfaceC1196;
import p070.C1628;
import p137.AbstractC2305;
import p252.C3309;
import p275.C3501;
import p275.InterfaceC3511;
import p305.C3732;
import ٴﾞ.ˆʾ;

/* renamed from: ʻᴵ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0902 implements InterfaceC1196, InterfaceC3511 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f3819;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public String f3820;

    public /* synthetic */ C0902() {
        this.f3819 = 8;
    }

    public /* synthetic */ C0902(int i, String str) {
        this.f3819 = i;
        this.f3820 = str;
    }

    public C0902(Object obj, String str) {
        this.f3819 = 2;
        this.f3820 = str;
    }

    public C0902(String str) {
        this.f3819 = 4;
        str.getClass();
        this.f3820 = str;
    }

    public C0902(String str, ˆʾ r2) {
        this.f3819 = 3;
        if (str == null) {
            throw new IllegalArgumentException("url must not be null.");
        }
        this.f3820 = str;
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static C0902 m3147(C3732 c3732) {
        String str;
        c3732.m7900(2);
        int m7874 = c3732.m7874();
        int i = m7874 >> 1;
        int m78742 = ((c3732.m7874() >> 3) & 31) | ((m7874 & 1) << 5);
        if (i == 4 || i == 5 || i == 7 || i == 8) {
            str = "dvhe";
        } else if (i == 9) {
            str = "dvav";
        } else {
            if (i != 10) {
                return null;
            }
            str = "dav1";
        }
        StringBuilder m3020 = AbstractC0844.m3020(str);
        m3020.append(i < 10 ? ".0" : ".");
        m3020.append(i);
        m3020.append(m78742 < 10 ? ".0" : ".");
        m3020.append(m78742);
        return new C0902(0, m3020.toString());
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static HashMap m3148(C1628 c1628) {
        HashMap hashMap = new HashMap();
        hashMap.put("build_version", c1628.f6477);
        hashMap.put("display_version", c1628.f6476);
        hashMap.put("source", Integer.toString(c1628.f6472));
        String str = c1628.f6480;
        if (!TextUtils.isEmpty(str)) {
            hashMap.put("instance", str);
        }
        return hashMap;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static void m3149(ٴʼ r2, C1628 c1628) {
        String str = c1628.f6479;
        if (str != null) {
            r2.ᴵˑ("X-CRASHLYTICS-GOOGLE-APP-ID", str);
        }
        r2.ᴵˑ("X-CRASHLYTICS-API-CLIENT-TYPE", "android");
        r2.ᴵˑ("X-CRASHLYTICS-API-CLIENT-VERSION", "20.0.0");
        r2.ᴵˑ("Accept", "application/json");
        String str2 = c1628.f6478;
        if (str2 != null) {
            r2.ᴵˑ("X-CRASHLYTICS-DEVICE-MODEL", str2);
        }
        String str3 = c1628.f6473;
        if (str3 != null) {
            r2.ᴵˑ("X-CRASHLYTICS-OS-BUILD-VERSION", str3);
        }
        String str4 = c1628.f6474;
        if (str4 != null) {
            r2.ᴵˑ("X-CRASHLYTICS-OS-DISPLAY-VERSION", str4);
        }
        String str5 = c1628.f6475.m9675().f18239;
        if (str5 != null) {
            r2.ᴵˑ("X-CRASHLYTICS-INSTALLATION-ID", str5);
        }
    }

    public String toString() {
        boolean z;
        switch (this.f3819) {
            case 2:
                StringBuilder sb = new StringBuilder("MasterKey{keyAlias=");
                String str = this.f3820;
                sb.append(str);
                sb.append(", isKeyStoreBacked=");
                try {
                    KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
                    keyStore.load(null);
                    z = keyStore.containsAlias(str);
                } catch (IOException | KeyStoreException | NoSuchAlgorithmException | CertificateException unused) {
                    z = false;
                }
                sb.append(z);
                sb.append("}");
                return sb.toString();
            case 3:
            case 4:
            default:
                return super.toString();
            case 5:
                return AbstractC2305.m5384(new StringBuilder("<"), this.f3820, '>');
        }
    }

    @Override // p034.InterfaceC1196
    /* renamed from: ʽ, reason: contains not printable characters */
    public String mo3150() {
        return this.f3820;
    }

    @Override // p275.InterfaceC3511
    /* renamed from: ˈ, reason: contains not printable characters */
    public Object mo3151() {
        return this;
    }

    @Override // p275.InterfaceC3511
    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public boolean mo3152(CharSequence charSequence, int i, int i2, C3501 c3501) {
        if (!TextUtils.equals(charSequence.subSequence(i, i2), this.f3820)) {
            return true;
        }
        c3501.f13814 = (c3501.f13814 & 3) | 4;
        return false;
    }

    @Override // p034.InterfaceC1196
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public void mo3153(InterfaceC1193 interfaceC1193) {
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public String m3154(List list) {
        Iterator it = list.iterator();
        StringBuilder sb = new StringBuilder();
        m3155(sb, it);
        return sb.toString();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public void m3155(StringBuilder sb, Iterator it) {
        try {
            if (it.hasNext()) {
                Object next = it.next();
                Objects.requireNonNull(next);
                sb.append(next instanceof CharSequence ? (CharSequence) next : next.toString());
                while (it.hasNext()) {
                    sb.append((CharSequence) this.f3820);
                    Object next2 = it.next();
                    Objects.requireNonNull(next2);
                    sb.append(next2 instanceof CharSequence ? (CharSequence) next2 : next2.toString());
                }
            }
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public JSONObject m3156(ᵔʾ r7) {
        String str = this.f3820;
        int i = r7.ﹳٴ;
        C3309 c3309 = C3309.f12735;
        c3309.m7121("Settings response code was: " + i);
        if (i != 200 && i != 201 && i != 202 && i != 203) {
            String str2 = "Settings request failed; (status: " + i + ") from " + str;
            if (c3309.m7124(6)) {
            }
            return null;
        }
        String str3 = r7.ⁱˊ;
        try {
            return new JSONObject(str3);
        } catch (Exception e) {
            c3309.m7122("Failed to parse settings JSON from " + str, e);
            c3309.m7122("Settings response " + str3, null);
            return null;
        }
    }
}
