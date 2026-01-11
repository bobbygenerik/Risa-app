package p218;

import java.security.InvalidAlgorithmParameterException;
import p035.AbstractC1220;
import p158.C2537;
import p245.C3283;
import p277.InterfaceC3535;
import p330.C4139;
import p330.EnumC4167;
import p404.C4802;
import p404.C4807;

/* renamed from: ˏˑ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3015 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C3283 f11517;

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C3021 f11518;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C4802 f11519;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C4807 f11520 = new C4807(C3022.class, InterfaceC3535.class, new C2537(20));

    /* JADX WARN: Type inference failed for: r0v2, types: [יʻ.ᵔᵢ, java.lang.Object] */
    static {
        C4139.m8438();
        f11519 = new C4802("type.googleapis.com/google.crypto.tink.AesSivKey", InterfaceC3535.class, EnumC4167.f15584);
        f11517 = new Object();
        f11518 = new C3021(0);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m6544(C3018 c3018) {
        if (c3018.f11527 != 64) {
            throw new InvalidAlgorithmParameterException(AbstractC1220.m3782(new StringBuilder("invalid key size: "), c3018.f11527, ". Valid keys must have 64 bytes."));
        }
    }
}
