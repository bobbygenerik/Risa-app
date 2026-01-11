package p044;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import p188.C2844;

/* renamed from: ʽˊ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1340 extends C2844 {

    /* renamed from: ـﹶ, reason: contains not printable characters */
    public static final /* synthetic */ int f5176 = 0;

    /* renamed from: ˊᵔ, reason: contains not printable characters */
    public C1335 f5177;

    @Override // p188.C2844, android.graphics.drawable.Drawable
    public final Drawable mutate() {
        this.f5177 = new C1335(this.f5177);
        return this;
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final void m4009(float f, float f2, float f3, float f4) {
        RectF rectF = this.f5177.f5130;
        if (f == rectF.left && f2 == rectF.top && f3 == rectF.right && f4 == rectF.bottom) {
            return;
        }
        rectF.set(f, f2, f3, f4);
        invalidateSelf();
    }
}
