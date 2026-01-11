package p188;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import p083.C1720;

/* renamed from: ˋⁱ.יـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2857 extends AbstractC2858 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C2848 f10735;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final float f10736;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final float f10737;

    public C2857(C2848 c2848, float f, float f2) {
        this.f10735 = c2848;
        this.f10736 = f;
        this.f10737 = f2;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final float m6358() {
        C2848 c2848 = this.f10735;
        return (float) Math.toDegrees(Math.atan((c2848.f10697 - this.f10737) / (c2848.f10698 - this.f10736)));
    }

    @Override // p188.AbstractC2858
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void mo6359(Matrix matrix, C1720 c1720, int i, Canvas canvas) {
        C2848 c2848 = this.f10735;
        float f = c2848.f10697;
        float f2 = this.f10737;
        float f3 = c2848.f10698;
        float f4 = this.f10736;
        RectF rectF = new RectF(0.0f, 0.0f, (float) Math.hypot(f - f2, f3 - f4), 0.0f);
        Matrix matrix2 = this.f10739;
        matrix2.set(matrix);
        matrix2.preTranslate(f4, f2);
        matrix2.preRotate(m6358());
        c1720.getClass();
        rectF.bottom += i;
        rectF.offset(0.0f, -i);
        int i2 = c1720.f7034;
        int[] iArr = C1720.f7023;
        iArr[0] = i2;
        iArr[1] = c1720.f7029;
        iArr[2] = c1720.f7028;
        Paint paint = c1720.f7027;
        float f5 = rectF.left;
        paint.setShader(new LinearGradient(f5, rectF.top, f5, rectF.bottom, iArr, C1720.f7024, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix2);
        canvas.drawRect(rectF, paint);
        canvas.restore();
    }
}
