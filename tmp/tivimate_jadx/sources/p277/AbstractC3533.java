package p277;

import java.security.GeneralSecurityException;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArrayList;
import p035.AbstractC1220;
import p106.C1936;

/* renamed from: ٴʻ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3533 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final CopyOnWriteArrayList f13879 = new CopyOnWriteArrayList();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C1936 m7492(String str) {
        Iterator it = f13879.iterator();
        while (it.hasNext()) {
            C1936 c1936 = (C1936) it.next();
            c1936.getClass();
            if (str.toLowerCase(Locale.US).startsWith("android-keystore://")) {
                return c1936;
            }
        }
        throw new GeneralSecurityException(AbstractC1220.m3771("No KMS client does support: ", str));
    }
}
