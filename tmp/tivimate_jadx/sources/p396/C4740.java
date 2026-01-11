package p396;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import p322.C3965;
import p329.InterfaceC4106;
import ʽˋ.ـˆ;
import ˑᵢ.ᐧᴵ;

/* renamed from: ⁱᵎ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4740 extends ConnectivityManager.NetworkCallback {

    /* renamed from: ˈ, reason: contains not printable characters */
    public static NetworkCapabilities f17894;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static boolean f17895;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C4740 f17897 = new ConnectivityManager.NetworkCallback();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final Object f17896 = new Object();

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final LinkedHashMap f17893 = new LinkedHashMap();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static ـˆ m9482(ConnectivityManager connectivityManager, NetworkRequest networkRequest, ᐧᴵ r6) {
        NetworkCapabilities networkCapabilities;
        synchronized (f17896) {
            try {
                LinkedHashMap linkedHashMap = f17893;
                boolean isEmpty = linkedHashMap.isEmpty();
                linkedHashMap.put(r6, networkRequest);
                if (isEmpty) {
                    C3965.m8127().m8133(AbstractC4736.f17887, "NetworkRequestConstraintController register shared callback");
                    connectivityManager.registerDefaultNetworkCallback(f17897);
                }
                C3965.m8127().m8133(AbstractC4736.f17887, "NetworkRequestConstraintController send initial capabilities");
                f17897.getClass();
                if (f17895) {
                    networkCapabilities = f17894;
                } else {
                    networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
                    f17894 = networkCapabilities;
                    f17895 = true;
                }
                r6.ⁱˊ(networkRequest.canBeSatisfiedBy(networkCapabilities) ? C4743.f17902 : new C4742(7));
            } catch (Throwable th) {
                throw th;
            }
        }
        return new ـˆ(r6, 21, connectivityManager);
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
        C3965.m8127().m8133(AbstractC4736.f17887, "NetworkRequestConstraintController onCapabilitiesChanged callback");
        synchronized (f17896) {
            try {
                f17894 = networkCapabilities;
                for (Map.Entry entry : f17893.entrySet()) {
                    ((InterfaceC4106) entry.getKey()).mo3844(((NetworkRequest) entry.getValue()).canBeSatisfiedBy(networkCapabilities) ? C4743.f17902 : new C4742(7));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLost(Network network) {
        C3965.m8127().m8133(AbstractC4736.f17887, "NetworkRequestConstraintController onLost callback");
        synchronized (f17896) {
            f17894 = null;
            Iterator it = f17893.keySet().iterator();
            while (it.hasNext()) {
                ((InterfaceC4106) it.next()).mo3844(new C4742(7));
            }
        }
    }
}
