package p016;

import javax.net.ssl.SSLSocket;
import org.conscrypt.Conscrypt;

/* renamed from: ʼ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0929 implements InterfaceC0941 {
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, ʼ.ᵔʾ] */
    @Override // p016.InterfaceC0941
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final InterfaceC0937 mo3195(SSLSocket sSLSocket) {
        return new Object();
    }

    @Override // p016.InterfaceC0941
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean mo3196(SSLSocket sSLSocket) {
        return C0936.f3861 && Conscrypt.isConscrypt(sSLSocket);
    }
}
