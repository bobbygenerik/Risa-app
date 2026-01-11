package androidx.leanback.widget;

import android.animation.ValueAnimator;
import android.text.TextUtils;
import android.view.inputmethod.InputMethodManager;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.SearchView$SearchAutoComplete;
import androidx.appcompat.widget.Toolbar;
import androidx.leanback.widget.picker.DatePicker;
import androidx.lifecycle.AbstractC0161;
import androidx.preference.PreferenceGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import ar.tvplayer.core.domain.ʻٴ;
import ar.tvplayer.core.util.RestartProcessActivity;
import com.bumptech.glide.ComponentCallbacks2C0236;
import com.google.android.gms.internal.play_billing.AbstractC0542;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
import java.lang.ref.ReferenceQueue;
import p011.AbstractC0864;
import p011.C0859;
import p011.C0867;
import p027.AbstractC1093;
import p027.C1111;
import p027.C1115;
import p027.ServiceConnectionC1088;
import p036.AbstractActivityC1262;
import p080.C1690;
import p096.C1892;
import p137.C2249;
import p137.C2308;
import p142.C2381;
import p179.C2726;
import p220.C3031;
import p220.InterfaceC3034;
import p223.C3056;
import p229.C3085;
import p229.C3133;
import p229.DialogInterfaceOnCancelListenerC3073;
import p244.C3248;
import p363.AbstractActivityC4410;
import p364.InterfaceC4453;
import p369.InterfaceC4507;
import p384.C4603;
import p404.C4790;
import p409.C4840;

/* renamed from: androidx.leanback.widget.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC0142 implements Runnable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f995;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Object f996;

    public /* synthetic */ RunnableC0142(int i, Object obj) {
        this.f995 = i;
        this.f996 = obj;
    }

    public /* synthetic */ RunnableC0142(C1111 c1111, ar.tvplayer.core.data.api.parse.ˈ r2) {
        this.f995 = 8;
        this.f996 = c1111;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    private final void m650() {
        synchronized (((C3031) this.f996).f11556) {
            ((InterfaceC3034) ((C3031) this.f996).f11558).mo6556();
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    private final void m651() {
        synchronized (this) {
            ((PreferenceGroup) this.f996).f1393.clear();
        }
    }

    /* JADX INFO: Infinite loop detected, blocks: 8, insns: 0 */
    @Override // java.lang.Runnable
    public final void run() {
        InterfaceC0102 interfaceC0102;
        Object obj;
        C2308 c2308;
        boolean z;
        boolean z2;
        switch (this.f995) {
            case 0:
                ((GridLayoutManager) this.f996).m5982();
                return;
            case 1:
                ﹳי.ʽ r0 = ((SearchEditText) this.f996).f742;
                if (r0 == null || (interfaceC0102 = ((SearchBar) r0.ʾˋ).f719) == null) {
                    return;
                }
                AbstractActivityC4410 m6803 = ((ﾞᵔ.ˉٴ) ((C4603) interfaceC0102).f17126).m6803();
                ʼⁱ.ʽ r2 = m6803 instanceof ʼⁱ.ʽ ? (ʼⁱ.ʽ) m6803 : null;
                if (r2 != null) {
                    r2.ـˆ(false);
                    return;
                }
                return;
            case 2:
                synchronized (((AbstractC0161) this.f996).f1047) {
                    obj = ((AbstractC0161) this.f996).f1048;
                    ((AbstractC0161) this.f996).f1048 = AbstractC0161.f1038;
                }
                ((AbstractC0161) this.f996).m686(obj);
                return;
            case 3:
                ComponentCallbacks2C0236 componentCallbacks2C0236 = (ComponentCallbacks2C0236) this.f996;
                componentCallbacks2C0236.f1681.mo7498(componentCallbacks2C0236);
                return;
            case 4:
                ((C0859) this.f996).m3059();
                return;
            case 5:
                RecyclerView recyclerView = ((AbstractC0864) this.f996).f3681;
                recyclerView.focusableViewAvailable(recyclerView);
                return;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                m651();
                return;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                ((C0867) this.f996).m3080();
                return;
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                ((C1111) this.f996).m3519(24, 3, AbstractC1093.f4267);
                boolean z3 = ʻٴ.ﹳٴ;
                return;
            case 9:
                try {
                    ((C1111) ((C4790) this.f996).f18034).f4346.mo3443();
                    return;
                } catch (Throwable th) {
                    AbstractC0542.m2091("BillingClient", "Exception calling onBillingServiceDisconnected.", th);
                    return;
                }
            case 10:
                ServiceConnectionC1088 serviceConnectionC1088 = (ServiceConnectionC1088) this.f996;
                C1111 c1111 = serviceConnectionC1088.f4246;
                c1111.m3499(0);
                C1115 c1115 = AbstractC1093.f4267;
                c1111.m3520(24, serviceConnectionC1088.f4244, c1115);
                serviceConnectionC1088.m3444(c1115);
                return;
            case 11:
                try {
                    AbstractActivityC1262.m3846((AbstractActivityC1262) this.f996);
                    return;
                } catch (IllegalStateException e) {
                    if (!TextUtils.equals(e.getMessage(), "Can not perform this action after onSaveInstanceState")) {
                        throw e;
                    }
                    return;
                } catch (NullPointerException e2) {
                    if (!TextUtils.equals(e2.getMessage(), "Attempt to invoke virtual method 'android.os.Handler android.app.FragmentHostCallback.getHandler()' on a null object reference")) {
                        throw e2;
                    }
                    return;
                }
            case 12:
                CheckableImageButton checkableImageButton = ((TextInputLayout) this.f996).f2845.f5090;
                checkableImageButton.performClick();
                checkableImageButton.jumpDrawablesToCurrentState();
                return;
            case 13:
                com.parse.ٴʼ r02 = (com.parse.ٴʼ) this.f996;
                r02.getClass();
                while (true) {
                    try {
                        r02.ٴᵢ((C1690) ((ReferenceQueue) r02.ʽʽ).remove());
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
            case 14:
                RestartProcessActivity restartProcessActivity = (RestartProcessActivity) this.f996;
                ʿˋ.ˉʿ.ʽᵔ(restartProcessActivity, true);
                restartProcessActivity.finish();
                return;
            case 15:
                C1892 c1892 = (C1892) this.f996;
                c1892.m4827(true);
                c1892.invalidateSelf();
                return;
            case 16:
                C2249 c2249 = (C2249) this.f996;
                c2249.f8820 = null;
                c2249.drawableStateChanged();
                return;
            case 17:
                SearchView$SearchAutoComplete searchView$SearchAutoComplete = (SearchView$SearchAutoComplete) this.f996;
                if (searchView$SearchAutoComplete.f156) {
                    ((InputMethodManager) searchView$SearchAutoComplete.getContext().getSystemService("input_method")).showSoftInput(searchView$SearchAutoComplete, 0);
                    searchView$SearchAutoComplete.f156 = false;
                    return;
                }
                return;
            case 18:
                ActionMenuView actionMenuView = ((Toolbar) this.f996).f209;
                if (actionMenuView == null || (c2308 = actionMenuView.f138) == null) {
                    return;
                }
                c2308.m5392();
                return;
            case 19:
                ((C2381) this.f996).m5464(0);
                return;
            case 20:
                C2726 c2726 = (C2726) this.f996;
                ValueAnimator valueAnimator = c2726.f10411;
                int i = c2726.f10395;
                if (i == 1) {
                    valueAnimator.cancel();
                } else if (i != 2) {
                    return;
                }
                c2726.f10395 = 3;
                valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 0.0f);
                valueAnimator.setDuration(500);
                valueAnimator.start();
                return;
            case 21:
                ((StaggeredGridLayoutManager) this.f996).m1002();
                return;
            case 22:
                m650();
                return;
            case 23:
                DialogInterfaceOnCancelListenerC3073 dialogInterfaceOnCancelListenerC3073 = (DialogInterfaceOnCancelListenerC3073) this.f996;
                dialogInterfaceOnCancelListenerC3073.f11676.onDismiss(dialogInterfaceOnCancelListenerC3073.f11678);
                return;
            case 24:
                C3133 c3133 = (C3133) this.f996;
                if (c3133.f11974.isEmpty()) {
                    return;
                }
                c3133.m6870();
                return;
            case 25:
                ((C3085) this.f996).m6664(true);
                return;
            case 26:
                DatePicker datePicker = (DatePicker) this.f996;
                int[] iArr = {datePicker.f798, datePicker.f807, datePicker.f805};
                boolean z4 = true;
                boolean z5 = true;
                for (int i2 = 2; i2 >= 0; i2--) {
                    int i3 = iArr[i2];
                    if (i3 >= 0) {
                        int i4 = DatePicker.f794[i2];
                        C3248 m568 = datePicker.m568(i3);
                        if (z4) {
                            int i5 = datePicker.f797.get(i4);
                            if (i5 != m568.f12504) {
                                m568.f12504 = i5;
                                z = true;
                            }
                            z = false;
                        } else {
                            int actualMinimum = datePicker.f804.getActualMinimum(i4);
                            if (actualMinimum != m568.f12504) {
                                m568.f12504 = actualMinimum;
                                z = true;
                            }
                            z = false;
                        }
                        if (z5) {
                            int i6 = datePicker.f806.get(i4);
                            if (i6 != m568.f12501) {
                                m568.f12501 = i6;
                                z2 = true;
                            }
                            z2 = false;
                        } else {
                            int actualMaximum = datePicker.f804.getActualMaximum(i4);
                            if (actualMaximum != m568.f12501) {
                                m568.f12501 = actualMaximum;
                                z2 = true;
                            }
                            z2 = false;
                        }
                        boolean z6 = z | z2;
                        z4 &= datePicker.f804.get(i4) == datePicker.f797.get(i4);
                        z5 &= datePicker.f804.get(i4) == datePicker.f806.get(i4);
                        if (z6) {
                            datePicker.m563(iArr[i2], m568);
                        }
                        datePicker.m564(iArr[i2], datePicker.f804.get(i4));
                    }
                }
                return;
            case 27:
                ((InterfaceC4453) this.f996).mo9004();
                return;
            case 28:
                ((C4840) this.f996).m9644();
                return;
            default:
                InterfaceC4507 interfaceC4507 = ((C4840) ((C4603) this.f996).f17126).f18153;
                interfaceC4507.m9074(interfaceC4507.getClass().getName().concat(" disconnecting because it was signed out."));
                return;
        }
    }
}
