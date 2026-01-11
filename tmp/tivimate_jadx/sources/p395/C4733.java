package p395;

import android.os.Build;
import java.util.UUID;
import p421.InterfaceC5000;

/* renamed from: ⁱᴵ.ﹳᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4733 implements InterfaceC5000 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final boolean f17883;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final byte[] f17884;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final UUID f17885;

    static {
        boolean z;
        if ("Amazon".equals(Build.MANUFACTURER)) {
            String str = Build.MODEL;
            if ("AFTM".equals(str) || "AFTB".equals(str)) {
                z = true;
                f17883 = z;
            }
        }
        z = false;
        f17883 = z;
    }

    public C4733(UUID uuid, byte[] bArr) {
        this.f17885 = uuid;
        this.f17884 = bArr;
    }
}
