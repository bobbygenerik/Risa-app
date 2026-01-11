package p273;

import com.google.android.gms.internal.play_billing.י;
import java.security.GeneralSecurityException;
import java.util.Arrays;
import p277.InterfaceC3535;
import p330.EnumC4150;
import p404.AbstractC4804;

/* renamed from: ـᵔ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3484 implements InterfaceC3535 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final byte[] f13673;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final EnumC4150 f13674;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC3535 f13675;

    public C3484(InterfaceC3535 interfaceC3535, EnumC4150 enumC4150, byte[] bArr) {
        this.f13675 = interfaceC3535;
        this.f13674 = enumC4150;
        this.f13673 = bArr;
    }

    @Override // p277.InterfaceC3535
    /* renamed from: ⁱˊ */
    public final byte[] mo6547(byte[] bArr, byte[] bArr2) {
        EnumC4150 enumC4150 = this.f13674;
        EnumC4150 enumC41502 = EnumC4150.f15581;
        InterfaceC3535 interfaceC3535 = this.f13675;
        if (enumC4150 == enumC41502) {
            return interfaceC3535.mo6547(bArr, bArr2);
        }
        if (AbstractC4804.m9602(this.f13673, bArr)) {
            return interfaceC3535.mo6547(Arrays.copyOfRange(bArr, 5, bArr.length), bArr2);
        }
        throw new GeneralSecurityException("wrong prefix");
    }

    @Override // p277.InterfaceC3535
    /* renamed from: ﹳٴ */
    public final byte[] mo6548(byte[] bArr, byte[] bArr2) {
        EnumC4150 enumC4150 = this.f13674;
        EnumC4150 enumC41502 = EnumC4150.f15581;
        InterfaceC3535 interfaceC3535 = this.f13675;
        return enumC4150 == enumC41502 ? interfaceC3535.mo6548(bArr, bArr2) : י.ﾞʻ(new byte[][]{this.f13673, interfaceC3535.mo6548(bArr, bArr2)});
    }
}
