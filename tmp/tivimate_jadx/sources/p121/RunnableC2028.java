package p121;

import android.app.Application;
import android.os.StrictMode;
import android.support.v4.media.session.ⁱˊ;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import androidx.leanback.widget.C0095;
import androidx.leanback.widget.VerticalGridView;
import ar.tvplayer.tv.ui.MainActivity;
import com.google.android.gms.internal.play_billing.AbstractC0542;
import com.google.android.gms.internal.play_billing.AbstractC0592;
import com.google.android.gms.internal.play_billing.C0526;
import com.google.android.gms.internal.play_billing.C0628;
import com.google.android.material.behavior.SwipeDismissBehavior;
import java.lang.reflect.Method;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import p011.AbstractC0864;
import p011.C0866;
import p011.C0867;
import p027.AbstractC1093;
import p027.C1085;
import p027.C1111;
import p027.C1115;
import p027.InterfaceC1094;
import p027.InterfaceC1107;
import p027.InterfaceC1114;
import p035.ExecutorC1212;
import p113.C1970;
import p126.C2134;
import p140.ThreadFactoryC2372;
import p142.C2381;
import p151.AbstractC2425;
import p151.C2435;
import p152.C2457;
import p153.AbstractC2481;
import p153.C2477;
import p160.AbstractC2549;
import p179.AbstractC2727;
import p223.C3056;
import p229.AbstractComponentCallbacksC3123;
import p301.InterfaceC3701;
import p324.AbstractC3999;
import p404.C4790;
import p430.AbstractC5099;
import p447.C5253;
import p447.C5272;
import p447.C5322;
import p447.C5344;
import ʼⁱ.ˉʿ;
import ʼⁱ.ᵎⁱ;
import ʽˋ.ʾᵎ;
import ʽˋ.ﹳٴ;
import ʽⁱ.ᵎﹶ;
import ʾʼ.ˉٴ;
import ʾʼ.ﹳـ;
import ʿˋ.ˋᵔ;
import ʿי.ʻٴ;
import ʿי.ʽⁱ;
import ʿי.ʾˋ;
import ʿי.יـ;
import ˉˊ.ٴʼ;
import ˉˊ.ᵔٴ;
import ˉﹳ.ᵔᵢ;
import ﹶﾞ.ⁱי;

/* renamed from: ˈˊ.ᵔﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC2028 implements Runnable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final Object f7937;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f7938;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public Object f7939;

    public RunnableC2028(SwipeDismissBehavior swipeDismissBehavior, View view, boolean z) {
        this.f7938 = 14;
        this.f7937 = swipeDismissBehavior;
        this.f7939 = view;
    }

    public /* synthetic */ RunnableC2028(Object obj, int i, Object obj2) {
        this.f7938 = i;
        this.f7939 = obj;
        this.f7937 = obj2;
    }

    public /* synthetic */ RunnableC2028(Object obj, Object obj2, int i, boolean z) {
        this.f7938 = i;
        this.f7937 = obj;
        this.f7939 = obj2;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    private final void m5070() {
        try {
            ((Runnable) this.f7937).run();
            synchronized (((ExecutorC1212) this.f7939).f4693) {
                ((ExecutorC1212) this.f7939).m3755();
            }
        } catch (Throwable th) {
            synchronized (((ExecutorC1212) this.f7939).f4693) {
                ((ExecutorC1212) this.f7939).m3755();
                throw th;
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    private final void m5071() {
        synchronized (((C1970) this.f7937).f7821) {
            try {
                Object apply = ((C1970) this.f7937).f7823.apply(this.f7939);
                C1970 c1970 = (C1970) this.f7937;
                Object obj = c1970.f7822;
                if (obj == null && apply != null) {
                    c1970.f7822 = apply;
                    c1970.f7825.m681(apply);
                } else if (obj != null && !obj.equals(apply)) {
                    C1970 c19702 = (C1970) this.f7937;
                    c19702.f7822 = apply;
                    c19702.f7825.m681(apply);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        VerticalGridView verticalGridView;
        VerticalGridView verticalGridView2;
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123;
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC31232;
        Throwable th = null;
        int i = 0;
        switch (this.f7938) {
            case 0:
                ⁱי r0 = (ⁱי) this.f7937;
                InterfaceFutureC2031 interfaceFutureC2031 = (InterfaceFutureC2031) this.f7939;
                if (interfaceFutureC2031 instanceof AbstractC2549) {
                    AbstractC2021 abstractC2021 = (AbstractC2021) ((AbstractC2549) interfaceFutureC2031);
                    if (abstractC2021 instanceof InterfaceC2033) {
                        Object obj = abstractC2021.f7921;
                        if (obj instanceof C2029) {
                            th = ((C2029) obj).f7940;
                        }
                    }
                    if (th != null) {
                        r0.ᵢˏ(th);
                        return;
                    }
                }
                try {
                    ⁱˊ.ᵔᵢ(interfaceFutureC2031);
                    C5253 c5253 = (C5253) r0.ʽʽ;
                    c5253.m10252();
                    r0.ᴵᵔ();
                    c5253.f19816 = false;
                    c5253.f19811 = 1;
                    C5344 c5344 = ((C5322) ((ᵎﹶ) c5253).ʾˋ).f20193;
                    C5322.m10556(c5344);
                    c5344.f20340.m10216(((C5272) r0.ᴵˊ).f19904, "Successfully registered trigger URI");
                    c5253.m10376();
                    return;
                } catch (ExecutionException e) {
                    r0.ᵢˏ(e.getCause());
                    return;
                } catch (Throwable th2) {
                    r0.ᵢˏ(th2);
                    return;
                }
            case 1:
                String str = (String) this.f7939;
                AbstractC0864 abstractC0864 = (AbstractC0864) this.f7937;
                AbstractC2727 adapter = abstractC0864.f3681.getAdapter();
                if (!(adapter instanceof C0867)) {
                    if (adapter != null) {
                        throw new IllegalStateException("Adapter must implement PreferencePositionCallback");
                    }
                    return;
                }
                int m3079 = ((C0867) adapter).m3079(str);
                if (m3079 != -1) {
                    abstractC0864.f3681.mo657(m3079);
                    return;
                } else {
                    adapter.f10419.registerObserver(new C0866((C0867) adapter, abstractC0864.f3681, str));
                    return;
                }
            case 2:
                C1111 c1111 = (C1111) this.f7939;
                C1115 c1115 = (C1115) this.f7937;
                if (((InterfaceC1107) c1111.f4357.f4298) != null) {
                    ((InterfaceC1107) c1111.f4357.f4298).ⁱˊ(c1115, (List) null);
                    return;
                } else {
                    AbstractC0542.m2097("BillingClient", "No valid listener is set in BroadcastManager");
                    return;
                }
            case 3:
                Future future = (Future) this.f7939;
                if (future.isDone() || future.isCancelled()) {
                    return;
                }
                Runnable runnable = (Runnable) this.f7937;
                future.cancel(true);
                AbstractC0542.m2097("BillingClient", "Async task is taking too long, cancel it!");
                if (runnable != null) {
                    runnable.run();
                    return;
                }
                return;
            case 4:
                C1111 c11112 = (C1111) this.f7939;
                InterfaceC1114 interfaceC1114 = (InterfaceC1114) this.f7937;
                C1115 c11152 = AbstractC1093.f4267;
                c11112.m3519(24, 7, c11152);
                C0628 c0628 = AbstractC0592.f2396;
                interfaceC1114.m3526(c11152, new C1085(C0526.f2292));
                return;
            case 5:
                C1111 c11113 = (C1111) this.f7939;
                InterfaceC1094 interfaceC1094 = (InterfaceC1094) this.f7937;
                C1115 c11153 = AbstractC1093.f4267;
                c11113.m3519(24, 9, c11153);
                C0628 c06282 = AbstractC0592.f2396;
                interfaceC1094.m3480(c11153, C0526.f2292);
                return;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                try {
                    ((C1111) ((C4790) this.f7939).f18034).f4346.mo3442((C1115) this.f7937);
                    return;
                } catch (Throwable th3) {
                    AbstractC0542.m2091("BillingClient", "Exception calling onBillingSetupFinished.", th3);
                    return;
                }
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                if (((AbstractComponentCallbacksC3123) this.f7939).f11908 != null) {
                    C2457 c2457 = new C2457(1, (ViewGroup) this.f7937);
                    while (c2457.hasNext()) {
                        ((View) c2457.next()).setFocusable(true);
                    }
                    return;
                }
                return;
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                if (((ˉʿ) this.f7939).f11908 != null) {
                    ((VerticalGridView) this.f7937).requestFocus();
                    return;
                }
                return;
            case 9:
                if (((AbstractComponentCallbacksC3123) this.f7939).f11908 != null) {
                    EditText editText = (EditText) this.f7937;
                    editText.setSelection(editText.getText().length());
                    return;
                }
                return;
            case 10:
                if (((AbstractComponentCallbacksC3123) this.f7939).f11908 != null) {
                    ᵎⁱ r02 = (ᵎⁱ) this.f7937;
                    InterfaceC3701[] interfaceC3701Arr = ᵎⁱ.ﹶʽ;
                    r02.ˎᵎ();
                    return;
                }
                return;
            case 11:
                if (((ᵎⁱ) this.f7939).f11908 != null) {
                    ᵎⁱ r03 = (ᵎⁱ) this.f7937;
                    InterfaceC3701[] interfaceC3701Arr2 = ᵎⁱ.ﹶʽ;
                    r03.ʽᐧ().ⁱˊ.setSelectedPosition(1);
                    return;
                }
                return;
            case 12:
                if (((ﹳٴ) this.f7939).f11908 != null) {
                    ((ﹳٴ) this.f7937).ˏⁱ();
                    return;
                }
                return;
            case 13:
                ʾᵎ r04 = (ʾᵎ) this.f7937;
                if (((ʾᵎ) this.f7939).f11908 != null) {
                    r04.ⁱᴵ.requestFocus();
                    r04.ˎـ(true);
                    return;
                }
                return;
            case 14:
                C2381 c2381 = ((SwipeDismissBehavior) this.f7937).f2563;
                if (c2381 == null || !c2381.m5470()) {
                    return;
                }
                ((View) this.f7939).postOnAnimation(this);
                return;
            case 15:
                if (((ﹳـ) this.f7939).f11908 != null) {
                    ﹳـ r05 = (ﹳـ) this.f7937;
                    InterfaceC3701[] interfaceC3701Arr3 = ﹳـ.ˊﾞ;
                    ˋᵔ.ʻᵎ(r05.ʾˏ().ᵔᵢ, ˉٴ.ᴵˊ);
                    return;
                }
                return;
            case 16:
                if (((יـ) this.f7939).f11908 != null) {
                    יـ r06 = (יـ) this.f7937;
                    r06.m420((C0095) AbstractC5099.m10021(r06.f536));
                    return;
                }
                return;
            case 17:
                if (((AbstractComponentCallbacksC3123) this.f7939).f11908 == null || (verticalGridView = ((ʻٴ) this.f7937).f530.f944) == null) {
                    return;
                }
                verticalGridView.requestFocus();
                return;
            case 18:
                if (((AbstractComponentCallbacksC3123) this.f7939).f11908 == null || (verticalGridView2 = ((ʾˋ) this.f7937).f530.f944) == null) {
                    return;
                }
                verticalGridView2.requestFocus();
                return;
            case 19:
                if (((ʽⁱ) this.f7939).f11908 != null) {
                    ʽⁱ r07 = (ʽⁱ) this.f7937;
                    InterfaceC3701[] interfaceC3701Arr4 = ʽⁱ.ᐧˏ;
                    r07.ʼᵎ((Long) null);
                    return;
                }
                return;
            case 20:
                m5071();
                return;
            case 21:
                m5070();
                return;
            case 22:
                ᵔٴ r08 = (ᵔٴ) this.f7937;
                if (((AbstractComponentCallbacksC3123) this.f7939).f11908 == null) {
                    return;
                }
                InterfaceC3701[] interfaceC3701Arr5 = ᵔٴ.ˑˆ;
                VerticalGridView verticalGridView3 = r08.ʽᐧ().ʽ;
                int i2 = 0;
                while (true) {
                    if (!(i2 < verticalGridView3.getChildCount())) {
                        return;
                    }
                    int i3 = i2 + 1;
                    View childAt = verticalGridView3.getChildAt(i2);
                    if (childAt == null) {
                        throw new IndexOutOfBoundsException();
                    }
                    ٴʼ m946 = r08.ʽᐧ().ʽ.m946(childAt);
                    ٴʼ r5 = m946 instanceof ٴʼ ? m946 : null;
                    if (r5 != null) {
                        r5.ʾˋ();
                    }
                    i2 = i3;
                }
            case 23:
                ThreadFactoryC2372 threadFactoryC2372 = (ThreadFactoryC2372) this.f7937;
                if (threadFactoryC2372.f9162) {
                    StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectNetwork().penaltyDeath().build());
                }
                try {
                    ((Runnable) this.f7939).run();
                    return;
                } catch (Throwable th4) {
                    threadFactoryC2372.f9161.getClass();
                    if (Log.isLoggable("GlideExecutor", 6)) {
                        return;
                    } else {
                        return;
                    }
                }
            case 24:
                if (((ˏᵎ.ﹳٴ) this.f7939).f11908 != null) {
                    MainActivity mainActivity = (MainActivity) this.f7937;
                    int i4 = MainActivity.ʻˋ;
                    mainActivity.ˏᵢ();
                    return;
                }
                return;
            case 25:
                if (((AbstractComponentCallbacksC3123) this.f7939).f11908 == null || (abstractComponentCallbacksC3123 = ((ᵔᵢ) this.f7937).f11928) == null || (abstractComponentCallbacksC31232 = abstractComponentCallbacksC3123.f11928) == null) {
                    return;
                }
                abstractComponentCallbacksC31232.m6793();
                return;
            case 26:
                ((C2435) this.f7939).f9390 = this.f7937;
                return;
            case 27:
                ((Application) this.f7939).unregisterActivityLifecycleCallbacks((C2435) this.f7937);
                return;
            case 28:
                Object obj2 = this.f7937;
                Object obj3 = this.f7939;
                try {
                    Method method = AbstractC2425.f9373;
                    if (method != null) {
                        method.invoke(obj3, obj2, Boolean.FALSE, "AppCompat recreation");
                    } else {
                        AbstractC2425.f9374.invoke(obj3, obj2, Boolean.FALSE);
                    }
                    return;
                } catch (RuntimeException e2) {
                    if (e2.getClass() == RuntimeException.class && e2.getMessage() != null && e2.getMessage().startsWith("Unable to stop")) {
                        throw e2;
                    }
                    return;
                } catch (Throwable th5) {
                    return;
                }
        }
        while (true) {
            try {
                ((Runnable) this.f7939).run();
            } catch (Throwable th6) {
                try {
                    AbstractC3999.m8167(th6, C2134.f8324);
                } catch (Throwable th7) {
                    C2477 c2477 = (C2477) this.f7937;
                    synchronized (c2477.f9457) {
                        C2477.f9454.decrementAndGet(c2477);
                        throw th7;
                    }
                }
            }
            Runnable m5610 = ((C2477) this.f7937).m5610();
            if (m5610 == null) {
                return;
            }
            this.f7939 = m5610;
            i++;
            if (i >= 16) {
                C2477 c24772 = (C2477) this.f7937;
                if (AbstractC2481.m5620(c24772.f9455, c24772)) {
                    C2477 c24773 = (C2477) this.f7937;
                    AbstractC2481.m5618(c24773.f9455, c24773, this);
                    return;
                }
            }
        }
    }

    public String toString() {
        switch (this.f7938) {
            case 0:
                ᵢ.ﹳٴ r0 = new ᵢ.ﹳٴ(7, RunnableC2028.class.getSimpleName());
                ⁱי r1 = (ⁱי) this.f7937;
                ⁱי r2 = new ⁱי(16, false);
                ((ⁱי) r0.ˈٴ).ʽʽ = r2;
                r0.ˈٴ = r2;
                r2.ᴵˊ = r1;
                return r0.toString();
            default:
                return super.toString();
        }
    }
}
