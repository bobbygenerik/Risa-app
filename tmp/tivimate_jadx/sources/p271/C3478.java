package p271;

import android.content.Context;
import android.net.http.X509TrustManagerExtensions;
import android.os.Build;
import android.os.StrictMode;
import android.security.NetworkSecurityPolicy;
import java.io.IOException;
import java.lang.reflect.Method;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;
import p015.InterfaceC0926;
import p016.AbstractC0930;
import p016.C0933;
import p016.C0935;
import p016.C0936;
import p016.C0938;
import p016.C0939;
import p016.InterfaceC0937;
import p208.C2937;
import p430.AbstractC5096;
import ˈˊ.ˉˆ;

/* renamed from: ـᐧ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3478 extends AbstractC3480 implements InterfaceC3479 {

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final boolean f13654;

    /* renamed from: ʽ, reason: contains not printable characters */
    public Context f13655;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final ArrayList f13656;

    static {
        f13654 = Build.VERSION.SDK_INT < 29;
    }

    public C3478() {
        C0935 c0935;
        try {
            Class<?> cls = Class.forName("com.android.org.conscrypt".concat(".OpenSSLSocketImpl"));
            Class.forName("com.android.org.conscrypt".concat(".OpenSSLSocketFactoryImpl"));
            Class.forName("com.android.org.conscrypt".concat(".SSLParametersImpl"));
            c0935 = new C0935(cls);
        } catch (Exception e) {
            CopyOnWriteArraySet copyOnWriteArraySet = AbstractC0930.f3851;
            AbstractC0930.m3197(C2937.class.getName(), 5, "unable to load android socket classes", e);
            c0935 = null;
        }
        int i = 0;
        ArrayList m9997 = AbstractC5096.m9997(new InterfaceC0937[]{c0935, new C0933(C0935.f3855), new C0933(C0936.f3862), new C0933(C0938.f3864)});
        ArrayList arrayList = new ArrayList();
        int size = m9997.size();
        while (i < size) {
            Object obj = m9997.get(i);
            i++;
            if (((InterfaceC0937) obj).mo3199()) {
                arrayList.add(obj);
            }
        }
        this.f13656 = arrayList;
    }

    @Override // p271.AbstractC3480
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final boolean mo7400(String str) {
        return Build.VERSION.SDK_INT >= 24 ? NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted(str) : NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted();
    }

    @Override // p271.AbstractC3480
    /* renamed from: ʽ, reason: contains not printable characters */
    public final ˉˆ mo7401(X509TrustManager x509TrustManager) {
        X509TrustManagerExtensions x509TrustManagerExtensions;
        try {
            x509TrustManagerExtensions = new X509TrustManagerExtensions(x509TrustManager);
        } catch (IllegalArgumentException unused) {
            x509TrustManagerExtensions = null;
        }
        C0939 c0939 = x509TrustManagerExtensions != null ? new C0939(x509TrustManager, x509TrustManagerExtensions) : null;
        return c0939 != null ? c0939 : super.mo7401(x509TrustManager);
    }

    @Override // p271.AbstractC3480
    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void mo7402(String str, int i, Throwable th) {
        if (i == 5) {
        }
    }

    @Override // p271.AbstractC3480
    /* renamed from: ˈ, reason: contains not printable characters */
    public final InterfaceC0926 mo7403(X509TrustManager x509TrustManager) {
        try {
            StrictMode.noteSlowCall("buildTrustRootIndex");
            Method declaredMethod = x509TrustManager.getClass().getDeclaredMethod("findTrustAnchorByIssuerAndSignature", X509Certificate.class);
            declaredMethod.setAccessible(true);
            return new C3481(x509TrustManager, declaredMethod);
        } catch (NoSuchMethodException unused) {
            return super.mo7403(x509TrustManager);
        }
    }

    @Override // p271.AbstractC3480
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void mo7404(SSLSocket sSLSocket, String str, List list) {
        Object obj;
        ArrayList arrayList = this.f13656;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                obj = null;
                break;
            }
            obj = arrayList.get(i);
            i++;
            if (((InterfaceC0937) obj).mo3202(sSLSocket)) {
                break;
            }
        }
        InterfaceC0937 interfaceC0937 = (InterfaceC0937) obj;
        if (interfaceC0937 != null) {
            interfaceC0937.mo3200(sSLSocket, str, list);
        }
    }

    @Override // p271.AbstractC3480
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final String mo7405(SSLSocket sSLSocket) {
        Object obj;
        ArrayList arrayList = this.f13656;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                obj = null;
                break;
            }
            obj = arrayList.get(i);
            i++;
            if (((InterfaceC0937) obj).mo3202(sSLSocket)) {
                break;
            }
        }
        InterfaceC0937 interfaceC0937 = (InterfaceC0937) obj;
        if (interfaceC0937 != null) {
            return interfaceC0937.mo3203(sSLSocket);
        }
        return null;
    }

    @Override // p271.InterfaceC3479
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Context mo7406() {
        return this.f13655;
    }

    @Override // p271.InterfaceC3479
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void mo7407(Context context) {
        this.f13655 = context;
    }

    @Override // p271.AbstractC3480
    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final SSLContext mo7408() {
        StrictMode.noteSlowCall("newSSLContext");
        return SSLContext.getInstance("TLS");
    }

    @Override // p271.AbstractC3480
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void mo7409(Socket socket, InetSocketAddress inetSocketAddress, int i) {
        try {
            socket.connect(inetSocketAddress, i);
        } catch (ClassCastException e) {
            if (Build.VERSION.SDK_INT != 26) {
                throw e;
            }
            throw new IOException("Exception in connect", e);
        }
    }
}
