package p117;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.widget.ImageView;
import p066.C1618;

/* renamed from: ˈʼ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1993 implements InterfaceC1990, InterfaceC1991 {
    @Override // p117.InterfaceC1991
    /* renamed from: ⁱˊ */
    public InterfaceC1990 mo4972(int i) {
        return C1992.f7850;
    }

    @Override // p117.InterfaceC1990
    /* renamed from: ﹳٴ */
    public boolean mo4971(Object obj, C1618 c1618) {
        Drawable drawable = (Drawable) obj;
        ImageView imageView = c1618.f6450;
        Drawable drawable2 = imageView.getDrawable();
        if (drawable2 == null) {
            drawable2 = new ColorDrawable(0);
        }
        TransitionDrawable transitionDrawable = new TransitionDrawable(new Drawable[]{drawable2, drawable});
        transitionDrawable.setCrossFadeEnabled(false);
        transitionDrawable.startTransition(150);
        imageView.setImageDrawable(transitionDrawable);
        return true;
    }
}
