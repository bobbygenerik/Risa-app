package p188;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import p083.C1720;

/* renamed from: ˋⁱ.ﹳᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2868 extends AbstractC2858 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C2855 f10780;

    public C2868(C2855 c2855) {
        this.f10780 = c2855;
    }

    @Override // p188.AbstractC2858
    /* renamed from: ﹳٴ */
    public final void mo6359(Matrix matrix, C1720 c1720, int i, Canvas canvas) {
        float f;
        C2855 c2855 = this.f10780;
        float f2 = c2855.f10734;
        float f3 = c2855.f10732;
        RectF rectF = new RectF(c2855.f10733, c2855.f10729, c2855.f10730, c2855.f10731);
        Paint paint = c1720.f7032;
        boolean z = f3 < 0.0f;
        Path path = c1720.f7030;
        int[] iArr = C1720.f7025;
        if (z) {
            iArr[0] = 0;
            iArr[1] = c1720.f7034;
            iArr[2] = c1720.f7029;
            iArr[3] = c1720.f7028;
            f = 0.0f;
        } else {
            path.rewind();
            f = 0.0f;
            path.moveTo(rectF.centerX(), rectF.centerY());
            path.arcTo(rectF, f2, f3);
            path.close();
            float f4 = -i;
            rectF.inset(f4, f4);
            iArr[0] = 0;
            iArr[1] = c1720.f7028;
            iArr[2] = c1720.f7029;
            iArr[3] = c1720.f7034;
        }
        float width = rectF.width() / 2.0f;
        if (width <= f) {
            return;
        }
        float f5 = 1.0f - (i / width);
        float[] fArr = C1720.f7026;
        fArr[1] = f5;
        fArr[2] = ((1.0f - f5) / 2.0f) + f5;
        paint.setShader(new RadialGradient(rectF.centerX(), rectF.centerY(), width, iArr, fArr, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix);
        canvas.scale(1.0f, rectF.height() / rectF.width());
        if (!z) {
            canvas.clipPath(path, Region.Op.DIFFERENCE);
            canvas.drawPath(path, c1720.f7031);
        }
        canvas.drawArc(rectF, f2, f3, true, paint);
        canvas.restore();
    }
}
