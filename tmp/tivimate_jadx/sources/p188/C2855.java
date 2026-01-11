package p188;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;

/* renamed from: ˋⁱ.ˏי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2855 extends AbstractC2842 {

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static final RectF f10728 = new RectF();

    /* renamed from: ʽ, reason: contains not printable characters */
    public final float f10729;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final float f10730;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final float f10731;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public float f10732;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final float f10733;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public float f10734;

    public C2855(float f, float f2, float f3, float f4) {
        this.f10733 = f;
        this.f10729 = f2;
        this.f10730 = f3;
        this.f10731 = f4;
    }

    @Override // p188.AbstractC2842
    /* renamed from: ﹳٴ */
    public final void mo6313(Matrix matrix, Path path) {
        Matrix matrix2 = this.f10647;
        matrix.invert(matrix2);
        path.transform(matrix2);
        float f = this.f10730;
        float f2 = this.f10731;
        RectF rectF = f10728;
        rectF.set(this.f10733, this.f10729, f, f2);
        path.arcTo(rectF, this.f10734, this.f10732, false);
        path.transform(matrix);
    }
}
