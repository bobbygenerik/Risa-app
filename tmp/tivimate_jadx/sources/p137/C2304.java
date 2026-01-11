package p137;

import android.content.Context;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.appcompat.widget.Toolbar;
import java.util.ArrayList;
import p136.InterfaceC2227;
import p353.C4322;
import p353.C4329;
import p353.InterfaceC4309;
import p353.MenuC4312;
import p353.SubMenuC4310;

/* renamed from: ˉˆ.ٴʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2304 implements InterfaceC4309 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ Toolbar f8994;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public MenuC4312 f8995;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public C4329 f8996;

    public C2304(Toolbar toolbar) {
        this.f8994 = toolbar;
    }

    @Override // p353.InterfaceC4309
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void mo5352(Context context, MenuC4312 menuC4312) {
        C4329 c4329;
        MenuC4312 menuC43122 = this.f8995;
        if (menuC43122 != null && (c4329 = this.f8996) != null) {
            menuC43122.mo8713(c4329);
        }
        this.f8995 = menuC4312;
    }

    @Override // p353.InterfaceC4309
    /* renamed from: ʽ, reason: contains not printable characters */
    public final void mo5353(MenuC4312 menuC4312, boolean z) {
    }

    @Override // p353.InterfaceC4309
    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final boolean mo5354() {
        return false;
    }

    @Override // p353.InterfaceC4309
    /* renamed from: ˈ, reason: contains not printable characters */
    public final void mo5355() {
        if (this.f8996 != null) {
            MenuC4312 menuC4312 = this.f8995;
            if (menuC4312 != null) {
                int size = menuC4312.f15973.size();
                for (int i = 0; i < size; i++) {
                    if (this.f8995.getItem(i) == this.f8996) {
                        return;
                    }
                }
            }
            mo5356(this.f8996);
        }
    }

    @Override // p353.InterfaceC4309
    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final boolean mo5356(C4329 c4329) {
        Toolbar toolbar = this.f8994;
        KeyEvent.Callback callback = toolbar.f241;
        if (callback instanceof InterfaceC2227) {
            ((C4322) ((InterfaceC2227) callback)).f16027.onActionViewCollapsed();
        }
        toolbar.removeView(toolbar.f241);
        toolbar.removeView(toolbar.f218);
        toolbar.f241 = null;
        ArrayList arrayList = toolbar.f234;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            toolbar.addView((View) arrayList.get(size));
        }
        arrayList.clear();
        this.f8996 = null;
        toolbar.requestLayout();
        c4329.f16072 = false;
        c4329.f16087.m8722(false);
        toolbar.m73();
        return true;
    }

    @Override // p353.InterfaceC4309
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final boolean mo5357(SubMenuC4310 subMenuC4310) {
        return false;
    }

    @Override // p353.InterfaceC4309
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean mo5358(C4329 c4329) {
        Toolbar toolbar = this.f8994;
        toolbar.m68();
        ViewParent parent = toolbar.f218.getParent();
        if (parent != toolbar) {
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(toolbar.f218);
            }
            toolbar.addView(toolbar.f218);
        }
        View actionView = c4329.getActionView();
        toolbar.f241 = actionView;
        this.f8996 = c4329;
        ViewParent parent2 = actionView.getParent();
        if (parent2 != toolbar) {
            if (parent2 instanceof ViewGroup) {
                ((ViewGroup) parent2).removeView(toolbar.f241);
            }
            C2348 m65 = Toolbar.m65();
            m65.f9098 = (toolbar.f243 & 112) | 8388611;
            m65.f9097 = 2;
            toolbar.f241.setLayoutParams(m65);
            toolbar.addView(toolbar.f241);
        }
        for (int childCount = toolbar.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = toolbar.getChildAt(childCount);
            if (((C2348) childAt.getLayoutParams()).f9097 != 2 && childAt != toolbar.f209) {
                toolbar.removeViewAt(childCount);
                toolbar.f234.add(childAt);
            }
        }
        toolbar.requestLayout();
        c4329.f16072 = true;
        c4329.f16087.m8722(false);
        KeyEvent.Callback callback = toolbar.f241;
        if (callback instanceof InterfaceC2227) {
            ((C4322) ((InterfaceC2227) callback)).f16027.onActionViewExpanded();
        }
        toolbar.m73();
        return true;
    }
}
