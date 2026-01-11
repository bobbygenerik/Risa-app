package p036;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Trace;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.leanback.widget.RunnableC0142;
import androidx.lifecycle.AbstractC0157;
import androidx.lifecycle.AbstractC0168;
import androidx.lifecycle.C0180;
import androidx.lifecycle.C0184;
import androidx.lifecycle.C0185;
import androidx.lifecycle.C0190;
import androidx.lifecycle.EnumC0199;
import androidx.lifecycle.FragmentC0170;
import androidx.lifecycle.InterfaceC0158;
import androidx.lifecycle.InterfaceC0191;
import androidx.lifecycle.RunnableC0197;
import ar.tvplayer.tv.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicInteger;
import p026.C1079;
import p077.C1666;
import p115.InterfaceC1988;
import p151.AbstractActivityC2438;
import p151.C2424;
import p151.C2432;
import p229.C3090;
import p229.C3125;
import p238.InterfaceC3206;
import p242.AbstractC3235;
import p242.InterfaceC3239;
import p262.C3433;
import p319.C3934;
import p329.InterfaceC4104;
import p333.InterfaceC4203;
import ˑי.ʽ;
import יˋ.ˈ;
import ٴʽ.יـ;

/* renamed from: ʽ.ٴﹶ */
/* loaded from: classes.dex */
public abstract class AbstractActivityC1262 extends AbstractActivityC2438 implements InterfaceC0191, InterfaceC0158, InterfaceC4203 {

    /* renamed from: ˆﾞ */
    public final CopyOnWriteArrayList f4892;

    /* renamed from: ˈʿ */
    public final CopyOnWriteArrayList f4893;

    /* renamed from: ˈٴ */
    public final C0184 f4894;

    /* renamed from: ˉٴ */
    public final ExecutorC1255 f4895;

    /* renamed from: ˊʻ */
    public C0180 f4896;

    /* renamed from: ˊˋ */
    public boolean f4897;

    /* renamed from: ˋᵔ */
    public boolean f4898;

    /* renamed from: ˑٴ */
    public final CopyOnWriteArrayList f4899;

    /* renamed from: ٴʼ */
    public final AtomicInteger f4900;

    /* renamed from: ٴᵢ */
    public C1254 f4901;

    /* renamed from: ᴵᵔ */
    public final C3433 f4903;

    /* renamed from: ᵎˊ */
    public final C1271 f4904;

    /* renamed from: ᵎⁱ */
    public final יـ f4905;

    /* renamed from: ᵔי */
    public final CopyOnWriteArrayList f4906;

    /* renamed from: ᵔٴ */
    public final CopyOnWriteArrayList f4907;

    /* renamed from: ᴵˊ */
    public final C3934 f4902 = new C3934();

    /* renamed from: ʽʽ */
    public final ʽ f4891 = new ʽ(new RunnableC0197(9, this));

    public AbstractActivityC1262() {
        C0184 c0184 = new C0184(this);
        this.f4894 = c0184;
        C3433 c3433 = new C3433(new C1666(this, new ˈ(29, this)));
        this.f4903 = c3433;
        this.f4901 = null;
        this.f4895 = new ExecutorC1255(this);
        this.f4905 = new יـ(new C0185(14, this));
        this.f4900 = new AtomicInteger();
        this.f4904 = new C1271(this);
        this.f4906 = new CopyOnWriteArrayList();
        this.f4892 = new CopyOnWriteArrayList();
        this.f4907 = new CopyOnWriteArrayList();
        this.f4893 = new CopyOnWriteArrayList();
        this.f4899 = new CopyOnWriteArrayList();
        this.f4898 = false;
        this.f4897 = false;
        int i = Build.VERSION.SDK_INT;
        c0184.m714(new C1263(this, 0));
        c0184.m714(new C1263(this, 1));
        c0184.m714(new C1263(this, 2));
        c3433.m7343();
        AbstractC0157.m675(this);
        if (i <= 23) {
            C1263 c1263 = new C1263();
            c1263.f4913 = this;
            c0184.m714(c1263);
        }
        ((C3125) c3433.f13456).m6832("android:support:activity-result", new C1256(0, this));
        m3848(new C1260(this, 0));
    }

    @Override // android.app.Activity
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m3850();
        this.f4895.m3843(getWindow().getDecorView());
        super.addContentView(view, layoutParams);
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (this.f4904.m3866(i, i2, intent)) {
            return;
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        m3849().m3842();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        Iterator it = this.f4906.iterator();
        while (it.hasNext()) {
            ((InterfaceC3206) it.next()).accept(configuration);
        }
    }

    @Override // p151.AbstractActivityC2438, android.app.Activity
    public void onCreate(Bundle bundle) {
        this.f4903.m7334(bundle);
        C3934 c3934 = this.f4902;
        c3934.f15216 = this;
        Iterator it = ((CopyOnWriteArraySet) c3934.f15215).iterator();
        while (it.hasNext()) {
            ((InterfaceC1988) it.next()).mo3845();
        }
        super.onCreate(bundle);
        int i = FragmentC0170.f1058;
        AbstractC0168.m695(this);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean onCreatePanelMenu(int i, Menu menu) {
        if (i != 0) {
            return true;
        }
        super.onCreatePanelMenu(i, menu);
        getMenuInflater();
        Iterator it = ((CopyOnWriteArrayList) this.f4891.ᴵˊ).iterator();
        while (it.hasNext()) {
            ((C3090) it.next()).f11778.m6691();
        }
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        if (i == 0) {
            Iterator it = ((CopyOnWriteArrayList) this.f4891.ᴵˊ).iterator();
            while (it.hasNext()) {
                if (((C3090) it.next()).f11778.m6660()) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // android.app.Activity
    public final void onMultiWindowModeChanged(boolean z) {
        if (this.f4898) {
            return;
        }
        Iterator it = this.f4893.iterator();
        while (it.hasNext()) {
            ((InterfaceC3206) it.next()).accept(new C2432(z));
        }
    }

    @Override // android.app.Activity
    public final void onMultiWindowModeChanged(boolean z, Configuration configuration) {
        this.f4898 = true;
        try {
            super.onMultiWindowModeChanged(z, configuration);
            this.f4898 = false;
            Iterator it = this.f4893.iterator();
            while (it.hasNext()) {
                ((InterfaceC3206) it.next()).accept(new C2432(z));
            }
        } catch (Throwable th) {
            this.f4898 = false;
            throw th;
        }
    }

    @Override // android.app.Activity
    public final void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        Iterator it = this.f4907.iterator();
        while (it.hasNext()) {
            ((InterfaceC3206) it.next()).accept(intent);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        Iterator it = ((CopyOnWriteArrayList) this.f4891.ᴵˊ).iterator();
        while (it.hasNext()) {
            ((C3090) it.next()).f11778.m6706();
        }
        super.onPanelClosed(i, menu);
    }

    @Override // android.app.Activity
    public final void onPictureInPictureModeChanged(boolean z) {
        if (this.f4897) {
            return;
        }
        Iterator it = this.f4899.iterator();
        while (it.hasNext()) {
            ((InterfaceC3206) it.next()).accept(new C2424(z));
        }
    }

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean z, Configuration configuration) {
        this.f4897 = true;
        try {
            super.onPictureInPictureModeChanged(z, configuration);
            this.f4897 = false;
            Iterator it = this.f4899.iterator();
            while (it.hasNext()) {
                ((InterfaceC3206) it.next()).accept(new C2424(z));
            }
        } catch (Throwable th) {
            this.f4897 = false;
            throw th;
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean onPreparePanel(int i, View view, Menu menu) {
        if (i != 0) {
            return true;
        }
        super.onPreparePanel(i, view, menu);
        Iterator it = ((CopyOnWriteArrayList) this.f4891.ᴵˊ).iterator();
        while (it.hasNext()) {
            ((C3090) it.next()).f11778.m6680();
        }
        return true;
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (this.f4904.m3866(i, -1, new Intent().putExtra("androidx.activity.result.contract.extra.PERMISSIONS", strArr).putExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS", iArr))) {
            return;
        }
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, ʽ.ʼˎ] */
    @Override // android.app.Activity
    public final Object onRetainNonConfigurationInstance() {
        C1251 c1251;
        C0180 c0180 = this.f4896;
        if (c0180 == null && (c1251 = (C1251) getLastNonConfigurationInstance()) != null) {
            c0180 = c1251.f4864;
        }
        if (c0180 == null) {
            return null;
        }
        ?? obj = new Object();
        obj.f4864 = c0180;
        return obj;
    }

    @Override // p151.AbstractActivityC2438, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        C0184 c0184 = this.f4894;
        if (c0184 != null) {
            c0184.m709("setCurrentState");
            c0184.m711(EnumC0199.f1100);
        }
        super.onSaveInstanceState(bundle);
        this.f4903.m7332(bundle);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks2
    public final void onTrimMemory(int i) {
        super.onTrimMemory(i);
        Iterator it = this.f4892.iterator();
        while (it.hasNext()) {
            ((InterfaceC3206) it.next()).accept(Integer.valueOf(i));
        }
    }

    @Override // android.app.Activity
    public final void reportFullyDrawn() {
        try {
            if (com.bumptech.glide.ʽ.ˉˆ()) {
                Trace.beginSection(com.bumptech.glide.ʽ.ˊʻ("reportFullyDrawn() for ComponentActivity"));
            }
            super.reportFullyDrawn();
            יـ r0 = this.f4905;
            synchronized (r0.ⁱˊ) {
                try {
                    r0.ﹳٴ = true;
                    ArrayList arrayList = (ArrayList) r0.ʽ;
                    int size = arrayList.size();
                    int i = 0;
                    while (i < size) {
                        Object obj = arrayList.get(i);
                        i++;
                        ((InterfaceC4104) obj).mo716();
                    }
                    ((ArrayList) r0.ʽ).clear();
                } finally {
                }
            }
            Trace.endSection();
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    @Override // android.app.Activity
    public void setContentView(int i) {
        m3850();
        this.f4895.m3843(getWindow().getDecorView());
        super.setContentView(i);
    }

    @Override // android.app.Activity
    public void setContentView(@SuppressLint({"UnknownNullness", "MissingNullability"}) View view) {
        m3850();
        this.f4895.m3843(getWindow().getDecorView());
        super.setContentView(view);
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m3850();
        this.f4895.m3843(getWindow().getDecorView());
        super.setContentView(view, layoutParams);
    }

    /* renamed from: ʽ */
    public final void m3847(InterfaceC3206 interfaceC3206) {
        this.f4906.add(interfaceC3206);
    }

    @Override // androidx.lifecycle.InterfaceC0158
    /* renamed from: ʾˋ */
    public final C1079 mo677() {
        C1079 c1079 = new C1079();
        if (getApplication() != null) {
            c1079.m3425(C0190.f1086, getApplication());
        }
        c1079.m3425(AbstractC0157.f1033, this);
        c1079.m3425(AbstractC0157.f1032, this);
        if (getIntent() != null && getIntent().getExtras() != null) {
            c1079.m3425(AbstractC0157.f1029, getIntent().getExtras());
        }
        return c1079;
    }

    /* renamed from: ˈ */
    public final void m3848(InterfaceC1988 interfaceC1988) {
        C3934 c3934 = this.f4902;
        if (((AbstractActivityC1262) c3934.f15216) != null) {
            interfaceC1988.mo3845();
        }
        ((CopyOnWriteArraySet) c3934.f15215).add(interfaceC1988);
    }

    @Override // androidx.lifecycle.InterfaceC0162
    /* renamed from: ˋᵔ */
    public final C0184 mo691() {
        return this.f4894;
    }

    /* renamed from: ˑﹳ */
    public final C1254 m3849() {
        if (this.f4901 == null) {
            this.f4901 = new C1254(new RunnableC0142(11, this));
            this.f4894.m714(new C1263(this, 3));
        }
        return this.f4901;
    }

    /* renamed from: ᵎﹶ */
    public final void m3850() {
        getWindow().getDecorView().setTag(R.id.79b, this);
        getWindow().getDecorView().setTag(R.id.39d, this);
        getWindow().getDecorView().setTag(R.id.59v, this);
        getWindow().getDecorView().setTag(R.id.1ra, this);
        getWindow().getDecorView().setTag(R.id.4e9, this);
    }

    @Override // androidx.lifecycle.InterfaceC0191
    /* renamed from: ᵔי */
    public final C0180 mo724() {
        if (getApplication() == null) {
            throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
        }
        if (this.f4896 == null) {
            C1251 c1251 = (C1251) getLastNonConfigurationInstance();
            if (c1251 != null) {
                this.f4896 = c1251.f4864;
            }
            if (this.f4896 == null) {
                this.f4896 = new C0180();
            }
        }
        return this.f4896;
    }

    /* renamed from: ᵔᵢ */
    public final AbstractC3235 m3851(com.bumptech.glide.ˈ r3, InterfaceC3239 interfaceC3239) {
        return this.f4904.m3862("activity_rq#" + this.f4900.getAndIncrement(), this, r3, interfaceC3239);
    }

    @Override // p333.InterfaceC4203
    /* renamed from: ﾞᴵ */
    public final C3125 mo3852() {
        return (C3125) this.f4903.f13456;
    }
}
