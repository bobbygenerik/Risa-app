package p448;

import android.graphics.Rect;
import android.text.method.TransformationMethod;
import android.view.View;
import java.util.Locale;

/* renamed from: ﾞʻ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5358 implements TransformationMethod {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public Locale f20393;

    @Override // android.text.method.TransformationMethod
    public final CharSequence getTransformation(CharSequence charSequence, View view) {
        if (charSequence != null) {
            return charSequence.toString().toUpperCase(this.f20393);
        }
        return null;
    }

    @Override // android.text.method.TransformationMethod
    public final void onFocusChanged(View view, CharSequence charSequence, boolean z, int i, Rect rect) {
    }
}
