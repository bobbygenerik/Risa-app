package p015;

import android.support.v4.media.session.AbstractC0001;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import p035.AbstractC1220;
import p152.AbstractC2444;
import p430.C5097;

/* renamed from: ʻﹶ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0925 implements HostnameVerifier {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C0925 f3847 = new Object();

    /* JADX WARN: Removed duplicated region for block: B:51:0x010e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:52:? A[LOOP:1: B:22:0x005a->B:52:?, LOOP_END, SYNTHETIC] */
    /* renamed from: ʽ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m3189(java.lang.String r9, java.security.cert.X509Certificate r10) {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p015.C0925.m3189(java.lang.String, java.security.cert.X509Certificate):boolean");
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static boolean m3190(String str) {
        int i;
        int length = str.length();
        int length2 = str.length();
        if (length2 < 0) {
            throw new IllegalArgumentException(AbstractC1220.m3773(length2, "endIndex < beginIndex: ", " < 0").toString());
        }
        if (length2 > str.length()) {
            StringBuilder m16 = AbstractC0001.m16(length2, "endIndex > string.length: ", " > ");
            m16.append(str.length());
            throw new IllegalArgumentException(m16.toString().toString());
        }
        long j = 0;
        int i2 = 0;
        while (i2 < length2) {
            char charAt = str.charAt(i2);
            if (charAt < 128) {
                j++;
            } else {
                if (charAt < 2048) {
                    i = 2;
                } else if (charAt < 55296 || charAt > 57343) {
                    i = 3;
                } else {
                    int i3 = i2 + 1;
                    char charAt2 = i3 < length2 ? str.charAt(i3) : (char) 0;
                    if (charAt > 56319 || charAt2 < 56320 || charAt2 > 57343) {
                        j++;
                        i2 = i3;
                    } else {
                        j += 4;
                        i2 += 2;
                    }
                }
                j += i;
            }
            i2++;
        }
        return length == ((int) j);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static List m3191(X509Certificate x509Certificate, int i) {
        Collection<List<?>> subjectAlternativeNames;
        Object obj;
        try {
            subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
        } catch (CertificateParsingException unused) {
        }
        if (subjectAlternativeNames == null) {
            return C5097.f19202;
        }
        ArrayList arrayList = new ArrayList();
        for (List<?> list : subjectAlternativeNames) {
            if (list != null && list.size() >= 2 && AbstractC2444.m5562(list.get(0), Integer.valueOf(i)) && (obj = list.get(1)) != null) {
                arrayList.add((String) obj);
            }
        }
        return arrayList;
    }

    @Override // javax.net.ssl.HostnameVerifier
    public final boolean verify(String str, SSLSession sSLSession) {
        if (m3190(str)) {
            try {
                return m3189(str, (X509Certificate) sSLSession.getPeerCertificates()[0]);
            } catch (SSLException unused) {
                return false;
            }
        }
        return false;
    }
}
