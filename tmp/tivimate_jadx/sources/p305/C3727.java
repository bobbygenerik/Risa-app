package p305;

import android.telephony.TelephonyCallback;
import android.telephony.TelephonyDisplayInfo;

/* renamed from: ᐧˎ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3727 extends TelephonyCallback implements TelephonyCallback.DisplayInfoListener {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3729 f14510;

    public C3727(C3729 c3729) {
        this.f14510 = c3729;
    }

    public final void onDisplayInfoChanged(TelephonyDisplayInfo telephonyDisplayInfo) {
        int overrideNetworkType = telephonyDisplayInfo.getOverrideNetworkType();
        this.f14510.m7837(overrideNetworkType == 3 || overrideNetworkType == 4 || overrideNetworkType == 5 ? 10 : 5);
    }
}
