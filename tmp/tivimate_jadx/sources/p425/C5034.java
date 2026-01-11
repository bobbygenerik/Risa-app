package p425;

import androidx.media3.common.audio.AudioProcessor$UnhandledAudioFormatException;
import java.nio.ByteBuffer;
import p076.AbstractC1655;
import p076.C1661;

/* renamed from: ﹶ.ˈٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5034 extends AbstractC1655 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static final int f18904 = Float.floatToIntBits(Float.NaN);

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static void m9939(int i, ByteBuffer byteBuffer) {
        int floatToIntBits = Float.floatToIntBits((float) (i * 4.656612875245797E-10d));
        if (floatToIntBits == f18904) {
            floatToIntBits = Float.floatToIntBits(0.0f);
        }
        byteBuffer.putInt(floatToIntBits);
    }

    @Override // p076.AbstractC1655
    /* renamed from: ﹳٴ */
    public final C1661 mo4524(C1661 c1661) {
        int i = c1661.f6758;
        if (i == 21 || i == 1342177280 || i == 22 || i == 1610612736 || i == 4) {
            return i != 4 ? new C1661(c1661.f6761, c1661.f6760, 4) : C1661.f6757;
        }
        throw new AudioProcessor$UnhandledAudioFormatException(c1661);
    }

    @Override // p076.InterfaceC1662
    /* renamed from: ﾞᴵ */
    public final void mo4546(ByteBuffer byteBuffer) {
        ByteBuffer m4520;
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i = limit - position;
        int i2 = this.f6708.f6758;
        if (i2 == 21) {
            m4520 = m4520((i / 3) * 4);
            while (position < limit) {
                m9939(((byteBuffer.get(position) & 255) << 8) | ((byteBuffer.get(position + 1) & 255) << 16) | ((byteBuffer.get(position + 2) & 255) << 24), m4520);
                position += 3;
            }
        } else if (i2 == 22) {
            m4520 = m4520(i);
            while (position < limit) {
                m9939((byteBuffer.get(position) & 255) | ((byteBuffer.get(position + 1) & 255) << 8) | ((byteBuffer.get(position + 2) & 255) << 16) | ((byteBuffer.get(position + 3) & 255) << 24), m4520);
                position += 4;
            }
        } else if (i2 == 1342177280) {
            m4520 = m4520((i / 3) * 4);
            while (position < limit) {
                m9939(((byteBuffer.get(position + 2) & 255) << 8) | ((byteBuffer.get(position + 1) & 255) << 16) | ((byteBuffer.get(position) & 255) << 24), m4520);
                position += 3;
            }
        } else {
            if (i2 != 1610612736) {
                throw new IllegalStateException();
            }
            m4520 = m4520(i);
            while (position < limit) {
                m9939((byteBuffer.get(position + 3) & 255) | ((byteBuffer.get(position + 2) & 255) << 8) | ((byteBuffer.get(position + 1) & 255) << 16) | ((byteBuffer.get(position) & 255) << 24), m4520);
                position += 4;
            }
        }
        byteBuffer.position(byteBuffer.limit());
        m4520.flip();
    }
}
