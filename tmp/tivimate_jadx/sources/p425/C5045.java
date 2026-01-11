package p425;

import androidx.media3.common.audio.AudioProcessor$UnhandledAudioFormatException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import p076.AbstractC1655;
import p076.C1661;
import p305.AbstractC3712;
import p305.AbstractC3731;

/* renamed from: ﹶ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5045 extends AbstractC1655 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public int[] f18977;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public int[] f18978;

    @Override // p076.AbstractC1655
    /* renamed from: ˆʾ */
    public final void mo4517() {
        this.f18978 = null;
        this.f18977 = null;
    }

    @Override // p076.AbstractC1655
    /* renamed from: ᵔᵢ */
    public final void mo4522() {
        this.f18978 = this.f18977;
    }

    @Override // p076.AbstractC1655
    /* renamed from: ﹳٴ */
    public final C1661 mo4524(C1661 c1661) {
        int i = c1661.f6758;
        int[] iArr = this.f18977;
        if (iArr == null) {
            return C1661.f6757;
        }
        int i2 = c1661.f6760;
        if (!AbstractC3712.m7770(i)) {
            throw new AudioProcessor$UnhandledAudioFormatException(c1661);
        }
        boolean z = i2 != iArr.length;
        int i3 = 0;
        while (i3 < iArr.length) {
            int i4 = iArr[i3];
            if (i4 >= i2) {
                throw new AudioProcessor$UnhandledAudioFormatException("Channel map (" + Arrays.toString(iArr) + ") trying to access non-existent input channel.", c1661);
            }
            z |= i4 != i3;
            i3++;
        }
        return z ? new C1661(c1661.f6761, iArr.length, i) : C1661.f6757;
    }

    @Override // p076.InterfaceC1662
    /* renamed from: ﾞᴵ */
    public final void mo4546(ByteBuffer byteBuffer) {
        int[] iArr = this.f18978;
        iArr.getClass();
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        ByteBuffer m4520 = m4520(((limit - position) / this.f6708.f6759) * this.f6703.f6759);
        while (position < limit) {
            for (int i : iArr) {
                int m7780 = (AbstractC3712.m7780(this.f6708.f6758) * i) + position;
                int i2 = this.f6708.f6758;
                if (i2 != 2) {
                    if (i2 == 3) {
                        m4520.put(byteBuffer.get(m7780));
                    } else if (i2 != 4) {
                        if (i2 != 21) {
                            if (i2 != 22) {
                                if (i2 != 268435456) {
                                    if (i2 != 1342177280) {
                                        if (i2 != 1610612736) {
                                            throw new IllegalStateException("Unexpected encoding: " + this.f6708.f6758);
                                        }
                                    }
                                }
                            }
                            m4520.putInt(byteBuffer.getInt(m7780));
                        }
                        ByteOrder order = byteBuffer.order();
                        ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
                        byte b = byteBuffer.get(order == byteOrder ? m7780 : m7780 + 2);
                        byte b2 = byteBuffer.get(m7780 + 1);
                        if (byteBuffer.order() == byteOrder) {
                            m7780 += 2;
                        }
                        int i3 = ((((b << 24) & (-16777216)) | ((b2 << 16) & 16711680)) | ((byteBuffer.get(m7780) << 8) & 65280)) >> 8;
                        AbstractC3731.m7843("Value out of range of 24-bit integer: " + Integer.toHexString(i3), (i3 & (-16777216)) == 0 || (i3 & (-8388608)) == -8388608);
                        AbstractC3731.m7849(m4520.remaining() >= 3);
                        m4520.put((byte) (m4520.order() == byteOrder ? (i3 & 16711680) >> 16 : i3 & 255)).put((byte) ((i3 & 65280) >> 8)).put((byte) (m4520.order() == byteOrder ? i3 & 255 : (i3 & 16711680) >> 16));
                    } else {
                        m4520.putFloat(byteBuffer.getFloat(m7780));
                    }
                }
                m4520.putShort(byteBuffer.getShort(m7780));
            }
            position += this.f6708.f6759;
        }
        byteBuffer.position(limit);
        m4520.flip();
    }
}
