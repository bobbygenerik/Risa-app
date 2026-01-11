package p320;

import p013.C0922;
import p435.AbstractC5152;

/* renamed from: ᴵˉ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3947 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final int f15252;

    static {
        Object c0922;
        try {
            c0922 = AbstractC5152.m10149(System.getProperty("kotlinx.serialization.json.pool.size"));
        } catch (Throwable th) {
            c0922 = new C0922(th);
        }
        if (c0922 instanceof C0922) {
            c0922 = null;
        }
        Integer num = (Integer) c0922;
        f15252 = num != null ? num.intValue() : 2097152;
    }
}
