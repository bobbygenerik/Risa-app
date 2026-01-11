package p032;

import java.nio.ByteBuffer;
import p305.AbstractC3731;
import p421.C4996;

/* renamed from: ʼᵢ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1164 extends C4996 {

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public int f4450;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public long f4451;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public int f4452;

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final boolean m3627() {
        return this.f4452 > 0;
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final boolean m3628(C4996 c4996) {
        ByteBuffer byteBuffer;
        AbstractC3731.m7849(!c4996.m3177(1073741824));
        AbstractC3731.m7849(!c4996.m3177(268435456));
        AbstractC3731.m7849(!c4996.m3177(4));
        if (m3627()) {
            if (this.f4452 >= this.f4450) {
                return false;
            }
            ByteBuffer byteBuffer2 = c4996.f18672;
            if (byteBuffer2 != null && (byteBuffer = this.f18672) != null) {
                if (byteBuffer2.remaining() + byteBuffer.position() > 3072000) {
                    return false;
                }
            }
        }
        int i = this.f4452;
        this.f4452 = i + 1;
        if (i == 0) {
            this.f18671 = c4996.f18671;
            if (c4996.m3177(1)) {
                this.f3828 = 1;
            }
        }
        ByteBuffer byteBuffer3 = c4996.f18672;
        if (byteBuffer3 != null) {
            m9843(byteBuffer3.remaining());
            this.f18672.put(byteBuffer3);
        }
        this.f4451 = c4996.f18671;
        return true;
    }

    @Override // p421.C4996
    /* renamed from: ˏי, reason: contains not printable characters */
    public final void mo3629() {
        super.mo3629();
        this.f4452 = 0;
    }
}
