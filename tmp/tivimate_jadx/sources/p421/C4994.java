package p421;

import android.media.MediaCodec;
import android.os.Build;

/* renamed from: ﹳⁱ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4994 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final MediaCodec.CryptoInfo f18656;

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f18657;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final C4999 f18658;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int[] f18659;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int[] f18660;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public int f18661;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public int f18662;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public byte[] f18663;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public byte[] f18664;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f18665;

    public C4994() {
        MediaCodec.CryptoInfo cryptoInfo = new MediaCodec.CryptoInfo();
        this.f18656 = cryptoInfo;
        this.f18658 = Build.VERSION.SDK_INT >= 24 ? new C4999(cryptoInfo) : null;
    }
}
