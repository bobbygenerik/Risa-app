package p425;

import androidx.media3.common.audio.AudioProcessor$UnhandledAudioFormatException;
import java.nio.ByteBuffer;
import p076.AbstractC1655;
import p076.C1661;
import p305.AbstractC3712;

/* renamed from: ﹶ.ᴵᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5043 extends AbstractC1655 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public int f18968;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public int f18969;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public byte[] f18970;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public long f18971;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public boolean f18972;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public int f18973;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public int f18974;

    @Override // p076.AbstractC1655
    /* renamed from: ʼˎ */
    public final void mo4515() {
        if (this.f18972) {
            if (this.f18973 > 0) {
                this.f18971 += r0 / this.f6708.f6759;
            }
            this.f18973 = 0;
        }
    }

    @Override // p076.AbstractC1655
    /* renamed from: ˆʾ */
    public final void mo4517() {
        this.f18970 = AbstractC3712.f14480;
    }

    @Override // p076.AbstractC1655, p076.InterfaceC1662
    /* renamed from: ˈ */
    public final ByteBuffer mo4518() {
        int i;
        if (super.mo4523() && (i = this.f18973) > 0) {
            m4520(i).put(this.f18970, 0, this.f18973).flip();
            this.f18973 = 0;
        }
        return super.mo4518();
    }

    @Override // p076.AbstractC1655
    /* renamed from: ᵔᵢ */
    public final void mo4522() {
        if (this.f18972) {
            this.f18972 = false;
            int i = this.f18969;
            int i2 = this.f6708.f6759;
            this.f18970 = new byte[i * i2];
            this.f18974 = this.f18968 * i2;
        }
        this.f18973 = 0;
    }

    @Override // p076.AbstractC1655, p076.InterfaceC1662
    /* renamed from: ⁱˊ */
    public final boolean mo4523() {
        return super.mo4523() && this.f18973 == 0;
    }

    @Override // p076.AbstractC1655
    /* renamed from: ﹳٴ */
    public final C1661 mo4524(C1661 c1661) {
        if (!AbstractC3712.m7770(c1661.f6758)) {
            throw new AudioProcessor$UnhandledAudioFormatException(c1661);
        }
        this.f18972 = true;
        return (this.f18968 == 0 && this.f18969 == 0) ? C1661.f6757 : c1661;
    }

    @Override // p076.InterfaceC1662
    /* renamed from: ﾞᴵ */
    public final void mo4546(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i = limit - position;
        if (i == 0) {
            return;
        }
        int min = Math.min(i, this.f18974);
        this.f18971 += min / this.f6708.f6759;
        this.f18974 -= min;
        byteBuffer.position(position + min);
        if (this.f18974 > 0) {
            return;
        }
        int i2 = i - min;
        int length = (this.f18973 + i2) - this.f18970.length;
        ByteBuffer m4520 = m4520(length);
        int m7758 = AbstractC3712.m7758(length, 0, this.f18973);
        m4520.put(this.f18970, 0, m7758);
        int m77582 = AbstractC3712.m7758(length - m7758, 0, i2);
        byteBuffer.limit(byteBuffer.position() + m77582);
        m4520.put(byteBuffer);
        byteBuffer.limit(limit);
        int i3 = i2 - m77582;
        int i4 = this.f18973 - m7758;
        this.f18973 = i4;
        byte[] bArr = this.f18970;
        System.arraycopy(bArr, m7758, bArr, 0, i4);
        byteBuffer.get(this.f18970, this.f18973, i3);
        this.f18973 += i3;
        m4520.flip();
    }
}
