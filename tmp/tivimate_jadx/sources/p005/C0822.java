package p005;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PorterDuff;
import android.graphics.Shader;
import com.google.android.gms.internal.play_billing.ʽﹳ;
import java.util.ArrayList;
import p255.C3359;
import p255.C3368;
import p349.C4287;

/* renamed from: ʻˈ.ˉˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0822 {

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public static final Matrix f3499 = new Matrix();

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public float f3500;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Matrix f3501;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public float f3502;

    /* renamed from: ˈ, reason: contains not printable characters */
    public Paint f3503;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public String f3504;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final C3359 f3505;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public Paint f3506;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public float f3507;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final C0832 f3508;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public Boolean f3509;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public float f3510;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Path f3511;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Path f3512;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public int f3513;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public PathMeasure f3514;

    /* JADX WARN: Type inference failed for: r0v4, types: [יـ.ﹳᐧ, יـ.ˑﹳ] */
    public C0822() {
        this.f3501 = new Matrix();
        this.f3510 = 0.0f;
        this.f3500 = 0.0f;
        this.f3502 = 0.0f;
        this.f3507 = 0.0f;
        this.f3513 = 255;
        this.f3504 = null;
        this.f3509 = null;
        this.f3505 = new C3368(0);
        this.f3508 = new C0832();
        this.f3512 = new Path();
        this.f3511 = new Path();
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [יـ.ﹳᐧ, יـ.ˑﹳ] */
    public C0822(C0822 c0822) {
        this.f3501 = new Matrix();
        this.f3510 = 0.0f;
        this.f3500 = 0.0f;
        this.f3502 = 0.0f;
        this.f3507 = 0.0f;
        this.f3513 = 255;
        this.f3504 = null;
        this.f3509 = null;
        ?? c3368 = new C3368(0);
        this.f3505 = c3368;
        this.f3508 = new C0832(c0822.f3508, c3368);
        this.f3512 = new Path(c0822.f3512);
        this.f3511 = new Path(c0822.f3511);
        this.f3510 = c0822.f3510;
        this.f3500 = c0822.f3500;
        this.f3502 = c0822.f3502;
        this.f3507 = c0822.f3507;
        this.f3513 = c0822.f3513;
        this.f3504 = c0822.f3504;
        String str = c0822.f3504;
        if (str != null) {
            c3368.put(str, this);
        }
        this.f3509 = c0822.f3509;
    }

    public float getAlpha() {
        return getRootAlpha() / 255.0f;
    }

    public int getRootAlpha() {
        return this.f3513;
    }

    public void setAlpha(float f) {
        setRootAlpha((int) (f * 255.0f));
    }

    public void setRootAlpha(int i) {
        this.f3513 = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m2971(C0832 c0832, Matrix matrix, Canvas canvas, int i, int i2) {
        int i3;
        float f;
        int i4;
        float f2;
        Matrix matrix2 = c0832.f3564;
        ArrayList arrayList = c0832.f3563;
        matrix2.set(matrix);
        Matrix matrix3 = c0832.f3564;
        matrix3.preConcat(c0832.f3557);
        canvas.save();
        char c = 0;
        int i5 = 0;
        while (i5 < arrayList.size()) {
            AbstractC0821 abstractC0821 = (AbstractC0821) arrayList.get(i5);
            if (abstractC0821 instanceof C0832) {
                m2971((C0832) abstractC0821, matrix3, canvas, i, i2);
            } else if (abstractC0821 instanceof AbstractC0826) {
                AbstractC0826 abstractC0826 = (AbstractC0826) abstractC0821;
                float f3 = i / this.f3502;
                float f4 = i2 / this.f3507;
                float min = Math.min(f3, f4);
                Matrix matrix4 = this.f3501;
                matrix4.set(matrix3);
                matrix4.postScale(f3, f4);
                float[] fArr = {0.0f, 1.0f, 1.0f, 0.0f};
                matrix3.mapVectors(fArr);
                float hypot = (float) Math.hypot(fArr[c], fArr[1]);
                boolean z = c;
                i3 = i5;
                float hypot2 = (float) Math.hypot(fArr[2], fArr[3]);
                float f5 = (fArr[z ? 1 : 0] * fArr[3]) - (fArr[1] * fArr[2]);
                float max = Math.max(hypot, hypot2);
                float abs = max > 0.0f ? Math.abs(f5) / max : 0.0f;
                if (abs != 0.0f) {
                    Path path = this.f3512;
                    path.reset();
                    C4287[] c4287Arr = abstractC0826.f3531;
                    if (c4287Arr != null) {
                        C4287.m8675(c4287Arr, path);
                    }
                    Path path2 = this.f3511;
                    path2.reset();
                    if (abstractC0826 instanceof C0819) {
                        path2.setFillType(abstractC0826.f3529 == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                        path2.addPath(path, matrix4);
                        canvas.clipPath(path2);
                    } else {
                        C0824 c0824 = (C0824) abstractC0826;
                        float f6 = c0824.f3517;
                        if (f6 != 0.0f || c0824.f3518 != 1.0f) {
                            float f7 = c0824.f3522;
                            float f8 = (f6 + f7) % 1.0f;
                            float f9 = (c0824.f3518 + f7) % 1.0f;
                            if (this.f3514 == null) {
                                this.f3514 = new PathMeasure();
                            }
                            this.f3514.setPath(path, z);
                            float length = this.f3514.getLength();
                            float f10 = f8 * length;
                            float f11 = f9 * length;
                            path.reset();
                            if (f10 > f11) {
                                this.f3514.getSegment(f10, length, path, true);
                                f = 0.0f;
                                this.f3514.getSegment(0.0f, f11, path, true);
                            } else {
                                f = 0.0f;
                                this.f3514.getSegment(f10, f11, path, true);
                            }
                            path.rLineTo(f, f);
                        }
                        path2.addPath(path, matrix4);
                        ʽﹳ r5 = c0824.f3527;
                        if (((Shader) r5.ʽʽ) == null && r5.ᴵˊ == 0) {
                            f2 = 255.0f;
                            i4 = 16777215;
                        } else {
                            if (this.f3506 == null) {
                                i4 = 16777215;
                                Paint paint = new Paint(1);
                                this.f3506 = paint;
                                paint.setStyle(Paint.Style.FILL);
                            } else {
                                i4 = 16777215;
                            }
                            Paint paint2 = this.f3506;
                            Shader shader = (Shader) r5.ʽʽ;
                            if (shader != null) {
                                shader.setLocalMatrix(matrix4);
                                paint2.setShader(shader);
                                paint2.setAlpha(Math.round(c0824.f3525 * 255.0f));
                                f2 = 255.0f;
                            } else {
                                paint2.setShader(null);
                                paint2.setAlpha(255);
                                int i6 = r5.ᴵˊ;
                                float f12 = c0824.f3525;
                                PorterDuff.Mode mode = C0831.f3546;
                                f2 = 255.0f;
                                paint2.setColor((i6 & i4) | (((int) (Color.alpha(i6) * f12)) << 24));
                            }
                            paint2.setColorFilter(null);
                            path2.setFillType(c0824.f3529 == 0 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD);
                            canvas.drawPath(path2, paint2);
                        }
                        ʽﹳ r52 = c0824.f3519;
                        if (((Shader) r52.ʽʽ) != null || r52.ᴵˊ != 0) {
                            if (this.f3503 == null) {
                                Paint paint3 = new Paint(1);
                                this.f3503 = paint3;
                                paint3.setStyle(Paint.Style.STROKE);
                            }
                            Paint paint4 = this.f3503;
                            Paint.Join join = c0824.f3520;
                            if (join != null) {
                                paint4.setStrokeJoin(join);
                            }
                            Paint.Cap cap = c0824.f3526;
                            if (cap != null) {
                                paint4.setStrokeCap(cap);
                            }
                            paint4.setStrokeMiter(c0824.f3524);
                            Shader shader2 = (Shader) r52.ʽʽ;
                            if (shader2 != null) {
                                shader2.setLocalMatrix(matrix4);
                                paint4.setShader(shader2);
                                paint4.setAlpha(Math.round(c0824.f3523 * f2));
                            } else {
                                paint4.setShader(null);
                                paint4.setAlpha(255);
                                int i7 = r52.ᴵˊ;
                                float f13 = c0824.f3523;
                                PorterDuff.Mode mode2 = C0831.f3546;
                                paint4.setColor((i7 & i4) | (((int) (Color.alpha(i7) * f13)) << 24));
                            }
                            paint4.setColorFilter(null);
                            paint4.setStrokeWidth(c0824.f3521 * min * abs);
                            canvas.drawPath(path2, paint4);
                        }
                    }
                }
                i5 = i3 + 1;
                c = 0;
            }
            i3 = i5;
            i5 = i3 + 1;
            c = 0;
        }
        canvas.restore();
    }
}
