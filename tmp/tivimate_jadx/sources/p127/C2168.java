package p127;

import android.net.Uri;
import android.support.v4.media.session.AbstractC0001;
import java.util.Arrays;
import java.util.Locale;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import p266.AbstractC3458;
import p266.C3456;
import p305.AbstractC3712;
import p305.AbstractC3731;

/* renamed from: ˈـ.ᵎⁱ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2168 extends AbstractC3458 implements InterfaceC2160 {

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public int f8455;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final long f8456;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public byte[] f8457;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final LinkedBlockingQueue f8458;

    public C2168() {
        super(true);
        this.f8456 = 8000L;
        this.f8458 = new LinkedBlockingQueue();
        this.f8457 = new byte[0];
        this.f8455 = -1;
    }

    @Override // p266.InterfaceC3462
    public final void close() {
    }

    @Override // p055.InterfaceC1455
    public final int read(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        int min = Math.min(i2, this.f8457.length);
        System.arraycopy(this.f8457, 0, bArr, i, min);
        byte[] bArr2 = this.f8457;
        this.f8457 = Arrays.copyOfRange(bArr2, min, bArr2.length);
        if (min == i2) {
            return min;
        }
        try {
            byte[] bArr3 = (byte[]) this.f8458.poll(this.f8456, TimeUnit.MILLISECONDS);
            if (bArr3 == null) {
                return -1;
            }
            int min2 = Math.min(i2 - min, bArr3.length);
            System.arraycopy(bArr3, 0, bArr, i + min, min2);
            if (min2 < bArr3.length) {
                this.f8457 = Arrays.copyOfRange(bArr3, min2, bArr3.length);
            }
            return min + min2;
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            return -1;
        }
    }

    @Override // p127.InterfaceC2160
    /* renamed from: ʼˎ */
    public final int mo5114() {
        return this.f8455;
    }

    @Override // p127.InterfaceC2160
    /* renamed from: ʼᐧ */
    public final boolean mo5115() {
        return false;
    }

    @Override // p266.InterfaceC3462
    /* renamed from: ʽʽ */
    public final long mo4684(C3456 c3456) {
        this.f8455 = c3456.f13577.getPort();
        return -1L;
    }

    @Override // p266.InterfaceC3462
    /* renamed from: יـ */
    public final Uri mo4685() {
        return null;
    }

    @Override // p127.InterfaceC2160
    /* renamed from: ᵢˏ */
    public final C2168 mo5116() {
        return this;
    }

    @Override // p127.InterfaceC2160
    /* renamed from: ⁱˊ */
    public final String mo5117() {
        AbstractC3731.m7857(this.f8455 != -1);
        int i = this.f8455;
        int i2 = this.f8455 + 1;
        String str = AbstractC3712.f14481;
        Locale locale = Locale.US;
        return AbstractC0001.m14(i, i2, "RTP/AVP/TCP;unicast;interleaved=", "-");
    }
}
