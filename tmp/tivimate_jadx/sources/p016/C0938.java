package p016;

import java.util.List;
import javax.net.ssl.SSLSocket;
import org.bouncycastle.jsse.BCSSLParameters;
import org.bouncycastle.jsse.BCSSLSocket;
import p271.AbstractC3480;
import ˋⁱ.ﾞᴵ;

/* renamed from: ʼ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0938 implements InterfaceC0937 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final boolean f3863;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C0942 f3864 = new Object();

    /* JADX WARN: Type inference failed for: r0v0, types: [ʼ.ﾞᴵ, java.lang.Object] */
    static {
        boolean z = false;
        try {
            Class.forName("org.bouncycastle.jsse.provider.BouncyCastleJsseProvider", false, ᵎﹶ.class.getClassLoader());
            z = true;
        } catch (ClassNotFoundException unused) {
        }
        f3863 = z;
    }

    @Override // p016.InterfaceC0937
    /* renamed from: ʽ */
    public final boolean mo3199() {
        return f3863;
    }

    @Override // p016.InterfaceC0937
    /* renamed from: ˈ */
    public final void mo3200(SSLSocket sSLSocket, String str, List list) {
        if (mo3202(sSLSocket)) {
            BCSSLSocket bCSSLSocket = (BCSSLSocket) sSLSocket;
            BCSSLParameters parameters = bCSSLSocket.getParameters();
            AbstractC3480 abstractC3480 = AbstractC3480.f13658;
            parameters.setApplicationProtocols((String[]) ﾞᴵ.יـ(list).toArray(new String[0]));
            bCSSLSocket.setParameters(parameters);
        }
    }

    @Override // p016.InterfaceC0937
    /* renamed from: ⁱˊ */
    public final boolean mo3202(SSLSocket sSLSocket) {
        return false;
    }

    @Override // p016.InterfaceC0937
    /* renamed from: ﹳٴ */
    public final String mo3203(SSLSocket sSLSocket) {
        String applicationProtocol = ((BCSSLSocket) sSLSocket).getApplicationProtocol();
        if (applicationProtocol == null || applicationProtocol.equals("")) {
            return null;
        }
        return applicationProtocol;
    }
}
