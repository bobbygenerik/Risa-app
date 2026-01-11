package p137;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.SparseBooleanArray;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.widget.ActionMenuView;
import ar.tvplayer.tv.R;
import java.util.ArrayList;
import p353.AbstractC4328;
import p353.ActionProviderVisibilityListenerC4314;
import p353.C4329;
import p353.InterfaceC4304;
import p353.InterfaceC4309;
import p353.InterfaceC4316;
import p353.InterfaceC4319;
import p353.MenuC4312;
import p353.SubMenuC4310;
import ﹳי.ʽ;

/* renamed from: ˉˆ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2308 implements InterfaceC4309 {

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public C2349 f9002;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public MenuC4312 f9003;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Context f9004;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public boolean f9005;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public int f9006;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final LayoutInflater f9007;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public C2322 f9008;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public InterfaceC4319 f9009;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public boolean f9012;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public int f9013;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public C2349 f9014;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public Drawable f9015;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public Context f9017;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public InterfaceC4316 f9019;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public boolean f9020;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public C2256 f9021;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public boolean f9022;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public int f9023;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public RunnableC2326 f9024;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final int f9010 = R.layout.518;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final int f9016 = R.layout.4pr;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public final SparseBooleanArray f9011 = new SparseBooleanArray();

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public final ʽ f9018 = new ʽ(this);

    public C2308(Context context) {
        this.f9004 = context;
        this.f9007 = LayoutInflater.from(context);
    }

    @Override // p353.InterfaceC4309
    /* renamed from: ʼˎ */
    public final void mo5352(Context context, MenuC4312 menuC4312) {
        this.f9017 = context;
        LayoutInflater.from(context);
        this.f9003 = menuC4312;
        Resources resources = context.getResources();
        if (!this.f9005) {
            this.f9022 = true;
        }
        int i = 2;
        this.f9023 = context.getResources().getDisplayMetrics().widthPixels / 2;
        Configuration configuration = context.getResources().getConfiguration();
        int i2 = configuration.screenWidthDp;
        int i3 = configuration.screenHeightDp;
        if (configuration.smallestScreenWidthDp > 600 || i2 > 600 || ((i2 > 960 && i3 > 720) || (i2 > 720 && i3 > 960))) {
            i = 5;
        } else if (i2 >= 500 || ((i2 > 640 && i3 > 480) || (i2 > 480 && i3 > 640))) {
            i = 4;
        } else if (i2 >= 360) {
            i = 3;
        }
        this.f9013 = i;
        int i4 = this.f9023;
        if (this.f9022) {
            if (this.f9021 == null) {
                C2256 c2256 = new C2256(this, this.f9004);
                this.f9021 = c2256;
                if (this.f9020) {
                    c2256.setImageDrawable(this.f9015);
                    this.f9015 = null;
                    this.f9020 = false;
                }
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.f9021.measure(makeMeasureSpec, makeMeasureSpec);
            }
            i4 -= this.f9021.getMeasuredWidth();
        } else {
            this.f9021 = null;
        }
        this.f9006 = i4;
        float f = resources.getDisplayMetrics().density;
    }

    @Override // p353.InterfaceC4309
    /* renamed from: ʽ */
    public final void mo5353(MenuC4312 menuC4312, boolean z) {
        m5389();
        C2349 c2349 = this.f9014;
        if (c2349 != null && c2349.m8749()) {
            c2349.f16008.dismiss();
        }
        InterfaceC4316 interfaceC4316 = this.f9019;
        if (interfaceC4316 != null) {
            interfaceC4316.mo8744(menuC4312, z);
        }
    }

    @Override // p353.InterfaceC4309
    /* renamed from: ˆʾ */
    public final boolean mo5354() {
        int i;
        ArrayList arrayList;
        int i2;
        boolean z;
        C2308 c2308 = this;
        MenuC4312 menuC4312 = c2308.f9003;
        if (menuC4312 != null) {
            arrayList = menuC4312.m8734();
            i = arrayList.size();
        } else {
            i = 0;
            arrayList = null;
        }
        int i3 = c2308.f9013;
        int i4 = c2308.f9006;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) c2308.f9009;
        int i5 = 0;
        boolean z2 = false;
        int i6 = 0;
        int i7 = 0;
        while (true) {
            i2 = 2;
            z = true;
            if (i5 >= i) {
                break;
            }
            C4329 c4329 = (C4329) arrayList.get(i5);
            int i8 = c4329.f16068;
            if ((i8 & 2) == 2) {
                i6++;
            } else if ((i8 & 1) == 1) {
                i7++;
            } else {
                z2 = true;
            }
            if (c2308.f9012 && c4329.f16072) {
                i3 = 0;
            }
            i5++;
        }
        if (c2308.f9022 && (z2 || i7 + i6 > i3)) {
            i3--;
        }
        int i9 = i3 - i6;
        SparseBooleanArray sparseBooleanArray = c2308.f9011;
        sparseBooleanArray.clear();
        int i10 = 0;
        int i11 = 0;
        while (i10 < i) {
            C4329 c43292 = (C4329) arrayList.get(i10);
            int i12 = c43292.f16068;
            boolean z3 = (i12 & 2) == i2 ? z : false;
            int i13 = c43292.f16091;
            if (z3) {
                View m5391 = c2308.m5391(c43292, null, viewGroup);
                m5391.measure(makeMeasureSpec, makeMeasureSpec);
                int measuredWidth = m5391.getMeasuredWidth();
                i4 -= measuredWidth;
                if (i11 == 0) {
                    i11 = measuredWidth;
                }
                if (i13 != 0) {
                    sparseBooleanArray.put(i13, z);
                }
                c43292.m8758(z);
            } else if ((i12 & 1) == z) {
                boolean z4 = sparseBooleanArray.get(i13);
                boolean z5 = ((i9 > 0 || z4) && i4 > 0) ? z : false;
                if (z5) {
                    View m53912 = c2308.m5391(c43292, null, viewGroup);
                    m53912.measure(makeMeasureSpec, makeMeasureSpec);
                    int measuredWidth2 = m53912.getMeasuredWidth();
                    i4 -= measuredWidth2;
                    if (i11 == 0) {
                        i11 = measuredWidth2;
                    }
                    z5 &= i4 + i11 > 0;
                }
                if (z5 && i13 != 0) {
                    sparseBooleanArray.put(i13, true);
                } else if (z4) {
                    sparseBooleanArray.put(i13, false);
                    for (int i14 = 0; i14 < i10; i14++) {
                        C4329 c43293 = (C4329) arrayList.get(i14);
                        if (c43293.f16091 == i13) {
                            if ((c43293.f16075 & 32) == 32) {
                                i9++;
                            }
                            c43293.m8758(false);
                        }
                    }
                }
                if (z5) {
                    i9--;
                }
                c43292.m8758(z5);
            } else {
                c43292.m8758(false);
                i10++;
                i2 = 2;
                c2308 = this;
                z = true;
            }
            i10++;
            i2 = 2;
            c2308 = this;
            z = true;
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p353.InterfaceC4309
    /* renamed from: ˈ */
    public final void mo5355() {
        int i;
        ViewGroup viewGroup = (ViewGroup) this.f9009;
        ArrayList arrayList = null;
        boolean z = false;
        if (viewGroup != null) {
            MenuC4312 menuC4312 = this.f9003;
            if (menuC4312 != null) {
                menuC4312.m8721();
                ArrayList m8734 = this.f9003.m8734();
                int size = m8734.size();
                i = 0;
                for (int i2 = 0; i2 < size; i2++) {
                    C4329 c4329 = (C4329) m8734.get(i2);
                    if ((c4329.f16075 & 32) == 32) {
                        View childAt = viewGroup.getChildAt(i);
                        C4329 itemData = childAt instanceof InterfaceC4304 ? ((InterfaceC4304) childAt).getItemData() : null;
                        View m5391 = m5391(c4329, childAt, viewGroup);
                        if (c4329 != itemData) {
                            m5391.setPressed(false);
                            m5391.jumpDrawablesToCurrentState();
                        }
                        if (m5391 != childAt) {
                            ViewGroup viewGroup2 = (ViewGroup) m5391.getParent();
                            if (viewGroup2 != null) {
                                viewGroup2.removeView(m5391);
                            }
                            ((ViewGroup) this.f9009).addView(m5391, i);
                        }
                        i++;
                    }
                }
            } else {
                i = 0;
            }
            while (i < viewGroup.getChildCount()) {
                if (viewGroup.getChildAt(i) == this.f9021) {
                    i++;
                } else {
                    viewGroup.removeViewAt(i);
                }
            }
        }
        ((View) this.f9009).requestLayout();
        MenuC4312 menuC43122 = this.f9003;
        if (menuC43122 != null) {
            menuC43122.m8721();
            ArrayList arrayList2 = menuC43122.f15951;
            int size2 = arrayList2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                ActionProviderVisibilityListenerC4314 actionProviderVisibilityListenerC4314 = ((C4329) arrayList2.get(i3)).f16074;
            }
        }
        MenuC4312 menuC43123 = this.f9003;
        if (menuC43123 != null) {
            menuC43123.m8721();
            arrayList = menuC43123.f15956;
        }
        if (this.f9022 && arrayList != null) {
            int size3 = arrayList.size();
            if (size3 == 1) {
                z = !((C4329) arrayList.get(0)).f16072;
            } else if (size3 > 0) {
                z = true;
            }
        }
        if (z) {
            if (this.f9021 == null) {
                this.f9021 = new C2256(this, this.f9004);
            }
            ViewGroup viewGroup3 = (ViewGroup) this.f9021.getParent();
            if (viewGroup3 != this.f9009) {
                if (viewGroup3 != null) {
                    viewGroup3.removeView(this.f9021);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.f9009;
                C2256 c2256 = this.f9021;
                actionMenuView.getClass();
                C2267 m52 = ActionMenuView.m52();
                m52.f8883 = true;
                actionMenuView.addView(c2256, m52);
            }
        } else {
            C2256 c22562 = this.f9021;
            if (c22562 != null) {
                Object parent = c22562.getParent();
                Object obj = this.f9009;
                if (parent == obj) {
                    ((ViewGroup) obj).removeView(this.f9021);
                }
            }
        }
        ((ActionMenuView) this.f9009).setOverflowReserved(this.f9022);
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final boolean m5389() {
        Object obj;
        RunnableC2326 runnableC2326 = this.f9024;
        if (runnableC2326 != null && (obj = this.f9009) != null) {
            ((View) obj).removeCallbacks(runnableC2326);
            this.f9024 = null;
            return true;
        }
        C2349 c2349 = this.f9002;
        if (c2349 == null) {
            return false;
        }
        if (c2349.m8749()) {
            c2349.f16008.dismiss();
        }
        return true;
    }

    @Override // p353.InterfaceC4309
    /* renamed from: ٴﹶ */
    public final boolean mo5356(C4329 c4329) {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p353.InterfaceC4309
    /* renamed from: ᵎﹶ */
    public final boolean mo5357(SubMenuC4310 subMenuC4310) {
        boolean z;
        if (subMenuC4310.hasVisibleItems()) {
            SubMenuC4310 subMenuC43102 = subMenuC4310;
            while (true) {
                MenuC4312 menuC4312 = subMenuC43102.f15947;
                if (menuC4312 == this.f9003) {
                    break;
                }
                subMenuC43102 = (SubMenuC4310) menuC4312;
            }
            C4329 c4329 = subMenuC43102.f15946;
            ViewGroup viewGroup = (ViewGroup) this.f9009;
            View view = null;
            if (viewGroup != null) {
                int childCount = viewGroup.getChildCount();
                int i = 0;
                while (true) {
                    if (i >= childCount) {
                        break;
                    }
                    View childAt = viewGroup.getChildAt(i);
                    if ((childAt instanceof InterfaceC4304) && ((InterfaceC4304) childAt).getItemData() == c4329) {
                        view = childAt;
                        break;
                    }
                    i++;
                }
            }
            if (view != null) {
                subMenuC4310.f15946.getClass();
                int size = subMenuC4310.f15973.size();
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        z = false;
                        break;
                    }
                    MenuItem item = subMenuC4310.getItem(i2);
                    if (item.isVisible() && item.getIcon() != null) {
                        z = true;
                        break;
                    }
                    i2++;
                }
                C2349 c2349 = new C2349(this, this.f9017, subMenuC4310, view);
                this.f9014 = c2349;
                c2349.f16013 = z;
                AbstractC4328 abstractC4328 = c2349.f16008;
                if (abstractC4328 != null) {
                    abstractC4328.mo8737(z);
                }
                C2349 c23492 = this.f9014;
                if (!c23492.m8749()) {
                    if (c23492.f16017 == null) {
                        throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
                    }
                    c23492.m8748(0, 0, false, false);
                }
                InterfaceC4316 interfaceC4316 = this.f9019;
                if (interfaceC4316 != null) {
                    interfaceC4316.mo8745(subMenuC4310);
                }
                return true;
            }
        }
        return false;
    }

    @Override // p353.InterfaceC4309
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void mo5390(InterfaceC4316 interfaceC4316) {
        throw null;
    }

    @Override // p353.InterfaceC4309
    /* renamed from: ⁱˊ */
    public final boolean mo5358(C4329 c4329) {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r5v4, types: [ᵔʾ.ʻٴ] */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final View m5391(C4329 c4329, View view, ViewGroup viewGroup) {
        View actionView = c4329.getActionView();
        if (actionView == null || c4329.m8757()) {
            ActionMenuItemView actionMenuItemView = view instanceof InterfaceC4304 ? (InterfaceC4304) view : (InterfaceC4304) this.f9007.inflate(this.f9016, viewGroup, false);
            actionMenuItemView.mo28(c4329);
            ActionMenuItemView actionMenuItemView2 = actionMenuItemView;
            actionMenuItemView2.setItemInvoker((ActionMenuView) this.f9009);
            if (this.f9008 == null) {
                this.f9008 = new C2322(this);
            }
            actionMenuItemView2.setPopupCallback(this.f9008);
            actionView = actionMenuItemView;
        }
        actionView.setVisibility(c4329.f16072 ? 8 : 0);
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        ((ActionMenuView) viewGroup).getClass();
        if (!(layoutParams instanceof C2267)) {
            actionView.setLayoutParams(ActionMenuView.m53(layoutParams));
        }
        return actionView;
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final boolean m5392() {
        MenuC4312 menuC4312;
        if (!this.f9022 || m5393() || (menuC4312 = this.f9003) == null || this.f9009 == null || this.f9024 != null) {
            return false;
        }
        menuC4312.m8721();
        if (menuC4312.f15956.isEmpty()) {
            return false;
        }
        RunnableC2326 runnableC2326 = new RunnableC2326(this, new C2349(this, this.f9017, this.f9003, this.f9021));
        this.f9024 = runnableC2326;
        ((View) this.f9009).post(runnableC2326);
        return true;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final boolean m5393() {
        C2349 c2349 = this.f9002;
        return c2349 != null && c2349.m8749();
    }
}
