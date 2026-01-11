package p289;

import com.hierynomus.smbj.common.SMBRuntimeException;
import java.util.Date;
import java.util.UUID;
import p183.C2760;
import ʽⁱ.ᵎﹶ;
import ˋⁱ.ﾞᴵ;

/* renamed from: ٴٴ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3601 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final long f14073;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final UUID f14074;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final Date f14075 = new Date();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final ᵎﹶ f14076;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2760 f14077;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public long f14078;

    public C3601(ᵎﹶ r1, long j, UUID uuid) {
        this.f14076 = r1;
        this.f14073 = j;
        this.f14074 = uuid;
        String valueOf = String.valueOf(j);
        ﾞᴵ r3 = SMBRuntimeException.f3099;
        this.f14077 = new C2760(valueOf);
    }
}
