package p431;

import com.hierynomus.security.SecurityException;
import java.nio.charset.Charset;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import p197.AbstractC2901;
import p197.C2900;
import p317.AbstractC3913;
import p456.InterfaceC5377;
import p456.InterfaceC5379;

/* renamed from: ﹶˊ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5116 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final Charset f19218 = AbstractC3913.f15172;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final InterfaceC5377 f19219;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Random f19220;

    public C5116(Random random, InterfaceC5377 interfaceC5377) {
        this.f19220 = random;
        this.f19219 = interfaceC5377;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final byte[] m10061(byte[] bArr, byte[]... bArr2) {
        try {
            InterfaceC5379 mo8992 = this.f19219.mo8992("HmacMD5");
            mo8992.mo6827(bArr);
            for (byte[] bArr3 : bArr2) {
                mo8992.update(bArr3);
            }
            return mo8992.mo6857();
        } catch (SecurityException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final byte[] m10062(byte[] bArr) {
        byte[] bArr2 = new byte[8];
        this.f19220.nextBytes(bArr2);
        long convert = (TimeUnit.NANOSECONDS.convert(System.currentTimeMillis(), TimeUnit.MILLISECONDS) / 100) + 116444736000000000L;
        if (bArr == null) {
            bArr = new byte[0];
        }
        AbstractC2901 abstractC2901 = new AbstractC2901();
        abstractC2901.mo6412((byte) 1);
        abstractC2901.mo6412((byte) 1);
        abstractC2901.m6417(0);
        abstractC2901.m6419(0L);
        C2900.f10933.m6408(abstractC2901, convert);
        abstractC2901.mo6415(8, bArr2);
        abstractC2901.m6419(0L);
        abstractC2901.mo6415(bArr.length, bArr);
        abstractC2901.m6419(0L);
        return abstractC2901.m6420();
    }
}
