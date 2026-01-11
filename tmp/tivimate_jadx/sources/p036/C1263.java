package p036;

import android.os.Build;
import android.view.View;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import androidx.lifecycle.C0180;
import androidx.lifecycle.EnumC0174;
import androidx.lifecycle.InterfaceC0162;
import androidx.lifecycle.InterfaceC0183;
import java.lang.reflect.Field;

/* renamed from: ʽ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1263 implements InterfaceC0183 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static int f4908;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static Field f4909;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static Field f4910;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static Field f4911;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f4912;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public AbstractActivityC1262 f4913;

    public /* synthetic */ C1263() {
        this.f4912 = 4;
    }

    public /* synthetic */ C1263(AbstractActivityC1262 abstractActivityC1262, int i) {
        this.f4912 = i;
        this.f4913 = abstractActivityC1262;
    }

    @Override // androidx.lifecycle.InterfaceC0183
    /* renamed from: ᵎﹶ */
    public final void mo679(InterfaceC0162 interfaceC0162, EnumC0174 enumC0174) {
        switch (this.f4912) {
            case 0:
                if (enumC0174 == EnumC0174.ON_STOP) {
                    Window window = this.f4913.getWindow();
                    View peekDecorView = window != null ? window.peekDecorView() : null;
                    if (peekDecorView != null) {
                        peekDecorView.cancelPendingInputEvents();
                        return;
                    }
                    return;
                }
                return;
            case 1:
                if (enumC0174 == EnumC0174.ON_DESTROY) {
                    this.f4913.f4902.f15216 = null;
                    if (!this.f4913.isChangingConfigurations()) {
                        this.f4913.mo724().m706();
                    }
                    ExecutorC1255 executorC1255 = this.f4913.f4895;
                    AbstractActivityC1262 abstractActivityC1262 = executorC1255.f4875;
                    abstractActivityC1262.getWindow().getDecorView().removeCallbacks(executorC1255);
                    abstractActivityC1262.getWindow().getDecorView().getViewTreeObserver().removeOnDrawListener(executorC1255);
                    return;
                }
                return;
            case 2:
                AbstractActivityC1262 abstractActivityC12622 = this.f4913;
                if (abstractActivityC12622.f4896 == null) {
                    C1251 c1251 = (C1251) abstractActivityC12622.getLastNonConfigurationInstance();
                    if (c1251 != null) {
                        abstractActivityC12622.f4896 = c1251.f4864;
                    }
                    if (abstractActivityC12622.f4896 == null) {
                        abstractActivityC12622.f4896 = new C0180();
                    }
                }
                abstractActivityC12622.f4894.m715(this);
                return;
            case 3:
                if (enumC0174 != EnumC0174.ON_CREATE || Build.VERSION.SDK_INT < 33) {
                    return;
                }
                C1254 c1254 = this.f4913.f4901;
                c1254.f4868 = AbstractC1265.m3853((AbstractActivityC1262) interfaceC0162);
                c1254.m3841(c1254.f4869);
                return;
            default:
                if (enumC0174 != EnumC0174.ON_DESTROY) {
                    return;
                }
                if (f4908 == 0) {
                    try {
                        f4908 = 2;
                        Field declaredField = InputMethodManager.class.getDeclaredField("mServedView");
                        f4911 = declaredField;
                        declaredField.setAccessible(true);
                        Field declaredField2 = InputMethodManager.class.getDeclaredField("mNextServedView");
                        f4910 = declaredField2;
                        declaredField2.setAccessible(true);
                        Field declaredField3 = InputMethodManager.class.getDeclaredField("mH");
                        f4909 = declaredField3;
                        declaredField3.setAccessible(true);
                        f4908 = 1;
                    } catch (NoSuchFieldException unused) {
                    }
                }
                if (f4908 == 1) {
                    InputMethodManager inputMethodManager = (InputMethodManager) this.f4913.getSystemService("input_method");
                    try {
                        Object obj = f4909.get(inputMethodManager);
                        if (obj == null) {
                            return;
                        }
                        synchronized (obj) {
                            try {
                                View view = (View) f4911.get(inputMethodManager);
                                if (view != null) {
                                    if (!view.isAttachedToWindow()) {
                                        f4910.set(inputMethodManager, null);
                                        inputMethodManager.isActive();
                                    }
                                }
                            } catch (IllegalAccessException unused2) {
                            } catch (ClassCastException unused3) {
                            } catch (IllegalAccessException unused4) {
                            } finally {
                            }
                        }
                        return;
                    } catch (IllegalAccessException unused5) {
                        return;
                    }
                }
                return;
        }
    }
}
