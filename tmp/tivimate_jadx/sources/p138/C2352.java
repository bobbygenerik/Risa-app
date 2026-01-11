package p138;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.ComponentCallbacks2C0236;
import p080.InterfaceC1703;
import p080.InterfaceC1710;
import p087.AbstractC1751;
import p257.C3397;
import p257.InterfaceC3396;
import p262.C3433;
import p331.C4190;
import p331.C4194;
import p331.C4196;
import p376.C4536;

/* renamed from: ˉˈ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2352 implements InterfaceC1710, InterfaceC1703 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Drawable f9103;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ int f9104;

    public C2352(Drawable drawable, int i) {
        this.f9104 = i;
        AbstractC1751.m4711(drawable, "Argument must not be null");
        this.f9103 = drawable;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    private final void m5438() {
    }

    @Override // p080.InterfaceC1710
    public final Object get() {
        Drawable drawable = this.f9103;
        Drawable.ConstantState constantState = drawable.getConstantState();
        return constantState == null ? drawable : constantState.newDrawable();
    }

    @Override // p080.InterfaceC1710
    /* renamed from: ʽ */
    public final Class mo4403() {
        switch (this.f9104) {
            case 0:
                return this.f9103.getClass();
            default:
                return C4194.class;
        }
    }

    @Override // p080.InterfaceC1710
    /* renamed from: ˈ */
    public final void mo4404() {
        C3397 c3397;
        C3397 c33972;
        C3397 c33973;
        switch (this.f9104) {
            case 0:
                return;
            default:
                C4194 c4194 = (C4194) this.f9103;
                c4194.stop();
                c4194.f15608 = true;
                C4196 c4196 = (C4196) c4194.f15607.f3515;
                ComponentCallbacks2C0236 componentCallbacks2C0236 = c4196.f15627;
                c4196.f15625.clear();
                Bitmap bitmap = c4196.f15637;
                if (bitmap != null) {
                    c4196.f15630.mo7284(bitmap);
                    c4196.f15637 = null;
                }
                c4196.f15638 = false;
                C4190 c4190 = c4196.f15623;
                if (c4190 != null) {
                    componentCallbacks2C0236.m1166(c4190);
                    c4196.f15623 = null;
                }
                C4190 c41902 = c4196.f15631;
                if (c41902 != null) {
                    componentCallbacks2C0236.m1166(c41902);
                    c4196.f15631 = null;
                }
                C4190 c41903 = c4196.f15628;
                if (c41903 != null) {
                    componentCallbacks2C0236.m1166(c41903);
                    c4196.f15628 = null;
                }
                C4536 c4536 = c4196.f15636;
                C3433 c3433 = c4536.f16976;
                c4536.f16992 = null;
                byte[] bArr = c4536.f16974;
                if (bArr != null && (c33973 = (C3397) c3433.f13456) != null) {
                    c33973.m7296(bArr);
                }
                int[] iArr = c4536.f16977;
                if (iArr != null && (c33972 = (C3397) c3433.f13456) != null) {
                    c33972.m7296(iArr);
                }
                Bitmap bitmap2 = c4536.f16979;
                if (bitmap2 != null) {
                    ((InterfaceC3396) c3433.f13458).mo7284(bitmap2);
                }
                c4536.f16979 = null;
                c4536.f16978 = null;
                c4536.f16983 = null;
                byte[] bArr2 = c4536.f16982;
                if (bArr2 != null && (c3397 = (C3397) c3433.f13456) != null) {
                    c3397.m7296(bArr2);
                }
                c4196.f15626 = true;
                return;
        }
    }

    @Override // p080.InterfaceC1710
    /* renamed from: ⁱˊ */
    public final int mo4405() {
        switch (this.f9104) {
            case 0:
                Drawable drawable = this.f9103;
                return Math.max(1, drawable.getIntrinsicHeight() * drawable.getIntrinsicWidth() * 4);
            default:
                C4196 c4196 = (C4196) ((C4194) this.f9103).f15607.f3515;
                C4536 c4536 = c4196.f15636;
                return (c4536.f16977.length * 4) + c4536.f16978.limit() + c4536.f16974.length + c4196.f15633;
        }
    }

    @Override // p080.InterfaceC1703
    /* renamed from: ﹳٴ */
    public void mo4641() {
        switch (this.f9104) {
            case 1:
                ((C4196) ((C4194) this.f9103).f15607.f3515).f15637.prepareToDraw();
                return;
            default:
                Drawable drawable = this.f9103;
                if (drawable instanceof BitmapDrawable) {
                    ((BitmapDrawable) drawable).getBitmap().prepareToDraw();
                    return;
                } else {
                    if (drawable instanceof C4194) {
                        ((C4196) ((C4194) drawable).f15607.f3515).f15637.prepareToDraw();
                        return;
                    }
                    return;
                }
        }
    }
}
