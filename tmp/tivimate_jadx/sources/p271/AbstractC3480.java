package p271;

import android.os.Build;
import android.util.Log;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;
import p015.C0927;
import p015.C0928;
import p015.InterfaceC0926;
import p016.AbstractC0930;
import p016.C0932;
import p208.C2937;
import p307.AbstractC3740;
import ˈˊ.ˉˆ;

/* renamed from: ـᐧ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3480 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final Logger f13657;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static volatile AbstractC3480 f13658;

    static {
        try {
            for (Map.Entry entry : AbstractC0930.f3850.entrySet()) {
                String str = (String) entry.getKey();
                String str2 = (String) entry.getValue();
                Logger logger = Logger.getLogger(str);
                if (AbstractC0930.f3851.add(logger)) {
                    logger.setUseParentHandlers(false);
                    logger.setLevel(Log.isLoggable(str2, 3) ? Level.FINE : Log.isLoggable(str2, 4) ? Level.INFO : Level.WARNING);
                    logger.addHandler(C0932.f3852);
                }
            }
        } catch (RuntimeException e) {
            e.printStackTrace();
        }
        AbstractC3480 c3482 = C3482.f13661 ? new C3482() : null;
        if (c3482 == null) {
            c3482 = C3478.f13654 ? new C3478() : null;
        }
        if (c3482 == null) {
            throw new IllegalStateException(AbstractC3740.m7932(Build.VERSION.SDK_INT, "Expected Android API level 21+ but was "));
        }
        f13658 = c3482;
        f13657 = Logger.getLogger(C2937.class.getName());
    }

    public final String toString() {
        return getClass().getSimpleName();
    }

    /* renamed from: ʼˎ */
    public abstract boolean mo7400(String str);

    /* renamed from: ʽ */
    public ˉˆ mo7401(X509TrustManager x509TrustManager) {
        return new C0928(mo7403(x509TrustManager));
    }

    /* renamed from: ˆʾ */
    public void mo7402(String str, int i, Throwable th) {
        f13657.log(i == 5 ? Level.WARNING : Level.INFO, str, th);
    }

    /* renamed from: ˈ */
    public InterfaceC0926 mo7403(X509TrustManager x509TrustManager) {
        X509Certificate[] acceptedIssuers = x509TrustManager.getAcceptedIssuers();
        return new C0927((X509Certificate[]) Arrays.copyOf(acceptedIssuers, acceptedIssuers.length));
    }

    /* renamed from: ˑﹳ */
    public abstract void mo7404(SSLSocket sSLSocket, String str, List list);

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public void mo7410(Object obj, String str) {
        if (obj == null) {
            str = str.concat(" To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);");
        }
        mo7402(str, 5, (Throwable) obj);
    }

    /* renamed from: ᵎﹶ */
    public abstract String mo7405(SSLSocket sSLSocket);

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public Object mo7411() {
        if (f13657.isLoggable(Level.FINE)) {
            return new Throwable("response.body().close()");
        }
        return null;
    }

    /* renamed from: ﾞʻ */
    public abstract SSLContext mo7408();

    /* renamed from: ﾞᴵ */
    public void mo7409(Socket socket, InetSocketAddress inetSocketAddress, int i) {
        socket.connect(inetSocketAddress, i);
    }
}
