package p366;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;
import p031.InterfaceC1148;

/* renamed from: ᵔﹶ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4463 implements InterfaceC4470, InterfaceC1148 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final ByteBuffer f16703;

    public C4463() {
        this.f16703 = ByteBuffer.allocate(8);
    }

    public C4463(ByteBuffer byteBuffer) {
        this.f16703 = byteBuffer;
        byteBuffer.order(ByteOrder.BIG_ENDIAN);
    }

    @Override // p366.InterfaceC4470
    public long skip(long j) {
        ByteBuffer byteBuffer = this.f16703;
        int min = (int) Math.min(byteBuffer.remaining(), j);
        byteBuffer.position(byteBuffer.position() + min);
        return min;
    }

    @Override // p031.InterfaceC1148
    /* renamed from: ˈ */
    public void mo3580(byte[] bArr, Object obj, MessageDigest messageDigest) {
        Long l = (Long) obj;
        messageDigest.update(bArr);
        synchronized (this.f16703) {
            this.f16703.position(0);
            messageDigest.update(this.f16703.putLong(l.longValue()).array());
        }
    }

    @Override // p366.InterfaceC4470
    /* renamed from: ˉʿ, reason: contains not printable characters */
    public int mo9015(int i, byte[] bArr) {
        ByteBuffer byteBuffer = this.f16703;
        int min = Math.min(i, byteBuffer.remaining());
        if (min == 0) {
            return -1;
        }
        byteBuffer.get(bArr, 0, min);
        return min;
    }

    @Override // p366.InterfaceC4470
    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public int mo9016() {
        return (mo9017() << 8) | mo9017();
    }

    @Override // p366.InterfaceC4470
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public short mo9017() {
        ByteBuffer byteBuffer = this.f16703;
        if (byteBuffer.remaining() >= 1) {
            return (short) (byteBuffer.get() & 255);
        }
        throw new IOException() { // from class: com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser$Reader$EndOfFileException
        };
    }
}
