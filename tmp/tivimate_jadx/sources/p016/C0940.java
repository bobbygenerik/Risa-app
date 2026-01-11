package p016;

import android.net.ssl.SSLSockets;
import android.os.Build;
import java.io.IOException;
import java.util.List;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;
import p271.AbstractC3480;
import ˋⁱ.ﾞᴵ;

/* renamed from: ʼ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0940 implements InterfaceC0937 {
    @Override // p016.InterfaceC0937
    /* renamed from: ʽ */
    public final boolean mo3199() {
        AbstractC3480 abstractC3480 = AbstractC3480.f13658;
        return Build.VERSION.SDK_INT >= 29;
    }

    @Override // p016.InterfaceC0937
    /* renamed from: ˈ */
    public final void mo3200(SSLSocket sSLSocket, String str, List list) {
        try {
            SSLSockets.setUseSessionTickets(sSLSocket, true);
            SSLParameters sSLParameters = sSLSocket.getSSLParameters();
            AbstractC3480 abstractC3480 = AbstractC3480.f13658;
            sSLParameters.setApplicationProtocols((String[]) ﾞᴵ.יـ(list).toArray(new String[0]));
            sSLSocket.setSSLParameters(sSLParameters);
        } catch (IllegalArgumentException e) {
            throw new IOException("Android internal error", e);
        }
    }

    @Override // p016.InterfaceC0937
    /* renamed from: ⁱˊ */
    public final boolean mo3202(SSLSocket sSLSocket) {
        return SSLSockets.isSupportedSocket(sSLSocket);
    }

    @Override // p016.InterfaceC0937
    /* renamed from: ﹳٴ */
    public final String mo3203(SSLSocket sSLSocket) {
        try {
            String applicationProtocol = sSLSocket.getApplicationProtocol();
            if (applicationProtocol == null) {
                return null;
            }
            if (applicationProtocol.equals("")) {
                return null;
            }
            return applicationProtocol;
        } catch (UnsupportedOperationException unused) {
            return null;
        }
    }
}
