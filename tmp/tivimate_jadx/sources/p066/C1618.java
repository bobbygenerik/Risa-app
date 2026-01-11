package p066;

import android.graphics.Bitmap;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import ar.tvplayer.tv.R;
import java.util.ArrayList;
import p087.AbstractC1751;
import p117.InterfaceC1990;
import p399.C4751;
import p399.InterfaceC4748;

/* renamed from: ʾˎ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1618 implements InterfaceC1616 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public Animatable f6449;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final ImageView f6450;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ int f6451;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C1619 f6452;

    public C1618(ImageView imageView, int i) {
        this.f6451 = i;
        AbstractC1751.m4711(imageView, "Argument must not be null");
        this.f6450 = imageView;
        this.f6452 = new C1619(imageView);
    }

    public final String toString() {
        return "Target for: " + this.f6450;
    }

    @Override // p066.InterfaceC1616
    /* renamed from: ʼˎ */
    public final void mo1185(Drawable drawable) {
        C1619 c1619 = this.f6452;
        ViewTreeObserver viewTreeObserver = c1619.f6456.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(c1619.f6454);
        }
        c1619.f6454 = null;
        c1619.f6455.clear();
        Animatable animatable = this.f6449;
        if (animatable != null) {
            animatable.stop();
        }
        m4398(null);
        this.f6449 = null;
        this.f6450.setImageDrawable(drawable);
    }

    @Override // p279.InterfaceC3540
    /* renamed from: ʽ */
    public final void mo1159() {
        Animatable animatable = this.f6449;
        if (animatable != null) {
            animatable.stop();
        }
    }

    @Override // p279.InterfaceC3540
    /* renamed from: ˆʾ */
    public final void mo1160() {
        Animatable animatable = this.f6449;
        if (animatable != null) {
            animatable.start();
        }
    }

    @Override // p066.InterfaceC1616
    /* renamed from: ˈ */
    public final void mo1186(C4751 c4751) {
        this.f6452.f6455.remove(c4751);
    }

    @Override // p066.InterfaceC1616
    /* renamed from: ˑﹳ */
    public final void mo1187(C4751 c4751) {
        C1619 c1619 = this.f6452;
        ArrayList arrayList = c1619.f6455;
        View view = c1619.f6456;
        int paddingRight = view.getPaddingRight() + view.getPaddingLeft();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        int m4399 = c1619.m4399(view.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingRight);
        int paddingBottom = view.getPaddingBottom() + view.getPaddingTop();
        ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
        int m43992 = c1619.m4399(view.getHeight(), layoutParams2 != null ? layoutParams2.height : 0, paddingBottom);
        if ((m4399 > 0 || m4399 == Integer.MIN_VALUE) && (m43992 > 0 || m43992 == Integer.MIN_VALUE)) {
            c4751.m9501(m4399, m43992);
            return;
        }
        if (!arrayList.contains(c4751)) {
            arrayList.add(c4751);
        }
        if (c1619.f6454 == null) {
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            ViewTreeObserverOnPreDrawListenerC1617 viewTreeObserverOnPreDrawListenerC1617 = new ViewTreeObserverOnPreDrawListenerC1617(c1619);
            c1619.f6454 = viewTreeObserverOnPreDrawListenerC1617;
            viewTreeObserver.addOnPreDrawListener(viewTreeObserverOnPreDrawListenerC1617);
        }
    }

    @Override // p279.InterfaceC3540
    /* renamed from: ٴﹶ */
    public final void mo1163() {
    }

    @Override // p066.InterfaceC1616
    /* renamed from: ᵎﹶ */
    public final void mo1188(Drawable drawable) {
        m4398(null);
        this.f6449 = null;
        this.f6450.setImageDrawable(drawable);
    }

    @Override // p066.InterfaceC1616
    /* renamed from: ᵔᵢ */
    public final InterfaceC4748 mo1189() {
        Object tag = this.f6450.getTag(R.id.4ku);
        if (tag == null) {
            return null;
        }
        if (tag instanceof InterfaceC4748) {
            return (InterfaceC4748) tag;
        }
        throw new IllegalArgumentException("You must not call setTag() on a view Glide is targeting");
    }

    @Override // p066.InterfaceC1616
    /* renamed from: ⁱˊ */
    public final void mo1190(Drawable drawable) {
        m4398(null);
        this.f6449 = null;
        this.f6450.setImageDrawable(drawable);
    }

    @Override // p066.InterfaceC1616
    /* renamed from: ﹳٴ */
    public final void mo1191(InterfaceC4748 interfaceC4748) {
        this.f6450.setTag(R.id.4ku, interfaceC4748);
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void m4398(Object obj) {
        switch (this.f6451) {
            case 0:
                this.f6450.setImageBitmap((Bitmap) obj);
                return;
            default:
                this.f6450.setImageDrawable((Drawable) obj);
                return;
        }
    }

    @Override // p066.InterfaceC1616
    /* renamed from: ﾞᴵ */
    public final void mo1192(Object obj, InterfaceC1990 interfaceC1990) {
        if (interfaceC1990 != null && interfaceC1990.mo4971(obj, this)) {
            if (!(obj instanceof Animatable)) {
                this.f6449 = null;
                return;
            }
            Animatable animatable = (Animatable) obj;
            this.f6449 = animatable;
            animatable.start();
            return;
        }
        m4398(obj);
        if (!(obj instanceof Animatable)) {
            this.f6449 = null;
            return;
        }
        Animatable animatable2 = (Animatable) obj;
        this.f6449 = animatable2;
        animatable2.start();
    }
}
