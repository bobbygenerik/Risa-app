package p059;

import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import p322.C3965;
import p396.C4739;

/* renamed from: ʾʽ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1523 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final String f6000 = C3965.m8128("NetworkStateTracker");

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C4739 m4331(ConnectivityManager connectivityManager) {
        boolean z;
        NetworkCapabilities networkCapabilities;
        String str = f6000;
        try {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            boolean z2 = activeNetworkInfo != null && activeNetworkInfo.isConnected();
            try {
                networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
            } catch (SecurityException e) {
                C3965.m8127().m8130(str, "Unable to validate active network", e);
            }
            if (networkCapabilities != null) {
                z = networkCapabilities.hasCapability(16);
                return new C4739(z2, z, connectivityManager.isActiveNetworkMetered(), activeNetworkInfo == null && !activeNetworkInfo.isRoaming());
            }
            z = false;
            return new C4739(z2, z, connectivityManager.isActiveNetworkMetered(), activeNetworkInfo == null && !activeNetworkInfo.isRoaming());
        } catch (SecurityException e2) {
            C3965.m8127().m8130(str, "Unable to get active network state", e2);
            return new C4739(false, false, false, true);
        }
    }
}
