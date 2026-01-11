package p292;

import java.net.Proxy;

/* renamed from: ٴᵎ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC3637 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final /* synthetic */ int[] f14228;

    static {
        int[] iArr = new int[Proxy.Type.values().length];
        try {
            iArr[Proxy.Type.DIRECT.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[Proxy.Type.HTTP.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        f14228 = iArr;
    }
}
