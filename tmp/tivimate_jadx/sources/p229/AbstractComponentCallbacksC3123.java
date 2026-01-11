package p229;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.strictmode.Violation;
import androidx.leanback.widget.RunnableC0142;
import androidx.lifecycle.AbstractC0157;
import androidx.lifecycle.AbstractC0161;
import androidx.lifecycle.C0177;
import androidx.lifecycle.C0180;
import androidx.lifecycle.C0184;
import androidx.lifecycle.C0190;
import androidx.lifecycle.C0193;
import androidx.lifecycle.EnumC0199;
import androidx.lifecycle.InterfaceC0158;
import androidx.lifecycle.InterfaceC0162;
import androidx.lifecycle.InterfaceC0191;
import androidx.lifecycle.RunnableC0197;
import ar.tvplayer.tv.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import p011.AbstractC0864;
import p026.C1079;
import p077.C1666;
import p137.AbstractC2305;
import p242.AbstractC3235;
import p242.InterfaceC3239;
import p262.C3433;
import p294.AbstractC3655;
import p294.C3656;
import p333.InterfaceC4203;
import p363.AbstractActivityC4410;
import ʼ.ᵎﹶ;
import ˊⁱ.ˑﹳ;
import יˋ.ˈ;

/* renamed from: ˑʼ.ᴵᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractComponentCallbacksC3123 implements ComponentCallbacks, View.OnCreateContextMenuListener, InterfaceC0162, InterfaceC0191, InterfaceC0158, InterfaceC4203 {

    /* renamed from: ⁱˉ, reason: contains not printable characters */
    public static final Object f11886 = new Object();

    /* renamed from: ʻᵎ, reason: contains not printable characters */
    public ViewGroup f11888;

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public int f11889;

    /* renamed from: ʼـ, reason: contains not printable characters */
    public C3433 f11890;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public SparseArray f11891;

    /* renamed from: ʿ, reason: contains not printable characters */
    public int f11897;

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public String f11898;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public boolean f11899;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public boolean f11900;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public Bundle f11902;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public int f11904;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public Bundle f11906;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public boolean f11907;

    /* renamed from: ˊᵔ, reason: contains not printable characters */
    public View f11908;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public boolean f11909;

    /* renamed from: ˎᐧ, reason: contains not printable characters */
    public int f11910;

    /* renamed from: ˑ, reason: contains not printable characters */
    public C0193 f11912;

    /* renamed from: ˑʼ, reason: contains not printable characters */
    public boolean f11913;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public boolean f11914;

    /* renamed from: י, reason: contains not printable characters */
    public C3115 f11915;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public C3085 f11917;

    /* renamed from: ـᵎ, reason: contains not printable characters */
    public String f11918;

    /* renamed from: ـﹶ, reason: contains not printable characters */
    public boolean f11919;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public AbstractComponentCallbacksC3123 f11921;

    /* renamed from: ٴﹳ, reason: contains not printable characters */
    public LayoutInflater f11922;

    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public boolean f11923;

    /* renamed from: ᐧﹶ, reason: contains not printable characters */
    public C0184 f11924;

    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    public boolean f11925;

    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public boolean f11926;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public Bundle f11927;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public AbstractComponentCallbacksC3123 f11928;

    /* renamed from: ᵎʻ, reason: contains not printable characters */
    public boolean f11930;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public boolean f11931;

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public boolean f11932;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public int f11933;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public boolean f11934;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public boolean f11935;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public C3114 f11936;

    /* renamed from: ﹳﹳ, reason: contains not printable characters */
    public Handler f11937;

    /* renamed from: ﹶᐧ, reason: contains not printable characters */
    public C3121 f11938;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public int f11895 = -1;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public String f11929 = UUID.randomUUID().toString();

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public String f11905 = null;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public Boolean f11920 = null;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public C3085 f11903 = new C3085();

    /* renamed from: ˏᵢ, reason: contains not printable characters */
    public final boolean f11911 = true;

    /* renamed from: ˈˏ, reason: contains not printable characters */
    public boolean f11901 = true;

    /* renamed from: ʻˋ, reason: contains not printable characters */
    public final RunnableC3084 f11887 = new RunnableC3084(0, this);

    /* renamed from: ʽᵔ, reason: contains not printable characters */
    public EnumC0199 f11892 = EnumC0199.f1105;

    /* renamed from: ʾˊ, reason: contains not printable characters */
    public final C0177 f11894 = new AbstractC0161();

    /* renamed from: יﹳ, reason: contains not printable characters */
    public final AtomicInteger f11916 = new AtomicInteger();

    /* renamed from: ʽⁱ, reason: contains not printable characters */
    public final ArrayList f11893 = new ArrayList();

    /* renamed from: ʾﾞ, reason: contains not printable characters */
    public final C3075 f11896 = new C3075(this);

    /* JADX WARN: Type inference failed for: r0v8, types: [androidx.lifecycle.ˊʻ, androidx.lifecycle.ʽʽ] */
    public AbstractComponentCallbacksC3123() {
        m6789();
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        this.f11926 = true;
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public final void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        m6806().onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
        this.f11926 = true;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append(getClass().getSimpleName());
        sb.append("{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} (");
        sb.append(this.f11929);
        if (this.f11904 != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.f11904));
        }
        if (this.f11898 != null) {
            sb.append(" tag=");
            sb.append(this.f11898);
        }
        sb.append(")");
        return sb.toString();
    }

    /* renamed from: ʻʿ, reason: contains not printable characters */
    public final Context m6779() {
        Context mo4203 = mo4203();
        if (mo4203 != null) {
            return mo4203;
        }
        throw new IllegalStateException(AbstractC2305.m5361("Fragment ", this, " not attached to a context."));
    }

    /* renamed from: ʻˋ, reason: contains not printable characters */
    public final boolean m6780() {
        View view;
        return (!m6786() || m6812() || (view = this.f11908) == null || view.getWindowToken() == null || this.f11908.getVisibility() != 0) ? false : true;
    }

    /* renamed from: ʻᴵ */
    public void mo3061(View view, Bundle bundle) {
    }

    /* renamed from: ʻᵎ, reason: contains not printable characters */
    public final C3115 m6781() {
        C3115 c3115 = this.f11915;
        if (c3115 != null) {
            return c3115;
        }
        throw new IllegalStateException(AbstractC2305.m5361("Can't access the Fragment View's LifecycleOwner for ", this, " when getView() is null i.e., before onCreateView() or after onDestroyView()"));
    }

    /* renamed from: ʼـ */
    public LayoutInflater mo6621(Bundle bundle) {
        C3114 c3114 = this.f11936;
        if (c3114 == null) {
            throw new IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
        }
        AbstractActivityC4410 abstractActivityC4410 = c3114.f11852;
        LayoutInflater cloneInContext = abstractActivityC4410.getLayoutInflater().cloneInContext(abstractActivityC4410);
        cloneInContext.setFactory2(this.f11903.f11763);
        return cloneInContext;
    }

    /* renamed from: ʼᵢ, reason: contains not printable characters */
    public final void m6782(Intent intent) {
        C3114 c3114 = this.f11936;
        if (c3114 == null) {
            throw new IllegalStateException(AbstractC2305.m5361("Fragment ", this, " not attached to Activity"));
        }
        c3114.f11849.startActivity(intent, null);
    }

    /* renamed from: ʽˑ, reason: contains not printable characters */
    public final void m6783(Cloneable cloneable) {
        m6787().f11874 = cloneable;
    }

    /* renamed from: ʽᵔ */
    public void mo421(Bundle bundle) {
        this.f11926 = true;
        m6796();
        C3085 c3085 = this.f11903;
        if (c3085.f11744 >= 1) {
            return;
        }
        c3085.f11751 = false;
        c3085.f11745 = false;
        c3085.f11741.f11948 = false;
        c3085.m6663(1);
    }

    /* renamed from: ʽⁱ */
    public void mo422() {
        this.f11926 = true;
    }

    /* renamed from: ʾˊ */
    public void mo423() {
        this.f11926 = true;
    }

    @Override // androidx.lifecycle.InterfaceC0158
    /* renamed from: ʾˋ */
    public final C1079 mo677() {
        Application application;
        Context applicationContext = m6779().getApplicationContext();
        while (true) {
            if (!(applicationContext instanceof ContextWrapper)) {
                application = null;
                break;
            }
            if (applicationContext instanceof Application) {
                application = (Application) applicationContext;
                break;
            }
            applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
        }
        if (application == null && C3085.m6654(3)) {
            String str = "Could not find Application instance from Context " + m6779().getApplicationContext() + ", you will not be able to use AndroidViewModel with the default ViewModelProvider.Factory";
        }
        C1079 c1079 = new C1079();
        if (application != null) {
            c1079.m3425(C0190.f1086, application);
        }
        c1079.m3425(AbstractC0157.f1033, this);
        c1079.m3425(AbstractC0157.f1032, this);
        Bundle bundle = this.f11906;
        if (bundle != null) {
            c1079.m3425(AbstractC0157.f1029, bundle);
        }
        return c1079;
    }

    /* renamed from: ʾﾞ */
    public void mo424(Bundle bundle) {
    }

    /* renamed from: ʿ */
    public Context mo4203() {
        C3114 c3114 = this.f11936;
        if (c3114 == null) {
            return null;
        }
        return c3114.f11849;
    }

    /* renamed from: ʿـ, reason: contains not printable characters */
    public final void m6784() {
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        m6787().f11878 = true;
        Handler handler = this.f11937;
        RunnableC3084 runnableC3084 = this.f11887;
        if (handler != null) {
            handler.removeCallbacks(runnableC3084);
        }
        C3085 c3085 = this.f11917;
        if (c3085 != null) {
            this.f11937 = c3085.f11729.f11853;
        } else {
            this.f11937 = new Handler(Looper.getMainLooper());
        }
        this.f11937.removeCallbacks(runnableC3084);
        this.f11937.postDelayed(runnableC3084, timeUnit.toMillis(500L));
    }

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public final int m6785() {
        EnumC0199 enumC0199 = this.f11892;
        return (enumC0199 == EnumC0199.f1104 || this.f11928 == null) ? enumC0199.ordinal() : Math.min(enumC0199.ordinal(), this.f11928.m6785());
    }

    /* renamed from: ˈˏ, reason: contains not printable characters */
    public final boolean m6786() {
        return this.f11936 != null && this.f11931;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, ˑʼ.ᴵˊ] */
    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public final C3121 m6787() {
        if (this.f11938 == null) {
            ?? obj = new Object();
            obj.f11866 = null;
            Object obj2 = f11886;
            obj.f11869 = obj2;
            obj.f11874 = null;
            obj.f11881 = obj2;
            obj.f11871 = null;
            obj.f11876 = obj2;
            obj.f11872 = 1.0f;
            obj.f11867 = null;
            this.f11938 = obj;
        }
        return this.f11938;
    }

    /* renamed from: ˉـ, reason: contains not printable characters */
    public final C3085 m6788() {
        if (this.f11936 != null) {
            return this.f11903;
        }
        throw new IllegalStateException(AbstractC2305.m5361("Fragment ", this, " has not been attached yet."));
    }

    /* renamed from: ˊᵔ, reason: contains not printable characters */
    public final void m6789() {
        this.f11924 = new C0184(this);
        this.f11890 = new C3433(new C1666(this, new ˈ(29, this)));
        this.f11912 = null;
        ArrayList arrayList = this.f11893;
        C3075 c3075 = this.f11896;
        if (arrayList.contains(c3075)) {
            return;
        }
        if (this.f11895 >= 0) {
            c3075.mo6633();
        } else {
            arrayList.add(c3075);
        }
    }

    /* renamed from: ˋˊ, reason: contains not printable characters */
    public final void m6790(AbstractC0864 abstractC0864) {
        if (abstractC0864 != null) {
            C3656 c3656 = AbstractC3655.f14317;
            AbstractC3655.m7674(new Violation(this, "Attempting to set target fragment " + abstractC0864 + " with request code 0 for fragment " + this));
            AbstractC3655.m7675(this).getClass();
        }
        C3085 c3085 = this.f11917;
        C3085 c30852 = abstractC0864 != null ? abstractC0864.f11917 : null;
        if (c3085 != null && c30852 != null && c3085 != c30852) {
            throw new IllegalArgumentException("Fragment " + abstractC0864 + " must share the same FragmentManager to be set as a target fragment");
        }
        for (AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = abstractC0864; abstractComponentCallbacksC3123 != null; abstractComponentCallbacksC3123 = abstractComponentCallbacksC3123.m6802(false)) {
            if (super.equals(this)) {
                throw new IllegalArgumentException("Setting " + abstractC0864 + " as the target of " + this + " would create a target cycle");
            }
        }
        if (abstractC0864 == null) {
            this.f11905 = null;
            this.f11921 = null;
        } else if (this.f11917 == null || abstractC0864.f11917 == null) {
            this.f11905 = null;
            this.f11921 = abstractC0864;
        } else {
            this.f11905 = abstractC0864.f11929;
            this.f11921 = null;
        }
        this.f11933 = 0;
    }

    @Override // androidx.lifecycle.InterfaceC0162
    /* renamed from: ˋᵔ */
    public final C0184 mo691() {
        return this.f11924;
    }

    /* renamed from: ˎᐧ */
    public void mo4201() {
        this.f11926 = true;
    }

    /* renamed from: ˏᵢ, reason: contains not printable characters */
    public final String m6791(int i, Object... objArr) {
        return m6801().getString(i, objArr);
    }

    /* renamed from: ˑ */
    public void mo6624() {
        this.f11926 = true;
    }

    /* renamed from: ˑʼ */
    public void mo6625() {
        this.f11926 = true;
    }

    /* renamed from: י, reason: contains not printable characters */
    public void m6792() {
        this.f11926 = true;
    }

    /* renamed from: יˉ, reason: contains not printable characters */
    public final void m6793() {
        if (this.f11938 == null || !m6787().f11878) {
            return;
        }
        if (this.f11936 == null) {
            m6787().f11878 = false;
        } else if (Looper.myLooper() != this.f11936.f11853.getLooper()) {
            this.f11936.f11853.postAtFrontOfQueue(new RunnableC3084(1, this));
        } else {
            m6795(true);
        }
    }

    /* renamed from: יﹳ, reason: contains not printable characters */
    public void m6794(boolean z) {
    }

    /* renamed from: ـˊ */
    public void mo6627(Bundle bundle) {
        this.f11926 = true;
    }

    /* renamed from: ـˏ, reason: contains not printable characters */
    public final void m6795(boolean z) {
        ViewGroup viewGroup;
        C3085 c3085;
        C3133 c3133;
        C3121 c3121 = this.f11938;
        if (c3121 != null) {
            c3121.f11878 = false;
        }
        if (this.f11908 == null || (viewGroup = this.f11888) == null || (c3085 = this.f11917) == null) {
            return;
        }
        c3085.m6704();
        Object tag = viewGroup.getTag(R.id.qp);
        if (tag instanceof C3133) {
            c3133 = (C3133) tag;
        } else {
            c3133 = new C3133(viewGroup);
            viewGroup.setTag(R.id.qp, c3133);
        }
        c3133.m6871();
        if (z) {
            this.f11936.f11853.post(new RunnableC0142(24, c3133));
        } else {
            c3133.m6870();
        }
        Handler handler = this.f11937;
        if (handler != null) {
            handler.removeCallbacks(this.f11887);
            this.f11937 = null;
        }
    }

    /* renamed from: ـᵎ */
    public void mo6628(Context context) {
        this.f11926 = true;
        C3114 c3114 = this.f11936;
        AbstractActivityC4410 abstractActivityC4410 = c3114 == null ? null : c3114.f11851;
        if (abstractActivityC4410 != null) {
            this.f11926 = false;
            m6804(abstractActivityC4410);
        }
    }

    /* renamed from: ـᵢ, reason: contains not printable characters */
    public final void m6796() {
        Bundle bundle;
        Bundle bundle2 = this.f11927;
        if (bundle2 == null || (bundle = bundle2.getBundle("childFragmentManager")) == null) {
            return;
        }
        this.f11903.m6692(bundle);
        C3085 c3085 = this.f11903;
        c3085.f11751 = false;
        c3085.f11745 = false;
        c3085.f11741.f11948 = false;
        c3085.m6663(1);
    }

    /* renamed from: ـﹶ, reason: contains not printable characters */
    public final void m6797() {
        m6789();
        this.f11918 = this.f11929;
        this.f11929 = UUID.randomUUID().toString();
        this.f11931 = false;
        this.f11934 = false;
        this.f11935 = false;
        this.f11900 = false;
        this.f11909 = false;
        this.f11889 = 0;
        this.f11917 = null;
        this.f11903 = new C3085();
        this.f11936 = null;
        this.f11904 = 0;
        this.f11897 = 0;
        this.f11898 = null;
        this.f11932 = false;
        this.f11925 = false;
    }

    /* renamed from: ٴᴵ, reason: contains not printable characters */
    public final void m6798(int i, int i2, int i3, int i4) {
        if (this.f11938 == null && i == 0 && i2 == 0 && i3 == 0 && i4 == 0) {
            return;
        }
        m6787().f11879 = i;
        m6787().f11868 = i2;
        m6787().f11870 = i3;
        m6787().f11873 = i4;
    }

    /* renamed from: ٴﹳ, reason: contains not printable characters */
    public void m6799(int i, int i2, Intent intent) {
        if (C3085.m6654(2)) {
            String str = "Fragment " + this + " received the following in onActivityResult(): requestCode: " + i + " resultCode: " + i2 + " data: " + intent;
        }
    }

    /* renamed from: ᐧˎ */
    public void mo2400() {
        this.f11926 = true;
    }

    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public final String m6800(int i) {
        return m6801().getString(i);
    }

    /* renamed from: ᐧﹶ */
    public View mo435(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i = this.f11910;
        if (i != 0) {
            return layoutInflater.inflate(i, viewGroup, false);
        }
        return null;
    }

    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    public final Resources m6801() {
        return m6779().getResources();
    }

    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public final AbstractComponentCallbacksC3123 m6802(boolean z) {
        String str;
        if (z) {
            C3656 c3656 = AbstractC3655.f14317;
            AbstractC3655.m7674(new Violation(this, "Attempting to get target fragment from fragment " + this));
            AbstractC3655.m7675(this).getClass();
        }
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = this.f11921;
        if (abstractComponentCallbacksC3123 != null) {
            return abstractComponentCallbacksC3123;
        }
        C3085 c3085 = this.f11917;
        if (c3085 == null || (str = this.f11905) == null) {
            return null;
        }
        return c3085.f11725.ᵔﹳ(str);
    }

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public final AbstractActivityC4410 m6803() {
        C3114 c3114 = this.f11936;
        if (c3114 == null) {
            return null;
        }
        return c3114.f11851;
    }

    /* renamed from: ᵎʻ, reason: contains not printable characters */
    public void m6804(Activity activity) {
        this.f11926 = true;
    }

    /* renamed from: ᵎʿ */
    public void mo6629(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f11903.m6709();
        this.f11907 = true;
        this.f11915 = new C3115(this, mo724(), new RunnableC0197(25, this));
        View mo435 = mo435(layoutInflater, viewGroup, bundle);
        this.f11908 = mo435;
        if (mo435 == null) {
            if (this.f11915.f11856 != null) {
                throw new IllegalStateException("Called getViewLifecycleOwner() but onCreateView() returned null");
            }
            this.f11915 = null;
            return;
        }
        this.f11915.m6756();
        if (C3085.m6654(3)) {
            String str = "Setting ViewLifecycleOwner on View " + this.f11908 + " for Fragment " + this;
        }
        this.f11908.setTag(R.id.79b, this.f11915);
        this.f11908.setTag(R.id.39d, this.f11915);
        this.f11908.setTag(R.id.59v, this.f11915);
        this.f11894.m686(this.f11915);
    }

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public final C3085 m6805() {
        C3085 c3085 = this.f11917;
        if (c3085 != null) {
            return c3085;
        }
        throw new IllegalStateException(AbstractC2305.m5361("Fragment ", this, " not associated with a fragment manager."));
    }

    @Override // androidx.lifecycle.InterfaceC0191
    /* renamed from: ᵔי */
    public final C0180 mo724() {
        if (this.f11917 == null) {
            throw new IllegalStateException("Can't access ViewModels from detached fragment");
        }
        if (m6785() == 1) {
            throw new IllegalStateException("Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported");
        }
        HashMap hashMap = this.f11917.f11741.f11946;
        C0180 c0180 = (C0180) hashMap.get(this.f11929);
        if (c0180 != null) {
            return c0180;
        }
        C0180 c01802 = new C0180();
        hashMap.put(this.f11929, c01802);
        return c01802;
    }

    /* renamed from: ⁱˉ */
    public void mo2402() {
        this.f11926 = true;
    }

    /* renamed from: ⁱי, reason: contains not printable characters */
    public final AbstractActivityC4410 m6806() {
        AbstractActivityC4410 m6803 = m6803();
        if (m6803 != null) {
            return m6803;
        }
        throw new IllegalStateException(AbstractC2305.m5361("Fragment ", this, " not attached to an activity."));
    }

    /* renamed from: ⁱᴵ, reason: contains not printable characters */
    public final void m6807(Bundle bundle) {
        C3085 c3085 = this.f11917;
        if (c3085 != null) {
            if (c3085 == null ? false : c3085.m6658()) {
                throw new IllegalStateException("Fragment already added and state has been saved");
            }
        }
        this.f11906 = bundle;
    }

    /* renamed from: ﹳـ */
    public ᵎﹶ mo6630() {
        return new C3134(this);
    }

    /* renamed from: ﹳⁱ, reason: contains not printable characters */
    public final AbstractC3235 m6808(com.bumptech.glide.ˈ r7, InterfaceC3239 interfaceC3239) {
        ˑﹳ r2 = new ˑﹳ(9, this);
        if (this.f11895 > 1) {
            throw new IllegalStateException(AbstractC2305.m5361("Fragment ", this, " is attempting to registerForActivityResult after being created. Fragments must call registerForActivityResult() before they are created (i.e. initialization, onAttach(), or onCreate())."));
        }
        AtomicReference atomicReference = new AtomicReference();
        C3083 c3083 = new C3083(this, r2, atomicReference, r7, interfaceC3239);
        if (this.f11895 >= 0) {
            c3083.mo6633();
        } else {
            this.f11893.add(c3083);
        }
        return new C3109(atomicReference);
    }

    /* renamed from: ﹳﹳ, reason: contains not printable characters */
    public final boolean m6809() {
        return this.f11889 > 0;
    }

    /* renamed from: ﹶ, reason: contains not printable characters */
    public final View m6810() {
        View view = this.f11908;
        if (view != null) {
            return view;
        }
        throw new IllegalStateException(AbstractC2305.m5361("Fragment ", this, " did not return a View from onCreateView() or this was called before onCreateView()."));
    }

    /* renamed from: ﹶˎ, reason: contains not printable characters */
    public final void m6811(Cloneable cloneable) {
        m6787().f11866 = cloneable;
    }

    /* renamed from: ﹶᐧ, reason: contains not printable characters */
    public final boolean m6812() {
        if (this.f11932) {
            return true;
        }
        C3085 c3085 = this.f11917;
        if (c3085 != null) {
            AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = this.f11928;
            c3085.getClass();
            if (abstractComponentCallbacksC3123 == null ? false : abstractComponentCallbacksC3123.m6812()) {
                return true;
            }
        }
        return false;
    }

    @Override // p333.InterfaceC4203
    /* renamed from: ﾞᴵ */
    public final C3125 mo3852() {
        return (C3125) this.f11890.f13456;
    }
}
