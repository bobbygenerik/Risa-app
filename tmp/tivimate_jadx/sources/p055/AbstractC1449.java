package p055;

import java.util.HashSet;

/* renamed from: ʽⁱ.ʽʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1449 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final HashSet f5645 = new HashSet();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static String f5644 = "media3.common";

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static synchronized void m4241(String str) {
        synchronized (AbstractC1449.class) {
            if (f5645.add(str)) {
                f5644 += ", " + str;
            }
        }
    }
}
