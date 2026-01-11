package p312;

import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import ar.tvplayer.tv.base.ui.view.CustomHorizontalGridView;
import ar.tvplayer.tv.player.ui.CustomPlayerControlView;
import com.google.android.material.carousel.CarouselLayoutManager;
import p283.RunnableC3568;
import ʿˋ.ˉʿ;
import ʿˋ.ˋᵔ;
import ـˈ.ᵎﹶ;
import ᵔʻ.ˈـ;
import ᵔˋ.ˊʻ;

/* renamed from: ᐧⁱ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class ViewOnLayoutChangeListenerC3876 implements View.OnLayoutChangeListener {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f15094;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f15095;

    public /* synthetic */ ViewOnLayoutChangeListenerC3876(int i, Object obj) {
        this.f15095 = i;
        this.f15094 = obj;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        int height;
        int height2;
        switch (this.f15095) {
            case 0:
                C3860 c3860 = (C3860) this.f15094;
                int i9 = c3860.f14980;
                PopupWindow popupWindow = c3860.f14984;
                int i10 = i4 - i2;
                int i11 = i8 - i6;
                if (!(i3 - i == i7 - i5 && i10 == i11) && popupWindow.isShowing()) {
                    c3860.m8048();
                    popupWindow.update(view, (c3860.getWidth() - popupWindow.getWidth()) - i9, (-popupWindow.getHeight()) - i9, -1, -1);
                    return;
                }
                return;
            case 1:
                C3840 c3840 = (C3840) this.f15094;
                C3860 c38602 = c3840.f14874;
                int width = (c38602.getWidth() - c38602.getPaddingLeft()) - c38602.getPaddingRight();
                int height3 = (c38602.getHeight() - c38602.getPaddingBottom()) - c38602.getPaddingTop();
                ViewGroup viewGroup = c3840.f14853;
                int m8001 = C3840.m8001(viewGroup) - (viewGroup != null ? viewGroup.getPaddingRight() + viewGroup.getPaddingLeft() : 0);
                if (viewGroup == null) {
                    height = 0;
                } else {
                    height = viewGroup.getHeight();
                    ViewGroup.LayoutParams layoutParams = viewGroup.getLayoutParams();
                    if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                        height += marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
                    }
                }
                int paddingBottom = height - (viewGroup != null ? viewGroup.getPaddingBottom() + viewGroup.getPaddingTop() : 0);
                int max = Math.max(m8001, C3840.m8001(c3840.f14866) + C3840.m8001(c3840.f14851));
                ViewGroup viewGroup2 = c3840.f14859;
                if (viewGroup2 == null) {
                    height2 = 0;
                } else {
                    height2 = viewGroup2.getHeight();
                    ViewGroup.LayoutParams layoutParams2 = viewGroup2.getLayoutParams();
                    if (layoutParams2 instanceof ViewGroup.MarginLayoutParams) {
                        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams2;
                        height2 += marginLayoutParams2.topMargin + marginLayoutParams2.bottomMargin;
                    }
                }
                boolean z = width <= max || height3 <= (height2 * 2) + paddingBottom;
                if (c3840.f14856 != z) {
                    c3840.f14856 = z;
                    view.post(new RunnableC3846(c3840, 1));
                }
                boolean z2 = i3 - i != i7 - i5;
                if (c3840.f14856 || !z2) {
                    return;
                }
                view.post(new RunnableC3846(c3840, 2));
                return;
            case 2:
                ˈـ r6 = (ˈـ) this.f15094;
                int i12 = ˉʿ.ᴵᵔ(r6.m6779()) - (r6.ᵢי ? r6.ʼﾞ().ʽ.ˈ : r6.ʼﾞ == 6 ? (CustomHorizontalGridView) r6.ʼﾞ().ʽ.ﾞᴵ : r6.ﹳᵎ() ? (CustomPlayerControlView) r6.ʼﾞ().ʽ.ʼˎ : ((ᵎﹶ) r6.ʼﾞ().ʽ.ᵔᵢ).ﹳٴ).getTop();
                if (Math.abs(i12 - (r6.ʼﾞ().ˈ.getCurrentView() == ((LinearLayout) r6.ʼﾞ().ˑﹳ.ⁱˊ) ? r6.ʼﾞ().ˑﹳ : r6.ʼﾞ().ﾞᴵ).ʽ.getLayoutParams().height) / i12 > 0.2d) {
                    ˋᵔ.ˈⁱ((r6.ʼﾞ().ˈ.getNextView() == ((LinearLayout) r6.ʼﾞ().ˑﹳ.ⁱˊ) ? r6.ʼﾞ().ˑﹳ : r6.ʼﾞ().ﾞᴵ).ʽ, (Integer) null, Integer.valueOf(i12), 1);
                    long j = r6.ˆʻ ? 250L : 0L;
                    r6.ʼﾞ().ˈ.getInAnimation().setDuration(j);
                    r6.ʼﾞ().ˈ.getOutAnimation().setDuration(j);
                    r6.ʼﾞ().ˈ.showNext();
                }
                r6.ˆʻ = false;
                return;
            case 3:
                ((ˊʻ) this.f15094).ʾᵎ();
                return;
            default:
                CarouselLayoutManager carouselLayoutManager = (CarouselLayoutManager) this.f15094;
                if (i3 - i == i7 - i5 && i4 - i2 == i8 - i6) {
                    return;
                }
                view.post(new RunnableC3568(17, carouselLayoutManager));
                return;
        }
    }
}
