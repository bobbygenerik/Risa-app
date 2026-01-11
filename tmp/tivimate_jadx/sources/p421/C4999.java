package p421;

import android.media.MediaCodec;
import p140.AbstractC2376;

/* renamed from: ﹳⁱ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4999 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final MediaCodec.CryptoInfo.Pattern f18688 = AbstractC2376.m5453();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final MediaCodec.CryptoInfo f18689;

    public C4999(MediaCodec.CryptoInfo cryptoInfo) {
        this.f18689 = cryptoInfo;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m9851(C4999 c4999, int i, int i2) {
        c4999.f18688.set(i, i2);
        c4999.f18689.setPattern(c4999.f18688);
    }
}
