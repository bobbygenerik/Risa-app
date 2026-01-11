package p199;

import com.bumptech.glide.load.data.InterfaceC0222;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import p031.InterfaceC1148;

/* renamed from: ˎˈ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2904 implements InterfaceC0222, InterfaceC1148 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final ByteBuffer f10942;

    public C2904() {
        this.f10942 = ByteBuffer.allocate(4);
    }

    public C2904(ByteBuffer byteBuffer) {
        this.f10942 = byteBuffer;
    }

    @Override // p031.InterfaceC1148
    /* renamed from: ˈ */
    public void mo3580(byte[] bArr, Object obj, MessageDigest messageDigest) {
        Integer num = (Integer) obj;
        if (num == null) {
            return;
        }
        messageDigest.update(bArr);
        synchronized (this.f10942) {
            this.f10942.position(0);
            messageDigest.update(this.f10942.putInt(num.intValue()).array());
        }
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0222
    /* renamed from: ⁱˊ */
    public void mo1105() {
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0222
    /* renamed from: ﹳٴ */
    public Object mo1106() {
        ByteBuffer byteBuffer = this.f10942;
        byteBuffer.position(0);
        return byteBuffer;
    }
}
