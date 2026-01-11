package p229;

import android.content.res.Resources;
import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AndroidRuntimeException;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.fragment.app.FragmentContainerView;
import androidx.fragment.app.strictmode.Violation;
import androidx.lifecycle.C0184;
import androidx.lifecycle.EnumC0174;
import androidx.lifecycle.EnumC0199;
import ar.tvplayer.tv.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.WeakHashMap;
import p010.AbstractC0844;
import p026.C1081;
import p035.AbstractC1220;
import p044.ViewOnAttachStateChangeListenerC1333;
import p137.AbstractC2305;
import p152.AbstractC2443;
import p152.C2461;
import p186.AbstractC2780;
import p186.AbstractC2823;
import p223.C3056;
import p255.C3360;
import p258.C3398;
import p294.AbstractC3655;
import p294.C3656;
import p333.C4204;
import p363.AbstractActivityC4410;
import ˏˆ.ﹳٴ;

/* renamed from: ˑʼ.ᴵʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3120 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final AbstractComponentCallbacksC3123 f11861;

    /* renamed from: ˈ, reason: contains not printable characters */
    public boolean f11862 = false;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f11863 = -1;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final ﹳٴ f11864;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3125 f11865;

    public C3120(C3125 c3125, ﹳٴ r3, ClassLoader classLoader, C3105 c3105, Bundle bundle) {
        this.f11865 = c3125;
        this.f11864 = r3;
        C3103 c3103 = (C3103) bundle.getParcelable("state");
        AbstractComponentCallbacksC3123 m6752 = c3105.m6752(c3103.f11820);
        m6752.f11929 = c3103.f11828;
        m6752.f11935 = c3103.f11819;
        m6752.f11914 = c3103.f11823;
        m6752.f11909 = true;
        m6752.f11904 = c3103.f11829;
        m6752.f11897 = c3103.f11825;
        m6752.f11898 = c3103.f11827;
        m6752.f11923 = c3103.f11824;
        m6752.f11934 = c3103.f11831;
        m6752.f11925 = c3103.f11826;
        m6752.f11932 = c3103.f11830;
        m6752.f11892 = EnumC0199.values()[c3103.f11832];
        m6752.f11905 = c3103.f11821;
        m6752.f11933 = c3103.f11833;
        m6752.f11901 = c3103.f11822;
        this.f11861 = m6752;
        m6752.f11927 = bundle;
        Bundle bundle2 = bundle.getBundle("arguments");
        if (bundle2 != null) {
            bundle2.setClassLoader(classLoader);
        }
        m6752.m6807(bundle2);
        if (C3085.m6654(2)) {
            String str = "Instantiated fragment " + m6752;
        }
    }

    public C3120(C3125 c3125, ﹳٴ r3, AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123) {
        this.f11865 = c3125;
        this.f11864 = r3;
        this.f11861 = abstractComponentCallbacksC3123;
    }

    public C3120(C3125 c3125, ﹳٴ r4, AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123, Bundle bundle) {
        this.f11865 = c3125;
        this.f11864 = r4;
        this.f11861 = abstractComponentCallbacksC3123;
        abstractComponentCallbacksC3123.f11891 = null;
        abstractComponentCallbacksC3123.f11902 = null;
        abstractComponentCallbacksC3123.f11889 = 0;
        abstractComponentCallbacksC3123.f11900 = false;
        abstractComponentCallbacksC3123.f11931 = false;
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC31232 = abstractComponentCallbacksC3123.f11921;
        abstractComponentCallbacksC3123.f11905 = abstractComponentCallbacksC31232 != null ? abstractComponentCallbacksC31232.f11929 : null;
        abstractComponentCallbacksC3123.f11921 = null;
        abstractComponentCallbacksC3123.f11927 = bundle;
        abstractComponentCallbacksC3123.f11906 = bundle.getBundle("arguments");
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void m6761() {
        boolean m6654 = C3085.m6654(3);
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = this.f11861;
        if (m6654) {
            String str = "movefrom ATTACHED: " + abstractComponentCallbacksC3123;
        }
        abstractComponentCallbacksC3123.f11895 = -1;
        abstractComponentCallbacksC3123.f11926 = false;
        abstractComponentCallbacksC3123.mo6624();
        abstractComponentCallbacksC3123.f11922 = null;
        if (!abstractComponentCallbacksC3123.f11926) {
            throw new AndroidRuntimeException(AbstractC2305.m5361("Fragment ", abstractComponentCallbacksC3123, " did not call through to super.onDetach()"));
        }
        C3085 c3085 = abstractComponentCallbacksC3123.f11903;
        if (!c3085.f11750) {
            c3085.m6714();
            abstractComponentCallbacksC3123.f11903 = new C3085();
        }
        this.f11865.m6822(abstractComponentCallbacksC3123, false);
        abstractComponentCallbacksC3123.f11895 = -1;
        abstractComponentCallbacksC3123.f11936 = null;
        abstractComponentCallbacksC3123.f11928 = null;
        abstractComponentCallbacksC3123.f11917 = null;
        if (!abstractComponentCallbacksC3123.f11934 || abstractComponentCallbacksC3123.m6809()) {
            C3126 c3126 = (C3126) this.f11864.ᴵᵔ;
            if (!((c3126.f11949.containsKey(abstractComponentCallbacksC3123.f11929) && c3126.f11947) ? c3126.f11950 : true)) {
                return;
            }
        }
        if (C3085.m6654(3)) {
            String str2 = "initState called for fragment: " + abstractComponentCallbacksC3123;
        }
        abstractComponentCallbacksC3123.m6797();
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final void m6762() {
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = this.f11861;
        if (abstractComponentCallbacksC3123.f11908 == null) {
            return;
        }
        if (C3085.m6654(2)) {
            String str = "Saving view state for fragment " + abstractComponentCallbacksC3123 + " with view " + abstractComponentCallbacksC3123.f11908;
        }
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        abstractComponentCallbacksC3123.f11908.saveHierarchyState(sparseArray);
        if (sparseArray.size() > 0) {
            abstractComponentCallbacksC3123.f11891 = sparseArray;
        }
        Bundle bundle = new Bundle();
        abstractComponentCallbacksC3123.f11915.f11858.m7332(bundle);
        if (bundle.isEmpty()) {
            return;
        }
        abstractComponentCallbacksC3123.f11902 = bundle;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m6763() {
        boolean m6654 = C3085.m6654(3);
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = this.f11861;
        if (m6654) {
            String str = "moveto ATTACHED: " + abstractComponentCallbacksC3123;
        }
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC31232 = abstractComponentCallbacksC3123.f11921;
        C3120 c3120 = null;
        ﹳٴ r5 = this.f11864;
        if (abstractComponentCallbacksC31232 != null) {
            C3120 c31202 = (C3120) ((HashMap) r5.ʽʽ).get(abstractComponentCallbacksC31232.f11929);
            if (c31202 == null) {
                throw new IllegalStateException("Fragment " + abstractComponentCallbacksC3123 + " declared target fragment " + abstractComponentCallbacksC3123.f11921 + " that does not belong to this FragmentManager!");
            }
            abstractComponentCallbacksC3123.f11905 = abstractComponentCallbacksC3123.f11921.f11929;
            abstractComponentCallbacksC3123.f11921 = null;
            c3120 = c31202;
        } else {
            String str2 = abstractComponentCallbacksC3123.f11905;
            if (str2 != null && (c3120 = (C3120) ((HashMap) r5.ʽʽ).get(str2)) == null) {
                StringBuilder sb = new StringBuilder("Fragment ");
                sb.append(abstractComponentCallbacksC3123);
                sb.append(" declared target fragment ");
                throw new IllegalStateException(AbstractC1220.m3775(sb, abstractComponentCallbacksC3123.f11905, " that does not belong to this FragmentManager!"));
            }
        }
        if (c3120 != null) {
            c3120.m6769();
        }
        C3085 c3085 = abstractComponentCallbacksC3123.f11917;
        abstractComponentCallbacksC3123.f11936 = c3085.f11729;
        abstractComponentCallbacksC3123.f11928 = c3085.f11758;
        C3125 c3125 = this.f11865;
        c3125.m6852(abstractComponentCallbacksC3123, false);
        ArrayList arrayList = abstractComponentCallbacksC3123.f11893;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ((AbstractC3080) obj).mo6633();
        }
        arrayList.clear();
        abstractComponentCallbacksC3123.f11903.m6708(abstractComponentCallbacksC3123.f11936, abstractComponentCallbacksC3123.mo6630(), abstractComponentCallbacksC3123);
        abstractComponentCallbacksC3123.f11895 = 0;
        abstractComponentCallbacksC3123.f11926 = false;
        abstractComponentCallbacksC3123.mo6628(abstractComponentCallbacksC3123.f11936.f11849);
        if (!abstractComponentCallbacksC3123.f11926) {
            throw new AndroidRuntimeException(AbstractC2305.m5361("Fragment ", abstractComponentCallbacksC3123, " did not call through to super.onAttach()"));
        }
        Iterator it = abstractComponentCallbacksC3123.f11917.f11757.iterator();
        while (it.hasNext()) {
            ((InterfaceC3119) it.next()).mo6723();
        }
        C3085 c30852 = abstractComponentCallbacksC3123.f11903;
        c30852.f11751 = false;
        c30852.f11745 = false;
        c30852.f11741.f11948 = false;
        c30852.m6663(0);
        c3125.m6837(abstractComponentCallbacksC3123, false);
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void m6764() {
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = this.f11861;
        if (abstractComponentCallbacksC3123.f11935 && abstractComponentCallbacksC3123.f11900 && !abstractComponentCallbacksC3123.f11907) {
            if (C3085.m6654(3)) {
                String str = "moveto CREATE_VIEW: " + abstractComponentCallbacksC3123;
            }
            Bundle bundle = abstractComponentCallbacksC3123.f11927;
            Bundle bundle2 = bundle != null ? bundle.getBundle("savedInstanceState") : null;
            LayoutInflater mo6621 = abstractComponentCallbacksC3123.mo6621(bundle2);
            abstractComponentCallbacksC3123.f11922 = mo6621;
            abstractComponentCallbacksC3123.mo6629(mo6621, null, bundle2);
            View view = abstractComponentCallbacksC3123.f11908;
            if (view != null) {
                view.setSaveFromParentEnabled(false);
                abstractComponentCallbacksC3123.f11908.setTag(R.id.3cv, abstractComponentCallbacksC3123);
                if (abstractComponentCallbacksC3123.f11932) {
                    abstractComponentCallbacksC3123.f11908.setVisibility(8);
                }
                Bundle bundle3 = abstractComponentCallbacksC3123.f11927;
                abstractComponentCallbacksC3123.mo3061(abstractComponentCallbacksC3123.f11908, bundle3 != null ? bundle3.getBundle("savedInstanceState") : null);
                abstractComponentCallbacksC3123.f11903.m6663(2);
                this.f11865.m6831(abstractComponentCallbacksC3123, abstractComponentCallbacksC3123.f11908, false);
                abstractComponentCallbacksC3123.f11895 = 2;
            }
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int m6765() {
        C3133 c3133;
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = this.f11861;
        if (abstractComponentCallbacksC3123.f11917 == null) {
            return abstractComponentCallbacksC3123.f11895;
        }
        int i = this.f11863;
        int ordinal = abstractComponentCallbacksC3123.f11892.ordinal();
        if (ordinal == 1) {
            i = Math.min(i, 0);
        } else if (ordinal == 2) {
            i = Math.min(i, 1);
        } else if (ordinal == 3) {
            i = Math.min(i, 5);
        } else if (ordinal != 4) {
            i = Math.min(i, -1);
        }
        if (abstractComponentCallbacksC3123.f11935) {
            if (abstractComponentCallbacksC3123.f11900) {
                i = Math.max(this.f11863, 2);
                View view = abstractComponentCallbacksC3123.f11908;
                if (view != null && view.getParent() == null) {
                    i = Math.min(i, 2);
                }
            } else {
                i = this.f11863 < 4 ? Math.min(i, abstractComponentCallbacksC3123.f11895) : Math.min(i, 1);
            }
        }
        if (abstractComponentCallbacksC3123.f11914 && abstractComponentCallbacksC3123.f11888 == null) {
            i = Math.min(i, 4);
        }
        if (!abstractComponentCallbacksC3123.f11931) {
            i = Math.min(i, 1);
        }
        ViewGroup viewGroup = abstractComponentCallbacksC3123.f11888;
        if (viewGroup != null) {
            abstractComponentCallbacksC3123.m6805().m6704();
            Object tag = viewGroup.getTag(R.id.qp);
            if (tag instanceof C3133) {
                c3133 = (C3133) tag;
            } else {
                c3133 = new C3133(viewGroup);
                viewGroup.setTag(R.id.qp, c3133);
            }
            C3081 m6872 = c3133.m6872(abstractComponentCallbacksC3123);
            int i2 = m6872 != null ? m6872.f11708 : 0;
            C3081 m6873 = c3133.m6873(abstractComponentCallbacksC3123);
            r3 = m6873 != null ? m6873.f11708 : 0;
            int i3 = i2 == 0 ? -1 : AbstractC3118.f11860[AbstractC0844.m3018(i2)];
            if (i3 != -1 && i3 != 1) {
                r3 = i2;
            }
        }
        if (r3 == 2) {
            i = Math.min(i, 6);
        } else if (r3 == 3) {
            i = Math.max(i, 3);
        } else if (abstractComponentCallbacksC3123.f11934) {
            i = abstractComponentCallbacksC3123.m6809() ? Math.min(i, 1) : Math.min(i, -1);
        }
        if (abstractComponentCallbacksC3123.f11919 && abstractComponentCallbacksC3123.f11895 < 5) {
            i = Math.min(i, 4);
        }
        if (abstractComponentCallbacksC3123.f11899) {
            i = Math.max(i, 3);
        }
        if (C3085.m6654(2)) {
            String str = "computeExpectedState() of " + i + " for " + abstractComponentCallbacksC3123;
        }
        return i;
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final void m6766(ClassLoader classLoader) {
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = this.f11861;
        Bundle bundle = abstractComponentCallbacksC3123.f11927;
        if (bundle == null) {
            return;
        }
        bundle.setClassLoader(classLoader);
        if (abstractComponentCallbacksC3123.f11927.getBundle("savedInstanceState") == null) {
            abstractComponentCallbacksC3123.f11927.putBundle("savedInstanceState", new Bundle());
        }
        try {
            abstractComponentCallbacksC3123.f11891 = abstractComponentCallbacksC3123.f11927.getSparseParcelableArray("viewState");
            abstractComponentCallbacksC3123.f11902 = abstractComponentCallbacksC3123.f11927.getBundle("viewRegistryState");
            C3103 c3103 = (C3103) abstractComponentCallbacksC3123.f11927.getParcelable("state");
            if (c3103 != null) {
                abstractComponentCallbacksC3123.f11905 = c3103.f11821;
                abstractComponentCallbacksC3123.f11933 = c3103.f11833;
                abstractComponentCallbacksC3123.f11901 = c3103.f11822;
            }
            if (abstractComponentCallbacksC3123.f11901) {
                return;
            }
            abstractComponentCallbacksC3123.f11919 = true;
        } catch (BadParcelableException e) {
            throw new IllegalStateException("Failed to restore view hierarchy state for fragment " + abstractComponentCallbacksC3123, e);
        }
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final Bundle m6767() {
        Bundle bundle;
        Bundle bundle2 = new Bundle();
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = this.f11861;
        if (abstractComponentCallbacksC3123.f11895 == -1 && (bundle = abstractComponentCallbacksC3123.f11927) != null) {
            bundle2.putAll(bundle);
        }
        bundle2.putParcelable("state", new C3103(abstractComponentCallbacksC3123));
        if (abstractComponentCallbacksC3123.f11895 > 0) {
            Bundle bundle3 = new Bundle();
            abstractComponentCallbacksC3123.mo424(bundle3);
            if (!bundle3.isEmpty()) {
                bundle2.putBundle("savedInstanceState", bundle3);
            }
            this.f11865.m6819(abstractComponentCallbacksC3123, bundle3, false);
            Bundle bundle4 = new Bundle();
            abstractComponentCallbacksC3123.f11890.m7332(bundle4);
            if (!bundle4.isEmpty()) {
                bundle2.putBundle("registryState", bundle4);
            }
            Bundle m6681 = abstractComponentCallbacksC3123.f11903.m6681();
            if (!m6681.isEmpty()) {
                bundle2.putBundle("childFragmentManager", m6681);
            }
            if (abstractComponentCallbacksC3123.f11908 != null) {
                m6762();
            }
            SparseArray<? extends Parcelable> sparseArray = abstractComponentCallbacksC3123.f11891;
            if (sparseArray != null) {
                bundle2.putSparseParcelableArray("viewState", sparseArray);
            }
            Bundle bundle5 = abstractComponentCallbacksC3123.f11902;
            if (bundle5 != null) {
                bundle2.putBundle("viewRegistryState", bundle5);
            }
        }
        Bundle bundle6 = abstractComponentCallbacksC3123.f11906;
        if (bundle6 != null) {
            bundle2.putBundle("arguments", bundle6);
        }
        return bundle2;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m6768() {
        boolean m6654 = C3085.m6654(3);
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = this.f11861;
        if (m6654) {
            String str = "moveto CREATED: " + abstractComponentCallbacksC3123;
        }
        Bundle bundle = abstractComponentCallbacksC3123.f11927;
        Bundle bundle2 = bundle != null ? bundle.getBundle("savedInstanceState") : null;
        if (abstractComponentCallbacksC3123.f11930) {
            abstractComponentCallbacksC3123.f11895 = 1;
            abstractComponentCallbacksC3123.m6796();
            return;
        }
        C3125 c3125 = this.f11865;
        c3125.m6821(abstractComponentCallbacksC3123, false);
        abstractComponentCallbacksC3123.f11903.m6709();
        abstractComponentCallbacksC3123.f11895 = 1;
        abstractComponentCallbacksC3123.f11926 = false;
        abstractComponentCallbacksC3123.f11924.m714(new C4204(3, abstractComponentCallbacksC3123));
        abstractComponentCallbacksC3123.mo421(bundle2);
        abstractComponentCallbacksC3123.f11930 = true;
        if (!abstractComponentCallbacksC3123.f11926) {
            throw new AndroidRuntimeException(AbstractC2305.m5361("Fragment ", abstractComponentCallbacksC3123, " did not call through to super.onCreate()"));
        }
        abstractComponentCallbacksC3123.f11924.m710(EnumC0174.ON_CREATE);
        c3125.m6834(abstractComponentCallbacksC3123, false);
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void m6769() {
        ViewGroup viewGroup;
        C3133 c3133;
        ViewGroup viewGroup2;
        C3133 c31332;
        ViewGroup viewGroup3;
        C3133 c31333;
        ﹳٴ r0 = this.f11864;
        boolean z = this.f11862;
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = this.f11861;
        if (z) {
            if (C3085.m6654(2)) {
                String str = "Ignoring re-entrant call to moveToExpectedState() for " + abstractComponentCallbacksC3123;
                return;
            }
            return;
        }
        try {
            this.f11862 = true;
            boolean z2 = false;
            while (true) {
                int m6765 = m6765();
                int i = abstractComponentCallbacksC3123.f11895;
                int i2 = 3;
                if (m6765 == i) {
                    if (!z2 && i == -1 && abstractComponentCallbacksC3123.f11934 && !abstractComponentCallbacksC3123.m6809()) {
                        if (C3085.m6654(3)) {
                            String str2 = "Cleaning up state of never attached fragment: " + abstractComponentCallbacksC3123;
                        }
                        ((C3126) r0.ᴵᵔ).m6861(abstractComponentCallbacksC3123, true);
                        r0.ᴵˊ(this);
                        if (C3085.m6654(3)) {
                            String str3 = "initState called for fragment: " + abstractComponentCallbacksC3123;
                        }
                        abstractComponentCallbacksC3123.m6797();
                    }
                    if (abstractComponentCallbacksC3123.f11913) {
                        if (abstractComponentCallbacksC3123.f11908 != null && (viewGroup = abstractComponentCallbacksC3123.f11888) != null) {
                            abstractComponentCallbacksC3123.m6805().m6704();
                            Object tag = viewGroup.getTag(R.id.qp);
                            if (tag instanceof C3133) {
                                c3133 = (C3133) tag;
                            } else {
                                c3133 = new C3133(viewGroup);
                                viewGroup.setTag(R.id.qp, c3133);
                            }
                            if (abstractComponentCallbacksC3123.f11932) {
                                if (C3085.m6654(2)) {
                                    String str4 = "SpecialEffectsController: Enqueuing hide operation for fragment " + abstractComponentCallbacksC3123;
                                }
                                c3133.m6868(3, 1, this);
                            } else {
                                if (C3085.m6654(2)) {
                                    String str5 = "SpecialEffectsController: Enqueuing show operation for fragment " + abstractComponentCallbacksC3123;
                                }
                                c3133.m6868(2, 1, this);
                            }
                        }
                        C3085 c3085 = abstractComponentCallbacksC3123.f11917;
                        if (c3085 != null && abstractComponentCallbacksC3123.f11931 && C3085.m6650(abstractComponentCallbacksC3123)) {
                            c3085.f11737 = true;
                        }
                        abstractComponentCallbacksC3123.f11913 = false;
                        abstractComponentCallbacksC3123.f11903.m6675();
                    }
                    this.f11862 = false;
                    return;
                }
                if (m6765 <= i) {
                    switch (i - 1) {
                        case -1:
                            m6761();
                            break;
                        case 0:
                            m6770();
                            break;
                        case 1:
                            m6772();
                            abstractComponentCallbacksC3123.f11895 = 1;
                            break;
                        case 2:
                            abstractComponentCallbacksC3123.f11900 = false;
                            abstractComponentCallbacksC3123.f11895 = 2;
                            break;
                        case 3:
                            if (C3085.m6654(3)) {
                                String str6 = "movefrom ACTIVITY_CREATED: " + abstractComponentCallbacksC3123;
                            }
                            if (abstractComponentCallbacksC3123.f11908 != null && abstractComponentCallbacksC3123.f11891 == null) {
                                m6762();
                            }
                            if (abstractComponentCallbacksC3123.f11908 != null && (viewGroup2 = abstractComponentCallbacksC3123.f11888) != null) {
                                abstractComponentCallbacksC3123.m6805().m6704();
                                Object tag2 = viewGroup2.getTag(R.id.qp);
                                if (tag2 instanceof C3133) {
                                    c31332 = (C3133) tag2;
                                } else {
                                    c31332 = new C3133(viewGroup2);
                                    viewGroup2.setTag(R.id.qp, c31332);
                                }
                                if (C3085.m6654(2)) {
                                    String str7 = "SpecialEffectsController: Enqueuing remove operation for fragment " + abstractComponentCallbacksC3123;
                                }
                                c31332.m6868(1, 3, this);
                            }
                            abstractComponentCallbacksC3123.f11895 = 3;
                            break;
                        case 4:
                            m6776();
                            break;
                        case 5:
                            abstractComponentCallbacksC3123.f11895 = 5;
                            break;
                        case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                            m6777();
                            break;
                    }
                } else {
                    switch (i + 1) {
                        case 0:
                            m6763();
                            break;
                        case 1:
                            m6768();
                            break;
                        case 2:
                            m6764();
                            m6778();
                            break;
                        case 3:
                            m6775();
                            break;
                        case 4:
                            if (abstractComponentCallbacksC3123.f11908 != null && (viewGroup3 = abstractComponentCallbacksC3123.f11888) != null) {
                                abstractComponentCallbacksC3123.m6805().m6704();
                                Object tag3 = viewGroup3.getTag(R.id.qp);
                                if (tag3 instanceof C3133) {
                                    c31333 = (C3133) tag3;
                                } else {
                                    c31333 = new C3133(viewGroup3);
                                    viewGroup3.setTag(R.id.qp, c31333);
                                }
                                int visibility = abstractComponentCallbacksC3123.f11908.getVisibility();
                                if (visibility == 0) {
                                    i2 = 2;
                                } else if (visibility == 4) {
                                    i2 = 4;
                                } else if (visibility != 8) {
                                    throw new IllegalArgumentException("Unknown visibility " + visibility);
                                }
                                if (C3085.m6654(2)) {
                                    String str8 = "SpecialEffectsController: Enqueuing add operation for fragment " + abstractComponentCallbacksC3123;
                                }
                                c31333.m6868(i2, 2, this);
                            }
                            abstractComponentCallbacksC3123.f11895 = 4;
                            break;
                        case 5:
                            m6773();
                            break;
                        case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                            abstractComponentCallbacksC3123.f11895 = 6;
                            break;
                        case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                            m6771();
                            break;
                    }
                }
                z2 = true;
            }
        } catch (Throwable th) {
            this.f11862 = false;
            throw th;
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m6770() {
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123;
        boolean m6654 = C3085.m6654(3);
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC31232 = this.f11861;
        if (m6654) {
            String str = "movefrom CREATED: " + abstractComponentCallbacksC31232;
        }
        boolean z = true;
        int i = 0;
        boolean z2 = abstractComponentCallbacksC31232.f11934 && !abstractComponentCallbacksC31232.m6809();
        ﹳٴ r5 = this.f11864;
        if (z2) {
            r5.ˋᵔ(abstractComponentCallbacksC31232.f11929, (Bundle) null);
        }
        if (!z2) {
            C3126 c3126 = (C3126) r5.ᴵᵔ;
            if (!((c3126.f11949.containsKey(abstractComponentCallbacksC31232.f11929) && c3126.f11947) ? c3126.f11950 : true)) {
                String str2 = abstractComponentCallbacksC31232.f11905;
                if (str2 != null && (abstractComponentCallbacksC3123 = r5.ᵔﹳ(str2)) != null && abstractComponentCallbacksC3123.f11923) {
                    abstractComponentCallbacksC31232.f11921 = abstractComponentCallbacksC3123;
                }
                abstractComponentCallbacksC31232.f11895 = 0;
                return;
            }
        }
        C3114 c3114 = abstractComponentCallbacksC31232.f11936;
        if (c3114 != null) {
            z = ((C3126) r5.ᴵᵔ).f11950;
        } else {
            AbstractActivityC4410 abstractActivityC4410 = c3114.f11849;
            if (AbstractC2305.m5366(abstractActivityC4410)) {
                z = true ^ abstractActivityC4410.isChangingConfigurations();
            }
        }
        if (z2 || z) {
            ((C3126) r5.ᴵᵔ).m6861(abstractComponentCallbacksC31232, false);
        }
        abstractComponentCallbacksC31232.f11903.m6714();
        abstractComponentCallbacksC31232.f11924.m710(EnumC0174.ON_DESTROY);
        abstractComponentCallbacksC31232.f11895 = 0;
        abstractComponentCallbacksC31232.f11926 = false;
        abstractComponentCallbacksC31232.f11930 = false;
        abstractComponentCallbacksC31232.m6792();
        if (!abstractComponentCallbacksC31232.f11926) {
            throw new AndroidRuntimeException(AbstractC2305.m5361("Fragment ", abstractComponentCallbacksC31232, " did not call through to super.onDestroy()"));
        }
        this.f11865.m6820(abstractComponentCallbacksC31232, false);
        ArrayList arrayList = r5.ʻٴ();
        int size = arrayList.size();
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            C3120 c3120 = (C3120) obj;
            if (c3120 != null) {
                AbstractComponentCallbacksC3123 abstractComponentCallbacksC31233 = c3120.f11861;
                if (abstractComponentCallbacksC31232.f11929.equals(abstractComponentCallbacksC31233.f11905)) {
                    abstractComponentCallbacksC31233.f11921 = abstractComponentCallbacksC31232;
                    abstractComponentCallbacksC31233.f11905 = null;
                }
            }
        }
        String str3 = abstractComponentCallbacksC31232.f11905;
        if (str3 != null) {
            abstractComponentCallbacksC31232.f11921 = r5.ᵔﹳ(str3);
        }
        r5.ᴵˊ(this);
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final void m6771() {
        boolean m6654 = C3085.m6654(3);
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = this.f11861;
        if (m6654) {
            String str = "moveto RESUMED: " + abstractComponentCallbacksC3123;
        }
        C3121 c3121 = abstractComponentCallbacksC3123.f11938;
        View view = c3121 == null ? null : c3121.f11867;
        if (view != null) {
            if (view != abstractComponentCallbacksC3123.f11908) {
                for (ViewParent parent = view.getParent(); parent != null; parent = parent.getParent()) {
                    if (parent != abstractComponentCallbacksC3123.f11908) {
                    }
                }
            }
            boolean requestFocus = view.requestFocus();
            if (C3085.m6654(2)) {
                StringBuilder sb = new StringBuilder("requestFocus: Restoring focused view ");
                sb.append(view);
                sb.append(" ");
                sb.append(requestFocus ? "succeeded" : "failed");
                sb.append(" on Fragment ");
                sb.append(abstractComponentCallbacksC3123);
                sb.append(" resulting in focused view ");
                sb.append(abstractComponentCallbacksC3123.f11908.findFocus());
                sb.toString();
            }
        }
        abstractComponentCallbacksC3123.m6787().f11867 = null;
        abstractComponentCallbacksC3123.f11903.m6709();
        abstractComponentCallbacksC3123.f11903.m6664(true);
        abstractComponentCallbacksC3123.f11895 = 7;
        abstractComponentCallbacksC3123.f11926 = false;
        abstractComponentCallbacksC3123.mo422();
        if (!abstractComponentCallbacksC3123.f11926) {
            throw new AndroidRuntimeException(AbstractC2305.m5361("Fragment ", abstractComponentCallbacksC3123, " did not call through to super.onResume()"));
        }
        C0184 c0184 = abstractComponentCallbacksC3123.f11924;
        EnumC0174 enumC0174 = EnumC0174.ON_RESUME;
        c0184.m710(enumC0174);
        if (abstractComponentCallbacksC3123.f11908 != null) {
            abstractComponentCallbacksC3123.f11915.m6757(enumC0174);
        }
        C3085 c3085 = abstractComponentCallbacksC3123.f11903;
        c3085.f11751 = false;
        c3085.f11745 = false;
        c3085.f11741.f11948 = false;
        c3085.m6663(7);
        this.f11865.m6842(abstractComponentCallbacksC3123, false);
        this.f11864.ˋᵔ(abstractComponentCallbacksC3123.f11929, (Bundle) null);
        abstractComponentCallbacksC3123.f11927 = null;
        abstractComponentCallbacksC3123.f11891 = null;
        abstractComponentCallbacksC3123.f11902 = null;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m6772() {
        View view;
        boolean m6654 = C3085.m6654(3);
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = this.f11861;
        if (m6654) {
            String str = "movefrom CREATE_VIEW: " + abstractComponentCallbacksC3123;
        }
        ViewGroup viewGroup = abstractComponentCallbacksC3123.f11888;
        if (viewGroup != null && (view = abstractComponentCallbacksC3123.f11908) != null) {
            viewGroup.removeView(view);
        }
        abstractComponentCallbacksC3123.f11903.m6663(1);
        if (abstractComponentCallbacksC3123.f11908 != null && abstractComponentCallbacksC3123.f11915.mo691().f1076.m733(EnumC0199.f1100)) {
            abstractComponentCallbacksC3123.f11915.m6757(EnumC0174.ON_DESTROY);
        }
        abstractComponentCallbacksC3123.f11895 = 1;
        abstractComponentCallbacksC3123.f11926 = false;
        abstractComponentCallbacksC3123.mo423();
        if (!abstractComponentCallbacksC3123.f11926) {
            throw new AndroidRuntimeException(AbstractC2305.m5361("Fragment ", abstractComponentCallbacksC3123, " did not call through to super.onDestroyView()"));
        }
        ﹳٴ r4 = new ﹳٴ(abstractComponentCallbacksC3123.mo724(), C3398.f13268, C1081.f4235);
        C2461 m5561 = AbstractC2443.m5561(C3398.class);
        String m5583 = m5561.m5583();
        if (m5583 == null) {
            throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
        }
        C3360 c3360 = ((C3398) r4.ᵢˏ(m5561, "androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(m5583))).f13269;
        if (c3360.f13143 > 0) {
            c3360.m7202(0).getClass();
            throw new ClassCastException();
        }
        abstractComponentCallbacksC3123.f11907 = false;
        this.f11865.m6841(abstractComponentCallbacksC3123, false);
        abstractComponentCallbacksC3123.f11888 = null;
        abstractComponentCallbacksC3123.f11908 = null;
        abstractComponentCallbacksC3123.f11915 = null;
        abstractComponentCallbacksC3123.f11894.m686(null);
        abstractComponentCallbacksC3123.f11900 = false;
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final void m6773() {
        boolean m6654 = C3085.m6654(3);
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = this.f11861;
        if (m6654) {
            String str = "moveto STARTED: " + abstractComponentCallbacksC3123;
        }
        abstractComponentCallbacksC3123.f11903.m6709();
        abstractComponentCallbacksC3123.f11903.m6664(true);
        abstractComponentCallbacksC3123.f11895 = 5;
        abstractComponentCallbacksC3123.f11926 = false;
        abstractComponentCallbacksC3123.mo2402();
        if (!abstractComponentCallbacksC3123.f11926) {
            throw new AndroidRuntimeException(AbstractC2305.m5361("Fragment ", abstractComponentCallbacksC3123, " did not call through to super.onStart()"));
        }
        C0184 c0184 = abstractComponentCallbacksC3123.f11924;
        EnumC0174 enumC0174 = EnumC0174.ON_START;
        c0184.m710(enumC0174);
        if (abstractComponentCallbacksC3123.f11908 != null) {
            abstractComponentCallbacksC3123.f11915.m6757(enumC0174);
        }
        C3085 c3085 = abstractComponentCallbacksC3123.f11903;
        c3085.f11751 = false;
        c3085.f11745 = false;
        c3085.f11741.f11948 = false;
        c3085.m6663(5);
        this.f11865.m6825(abstractComponentCallbacksC3123, false);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m6774() {
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123;
        View view;
        View view2;
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC31232 = this.f11861;
        View view3 = abstractComponentCallbacksC31232.f11888;
        while (true) {
            abstractComponentCallbacksC3123 = null;
            if (view3 == null) {
                break;
            }
            Object tag = view3.getTag(R.id.3cv);
            AbstractComponentCallbacksC3123 abstractComponentCallbacksC31233 = tag instanceof AbstractComponentCallbacksC3123 ? (AbstractComponentCallbacksC3123) tag : null;
            if (abstractComponentCallbacksC31233 != null) {
                abstractComponentCallbacksC3123 = abstractComponentCallbacksC31233;
                break;
            } else {
                Object parent = view3.getParent();
                view3 = parent instanceof View ? (View) parent : null;
            }
        }
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC31234 = abstractComponentCallbacksC31232.f11928;
        if (abstractComponentCallbacksC3123 != null && !abstractComponentCallbacksC3123.equals(abstractComponentCallbacksC31234)) {
            int i = abstractComponentCallbacksC31232.f11897;
            C3656 c3656 = AbstractC3655.f14317;
            StringBuilder sb = new StringBuilder("Attempting to nest fragment ");
            sb.append(abstractComponentCallbacksC31232);
            sb.append(" within the view of parent fragment ");
            sb.append(abstractComponentCallbacksC3123);
            sb.append(" via container with ID ");
            AbstractC3655.m7674(new Violation(abstractComponentCallbacksC31232, AbstractC1220.m3782(sb, i, " without using parent's childFragmentManager")));
            AbstractC3655.m7675(abstractComponentCallbacksC31232).getClass();
        }
        ArrayList arrayList = (ArrayList) this.f11864.ᴵˊ;
        ViewGroup viewGroup = abstractComponentCallbacksC31232.f11888;
        int i2 = -1;
        if (viewGroup != null) {
            int indexOf = arrayList.indexOf(abstractComponentCallbacksC31232);
            int i3 = indexOf - 1;
            while (true) {
                if (i3 < 0) {
                    while (true) {
                        indexOf++;
                        if (indexOf >= arrayList.size()) {
                            break;
                        }
                        AbstractComponentCallbacksC3123 abstractComponentCallbacksC31235 = (AbstractComponentCallbacksC3123) arrayList.get(indexOf);
                        if (abstractComponentCallbacksC31235.f11888 == viewGroup && (view = abstractComponentCallbacksC31235.f11908) != null) {
                            i2 = viewGroup.indexOfChild(view);
                            break;
                        }
                    }
                } else {
                    AbstractComponentCallbacksC3123 abstractComponentCallbacksC31236 = (AbstractComponentCallbacksC3123) arrayList.get(i3);
                    if (abstractComponentCallbacksC31236.f11888 == viewGroup && (view2 = abstractComponentCallbacksC31236.f11908) != null) {
                        i2 = viewGroup.indexOfChild(view2) + 1;
                        break;
                    }
                    i3--;
                }
            }
        }
        abstractComponentCallbacksC31232.f11888.addView(abstractComponentCallbacksC31232.f11908, i2);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m6775() {
        boolean m6654 = C3085.m6654(3);
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = this.f11861;
        if (m6654) {
            String str = "moveto ACTIVITY_CREATED: " + abstractComponentCallbacksC3123;
        }
        Bundle bundle = abstractComponentCallbacksC3123.f11927;
        if (bundle != null) {
            bundle.getBundle("savedInstanceState");
        }
        abstractComponentCallbacksC3123.f11903.m6709();
        abstractComponentCallbacksC3123.f11895 = 3;
        abstractComponentCallbacksC3123.f11926 = false;
        abstractComponentCallbacksC3123.mo6625();
        if (!abstractComponentCallbacksC3123.f11926) {
            throw new AndroidRuntimeException(AbstractC2305.m5361("Fragment ", abstractComponentCallbacksC3123, " did not call through to super.onActivityCreated()"));
        }
        if (C3085.m6654(3)) {
            String str2 = "moveto RESTORE_VIEW_STATE: " + abstractComponentCallbacksC3123;
        }
        if (abstractComponentCallbacksC3123.f11908 != null) {
            Bundle bundle2 = abstractComponentCallbacksC3123.f11927;
            Bundle bundle3 = bundle2 != null ? bundle2.getBundle("savedInstanceState") : null;
            SparseArray<Parcelable> sparseArray = abstractComponentCallbacksC3123.f11891;
            if (sparseArray != null) {
                abstractComponentCallbacksC3123.f11908.restoreHierarchyState(sparseArray);
                abstractComponentCallbacksC3123.f11891 = null;
            }
            abstractComponentCallbacksC3123.f11926 = false;
            abstractComponentCallbacksC3123.mo6627(bundle3);
            if (!abstractComponentCallbacksC3123.f11926) {
                throw new AndroidRuntimeException(AbstractC2305.m5361("Fragment ", abstractComponentCallbacksC3123, " did not call through to super.onViewStateRestored()"));
            }
            if (abstractComponentCallbacksC3123.f11908 != null) {
                abstractComponentCallbacksC3123.f11915.m6757(EnumC0174.ON_CREATE);
            }
        }
        abstractComponentCallbacksC3123.f11927 = null;
        C3085 c3085 = abstractComponentCallbacksC3123.f11903;
        c3085.f11751 = false;
        c3085.f11745 = false;
        c3085.f11741.f11948 = false;
        c3085.m6663(4);
        this.f11865.m6856(abstractComponentCallbacksC3123, false);
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final void m6776() {
        boolean m6654 = C3085.m6654(3);
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = this.f11861;
        if (m6654) {
            String str = "movefrom STARTED: " + abstractComponentCallbacksC3123;
        }
        C3085 c3085 = abstractComponentCallbacksC3123.f11903;
        c3085.f11745 = true;
        c3085.f11741.f11948 = true;
        c3085.m6663(4);
        if (abstractComponentCallbacksC3123.f11908 != null) {
            abstractComponentCallbacksC3123.f11915.m6757(EnumC0174.ON_STOP);
        }
        abstractComponentCallbacksC3123.f11924.m710(EnumC0174.ON_STOP);
        abstractComponentCallbacksC3123.f11895 = 4;
        abstractComponentCallbacksC3123.f11926 = false;
        abstractComponentCallbacksC3123.mo2400();
        if (!abstractComponentCallbacksC3123.f11926) {
            throw new AndroidRuntimeException(AbstractC2305.m5361("Fragment ", abstractComponentCallbacksC3123, " did not call through to super.onStop()"));
        }
        this.f11865.m6844(abstractComponentCallbacksC3123, false);
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void m6777() {
        boolean m6654 = C3085.m6654(3);
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = this.f11861;
        if (m6654) {
            String str = "movefrom RESUMED: " + abstractComponentCallbacksC3123;
        }
        abstractComponentCallbacksC3123.f11903.m6663(5);
        if (abstractComponentCallbacksC3123.f11908 != null) {
            abstractComponentCallbacksC3123.f11915.m6757(EnumC0174.ON_PAUSE);
        }
        abstractComponentCallbacksC3123.f11924.m710(EnumC0174.ON_PAUSE);
        abstractComponentCallbacksC3123.f11895 = 6;
        abstractComponentCallbacksC3123.f11926 = false;
        abstractComponentCallbacksC3123.mo4201();
        if (!abstractComponentCallbacksC3123.f11926) {
            throw new AndroidRuntimeException(AbstractC2305.m5361("Fragment ", abstractComponentCallbacksC3123, " did not call through to super.onPause()"));
        }
        this.f11865.m6815(abstractComponentCallbacksC3123, false);
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m6778() {
        String str;
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = this.f11861;
        if (abstractComponentCallbacksC3123.f11935) {
            return;
        }
        if (C3085.m6654(3)) {
            String str2 = "moveto CREATE_VIEW: " + abstractComponentCallbacksC3123;
        }
        Bundle bundle = abstractComponentCallbacksC3123.f11927;
        Bundle bundle2 = bundle != null ? bundle.getBundle("savedInstanceState") : null;
        LayoutInflater mo6621 = abstractComponentCallbacksC3123.mo6621(bundle2);
        abstractComponentCallbacksC3123.f11922 = mo6621;
        ViewGroup viewGroup = abstractComponentCallbacksC3123.f11888;
        if (viewGroup == null) {
            int i = abstractComponentCallbacksC3123.f11897;
            if (i == 0) {
                viewGroup = null;
            } else {
                if (i == -1) {
                    throw new IllegalArgumentException(AbstractC2305.m5361("Cannot create fragment ", abstractComponentCallbacksC3123, " for a container view with no id"));
                }
                viewGroup = (ViewGroup) abstractComponentCallbacksC3123.f11917.f11722.ʼʼ(i);
                if (viewGroup == null) {
                    if (!abstractComponentCallbacksC3123.f11909 && !abstractComponentCallbacksC3123.f11914) {
                        try {
                            str = abstractComponentCallbacksC3123.m6801().getResourceName(abstractComponentCallbacksC3123.f11897);
                        } catch (Resources.NotFoundException unused) {
                            str = "unknown";
                        }
                        throw new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(abstractComponentCallbacksC3123.f11897) + " (" + str + ") for fragment " + abstractComponentCallbacksC3123);
                    }
                } else if (!(viewGroup instanceof FragmentContainerView)) {
                    C3656 c3656 = AbstractC3655.f14317;
                    AbstractC3655.m7674(new Violation(abstractComponentCallbacksC3123, "Attempting to add fragment " + abstractComponentCallbacksC3123 + " to container " + viewGroup + " which is not a FragmentContainerView"));
                    AbstractC3655.m7675(abstractComponentCallbacksC3123).getClass();
                }
            }
        }
        abstractComponentCallbacksC3123.f11888 = viewGroup;
        abstractComponentCallbacksC3123.mo6629(mo6621, viewGroup, bundle2);
        if (abstractComponentCallbacksC3123.f11908 != null) {
            if (C3085.m6654(3)) {
                String str3 = "moveto VIEW_CREATED: " + abstractComponentCallbacksC3123;
            }
            abstractComponentCallbacksC3123.f11908.setSaveFromParentEnabled(false);
            abstractComponentCallbacksC3123.f11908.setTag(R.id.3cv, abstractComponentCallbacksC3123);
            if (viewGroup != null) {
                m6774();
            }
            if (abstractComponentCallbacksC3123.f11932) {
                abstractComponentCallbacksC3123.f11908.setVisibility(8);
            }
            if (abstractComponentCallbacksC3123.f11908.isAttachedToWindow()) {
                View view = abstractComponentCallbacksC3123.f11908;
                WeakHashMap weakHashMap = AbstractC2823.f10603;
                AbstractC2780.m6186(view);
            } else {
                View view2 = abstractComponentCallbacksC3123.f11908;
                view2.addOnAttachStateChangeListener(new ViewOnAttachStateChangeListenerC1333(3, view2));
            }
            Bundle bundle3 = abstractComponentCallbacksC3123.f11927;
            abstractComponentCallbacksC3123.mo3061(abstractComponentCallbacksC3123.f11908, bundle3 != null ? bundle3.getBundle("savedInstanceState") : null);
            abstractComponentCallbacksC3123.f11903.m6663(2);
            this.f11865.m6831(abstractComponentCallbacksC3123, abstractComponentCallbacksC3123.f11908, false);
            int visibility = abstractComponentCallbacksC3123.f11908.getVisibility();
            abstractComponentCallbacksC3123.m6787().f11872 = abstractComponentCallbacksC3123.f11908.getAlpha();
            if (abstractComponentCallbacksC3123.f11888 != null && visibility == 0) {
                View findFocus = abstractComponentCallbacksC3123.f11908.findFocus();
                if (findFocus != null) {
                    abstractComponentCallbacksC3123.m6787().f11867 = findFocus;
                    if (C3085.m6654(2)) {
                        String str4 = "requestFocus: Saved focused view " + findFocus + " for Fragment " + abstractComponentCallbacksC3123;
                    }
                }
                abstractComponentCallbacksC3123.f11908.setAlpha(0.0f);
            }
        }
        abstractComponentCallbacksC3123.f11895 = 2;
    }
}
