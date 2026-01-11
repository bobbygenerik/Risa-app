package p331;

import android.content.Context;
import android.graphics.Bitmap;
import com.bumptech.glide.ComponentCallbacks2C0238;
import java.security.MessageDigest;
import p031.InterfaceC1147;
import p080.InterfaceC1710;
import p087.AbstractC1751;
import p366.C4465;

/* renamed from: ᴵﹶ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4189 implements InterfaceC1147 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final InterfaceC1147 f15593;

    public C4189(InterfaceC1147 interfaceC1147) {
        AbstractC1751.m4711(interfaceC1147, "Argument must not be null");
        this.f15593 = interfaceC1147;
    }

    @Override // p031.InterfaceC1141
    public final boolean equals(Object obj) {
        if (obj instanceof C4189) {
            return this.f15593.equals(((C4189) obj).f15593);
        }
        return false;
    }

    @Override // p031.InterfaceC1141
    public final int hashCode() {
        return this.f15593.hashCode();
    }

    @Override // p031.InterfaceC1141
    /* renamed from: ⁱˊ */
    public final void mo3574(MessageDigest messageDigest) {
        this.f15593.mo3574(messageDigest);
    }

    @Override // p031.InterfaceC1147
    /* renamed from: ﹳٴ */
    public final InterfaceC1710 mo3579(Context context, InterfaceC1710 interfaceC1710, int i, int i2) {
        C4194 c4194 = (C4194) interfaceC1710.get();
        InterfaceC1710 c4465 = new C4465(((C4196) c4194.f15607.f3515).f15637, ComponentCallbacks2C0238.m1182(context).f1709);
        InterfaceC1147 interfaceC1147 = this.f15593;
        InterfaceC1710 mo3579 = interfaceC1147.mo3579(context, c4465, i, i2);
        if (!c4465.equals(mo3579)) {
            c4465.mo4404();
        }
        ((C4196) c4194.f15607.f3515).m8585(interfaceC1147, (Bitmap) mo3579.get());
        return interfaceC1710;
    }
}
