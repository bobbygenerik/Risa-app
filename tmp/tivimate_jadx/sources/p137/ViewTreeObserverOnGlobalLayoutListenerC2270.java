package p137;

import android.view.View;
import android.view.ViewTreeObserver;
import java.util.ArrayList;
import p353.C4308;
import p353.ViewOnKeyListenerC4313;
import p353.ViewOnKeyListenerC4325;

/* renamed from: ˉˆ.ˉٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ViewTreeObserverOnGlobalLayoutListenerC2270 implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f8889;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f8890;

    public /* synthetic */ ViewTreeObserverOnGlobalLayoutListenerC2270(int i, Object obj) {
        this.f8889 = i;
        this.f8890 = obj;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        switch (this.f8889) {
            case 0:
                C2290 c2290 = (C2290) this.f8890;
                if (!c2290.getInternalPopup().mo5297()) {
                    c2290.f8965.mo5287(c2290.getTextDirection(), c2290.getTextAlignment());
                }
                ViewTreeObserver viewTreeObserver = c2290.getViewTreeObserver();
                if (viewTreeObserver != null) {
                    viewTreeObserver.removeOnGlobalLayoutListener(this);
                    return;
                }
                return;
            case 1:
                C2260 c2260 = (C2260) this.f8890;
                C2290 c22902 = c2260.f8877;
                c2260.getClass();
                if (!c22902.isAttachedToWindow() || !c22902.getGlobalVisibleRect(c2260.f8874)) {
                    c2260.dismiss();
                    return;
                } else {
                    c2260.m5289();
                    c2260.mo5273();
                    return;
                }
            case 2:
                ViewOnKeyListenerC4313 viewOnKeyListenerC4313 = (ViewOnKeyListenerC4313) this.f8890;
                ArrayList arrayList = viewOnKeyListenerC4313.f15996;
                if (!viewOnKeyListenerC4313.mo5277() || arrayList.size() <= 0) {
                    return;
                }
                int i = 0;
                if (((C4308) arrayList.get(0)).f15945.f8834) {
                    return;
                }
                View view = viewOnKeyListenerC4313.f15987;
                if (view == null || !view.isShown()) {
                    viewOnKeyListenerC4313.dismiss();
                    return;
                }
                int size = arrayList.size();
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    ((C4308) obj).f15945.mo5273();
                }
                return;
            default:
                ViewOnKeyListenerC4325 viewOnKeyListenerC4325 = (ViewOnKeyListenerC4325) this.f8890;
                C2301 c2301 = viewOnKeyListenerC4325.f16046;
                if (!viewOnKeyListenerC4325.mo5277() || c2301.f8834) {
                    return;
                }
                View view2 = viewOnKeyListenerC4325.f16048;
                if (view2 == null || !view2.isShown()) {
                    viewOnKeyListenerC4325.dismiss();
                    return;
                } else {
                    c2301.mo5273();
                    return;
                }
        }
    }
}
