package p366;

import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicReference;
import p031.InterfaceC1140;
import p087.AbstractC1748;
import p087.C1749;
import p257.C3397;

/* renamed from: ᵔﹶ.ˏי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4477 implements InterfaceC1140 {
    @Override // p031.InterfaceC1140
    /* renamed from: ʽ */
    public final int mo3570(ByteBuffer byteBuffer, C3397 c3397) {
        AtomicReference atomicReference = AbstractC1748.f7108;
        return mo3572(new C1749(byteBuffer), c3397);
    }

    @Override // p031.InterfaceC1140
    /* renamed from: ˈ */
    public final ImageHeaderParser$ImageType mo3571(InputStream inputStream) {
        return ImageHeaderParser$ImageType.UNKNOWN;
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0018 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:? A[RETURN, SYNTHETIC] */
    @Override // p031.InterfaceC1140
    /* renamed from: ⁱˊ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo3572(java.io.InputStream r1, p257.C3397 r2) {
        /*
            r0 = this;
            ﹳﹳ.ᵎﹶ r2 = new ﹳﹳ.ᵎﹶ
            r2.<init>(r1)
            java.lang.String r1 = "Orientation"
            ﹳﹳ.ʽ r1 = r2.m9864(r1)
            if (r1 != 0) goto Le
            goto L15
        Le:
            java.nio.ByteOrder r2 = r2.f18742     // Catch: java.lang.NumberFormatException -> L15
            int r1 = r1.m9857(r2)     // Catch: java.lang.NumberFormatException -> L15
            goto L16
        L15:
            r1 = 1
        L16:
            if (r1 != 0) goto L19
            r1 = -1
        L19:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: p366.C4477.mo3572(java.io.InputStream, יᐧ.ﾞᴵ):int");
    }

    @Override // p031.InterfaceC1140
    /* renamed from: ﹳٴ */
    public final ImageHeaderParser$ImageType mo3573(ByteBuffer byteBuffer) {
        return ImageHeaderParser$ImageType.UNKNOWN;
    }
}
