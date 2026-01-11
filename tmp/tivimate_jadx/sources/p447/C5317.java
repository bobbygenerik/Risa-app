package p447;

import android.util.Log;
import p233.C3191;
import p233.C3192;

/* renamed from: ﹶﾞ.ᴵʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5317 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C5322 f20057;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f20058 = 1;

    public C5317(C5323 c5323, C5322 c5322) {
        this.f20057 = c5322;
    }

    public C5317(C5337 c5337) {
        this.f20057 = c5337.f20305;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean m10554() {
        switch (this.f20058) {
            case 0:
                C5322 c5322 = this.f20057;
                boolean z = false;
                try {
                    C3192 m7014 = C3191.m7014(c5322.f20184);
                    if (m7014 == null) {
                        C5344 c5344 = c5322.f20193;
                        C5322.m10556(c5344);
                        c5344.f20350.m10217("Failed to get PackageManager for Install Referrer Play Store compatibility check");
                        c5322 = c5322;
                    } else {
                        int i = m7014.m7016(128, "com.android.vending").versionCode;
                        c5322 = i;
                        if (i >= 80837300) {
                            z = true;
                            c5322 = i;
                        }
                    }
                } catch (Exception e) {
                    C5344 c53442 = c5322.f20193;
                    C5322.m10556(c53442);
                    c53442.f20350.m10216(e, "Failed to retrieve Play Store version for Install Referrer");
                }
                return z;
            default:
                C5344 c53443 = this.f20057.f20193;
                C5322.m10556(c53443);
                return Log.isLoggable(c53443.m10727(), 3);
        }
    }
}
