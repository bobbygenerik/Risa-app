package p353;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import ar.tvplayer.tv.R;
import java.util.ArrayList;
import p044.ViewOnAttachStateChangeListenerC1333;
import p137.AbstractC2334;
import p137.C2249;
import p137.C2301;
import p137.C2331;
import p137.ViewTreeObserverOnGlobalLayoutListenerC2270;
import p307.AbstractC3740;
import ᐧﹳ.ʽ;

/* renamed from: ᵔʾ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ViewOnKeyListenerC4313 extends AbstractC4328 implements View.OnKeyListener, PopupWindow.OnDismissListener {

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public boolean f15974;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final int f15975;

    /* renamed from: ʿ, reason: contains not printable characters */
    public ViewTreeObserver f15976;

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public PopupWindow.OnDismissListener f15977;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public View f15979;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final int f15980;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public InterfaceC4316 f15982;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final boolean f15984;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public boolean f15985;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public int f15986;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public View f15987;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public int f15988;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final Handler f15990;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Context f15991;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public boolean f15992;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final int f15993;

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public boolean f15995;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public int f15999;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final ArrayList f15983 = new ArrayList();

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final ArrayList f15996 = new ArrayList();

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final ViewTreeObserverOnGlobalLayoutListenerC2270 f15989 = new ViewTreeObserverOnGlobalLayoutListenerC2270(2, this);

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final ViewOnAttachStateChangeListenerC1333 f15994 = new ViewOnAttachStateChangeListenerC1333(4, this);

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final ʽ f15997 = new ʽ(5, this);

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public int f15978 = 0;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public int f15998 = 0;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public boolean f15981 = false;

    public ViewOnKeyListenerC4313(Context context, View view, int i, int i2, boolean z) {
        this.f15991 = context;
        this.f15979 = view;
        this.f15980 = i;
        this.f15993 = i2;
        this.f15984 = z;
        this.f15986 = view.getLayoutDirection() != 1 ? 1 : 0;
        Resources resources = context.getResources();
        this.f15975 = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.470));
        this.f15990 = new Handler();
    }

    @Override // p353.InterfaceC4305
    public final void dismiss() {
        ArrayList arrayList = this.f15996;
        int size = arrayList.size();
        if (size > 0) {
            C4308[] c4308Arr = (C4308[]) arrayList.toArray(new C4308[size]);
            for (int i = size - 1; i >= 0; i--) {
                C4308 c4308 = c4308Arr[i];
                if (c4308.f15945.f8835.isShowing()) {
                    c4308.f15945.dismiss();
                }
            }
        }
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        C4308 c4308;
        ArrayList arrayList = this.f15996;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                c4308 = null;
                break;
            }
            c4308 = (C4308) arrayList.get(i);
            if (!c4308.f15945.f8835.isShowing()) {
                break;
            } else {
                i++;
            }
        }
        if (c4308 != null) {
            c4308.f15944.m8723(false);
        }
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    @Override // p353.AbstractC4328
    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final void mo8735(int i) {
        if (this.f15978 != i) {
            this.f15978 = i;
            this.f15998 = Gravity.getAbsoluteGravity(i, this.f15979.getLayoutDirection());
        }
    }

    @Override // p353.InterfaceC4309
    /* renamed from: ʽ */
    public final void mo5353(MenuC4312 menuC4312, boolean z) {
        ArrayList arrayList = this.f15996;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                i = -1;
                break;
            } else if (menuC4312 == ((C4308) arrayList.get(i)).f15944) {
                break;
            } else {
                i++;
            }
        }
        if (i < 0) {
            return;
        }
        int i2 = i + 1;
        if (i2 < arrayList.size()) {
            ((C4308) arrayList.get(i2)).f15944.m8723(false);
        }
        C4308 c4308 = (C4308) arrayList.remove(i);
        MenuC4312 menuC43122 = c4308.f15944;
        C2301 c2301 = c4308.f15945;
        C2331 c2331 = c2301.f8835;
        menuC43122.m8733(this);
        if (this.f15995) {
            AbstractC2334.m5428(c2331, null);
            c2331.setAnimationStyle(0);
        }
        c2301.dismiss();
        int size2 = arrayList.size();
        if (size2 > 0) {
            this.f15986 = ((C4308) arrayList.get(size2 - 1)).f15943;
        } else {
            this.f15986 = this.f15979.getLayoutDirection() == 1 ? 0 : 1;
        }
        if (size2 != 0) {
            if (z) {
                ((C4308) arrayList.get(0)).f15944.m8723(false);
                return;
            }
            return;
        }
        dismiss();
        InterfaceC4316 interfaceC4316 = this.f15982;
        if (interfaceC4316 != null) {
            interfaceC4316.mo8744(menuC4312, true);
        }
        ViewTreeObserver viewTreeObserver = this.f15976;
        if (viewTreeObserver != null) {
            if (viewTreeObserver.isAlive()) {
                this.f15976.removeGlobalOnLayoutListener(this.f15989);
            }
            this.f15976 = null;
        }
        this.f15987.removeOnAttachStateChangeListener(this.f15994);
        this.f15977.onDismiss();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x01bd  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01c7  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0172  */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v5 */
    /* JADX WARN: Type inference failed for: r17v6 */
    /* JADX WARN: Type inference failed for: r17v7 */
    /* JADX WARN: Type inference failed for: r3v0, types: [android.view.LayoutInflater] */
    /* JADX WARN: Type inference failed for: r8v3, types: [ˉˆ.ـᵢ, ˉˆ.ʿـ] */
    /* renamed from: ʽﹳ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m8736(p353.MenuC4312 r20) {
        /*
            Method dump skipped, instructions count: 566
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p353.ViewOnKeyListenerC4313.m8736(ᵔʾ.ˆʾ):void");
    }

    @Override // p353.InterfaceC4309
    /* renamed from: ˆʾ */
    public final boolean mo5354() {
        return false;
    }

    @Override // p353.InterfaceC4309
    /* renamed from: ˈ */
    public final void mo5355() {
        ArrayList arrayList = this.f15996;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ListAdapter adapter = ((C4308) obj).f15945.f8832.getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                adapter = ((HeaderViewListAdapter) adapter).getWrappedAdapter();
            }
            ((C4321) adapter).notifyDataSetChanged();
        }
    }

    @Override // p353.AbstractC4328
    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final void mo8737(boolean z) {
        this.f15981 = z;
    }

    @Override // p353.AbstractC4328
    /* renamed from: ˏי, reason: contains not printable characters */
    public final void mo8738(int i) {
        this.f15974 = true;
        this.f15999 = i;
    }

    @Override // p353.InterfaceC4305
    /* renamed from: ˑﹳ */
    public final void mo5273() {
        if (mo5277()) {
            return;
        }
        ArrayList arrayList = this.f15983;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            m8736((MenuC4312) obj);
        }
        arrayList.clear();
        View view = this.f15979;
        this.f15987 = view;
        if (view != null) {
            boolean z = this.f15976 == null;
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            this.f15976 = viewTreeObserver;
            if (z) {
                viewTreeObserver.addOnGlobalLayoutListener(this.f15989);
            }
            this.f15987.addOnAttachStateChangeListener(this.f15994);
        }
    }

    @Override // p353.AbstractC4328
    /* renamed from: יـ, reason: contains not printable characters */
    public final void mo8739(boolean z) {
        this.f15992 = z;
    }

    @Override // p353.InterfaceC4309
    /* renamed from: ᵎﹶ */
    public final boolean mo5357(SubMenuC4310 subMenuC4310) {
        ArrayList arrayList = this.f15996;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            C4308 c4308 = (C4308) obj;
            if (subMenuC4310 == c4308.f15944) {
                c4308.f15945.f8832.requestFocus();
                return true;
            }
        }
        if (!subMenuC4310.hasVisibleItems()) {
            return false;
        }
        mo8743(subMenuC4310);
        InterfaceC4316 interfaceC4316 = this.f15982;
        if (interfaceC4316 != null) {
            interfaceC4316.mo8745(subMenuC4310);
        }
        return true;
    }

    @Override // p353.AbstractC4328
    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final void mo8740(View view) {
        if (this.f15979 != view) {
            this.f15979 = view;
            this.f15998 = Gravity.getAbsoluteGravity(this.f15978, view.getLayoutDirection());
        }
    }

    @Override // p353.InterfaceC4309
    /* renamed from: ᵔᵢ */
    public final void mo5390(InterfaceC4316 interfaceC4316) {
        this.f15982 = interfaceC4316;
    }

    @Override // p353.AbstractC4328
    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final void mo8741(int i) {
        this.f15985 = true;
        this.f15988 = i;
    }

    @Override // p353.InterfaceC4305
    /* renamed from: ﹳٴ */
    public final boolean mo5277() {
        ArrayList arrayList = this.f15996;
        return arrayList.size() > 0 && ((C4308) arrayList.get(0)).f15945.f8835.isShowing();
    }

    @Override // p353.AbstractC4328
    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final void mo8742(PopupWindow.OnDismissListener onDismissListener) {
        this.f15977 = onDismissListener;
    }

    @Override // p353.AbstractC4328
    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void mo8743(MenuC4312 menuC4312) {
        menuC4312.m8731(this, this.f15991);
        if (mo5277()) {
            m8736(menuC4312);
        } else {
            this.f15983.add(menuC4312);
        }
    }

    @Override // p353.InterfaceC4305
    /* renamed from: ﾞᴵ */
    public final C2249 mo5280() {
        ArrayList arrayList = this.f15996;
        if (arrayList.isEmpty()) {
            return null;
        }
        return ((C4308) AbstractC3740.m7939(1, arrayList)).f15945.f8832;
    }
}
