package p288;

import java.io.IOException;
import p168.InterfaceC2612;
import p261.C3412;
import p441.C5194;
import ˊⁱ.ˑﹳ;

/* renamed from: ٴـ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3593 extends AbstractC3597 {

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ int f14037;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C3593(C3591 c3591, C3412 c3412, char[] cArr, int i, boolean z, int i2) {
        super(c3591, c3412, cArr, i, z);
        this.f14037 = i2;
    }

    /* JADX WARN: Type inference failed for: r12v1, types: [ˊⁱ.ʽ, java.lang.Object] */
    @Override // p288.AbstractC3597
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final InterfaceC2612 mo7552(C3412 c3412, char[] cArr, boolean z) {
        byte m10173;
        switch (this.f14037) {
            case 0:
                return new Object();
            default:
                long j = c3412.f13376;
                long j2 = c3412.f13370;
                byte[] bArr = new byte[12];
                m7557(bArr);
                ˑﹳ r0 = new ˑﹳ(0, false);
                C5194 c5194 = new C5194();
                r0.ᴵˊ = c5194;
                if (cArr == null || cArr.length <= 0) {
                    throw new IOException("Wrong password!");
                }
                c5194.m10172(cArr, z);
                int i = 0;
                byte b = bArr[0];
                while (i < 12) {
                    i++;
                    if (i == 12 && (m10173 = (byte) (c5194.m10173() ^ b)) != ((byte) (j >> 24)) && m10173 != ((byte) (j2 >> 8))) {
                        throw new IOException("Wrong password!");
                    }
                    c5194.m10171((byte) (c5194.m10173() ^ b));
                    if (i != 12) {
                        b = bArr[i];
                    }
                }
                return r0;
        }
    }
}
