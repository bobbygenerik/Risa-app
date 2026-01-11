package p230;

import android.graphics.Matrix;
import android.view.View;

/* renamed from: ˑʿ.ˆﾞ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3153 extends C3176 {
    @Override // p230.C3176, p121.AbstractC2026
    /* renamed from: ʾˋ */
    public final void mo5066(View view, int i) {
        view.setTransitionVisibility(i);
    }

    @Override // p230.C3176
    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public final void mo6947(View view, int i, int i2, int i3, int i4) {
        view.setLeftTopRightBottom(i, i2, i3, i4);
    }

    @Override // p230.C3176
    /* renamed from: ˉـ, reason: contains not printable characters */
    public final void mo6948(View view, Matrix matrix) {
        view.transformMatrixToLocal(matrix);
    }

    @Override // p230.C3176
    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public final void mo6949(View view, Matrix matrix) {
        view.transformMatrixToGlobal(matrix);
    }

    @Override // p121.AbstractC2026
    /* renamed from: ᵔʾ */
    public final float mo5067(View view) {
        return view.getTransitionAlpha();
    }

    @Override // p121.AbstractC2026
    /* renamed from: ᵢˏ */
    public final void mo5068(View view, float f) {
        view.setTransitionAlpha(f);
    }
}
