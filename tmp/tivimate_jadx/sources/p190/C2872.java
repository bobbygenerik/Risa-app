package p190;

import java.io.IOException;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.util.Collections;
import java.util.List;

/* renamed from: ˋﹶ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2872 extends ProxySelector {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C2872 f10787 = new ProxySelector();

    @Override // java.net.ProxySelector
    public final void connectFailed(URI uri, SocketAddress socketAddress, IOException iOException) {
    }

    @Override // java.net.ProxySelector
    public final List select(URI uri) {
        if (uri != null) {
            return Collections.singletonList(Proxy.NO_PROXY);
        }
        throw new IllegalArgumentException("uri must not be null");
    }
}
