package p016;

import java.util.List;
import javax.net.ssl.SSLSocket;

/* renamed from: ʼ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0933 implements InterfaceC0937 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public InterfaceC0937 f3853;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC0941 f3854;

    public C0933(InterfaceC0941 interfaceC0941) {
        this.f3854 = interfaceC0941;
    }

    @Override // p016.InterfaceC0937
    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean mo3199() {
        return true;
    }

    @Override // p016.InterfaceC0937
    /* renamed from: ˈ, reason: contains not printable characters */
    public final void mo3200(SSLSocket sSLSocket, String str, List list) {
        InterfaceC0937 m3201 = m3201(sSLSocket);
        if (m3201 != null) {
            m3201.mo3200(sSLSocket, str, list);
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final synchronized InterfaceC0937 m3201(SSLSocket sSLSocket) {
        try {
            if (this.f3853 == null && this.f3854.mo3196(sSLSocket)) {
                this.f3853 = this.f3854.mo3195(sSLSocket);
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f3853;
    }

    @Override // p016.InterfaceC0937
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean mo3202(SSLSocket sSLSocket) {
        return this.f3854.mo3196(sSLSocket);
    }

    @Override // p016.InterfaceC0937
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String mo3203(SSLSocket sSLSocket) {
        InterfaceC0937 m3201 = m3201(sSLSocket);
        if (m3201 != null) {
            return m3201.mo3203(sSLSocket);
        }
        return null;
    }
}
