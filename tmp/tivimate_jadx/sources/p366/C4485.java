package p366;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Paint;
import java.security.MessageDigest;
import p031.InterfaceC1141;
import p257.InterfaceC3396;

/* renamed from: ᵔﹶ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4485 extends AbstractC4471 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final byte[] f16807 = "com.bumptech.glide.load.resource.bitmap.CenterCrop".getBytes(InterfaceC1141.f4403);

    @Override // p031.InterfaceC1141
    public final boolean equals(Object obj) {
        return obj instanceof C4485;
    }

    @Override // p031.InterfaceC1141
    public final int hashCode() {
        return -599754482;
    }

    @Override // p366.AbstractC4471
    /* renamed from: ʽ */
    public final Bitmap mo9025(InterfaceC3396 interfaceC3396, Bitmap bitmap, int i, int i2) {
        float width;
        float height;
        Paint paint = AbstractC4468.f16722;
        if (bitmap.getWidth() == i && bitmap.getHeight() == i2) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        float f = 0.0f;
        if (bitmap.getWidth() * i2 > bitmap.getHeight() * i) {
            width = i2 / bitmap.getHeight();
            f = (i - (bitmap.getWidth() * width)) * 0.5f;
            height = 0.0f;
        } else {
            width = i / bitmap.getWidth();
            height = (i2 - (bitmap.getHeight() * width)) * 0.5f;
        }
        matrix.setScale(width, width);
        matrix.postTranslate((int) (f + 0.5f), (int) (height + 0.5f));
        Bitmap mo7280 = interfaceC3396.mo7280(i, i2, bitmap.getConfig() != null ? bitmap.getConfig() : Bitmap.Config.ARGB_8888);
        mo7280.setHasAlpha(bitmap.hasAlpha());
        AbstractC4468.m9027(bitmap, mo7280, matrix);
        return mo7280;
    }

    @Override // p031.InterfaceC1141
    /* renamed from: ⁱˊ */
    public final void mo3574(MessageDigest messageDigest) {
        messageDigest.update(f16807);
    }
}
