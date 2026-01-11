package p068;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import java.io.File;
import p031.C1144;
import p031.InterfaceC1139;
import p080.InterfaceC1710;
import p138.C2352;

/* renamed from: ʾˑ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1622 implements InterfaceC1139 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f6468;

    public /* synthetic */ C1622(int i) {
        this.f6468 = i;
    }

    @Override // p031.InterfaceC1139
    /* renamed from: ⁱˊ */
    public final InterfaceC1710 mo3568(Object obj, int i, int i2, C1144 c1144) {
        switch (this.f6468) {
            case 0:
                return new C1621((File) obj);
            case 1:
                Drawable drawable = (Drawable) obj;
                if (drawable != null) {
                    return new C2352(drawable, 0);
                }
                return null;
            default:
                return new C1621((Bitmap) obj);
        }
    }

    @Override // p031.InterfaceC1139
    /* renamed from: ﹳٴ */
    public final /* bridge */ /* synthetic */ boolean mo3569(Object obj, C1144 c1144) {
        switch (this.f6468) {
            case 0:
                return true;
            case 1:
                return true;
            default:
                return true;
        }
    }
}
