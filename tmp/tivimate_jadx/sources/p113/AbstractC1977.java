package p113;

import android.app.Application;
import android.net.NetworkRequest;
import p322.C3965;

/* renamed from: ˆﹶ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1977 {
    /* renamed from: ʽ, reason: contains not printable characters */
    public static boolean m4961(NetworkRequest networkRequest, int i) {
        return networkRequest.hasCapability(i);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static boolean m4962(NetworkRequest networkRequest, int i) {
        return networkRequest.hasTransport(i);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static String m4963() {
        return Application.getProcessName();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C1974 m4964(int[] iArr, int[] iArr2) {
        NetworkRequest.Builder builder = new NetworkRequest.Builder();
        for (int i : iArr) {
            try {
                builder.addCapability(i);
            } catch (IllegalArgumentException e) {
                C3965 m8127 = C3965.m8127();
                String str = C1974.f7829;
                String str2 = C1974.f7829;
                String str3 = "Ignoring adding capability '" + i + '\'';
                if (m8127.f15287 <= 5) {
                }
            }
        }
        for (int i2 = 0; i2 < 3; i2++) {
            int i3 = AbstractC1963.f7806[i2];
            int length = iArr.length;
            int i4 = 0;
            while (true) {
                if (i4 >= length) {
                    i4 = -1;
                    break;
                }
                if (i3 == iArr[i4]) {
                    break;
                }
                i4++;
            }
            if (!(i4 >= 0)) {
                try {
                    builder.removeCapability(i3);
                } catch (IllegalArgumentException e2) {
                    C3965 m81272 = C3965.m8127();
                    String str4 = C1974.f7829;
                    String str5 = C1974.f7829;
                    String str6 = "Ignoring removing default capability '" + i3 + '\'';
                    if (m81272.f15287 <= 5) {
                    }
                }
            }
        }
        for (int i5 : iArr2) {
            builder.addTransportType(i5);
        }
        return new C1974(builder.build());
    }
}
