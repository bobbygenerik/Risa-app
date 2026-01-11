package p421;

import java.nio.ByteBuffer;
import p012.AbstractC0905;
import p055.AbstractC1449;
import p055.C1495;
import p411.AbstractC4892;

/* renamed from: ﹳⁱ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C4996 extends AbstractC0905 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public C1495 f18666;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final C4994 f18667;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public ByteBuffer f18668;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public boolean f18669;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final int f18670;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public long f18671;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public ByteBuffer f18672;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final int f18673;

    static {
        AbstractC1449.m4241("media3.decoder");
    }

    public C4996(int i, int i2) {
        super(3);
        this.f18667 = new C4994();
        this.f18673 = i;
        this.f18670 = i2;
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final void m9843(int i) {
        int i2 = i + this.f18670;
        ByteBuffer byteBuffer = this.f18672;
        if (byteBuffer == null) {
            this.f18672 = m9844(i2);
            return;
        }
        int capacity = byteBuffer.capacity();
        int position = byteBuffer.position();
        int i3 = i2 + position;
        if (capacity >= i3) {
            this.f18672 = byteBuffer;
            return;
        }
        ByteBuffer m9844 = m9844(i3);
        m9844.order(byteBuffer.order());
        if (position > 0) {
            byteBuffer.flip();
            m9844.put(byteBuffer);
        }
        this.f18672 = m9844;
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final ByteBuffer m9844(int i) {
        int i2 = this.f18673;
        if (i2 == 1) {
            return ByteBuffer.allocate(i);
        }
        if (i2 == 2) {
            return ByteBuffer.allocateDirect(i);
        }
        ByteBuffer byteBuffer = this.f18672;
        throw new IllegalStateException(AbstractC4892.m9681("Buffer too small (", byteBuffer == null ? 0 : byteBuffer.capacity(), " < ", i, ")"));
    }

    /* renamed from: ˏי */
    public void mo3629() {
        this.f3828 = 0;
        ByteBuffer byteBuffer = this.f18672;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
        ByteBuffer byteBuffer2 = this.f18668;
        if (byteBuffer2 != null) {
            byteBuffer2.clear();
        }
        this.f18669 = false;
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final void m9845() {
        ByteBuffer byteBuffer = this.f18672;
        if (byteBuffer != null) {
            byteBuffer.flip();
        }
        ByteBuffer byteBuffer2 = this.f18668;
        if (byteBuffer2 != null) {
            byteBuffer2.flip();
        }
    }
}
