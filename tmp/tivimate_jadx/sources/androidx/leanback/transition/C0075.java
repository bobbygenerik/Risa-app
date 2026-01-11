package androidx.leanback.transition;

import android.view.View;

/* renamed from: androidx.leanback.transition.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0075 extends ʼ.ᵎﹶ {

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final /* synthetic */ int f573;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final float m448(View view) {
        switch (this.f573) {
            case 0:
                return view.getTranslationY() - view.getHeight();
            default:
                return view.getTranslationY() + view.getHeight();
        }
    }
}
