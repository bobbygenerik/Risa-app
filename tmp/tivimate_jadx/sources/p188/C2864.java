package p188;

import android.graphics.Canvas;
import android.graphics.Matrix;
import java.util.ArrayList;
import p083.C1720;

/* renamed from: ˋⁱ.ᵔﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2864 extends AbstractC2858 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ ArrayList f10771;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final /* synthetic */ Matrix f10772;

    public C2864(ArrayList arrayList, Matrix matrix) {
        this.f10771 = arrayList;
        this.f10772 = matrix;
    }

    @Override // p188.AbstractC2858
    /* renamed from: ﹳٴ */
    public final void mo6359(Matrix matrix, C1720 c1720, int i, Canvas canvas) {
        ArrayList arrayList = this.f10771;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            ((AbstractC2858) obj).mo6359(this.f10772, c1720, i, canvas);
        }
    }
}
