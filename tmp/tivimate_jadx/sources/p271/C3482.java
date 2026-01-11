package p271;

import android.content.Context;
import android.net.http.X509TrustManagerExtensions;
import android.os.Build;
import android.os.StrictMode;
import android.security.NetworkSecurityPolicy;
import android.util.CloseGuard;
import java.util.ArrayList;
import java.util.List;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;
import p015.InterfaceC0926;
import p016.C0933;
import p016.C0935;
import p016.C0936;
import p016.C0938;
import p016.C0939;
import p016.InterfaceC0937;
import p430.AbstractC5096;
import ˈˊ.ˉˆ;

/* renamed from: ـᐧ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3482 extends AbstractC3480 implements InterfaceC3479 {

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final boolean f13661;

    /* renamed from: ʽ, reason: contains not printable characters */
    public Context f13662;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final ArrayList f13663;

    static {
        f13661 = Build.VERSION.SDK_INT >= 29;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C3482() {
        int i = 0;
        ArrayList m9997 = AbstractC5096.m9997(new InterfaceC0937[]{Build.VERSION.SDK_INT >= 29 ? new Object() : null, new C0933(C0935.f3855), new C0933(C0936.f3862), new C0933(C0938.f3864)});
        ArrayList arrayList = new ArrayList();
        int size = m9997.size();
        while (i < size) {
            Object obj = m9997.get(i);
            i++;
            if (((InterfaceC0937) obj).mo3199()) {
                arrayList.add(obj);
            }
        }
        this.f13663 = arrayList;
    }

    @Override // p271.AbstractC3480
    /* renamed from: ʼˎ */
    public final boolean mo7400(String str) {
        return NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted(str);
    }

    @Override // p271.AbstractC3480
    /* renamed from: ʽ */
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
    /* renamed from: ˈ */
    public final InterfaceC0926 mo7403(X509TrustManager x509TrustManager) {
        StrictMode.noteSlowCall("buildTrustRootIndex");
        return super.mo7403(x509TrustManager);
    }

    @Override // p271.AbstractC3480
    /* renamed from: ˑﹳ */
    public final void mo7404(SSLSocket sSLSocket, String str, List list) {
        Object obj;
        ArrayList arrayList = this.f13663;
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
    /* renamed from: ٴﹶ */
    public final void mo7410(Object obj, String str) {
        if (Build.VERSION.SDK_INT >= 30) {
            ((CloseGuard) obj).warnIfOpen();
        } else {
            super.mo7410(obj, str);
        }
    }

    @Override // p271.AbstractC3480
    /* renamed from: ᵎﹶ */
    public final String mo7405(SSLSocket sSLSocket) {
        Object obj;
        ArrayList arrayList = this.f13663;
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

    @Override // p271.AbstractC3480
    /* renamed from: ᵔᵢ */
    public final Object mo7411() {
        if (Build.VERSION.SDK_INT < 30) {
            return super.mo7411();
        }
        CloseGuard closeGuard = new CloseGuard();
        closeGuard.open("response.body().close()");
        return closeGuard;
    }

    @Override // p271.InterfaceC3479
    /* renamed from: ⁱˊ */
    public final Context mo7406() {
        return this.f13662;
    }

    @Override // p271.InterfaceC3479
    /* renamed from: ﹳٴ */
    public final void mo7407(Context context) {
        this.f13662 = context;
    }

    @Override // p271.AbstractC3480
    /* renamed from: ﾞʻ */
    public final SSLContext mo7408() {
        StrictMode.noteSlowCall("newSSLContext");
        return SSLContext.getInstance("TLS");
    }
}
