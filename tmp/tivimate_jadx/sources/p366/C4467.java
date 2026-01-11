package p366;

import android.graphics.Bitmap;
import java.security.MessageDigest;
import p031.InterfaceC1141;
import p257.InterfaceC3396;

/* renamed from: ᵔﹶ.ʽﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4467 extends AbstractC4471 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final byte[] f16720 = "com.bumptech.glide.load.resource.bitmap.FitCenter".getBytes(InterfaceC1141.f4403);

    @Override // p031.InterfaceC1141
    public final boolean equals(Object obj) {
        return obj instanceof C4467;
    }

    @Override // p031.InterfaceC1141
    public final int hashCode() {
        return 1572326941;
    }

    @Override // p366.AbstractC4471
    /* renamed from: ʽ, reason: contains not printable characters */
    public final Bitmap mo9025(InterfaceC3396 interfaceC3396, Bitmap bitmap, int i, int i2) {
        return AbstractC4468.m9026(interfaceC3396, bitmap, i, i2);
    }

    @Override // p031.InterfaceC1141
    /* renamed from: ⁱˊ */
    public final void mo3574(MessageDigest messageDigest) {
        messageDigest.update(f16720);
    }
}
