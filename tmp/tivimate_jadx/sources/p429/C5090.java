package p429;

import com.google.android.gms.internal.play_billing.י;
import java.security.InvalidAlgorithmParameterException;
import java.util.Arrays;
import javax.crypto.spec.SecretKeySpec;
import p071.C1631;
import p277.InterfaceC3534;
import p282.InterfaceC3562;
import p405.C4815;
import p405.C4817;
import p405.C4821;
import p405.C4824;
import p405.C4827;
import p405.C4829;

/* renamed from: ﹶˆ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5090 implements InterfaceC3534 {

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final byte[] f19183 = {0};

    /* renamed from: ʽ, reason: contains not printable characters */
    public final byte[] f19184;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final byte[] f19185;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f19186;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC3562 f19187;

    public C5090(C4824 c4824) {
        this.f19187 = new C5085("HMAC" + c4824.f18110.f18126, new SecretKeySpec(((C1631) c4824.f18113.ᴵˊ).m4413(), "HMAC"));
        C4829 c4829 = c4824.f18110;
        this.f19186 = c4829.f18127;
        this.f19184 = c4824.f18111.m4413();
        if (c4829.f18125.equals(C4821.f18102)) {
            this.f19185 = Arrays.copyOf(f19183, 1);
        } else {
            this.f19185 = new byte[0];
        }
    }

    public C5090(C4827 c4827) {
        this.f19187 = new C5088(((C1631) c4827.f18121.ᴵˊ).m4413());
        C4817 c4817 = c4827.f18118;
        this.f19186 = c4817.f18099;
        this.f19184 = c4827.f18119.m4413();
        if (c4817.f18098.equals(C4815.f18088)) {
            this.f19185 = Arrays.copyOf(f19183, 1);
        } else {
            this.f19185 = new byte[0];
        }
    }

    public C5090(C5085 c5085, int i) {
        this.f19187 = c5085;
        this.f19186 = i;
        this.f19184 = new byte[0];
        this.f19185 = new byte[0];
        if (i < 10) {
            throw new InvalidAlgorithmParameterException("tag size too small, need at least 10 bytes");
        }
        c5085.mo7509(i, new byte[0]);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final byte[] m9994(byte[] bArr) {
        byte[] bArr2 = this.f19185;
        int length = bArr2.length;
        int i = this.f19186;
        InterfaceC3562 interfaceC3562 = this.f19187;
        byte[] bArr3 = this.f19184;
        return length > 0 ? י.ﾞʻ(new byte[][]{bArr3, interfaceC3562.mo7509(i, י.ﾞʻ(new byte[][]{bArr, bArr2}))}) : י.ﾞʻ(new byte[][]{bArr3, interfaceC3562.mo7509(i, bArr)});
    }
}
