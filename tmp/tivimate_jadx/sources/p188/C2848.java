package p188;

import android.graphics.Matrix;
import android.graphics.Path;

/* renamed from: ˋⁱ.ʽﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2848 extends AbstractC2842 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public float f10697;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public float f10698;

    @Override // p188.AbstractC2842
    /* renamed from: ﹳٴ */
    public final void mo6313(Matrix matrix, Path path) {
        Matrix matrix2 = this.f10647;
        matrix.invert(matrix2);
        path.transform(matrix2);
        path.lineTo(this.f10698, this.f10697);
        path.transform(matrix);
    }
}
