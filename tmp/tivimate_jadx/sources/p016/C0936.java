package p016;

import java.util.List;
import javax.net.ssl.SSLSocket;
import org.conscrypt.Conscrypt;
import p271.AbstractC3480;
import ˋⁱ.ﾞᴵ;

/* renamed from: ʼ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0936 implements InterfaceC0937 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final boolean f3861;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C0929 f3862 = new Object();

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, ʼ.ʼˎ] */
    static {
        boolean z = false;
        try {
            Class.forName("org.conscrypt.Conscrypt$Version", false, AbstractC0931.class.getClassLoader());
            if (Conscrypt.isAvailable()) {
                if (AbstractC0931.m3198()) {
                    z = true;
                }
            }
        } catch (ClassNotFoundException | NoClassDefFoundError unused) {
        }
        f3861 = z;
    }

    @Override // p016.InterfaceC0937
    /* renamed from: ʽ */
    public final boolean mo3199() {
        return f3861;
    }

    @Override // p016.InterfaceC0937
    /* renamed from: ˈ */
    public final void mo3200(SSLSocket sSLSocket, String str, List list) {
        if (mo3202(sSLSocket)) {
            Conscrypt.setUseSessionTickets(sSLSocket, true);
            AbstractC3480 abstractC3480 = AbstractC3480.f13658;
            Conscrypt.setApplicationProtocols(sSLSocket, (String[]) ﾞᴵ.יـ(list).toArray(new String[0]));
        }
    }

    @Override // p016.InterfaceC0937
    /* renamed from: ⁱˊ */
    public final boolean mo3202(SSLSocket sSLSocket) {
        return Conscrypt.isConscrypt(sSLSocket);
    }

    @Override // p016.InterfaceC0937
    /* renamed from: ﹳٴ */
    public final String mo3203(SSLSocket sSLSocket) {
        if (mo3202(sSLSocket)) {
            return Conscrypt.getApplicationProtocol(sSLSocket);
        }
        return null;
    }
}
