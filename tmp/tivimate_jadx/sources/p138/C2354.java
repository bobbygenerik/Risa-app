package p138;

import android.graphics.Bitmap;
import android.graphics.drawable.AnimatedImageDrawable;
import android.graphics.drawable.Drawable;
import p080.InterfaceC1710;
import p087.AbstractC1746;

/* renamed from: ˉˈ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2354 implements InterfaceC1710 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final AnimatedImageDrawable f9107;

    public C2354(AnimatedImageDrawable animatedImageDrawable) {
        this.f9107 = animatedImageDrawable;
    }

    @Override // p080.InterfaceC1710
    public final Object get() {
        return this.f9107;
    }

    @Override // p080.InterfaceC1710
    /* renamed from: ʽ */
    public final Class mo4403() {
        return Drawable.class;
    }

    @Override // p080.InterfaceC1710
    /* renamed from: ˈ */
    public final void mo4404() {
        this.f9107.stop();
        this.f9107.clearAnimationCallbacks();
    }

    @Override // p080.InterfaceC1710
    /* renamed from: ⁱˊ */
    public final int mo4405() {
        return AbstractC1746.m4699(Bitmap.Config.ARGB_8888) * this.f9107.getIntrinsicHeight() * this.f9107.getIntrinsicWidth() * 2;
    }
}
