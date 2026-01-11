package p366;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import p080.InterfaceC1703;
import p080.InterfaceC1710;
import p087.AbstractC1746;
import p087.AbstractC1751;
import p257.InterfaceC3396;

/* renamed from: ᵔﹶ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4465 implements InterfaceC1710, InterfaceC1703 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final Object f16716;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f16717 = 1;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Object f16718;

    public C4465(Resources resources, InterfaceC1710 interfaceC1710) {
        AbstractC1751.m4711(resources, "Argument must not be null");
        this.f16718 = resources;
        AbstractC1751.m4711(interfaceC1710, "Argument must not be null");
        this.f16716 = interfaceC1710;
    }

    public C4465(Bitmap bitmap, InterfaceC3396 interfaceC3396) {
        AbstractC1751.m4711(bitmap, "Bitmap must not be null");
        this.f16718 = bitmap;
        AbstractC1751.m4711(interfaceC3396, "BitmapPool must not be null");
        this.f16716 = interfaceC3396;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static C4465 m9024(Bitmap bitmap, InterfaceC3396 interfaceC3396) {
        if (bitmap == null) {
            return null;
        }
        return new C4465(bitmap, interfaceC3396);
    }

    @Override // p080.InterfaceC1710
    public final Object get() {
        switch (this.f16717) {
            case 0:
                return (Bitmap) this.f16718;
            default:
                return new BitmapDrawable((Resources) this.f16718, (Bitmap) ((InterfaceC1710) this.f16716).get());
        }
    }

    @Override // p080.InterfaceC1710
    /* renamed from: ʽ */
    public final Class mo4403() {
        switch (this.f16717) {
            case 0:
                return Bitmap.class;
            default:
                return BitmapDrawable.class;
        }
    }

    @Override // p080.InterfaceC1710
    /* renamed from: ˈ */
    public final void mo4404() {
        switch (this.f16717) {
            case 0:
                ((InterfaceC3396) this.f16716).mo7284((Bitmap) this.f16718);
                return;
            default:
                ((InterfaceC1710) this.f16716).mo4404();
                return;
        }
    }

    @Override // p080.InterfaceC1710
    /* renamed from: ⁱˊ */
    public final int mo4405() {
        switch (this.f16717) {
            case 0:
                return AbstractC1746.m4698((Bitmap) this.f16718);
            default:
                return ((InterfaceC1710) this.f16716).mo4405();
        }
    }

    @Override // p080.InterfaceC1703
    /* renamed from: ﹳٴ */
    public final void mo4641() {
        switch (this.f16717) {
            case 0:
                ((Bitmap) this.f16718).prepareToDraw();
                return;
            default:
                InterfaceC1710 interfaceC1710 = (InterfaceC1710) this.f16716;
                if (interfaceC1710 instanceof InterfaceC1703) {
                    ((InterfaceC1703) interfaceC1710).mo4641();
                    return;
                }
                return;
        }
    }
}
