package p076;

import androidx.media3.common.audio.AudioProcessor$UnhandledAudioFormatException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;
import p305.AbstractC3731;

/* renamed from: ʾﾞ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1660 implements InterfaceC1662 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public boolean f6742;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public boolean f6743;

    /* renamed from: ʽ, reason: contains not printable characters */
    public float f6744;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public C1657 f6745;

    /* renamed from: ˈ, reason: contains not printable characters */
    public float f6746;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public ByteBuffer f6747;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public long f6748;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public C1661 f6749;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public ByteBuffer f6750;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public C1661 f6751;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public long f6752;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public C1661 f6753;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f6754;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public ShortBuffer f6755;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public C1661 f6756;

    @Override // p076.InterfaceC1662
    public final void flush() {
        if (mo4516()) {
            C1661 c1661 = this.f6749;
            this.f6751 = c1661;
            C1661 c16612 = this.f6756;
            this.f6753 = c16612;
            if (this.f6742) {
                this.f6745 = new C1657(c1661.f6761, c1661.f6760, this.f6744, this.f6746, c16612.f6761);
            } else {
                C1657 c1657 = this.f6745;
                if (c1657 != null) {
                    c1657.f6725 = 0;
                    c1657.f6719 = 0;
                    c1657.f6720 = 0;
                    c1657.f6714 = 0;
                    c1657.f6729 = 0;
                    c1657.f6732 = 0;
                    c1657.f6723 = 0;
                    c1657.f6721 = 0;
                    c1657.f6716 = 0;
                    c1657.f6712 = 0;
                    c1657.f6724 = 0.0d;
                }
            }
        }
        this.f6747 = InterfaceC1662.f6762;
        this.f6752 = 0L;
        this.f6748 = 0L;
        this.f6743 = false;
    }

    @Override // p076.InterfaceC1662
    public final void reset() {
        this.f6744 = 1.0f;
        this.f6746 = 1.0f;
        C1661 c1661 = C1661.f6757;
        this.f6749 = c1661;
        this.f6756 = c1661;
        this.f6751 = c1661;
        this.f6753 = c1661;
        ByteBuffer byteBuffer = InterfaceC1662.f6762;
        this.f6750 = byteBuffer;
        this.f6755 = byteBuffer.asShortBuffer();
        this.f6747 = byteBuffer;
        this.f6754 = -1;
        this.f6742 = false;
        this.f6745 = null;
        this.f6752 = 0L;
        this.f6748 = 0L;
        this.f6743 = false;
    }

    @Override // p076.InterfaceC1662
    /* renamed from: ʽ */
    public final boolean mo4516() {
        if (this.f6756.f6761 != -1) {
            return Math.abs(this.f6744 - 1.0f) >= 1.0E-4f || Math.abs(this.f6746 - 1.0f) >= 1.0E-4f || this.f6756.f6761 != this.f6749.f6761;
        }
        return false;
    }

    @Override // p076.InterfaceC1662
    /* renamed from: ˈ */
    public final ByteBuffer mo4518() {
        C1657 c1657 = this.f6745;
        if (c1657 != null) {
            int i = c1657.f6730;
            AbstractC3731.m7857(c1657.f6719 >= 0);
            int i2 = c1657.f6719 * i * 2;
            if (i2 > 0) {
                if (this.f6750.capacity() < i2) {
                    ByteBuffer order = ByteBuffer.allocateDirect(i2).order(ByteOrder.nativeOrder());
                    this.f6750 = order;
                    this.f6755 = order.asShortBuffer();
                } else {
                    this.f6750.clear();
                    this.f6755.clear();
                }
                ShortBuffer shortBuffer = this.f6755;
                AbstractC3731.m7857(c1657.f6719 >= 0);
                int min = Math.min(shortBuffer.remaining() / i, c1657.f6719);
                int i3 = min * i;
                shortBuffer.put(c1657.f6733, 0, i3);
                int i4 = c1657.f6719 - min;
                c1657.f6719 = i4;
                short[] sArr = c1657.f6733;
                System.arraycopy(sArr, i3, sArr, 0, i4 * i);
                this.f6748 += i2;
                this.f6750.limit(i2);
                this.f6747 = this.f6750;
            }
        }
        ByteBuffer byteBuffer = this.f6747;
        this.f6747 = InterfaceC1662.f6762;
        return byteBuffer;
    }

    @Override // p076.InterfaceC1662
    /* renamed from: ˑﹳ */
    public final void mo4519() {
        C1657 c1657 = this.f6745;
        if (c1657 != null) {
            int i = c1657.f6725;
            float f = c1657.f6715;
            float f2 = c1657.f6718;
            double d = f / f2;
            int i2 = c1657.f6719 + ((int) (((((((i - r6) / d) + c1657.f6732) + c1657.f6724) + c1657.f6720) / (c1657.f6722 * f2)) + 0.5d));
            c1657.f6724 = 0.0d;
            short[] sArr = c1657.f6717;
            int i3 = c1657.f6728 * 2;
            c1657.f6717 = c1657.m4526(sArr, i, i3 + i);
            int i4 = 0;
            while (true) {
                int i5 = c1657.f6730;
                if (i4 >= i3 * i5) {
                    break;
                }
                c1657.f6717[(i5 * i) + i4] = 0;
                i4++;
            }
            c1657.f6725 = i3 + c1657.f6725;
            c1657.m4530();
            if (c1657.f6719 > i2) {
                c1657.f6719 = Math.max(i2, 0);
            }
            c1657.f6725 = 0;
            c1657.f6732 = 0;
            c1657.f6720 = 0;
        }
        this.f6743 = true;
    }

    @Override // p076.InterfaceC1662
    /* renamed from: ᵎﹶ */
    public final C1661 mo4521(C1661 c1661) {
        if (c1661.f6758 != 2) {
            throw new AudioProcessor$UnhandledAudioFormatException(c1661);
        }
        int i = this.f6754;
        if (i == -1) {
            i = c1661.f6761;
        }
        this.f6749 = c1661;
        C1661 c16612 = new C1661(i, c1661.f6760, 2);
        this.f6756 = c16612;
        this.f6742 = true;
        return c16612;
    }

    @Override // p076.InterfaceC1662
    /* renamed from: ⁱˊ */
    public final boolean mo4523() {
        if (this.f6743) {
            C1657 c1657 = this.f6745;
            if (c1657 != null) {
                AbstractC3731.m7857(c1657.f6719 >= 0);
                if (c1657.f6719 * c1657.f6730 * 2 == 0) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // p076.InterfaceC1662
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void mo4546(ByteBuffer byteBuffer) {
        if (byteBuffer.hasRemaining()) {
            C1657 c1657 = this.f6745;
            c1657.getClass();
            ShortBuffer asShortBuffer = byteBuffer.asShortBuffer();
            int remaining = byteBuffer.remaining();
            this.f6752 += remaining;
            int remaining2 = asShortBuffer.remaining();
            int i = c1657.f6730;
            int i2 = remaining2 / i;
            short[] m4526 = c1657.m4526(c1657.f6717, c1657.f6725, i2);
            c1657.f6717 = m4526;
            asShortBuffer.get(m4526, c1657.f6725 * i, ((i2 * i) * 2) / 2);
            c1657.f6725 += i2;
            c1657.m4530();
            byteBuffer.position(byteBuffer.position() + remaining);
        }
    }
}
