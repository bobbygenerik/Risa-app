package p366;

import android.content.Context;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.ComponentCallbacks2C0238;
import java.security.MessageDigest;
import p031.InterfaceC1147;
import p080.InterfaceC1710;
import p257.InterfaceC3396;

/* renamed from: ᵔﹶ.יـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4479 implements InterfaceC1147 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean f16780;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final InterfaceC1147 f16781;

    public C4479(InterfaceC1147 interfaceC1147, boolean z) {
        this.f16781 = interfaceC1147;
        this.f16780 = z;
    }

    @Override // p031.InterfaceC1141
    public final boolean equals(Object obj) {
        if (obj instanceof C4479) {
            return this.f16781.equals(((C4479) obj).f16781);
        }
        return false;
    }

    @Override // p031.InterfaceC1141
    public final int hashCode() {
        return this.f16781.hashCode();
    }

    @Override // p031.InterfaceC1141
    /* renamed from: ⁱˊ */
    public final void mo3574(MessageDigest messageDigest) {
        this.f16781.mo3574(messageDigest);
    }

    @Override // p031.InterfaceC1147
    /* renamed from: ﹳٴ */
    public final InterfaceC1710 mo3579(Context context, InterfaceC1710 interfaceC1710, int i, int i2) {
        InterfaceC3396 interfaceC3396 = ComponentCallbacks2C0238.m1182(context).f1709;
        Drawable drawable = (Drawable) interfaceC1710.get();
        C4465 m9062 = AbstractC4492.m9062(interfaceC3396, drawable, i, i2);
        if (m9062 != null) {
            InterfaceC1710 mo3579 = this.f16781.mo3579(context, m9062, i, i2);
            if (!mo3579.equals(m9062)) {
                return new C4465(context.getResources(), mo3579);
            }
            mo3579.mo4404();
            return interfaceC1710;
        }
        if (!this.f16780) {
            return interfaceC1710;
        }
        throw new IllegalArgumentException("Unable to convert " + drawable + " to a Bitmap");
    }
}
