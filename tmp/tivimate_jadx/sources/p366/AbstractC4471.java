package p366;

import android.content.Context;
import android.graphics.Bitmap;
import com.bumptech.glide.ComponentCallbacks2C0238;
import p031.InterfaceC1147;
import p080.InterfaceC1710;
import p087.AbstractC1746;
import p257.InterfaceC3396;
import p411.AbstractC4892;

/* renamed from: ᵔﹶ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4471 implements InterfaceC1147 {
    /* renamed from: ʽ */
    public abstract Bitmap mo9025(InterfaceC3396 interfaceC3396, Bitmap bitmap, int i, int i2);

    @Override // p031.InterfaceC1147
    /* renamed from: ﹳٴ */
    public final InterfaceC1710 mo3579(Context context, InterfaceC1710 interfaceC1710, int i, int i2) {
        if (!AbstractC1746.m4697(i, i2)) {
            throw new IllegalArgumentException(AbstractC4892.m9681("Cannot apply transformation on width: ", i, " or height: ", i2, " less than or equal to zero and not Target.SIZE_ORIGINAL"));
        }
        InterfaceC3396 interfaceC3396 = ComponentCallbacks2C0238.m1182(context).f1709;
        Bitmap bitmap = (Bitmap) interfaceC1710.get();
        if (i == Integer.MIN_VALUE) {
            i = bitmap.getWidth();
        }
        if (i2 == Integer.MIN_VALUE) {
            i2 = bitmap.getHeight();
        }
        Bitmap mo9025 = mo9025(interfaceC3396, bitmap, i, i2);
        return bitmap.equals(mo9025) ? interfaceC1710 : C4465.m9024(mo9025, interfaceC3396);
    }
}
