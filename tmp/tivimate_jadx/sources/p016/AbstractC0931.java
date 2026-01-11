package p016;

import org.conscrypt.Conscrypt;

/* renamed from: ʼ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0931 {
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static boolean m3198() {
        Conscrypt.Version version = Conscrypt.version();
        if (version == null) {
            return false;
        }
        if (version.major() != 2) {
            if (version.major() <= 2) {
                return false;
            }
        } else if (version.minor() != 1) {
            if (version.minor() <= 1) {
                return false;
            }
        } else if (version.patch() < 0) {
            return false;
        }
        return true;
    }
}
