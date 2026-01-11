package p439;

import android.graphics.Rect;
import android.text.method.TransformationMethod;
import android.view.View;
import p275.C3508;

/* renamed from: ﹶᐧ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5184 implements TransformationMethod {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final TransformationMethod f19496;

    public C5184(TransformationMethod transformationMethod) {
        this.f19496 = transformationMethod;
    }

    @Override // android.text.method.TransformationMethod
    public final CharSequence getTransformation(CharSequence charSequence, View view) {
        if (view.isInEditMode()) {
            return charSequence;
        }
        TransformationMethod transformationMethod = this.f19496;
        if (transformationMethod != null) {
            charSequence = transformationMethod.getTransformation(charSequence, view);
        }
        if (charSequence == null || C3508.m7473().m7477() != 1) {
            return charSequence;
        }
        C3508 m7473 = C3508.m7473();
        m7473.getClass();
        return m7473.m7476(charSequence, 0, charSequence.length());
    }

    @Override // android.text.method.TransformationMethod
    public final void onFocusChanged(View view, CharSequence charSequence, boolean z, int i, Rect rect) {
        TransformationMethod transformationMethod = this.f19496;
        if (transformationMethod != null) {
            transformationMethod.onFocusChanged(view, charSequence, z, i, rect);
        }
    }
}
