package p157;

import java.nio.ByteBuffer;
import p055.C1495;
import p262.C3433;
import p305.AbstractC3712;
import p305.C3732;
import p307.AbstractC3740;
import p392.AbstractC4671;
import p421.C4996;

/* renamed from: ˊˊ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2520 extends AbstractC4671 {

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public final C4996 f9601;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public long f9602;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public final C3732 f9603;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public InterfaceC2521 f9604;

    public C2520() {
        super(6);
        this.f9601 = new C4996(1, 0);
        this.f9603 = new C3732();
    }

    @Override // p392.AbstractC4671
    /* renamed from: ʾˋ */
    public final int mo762(C1495 c1495) {
        return "application/x-camera-motion".equals(c1495.f5930) ? AbstractC3740.m7927(4, 0, 0, 0) : AbstractC3740.m7927(0, 0, 0, 0);
    }

    @Override // p392.AbstractC4671
    /* renamed from: ʾᵎ */
    public final void mo763(long j, long j2) {
        float[] fArr;
        while (!m9274() && this.f9602 < 100000 + j) {
            C4996 c4996 = this.f9601;
            c4996.mo3629();
            C3433 c3433 = this.f17503;
            c3433.m7345();
            if (m9273(c3433, c4996, 0) != -4 || c4996.m3177(4)) {
                return;
            }
            long j3 = c4996.f18671;
            this.f9602 = j3;
            boolean z = j3 < this.f17519;
            if (this.f9604 != null && !z) {
                c4996.m9845();
                ByteBuffer byteBuffer = c4996.f18672;
                String str = AbstractC3712.f14481;
                if (byteBuffer.remaining() != 16) {
                    fArr = null;
                } else {
                    byte[] array = byteBuffer.array();
                    int limit = byteBuffer.limit();
                    C3732 c3732 = this.f9603;
                    c3732.m7897(limit, array);
                    c3732.m7896(byteBuffer.arrayOffset() + 4);
                    float[] fArr2 = new float[3];
                    for (int i = 0; i < 3; i++) {
                        fArr2[i] = Float.intBitsToFloat(c3732.m7884());
                    }
                    fArr = fArr2;
                }
                if (fArr != null) {
                    this.f9604.mo5641(this.f9602 - this.f17517, fArr);
                }
            }
        }
    }

    @Override // p392.AbstractC4671
    /* renamed from: ˆʾ */
    public final String mo764() {
        return "CameraMotionRenderer";
    }

    @Override // p392.AbstractC4671
    /* renamed from: ˉʿ */
    public final boolean mo766() {
        return true;
    }

    @Override // p392.AbstractC4671
    /* renamed from: ˉˆ */
    public final void mo767() {
        InterfaceC2521 interfaceC2521 = this.f9604;
        if (interfaceC2521 != null) {
            interfaceC2521.mo5638();
        }
    }

    @Override // p392.AbstractC4671
    /* renamed from: ᵔﹳ */
    public final void mo779(boolean z, long j) {
        this.f9602 = Long.MIN_VALUE;
        InterfaceC2521 interfaceC2521 = this.f9604;
        if (interfaceC2521 != null) {
            interfaceC2521.mo5638();
        }
    }

    @Override // p392.AbstractC4671, p392.InterfaceC4653
    /* renamed from: ⁱˊ */
    public final void mo780(int i, Object obj) {
        if (i == 8) {
            this.f9604 = (InterfaceC2521) obj;
        }
    }

    @Override // p392.AbstractC4671
    /* renamed from: ﾞʻ */
    public final boolean mo781() {
        return m9274();
    }
}
