package p229;

import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Looper;
import android.support.v4.media.session.AbstractC0001;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.FragmentContainerView;
import androidx.leanback.widget.RunnableC0142;
import androidx.lifecycle.C0184;
import androidx.lifecycle.EnumC0199;
import ar.tvplayer.tv.R;
import ar.tvplayer.tv.ui.MainActivity;
import j$.util.DesugarCollections;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import p026.C1081;
import p035.AbstractC1220;
import p036.C1254;
import p036.C1256;
import p036.C1261;
import p036.C1271;
import p036.InterfaceC1253;
import p121.RunnableC2028;
import p137.AbstractC2305;
import p151.C2424;
import p151.C2432;
import p152.AbstractC2443;
import p152.C2461;
import p223.C3056;
import p238.InterfaceC3206;
import p242.C3236;
import p255.C3360;
import p258.C3398;
import p294.AbstractC3655;
import p307.AbstractC3740;
import ʼ.ᵎﹶ;
import ʼﾞ.ᴵᵔ;
import ʿי.ʽⁱ;
import ˉˆ.ʿ;
import ˉˑ.ʽ;
import ˉˑ.ﾞᴵ;
import ˏˆ.ﹳٴ;
import ٴﾞ.ˆʾ;

/* renamed from: ˑʼ.ʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3085 {

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public ᵎﹶ f11722;

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final C3130 f11727;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public AbstractComponentCallbacksC3123 f11728;

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public C3114 f11729;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public ArrayList f11731;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public ArrayList f11733;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public C3236 f11734;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public boolean f11737;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public C3236 f11738;

    /* renamed from: ˏי, reason: contains not printable characters */
    public final C3130 f11740;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public C3126 f11741;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public ArrayList f11742;

    /* renamed from: יـ, reason: contains not printable characters */
    public final C3130 f11743;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public boolean f11745;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public C3236 f11749;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public boolean f11750;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public boolean f11751;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public C1254 f11752;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public boolean f11754;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public ArrayList f11755;

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public AbstractComponentCallbacksC3123 f11758;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public boolean f11759;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final C3130 f11761;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ArrayList f11760 = new ArrayList();

    /* renamed from: ʽ, reason: contains not printable characters */
    public final ﹳٴ f11725 = new ﹳٴ(17);

    /* renamed from: ˈ, reason: contains not printable characters */
    public ArrayList f11732 = new ArrayList();

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final LayoutInflaterFactory2C3113 f11763 = new LayoutInflaterFactory2C3113(this);

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public C3137 f11756 = null;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public boolean f11723 = false;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final C3131 f11730 = new C3131(this);

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final AtomicInteger f11747 = new AtomicInteger();

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final Map f11762 = DesugarCollections.synchronizedMap(new HashMap());

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final Map f11735 = DesugarCollections.synchronizedMap(new HashMap());

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final Map f11753 = DesugarCollections.synchronizedMap(new HashMap());

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final ArrayList f11736 = new ArrayList();

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final C3125 f11724 = new C3125(this);

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final CopyOnWriteArrayList f11757 = new CopyOnWriteArrayList();

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final C3090 f11721 = new C3090(this);

    /* renamed from: ـˆ, reason: contains not printable characters */
    public int f11744 = -1;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C3105 f11748 = new C3105(this);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final ˆʾ f11726 = new ˆʾ(21);

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public ArrayDeque f11746 = new ArrayDeque();

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public final RunnableC0142 f11739 = new RunnableC0142(25, this);

    /* JADX WARN: Type inference failed for: r0v17, types: [ˑʼ.ᵔי] */
    /* JADX WARN: Type inference failed for: r0v18, types: [ˑʼ.ᵔי] */
    /* JADX WARN: Type inference failed for: r0v19, types: [ˑʼ.ᵔי] */
    /* JADX WARN: Type inference failed for: r0v20, types: [ˑʼ.ᵔי] */
    public C3085() {
        final int i = 0;
        this.f11761 = new InterfaceC3206(this) { // from class: ˑʼ.ᵔי

            /* renamed from: ⁱˊ, reason: contains not printable characters */
            public final /* synthetic */ C3085 f11960;

            {
                this.f11960 = this;
            }

            @Override // p238.InterfaceC3206
            public final void accept(Object obj) {
                switch (i) {
                    case 0:
                        Configuration configuration = (Configuration) obj;
                        C3085 c3085 = this.f11960;
                        if (c3085.m6683()) {
                            c3085.m6659(false, configuration);
                            return;
                        }
                        return;
                    case 1:
                        Integer num = (Integer) obj;
                        C3085 c30852 = this.f11960;
                        if (c30852.m6683() && num.intValue() == 80) {
                            c30852.m6674(false);
                            return;
                        }
                        return;
                    case 2:
                        C2432 c2432 = (C2432) obj;
                        C3085 c30853 = this.f11960;
                        if (c30853.m6683()) {
                            boolean z = c2432.f9381;
                            c30853.m6703(false);
                            return;
                        }
                        return;
                    default:
                        C2424 c2424 = (C2424) obj;
                        C3085 c30854 = this.f11960;
                        if (c30854.m6683()) {
                            c30854.m6685(c2424.f9371, false);
                            return;
                        }
                        return;
                }
            }
        };
        final int i2 = 1;
        this.f11743 = new InterfaceC3206(this) { // from class: ˑʼ.ᵔי

            /* renamed from: ⁱˊ, reason: contains not printable characters */
            public final /* synthetic */ C3085 f11960;

            {
                this.f11960 = this;
            }

            @Override // p238.InterfaceC3206
            public final void accept(Object obj) {
                switch (i2) {
                    case 0:
                        Configuration configuration = (Configuration) obj;
                        C3085 c3085 = this.f11960;
                        if (c3085.m6683()) {
                            c3085.m6659(false, configuration);
                            return;
                        }
                        return;
                    case 1:
                        Integer num = (Integer) obj;
                        C3085 c30852 = this.f11960;
                        if (c30852.m6683() && num.intValue() == 80) {
                            c30852.m6674(false);
                            return;
                        }
                        return;
                    case 2:
                        C2432 c2432 = (C2432) obj;
                        C3085 c30853 = this.f11960;
                        if (c30853.m6683()) {
                            boolean z = c2432.f9381;
                            c30853.m6703(false);
                            return;
                        }
                        return;
                    default:
                        C2424 c2424 = (C2424) obj;
                        C3085 c30854 = this.f11960;
                        if (c30854.m6683()) {
                            c30854.m6685(c2424.f9371, false);
                            return;
                        }
                        return;
                }
            }
        };
        final int i3 = 2;
        this.f11740 = new InterfaceC3206(this) { // from class: ˑʼ.ᵔי

            /* renamed from: ⁱˊ, reason: contains not printable characters */
            public final /* synthetic */ C3085 f11960;

            {
                this.f11960 = this;
            }

            @Override // p238.InterfaceC3206
            public final void accept(Object obj) {
                switch (i3) {
                    case 0:
                        Configuration configuration = (Configuration) obj;
                        C3085 c3085 = this.f11960;
                        if (c3085.m6683()) {
                            c3085.m6659(false, configuration);
                            return;
                        }
                        return;
                    case 1:
                        Integer num = (Integer) obj;
                        C3085 c30852 = this.f11960;
                        if (c30852.m6683() && num.intValue() == 80) {
                            c30852.m6674(false);
                            return;
                        }
                        return;
                    case 2:
                        C2432 c2432 = (C2432) obj;
                        C3085 c30853 = this.f11960;
                        if (c30853.m6683()) {
                            boolean z = c2432.f9381;
                            c30853.m6703(false);
                            return;
                        }
                        return;
                    default:
                        C2424 c2424 = (C2424) obj;
                        C3085 c30854 = this.f11960;
                        if (c30854.m6683()) {
                            c30854.m6685(c2424.f9371, false);
                            return;
                        }
                        return;
                }
            }
        };
        final int i4 = 3;
        this.f11727 = new InterfaceC3206(this) { // from class: ˑʼ.ᵔי

            /* renamed from: ⁱˊ, reason: contains not printable characters */
            public final /* synthetic */ C3085 f11960;

            {
                this.f11960 = this;
            }

            @Override // p238.InterfaceC3206
            public final void accept(Object obj) {
                switch (i4) {
                    case 0:
                        Configuration configuration = (Configuration) obj;
                        C3085 c3085 = this.f11960;
                        if (c3085.m6683()) {
                            c3085.m6659(false, configuration);
                            return;
                        }
                        return;
                    case 1:
                        Integer num = (Integer) obj;
                        C3085 c30852 = this.f11960;
                        if (c30852.m6683() && num.intValue() == 80) {
                            c30852.m6674(false);
                            return;
                        }
                        return;
                    case 2:
                        C2432 c2432 = (C2432) obj;
                        C3085 c30853 = this.f11960;
                        if (c30853.m6683()) {
                            boolean z = c2432.f9381;
                            c30853.m6703(false);
                            return;
                        }
                        return;
                    default:
                        C2424 c2424 = (C2424) obj;
                        C3085 c30854 = this.f11960;
                        if (c30854.m6683()) {
                            c30854.m6685(c2424.f9371, false);
                            return;
                        }
                        return;
                }
            }
        };
    }

    /* renamed from: ʻˋ, reason: contains not printable characters */
    public static void m6649(AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123) {
        if (m6654(2)) {
            String str = "show: " + abstractComponentCallbacksC3123;
        }
        if (abstractComponentCallbacksC3123.f11932) {
            abstractComponentCallbacksC3123.f11932 = false;
            abstractComponentCallbacksC3123.f11913 = !abstractComponentCallbacksC3123.f11913;
        }
    }

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public static boolean m6650(AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123) {
        abstractComponentCallbacksC3123.getClass();
        ArrayList arrayList = abstractComponentCallbacksC3123.f11903.f11725.ـˆ();
        int size = arrayList.size();
        boolean z = false;
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            AbstractComponentCallbacksC3123 abstractComponentCallbacksC31232 = (AbstractComponentCallbacksC3123) obj;
            if (abstractComponentCallbacksC31232 != null) {
                z = m6650(abstractComponentCallbacksC31232);
            }
            if (z) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public static boolean m6651(AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123) {
        if (abstractComponentCallbacksC3123 == null) {
            return true;
        }
        C3085 c3085 = abstractComponentCallbacksC3123.f11917;
        return abstractComponentCallbacksC3123.equals(c3085.f11728) && m6651(c3085.f11758);
    }

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public static boolean m6652(AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123) {
        if (abstractComponentCallbacksC3123 == null) {
            return true;
        }
        if (abstractComponentCallbacksC3123.f11911) {
            return abstractComponentCallbacksC3123.f11917 == null || m6652(abstractComponentCallbacksC3123.f11928);
        }
        return false;
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public static HashSet m6653(C3137 c3137) {
        HashSet hashSet = new HashSet();
        for (int i = 0; i < c3137.f12011.size(); i++) {
            AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = ((C3074) c3137.f12011.get(i)).f11688;
            if (abstractComponentCallbacksC3123 != null && c3137.f12006) {
                hashSet.add(abstractComponentCallbacksC3123);
            }
        }
        return hashSet;
    }

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public static boolean m6654(int i) {
        return Log.isLoggable("FragmentManager", i);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = this.f11758;
        if (abstractComponentCallbacksC3123 != null) {
            sb.append(abstractComponentCallbacksC3123.getClass().getSimpleName());
            sb.append("{");
            sb.append(Integer.toHexString(System.identityHashCode(this.f11758)));
            sb.append("}");
        } else {
            C3114 c3114 = this.f11729;
            if (c3114 != null) {
                sb.append(c3114.getClass().getSimpleName());
                sb.append("{");
                sb.append(Integer.toHexString(System.identityHashCode(this.f11729)));
                sb.append("}");
            } else {
                sb.append("null");
            }
        }
        sb.append("}}");
        return sb.toString();
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final void m6655() {
        if (this.f11754) {
            this.f11754 = false;
            m6682();
        }
    }

    /* renamed from: ʻᵎ, reason: contains not printable characters */
    public final void m6656(AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123, boolean z) {
        ViewGroup m6689 = m6689(abstractComponentCallbacksC3123);
        if (m6689 == null || !(m6689 instanceof FragmentContainerView)) {
            return;
        }
        ((FragmentContainerView) m6689).setDrawDisappearingViewsLast(!z);
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final void m6657(InterfaceC3093 interfaceC3093, boolean z) {
        if (!z) {
            if (this.f11729 == null) {
                if (!this.f11750) {
                    throw new IllegalStateException("FragmentManager has not been attached to a host.");
                }
                throw new IllegalStateException("FragmentManager has been destroyed");
            }
            if (m6658()) {
                throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
            }
        }
        synchronized (this.f11760) {
            try {
                if (this.f11729 == null) {
                    if (!z) {
                        throw new IllegalStateException("Activity has been destroyed");
                    }
                } else {
                    this.f11760.add(interfaceC3093);
                    m6694();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public final boolean m6658() {
        return this.f11751 || this.f11745;
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void m6659(boolean z, Configuration configuration) {
        if (z && this.f11729 != null) {
            m6690(new IllegalStateException("Do not call dispatchConfigurationChanged() on host. Host implements OnConfigurationChangedProvider and automatically dispatches configuration changes to fragments."));
            throw null;
        }
        for (AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 : this.f11725.ʾᵎ()) {
            if (abstractComponentCallbacksC3123 != null) {
                abstractComponentCallbacksC3123.onConfigurationChanged(configuration);
                if (z) {
                    abstractComponentCallbacksC3123.f11903.m6659(true, configuration);
                }
            }
        }
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final boolean m6660() {
        if (this.f11744 >= 1) {
            for (AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 : this.f11725.ʾᵎ()) {
                if (abstractComponentCallbacksC3123 != null) {
                    if (!abstractComponentCallbacksC3123.f11932 ? abstractComponentCallbacksC3123.f11903.m6660() : false) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m6661(AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123) {
        if (m6654(2)) {
            String str = "attach: " + abstractComponentCallbacksC3123;
        }
        if (abstractComponentCallbacksC3123.f11925) {
            abstractComponentCallbacksC3123.f11925 = false;
            if (abstractComponentCallbacksC3123.f11931) {
                return;
            }
            this.f11725.ʼˎ(abstractComponentCallbacksC3123);
            if (m6654(2)) {
                String str2 = "add from attach: " + abstractComponentCallbacksC3123;
            }
            if (m6650(abstractComponentCallbacksC3123)) {
                this.f11737 = true;
            }
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:142:0x0240. Please report as an issue. */
    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final void m6662(ArrayList arrayList, ArrayList arrayList2, int i, int i2) {
        View view;
        int i3;
        boolean z;
        int i4;
        boolean z2;
        int i5;
        int i6;
        boolean z3;
        int i7;
        int i8;
        int i9 = i;
        boolean z4 = ((C3137) arrayList.get(i9)).f11996;
        ArrayList arrayList3 = this.f11733;
        if (arrayList3 == null) {
            this.f11733 = new ArrayList();
        } else {
            arrayList3.clear();
        }
        ArrayList arrayList4 = this.f11733;
        ﹳٴ r7 = this.f11725;
        arrayList4.addAll(r7.ʾᵎ());
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = this.f11728;
        int i10 = i9;
        boolean z5 = false;
        while (true) {
            int i11 = 1;
            if (i10 >= i2) {
                boolean z6 = z4;
                boolean z7 = z5;
                this.f11733.clear();
                if (!z6 && this.f11744 >= 1) {
                    for (int i12 = i9; i12 < i2; i12++) {
                        ArrayList arrayList5 = ((C3137) arrayList.get(i12)).f12011;
                        int size = arrayList5.size();
                        int i13 = 0;
                        while (i13 < size) {
                            Object obj = arrayList5.get(i13);
                            i13++;
                            AbstractComponentCallbacksC3123 abstractComponentCallbacksC31232 = ((C3074) obj).f11688;
                            if (abstractComponentCallbacksC31232 != null && abstractComponentCallbacksC31232.f11917 != null) {
                                r7.ʾˋ(m6702(abstractComponentCallbacksC31232));
                            }
                        }
                    }
                }
                int i14 = i9;
                while (i14 < i2) {
                    C3137 c3137 = (C3137) arrayList.get(i14);
                    if (((Boolean) arrayList2.get(i14)).booleanValue()) {
                        c3137.m6882(-1);
                        C3085 c3085 = c3137.f12012;
                        ArrayList arrayList6 = c3137.f12011;
                        boolean z8 = true;
                        for (int size2 = arrayList6.size() - 1; size2 >= 0; size2--) {
                            C3074 c3074 = (C3074) arrayList6.get(size2);
                            AbstractComponentCallbacksC3123 abstractComponentCallbacksC31233 = c3074.f11688;
                            if (abstractComponentCallbacksC31233 != null) {
                                if (abstractComponentCallbacksC31233.f11938 != null) {
                                    abstractComponentCallbacksC31233.m6787().f11880 = z8;
                                }
                                int i15 = c3137.f12014;
                                int i16 = 8194;
                                int i17 = 4097;
                                if (i15 != 4097) {
                                    if (i15 != 8194) {
                                        i16 = 4100;
                                        if (i15 != 8197) {
                                            i17 = 4099;
                                            if (i15 != 4099) {
                                                i16 = i15 != 4100 ? 0 : 8197;
                                            }
                                        }
                                    }
                                    i16 = i17;
                                }
                                if (abstractComponentCallbacksC31233.f11938 != null || i16 != 0) {
                                    abstractComponentCallbacksC31233.m6787();
                                    abstractComponentCallbacksC31233.f11938.f11882 = i16;
                                }
                                ArrayList arrayList7 = c3137.f12001;
                                ArrayList arrayList8 = c3137.f12007;
                                abstractComponentCallbacksC31233.m6787();
                                C3121 c3121 = abstractComponentCallbacksC31233.f11938;
                                c3121.f11875 = arrayList7;
                                c3121.f11877 = arrayList8;
                            }
                            switch (c3074.f11689) {
                                case 1:
                                    abstractComponentCallbacksC31233.m6798(c3074.f11684, c3074.f11685, c3074.f11690, c3074.f11686);
                                    z8 = true;
                                    c3085.m6656(abstractComponentCallbacksC31233, true);
                                    c3085.m6700(abstractComponentCallbacksC31233);
                                case 2:
                                default:
                                    throw new IllegalArgumentException("Unknown cmd: " + c3074.f11689);
                                case 3:
                                    abstractComponentCallbacksC31233.m6798(c3074.f11684, c3074.f11685, c3074.f11690, c3074.f11686);
                                    c3085.m6710(abstractComponentCallbacksC31233);
                                    z8 = true;
                                case 4:
                                    abstractComponentCallbacksC31233.m6798(c3074.f11684, c3074.f11685, c3074.f11690, c3074.f11686);
                                    c3085.getClass();
                                    m6649(abstractComponentCallbacksC31233);
                                    z8 = true;
                                case 5:
                                    abstractComponentCallbacksC31233.m6798(c3074.f11684, c3074.f11685, c3074.f11690, c3074.f11686);
                                    c3085.m6656(abstractComponentCallbacksC31233, true);
                                    c3085.m6669(abstractComponentCallbacksC31233);
                                    z8 = true;
                                case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                                    abstractComponentCallbacksC31233.m6798(c3074.f11684, c3074.f11685, c3074.f11690, c3074.f11686);
                                    c3085.m6661(abstractComponentCallbacksC31233);
                                    z8 = true;
                                case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                                    abstractComponentCallbacksC31233.m6798(c3074.f11684, c3074.f11685, c3074.f11690, c3074.f11686);
                                    c3085.m6656(abstractComponentCallbacksC31233, true);
                                    c3085.m6705(abstractComponentCallbacksC31233);
                                    z8 = true;
                                case C3056.BYTES_FIELD_NUMBER /* 8 */:
                                    c3085.m6713(null);
                                    z8 = true;
                                case 9:
                                    c3085.m6713(abstractComponentCallbacksC31233);
                                    z8 = true;
                                case 10:
                                    c3074.f11682 = abstractComponentCallbacksC31233.f11892;
                                    c3085.m6671(abstractComponentCallbacksC31233, c3074.f11687);
                                    z8 = true;
                            }
                        }
                    } else {
                        c3137.m6882(1);
                        C3085 c30852 = c3137.f12012;
                        ArrayList arrayList9 = c3137.f12011;
                        int size3 = arrayList9.size();
                        int i18 = 0;
                        while (i18 < size3) {
                            C3074 c30742 = (C3074) arrayList9.get(i18);
                            AbstractComponentCallbacksC3123 abstractComponentCallbacksC31234 = c30742.f11688;
                            if (abstractComponentCallbacksC31234 != null) {
                                if (abstractComponentCallbacksC31234.f11938 != null) {
                                    abstractComponentCallbacksC31234.m6787().f11880 = false;
                                }
                                int i19 = c3137.f12014;
                                if (abstractComponentCallbacksC31234.f11938 != null || i19 != 0) {
                                    abstractComponentCallbacksC31234.m6787();
                                    abstractComponentCallbacksC31234.f11938.f11882 = i19;
                                }
                                ArrayList arrayList10 = c3137.f12007;
                                ArrayList arrayList11 = c3137.f12001;
                                abstractComponentCallbacksC31234.m6787();
                                i3 = i14;
                                C3121 c31212 = abstractComponentCallbacksC31234.f11938;
                                c31212.f11875 = arrayList10;
                                c31212.f11877 = arrayList11;
                            } else {
                                i3 = i14;
                            }
                            switch (c30742.f11689) {
                                case 1:
                                    abstractComponentCallbacksC31234.m6798(c30742.f11684, c30742.f11685, c30742.f11690, c30742.f11686);
                                    c30852.m6656(abstractComponentCallbacksC31234, false);
                                    c30852.m6710(abstractComponentCallbacksC31234);
                                    break;
                                case 2:
                                default:
                                    throw new IllegalArgumentException("Unknown cmd: " + c30742.f11689);
                                case 3:
                                    abstractComponentCallbacksC31234.m6798(c30742.f11684, c30742.f11685, c30742.f11690, c30742.f11686);
                                    c30852.m6700(abstractComponentCallbacksC31234);
                                    break;
                                case 4:
                                    abstractComponentCallbacksC31234.m6798(c30742.f11684, c30742.f11685, c30742.f11690, c30742.f11686);
                                    c30852.m6669(abstractComponentCallbacksC31234);
                                    break;
                                case 5:
                                    abstractComponentCallbacksC31234.m6798(c30742.f11684, c30742.f11685, c30742.f11690, c30742.f11686);
                                    c30852.m6656(abstractComponentCallbacksC31234, false);
                                    m6649(abstractComponentCallbacksC31234);
                                    break;
                                case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                                    abstractComponentCallbacksC31234.m6798(c30742.f11684, c30742.f11685, c30742.f11690, c30742.f11686);
                                    c30852.m6705(abstractComponentCallbacksC31234);
                                    break;
                                case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                                    abstractComponentCallbacksC31234.m6798(c30742.f11684, c30742.f11685, c30742.f11690, c30742.f11686);
                                    c30852.m6656(abstractComponentCallbacksC31234, false);
                                    c30852.m6661(abstractComponentCallbacksC31234);
                                    break;
                                case C3056.BYTES_FIELD_NUMBER /* 8 */:
                                    c30852.m6713(abstractComponentCallbacksC31234);
                                    break;
                                case 9:
                                    c30852.m6713(null);
                                    break;
                                case 10:
                                    c30742.f11687 = abstractComponentCallbacksC31234.f11892;
                                    c30852.m6671(abstractComponentCallbacksC31234, c30742.f11682);
                                    break;
                            }
                            i18++;
                            i14 = i3;
                        }
                    }
                    i14++;
                }
                boolean booleanValue = ((Boolean) arrayList2.get(i2 - 1)).booleanValue();
                ArrayList arrayList12 = this.f11736;
                if (z7 && !arrayList12.isEmpty()) {
                    LinkedHashSet<AbstractComponentCallbacksC3123> linkedHashSet = new LinkedHashSet();
                    int size4 = arrayList.size();
                    int i20 = 0;
                    while (i20 < size4) {
                        Object obj2 = arrayList.get(i20);
                        i20++;
                        linkedHashSet.addAll(m6653((C3137) obj2));
                    }
                    if (this.f11756 == null) {
                        int size5 = arrayList12.size();
                        int i21 = 0;
                        while (i21 < size5) {
                            Object obj3 = arrayList12.get(i21);
                            i21++;
                            ʽ r10 = (ʽ) obj3;
                            for (AbstractComponentCallbacksC3123 abstractComponentCallbacksC31235 : linkedHashSet) {
                                r10.getClass();
                            }
                        }
                        int size6 = arrayList12.size();
                        int i22 = 0;
                        while (i22 < size6) {
                            Object obj4 = arrayList12.get(i22);
                            i22++;
                            ʽ r102 = (ʽ) obj4;
                            for (AbstractComponentCallbacksC3123 abstractComponentCallbacksC31236 : linkedHashSet) {
                                r102.getClass();
                            }
                        }
                    }
                }
                for (int i23 = i9; i23 < i2; i23++) {
                    C3137 c31372 = (C3137) arrayList.get(i23);
                    if (booleanValue) {
                        for (int size7 = c31372.f12011.size() - 1; size7 >= 0; size7--) {
                            AbstractComponentCallbacksC3123 abstractComponentCallbacksC31237 = ((C3074) c31372.f12011.get(size7)).f11688;
                            if (abstractComponentCallbacksC31237 != null) {
                                m6702(abstractComponentCallbacksC31237).m6769();
                            }
                        }
                    } else {
                        ArrayList arrayList13 = c31372.f12011;
                        int size8 = arrayList13.size();
                        int i24 = 0;
                        while (i24 < size8) {
                            Object obj5 = arrayList13.get(i24);
                            i24++;
                            AbstractComponentCallbacksC3123 abstractComponentCallbacksC31238 = ((C3074) obj5).f11688;
                            if (abstractComponentCallbacksC31238 != null) {
                                m6702(abstractComponentCallbacksC31238).m6769();
                            }
                        }
                    }
                }
                m6687(this.f11744, true);
                Iterator it = m6715(arrayList, i9, i2).iterator();
                while (it.hasNext()) {
                    C3133 c3133 = (C3133) it.next();
                    c3133.f11973 = booleanValue;
                    c3133.m6871();
                    c3133.m6870();
                }
                while (i9 < i2) {
                    C3137 c31373 = (C3137) arrayList.get(i9);
                    if (((Boolean) arrayList2.get(i9)).booleanValue() && c31373.f12002 >= 0) {
                        c31373.f12002 = -1;
                    }
                    if (c31373.f12009 != null) {
                        for (int i25 = 0; i25 < c31373.f12009.size(); i25++) {
                            ((Runnable) c31373.f12009.get(i25)).run();
                        }
                        c31373.f12009 = null;
                    }
                    i9++;
                }
                if (z7) {
                    for (int i26 = 0; i26 < arrayList12.size(); i26++) {
                        MainActivity mainActivity = ((ʽ) arrayList12.get(i26)).ﹳٴ;
                        int i27 = MainActivity.ʻˋ;
                        if (mainActivity.ـˏ() && mainActivity.ˊᵔ) {
                            mainActivity.ˊᵔ = false;
                            MainActivity.ˈˏ(mainActivity, ﾞᴵ.ᴵˊ, false, 4);
                            ˏᵎ.ﹳٴ r2 = mainActivity.ᵎⁱ();
                            if (r2 != null && (view = r2.f11908) != null) {
                                view.post(new RunnableC2028(r2, 24, mainActivity));
                            }
                        }
                        mainActivity.ﹶᐧ();
                        mainActivity.onUserInteraction();
                    }
                    return;
                }
                return;
            }
            C3137 c31374 = (C3137) arrayList.get(i10);
            if (((Boolean) arrayList2.get(i10)).booleanValue()) {
                z = z4;
                i4 = i10;
                z2 = z5;
                int i28 = 1;
                ArrayList arrayList14 = this.f11733;
                ArrayList arrayList15 = c31374.f12011;
                int size9 = arrayList15.size() - 1;
                while (size9 >= 0) {
                    C3074 c30743 = (C3074) arrayList15.get(size9);
                    int i29 = c30743.f11689;
                    if (i29 != i28) {
                        if (i29 != 3) {
                            switch (i29) {
                                case C3056.BYTES_FIELD_NUMBER /* 8 */:
                                    abstractComponentCallbacksC3123 = null;
                                    break;
                                case 9:
                                    abstractComponentCallbacksC3123 = c30743.f11688;
                                    break;
                                case 10:
                                    c30743.f11682 = c30743.f11687;
                                    break;
                            }
                            size9--;
                            i28 = 1;
                        }
                        arrayList14.add(c30743.f11688);
                        size9--;
                        i28 = 1;
                    }
                    arrayList14.remove(c30743.f11688);
                    size9--;
                    i28 = 1;
                }
            } else {
                ArrayList arrayList16 = this.f11733;
                ArrayList arrayList17 = c31374.f12011;
                int i30 = 0;
                while (i30 < arrayList17.size()) {
                    C3074 c30744 = (C3074) arrayList17.get(i30);
                    boolean z9 = z4;
                    int i31 = c30744.f11689;
                    if (i31 != i11) {
                        i5 = i10;
                        if (i31 != 2) {
                            if (i31 == 3 || i31 == 6) {
                                arrayList16.remove(c30744.f11688);
                                AbstractComponentCallbacksC3123 abstractComponentCallbacksC31239 = c30744.f11688;
                                if (abstractComponentCallbacksC31239 == abstractComponentCallbacksC3123) {
                                    arrayList17.add(i30, new C3074(9, abstractComponentCallbacksC31239));
                                    i30++;
                                    z3 = z5;
                                    abstractComponentCallbacksC3123 = null;
                                    i6 = 1;
                                }
                            } else if (i31 == 7) {
                                i6 = 1;
                            } else if (i31 == 8) {
                                arrayList17.add(i30, new C3074(9, abstractComponentCallbacksC3123, 0));
                                c30744.f11683 = true;
                                i30++;
                                abstractComponentCallbacksC3123 = c30744.f11688;
                            }
                            z3 = z5;
                            i6 = 1;
                        } else {
                            AbstractComponentCallbacksC3123 abstractComponentCallbacksC312310 = c30744.f11688;
                            int i32 = abstractComponentCallbacksC312310.f11897;
                            int size10 = arrayList16.size() - 1;
                            boolean z10 = false;
                            while (size10 >= 0) {
                                int i33 = size10;
                                AbstractComponentCallbacksC3123 abstractComponentCallbacksC312311 = (AbstractComponentCallbacksC3123) arrayList16.get(size10);
                                boolean z11 = z5;
                                if (abstractComponentCallbacksC312311.f11897 != i32) {
                                    i7 = i32;
                                } else if (abstractComponentCallbacksC312311 == abstractComponentCallbacksC312310) {
                                    i7 = i32;
                                    z10 = true;
                                } else {
                                    if (abstractComponentCallbacksC312311 == abstractComponentCallbacksC3123) {
                                        i7 = i32;
                                        i8 = 0;
                                        arrayList17.add(i30, new C3074(9, abstractComponentCallbacksC312311, 0));
                                        i30++;
                                        abstractComponentCallbacksC3123 = null;
                                    } else {
                                        i7 = i32;
                                        i8 = 0;
                                    }
                                    C3074 c30745 = new C3074(3, abstractComponentCallbacksC312311, i8);
                                    c30745.f11684 = c30744.f11684;
                                    c30745.f11690 = c30744.f11690;
                                    c30745.f11685 = c30744.f11685;
                                    c30745.f11686 = c30744.f11686;
                                    arrayList17.add(i30, c30745);
                                    arrayList16.remove(abstractComponentCallbacksC312311);
                                    i30++;
                                    abstractComponentCallbacksC3123 = abstractComponentCallbacksC3123;
                                }
                                size10 = i33 - 1;
                                i32 = i7;
                                z5 = z11;
                            }
                            z3 = z5;
                            i6 = 1;
                            if (z10) {
                                arrayList17.remove(i30);
                                i30--;
                            } else {
                                c30744.f11689 = 1;
                                c30744.f11683 = true;
                                arrayList16.add(abstractComponentCallbacksC312310);
                            }
                        }
                        i30 += i6;
                        i11 = i6;
                        z4 = z9;
                        i10 = i5;
                        z5 = z3;
                    } else {
                        i5 = i10;
                        i6 = i11;
                    }
                    z3 = z5;
                    arrayList16.add(c30744.f11688);
                    i30 += i6;
                    i11 = i6;
                    z4 = z9;
                    i10 = i5;
                    z5 = z3;
                }
                z = z4;
                i4 = i10;
                z2 = z5;
            }
            z5 = z2 || c31374.f12006;
            i10 = i4 + 1;
            z4 = z;
        }
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final void m6663(int i) {
        try {
            this.f11759 = true;
            for (C3120 c3120 : ((HashMap) this.f11725.ʽʽ).values()) {
                if (c3120 != null) {
                    c3120.f11863 = i;
                }
            }
            m6687(i, false);
            Iterator it = m6684().iterator();
            while (it.hasNext()) {
                ((C3133) it.next()).m6866();
            }
            this.f11759 = false;
            m6664(true);
        } catch (Throwable th) {
            this.f11759 = false;
            throw th;
        }
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final boolean m6664(boolean z) {
        boolean z2;
        C3137 c3137;
        m6707(z);
        if (!this.f11723 && (c3137 = this.f11756) != null) {
            c3137.f12004 = false;
            c3137.m6884();
            if (m6654(3)) {
                String str = "Reversing mTransitioningOp " + this.f11756 + " as part of execPendingActions for actions " + this.f11760;
            }
            this.f11756.m6886(false, false);
            this.f11760.add(0, this.f11756);
            ArrayList arrayList = this.f11756.f12011;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = ((C3074) obj).f11688;
                if (abstractComponentCallbacksC3123 != null) {
                    abstractComponentCallbacksC3123.f11899 = false;
                }
            }
            this.f11756 = null;
        }
        boolean z3 = false;
        while (true) {
            ArrayList arrayList2 = this.f11731;
            ArrayList arrayList3 = this.f11755;
            synchronized (this.f11760) {
                if (this.f11760.isEmpty()) {
                    z2 = false;
                } else {
                    try {
                        int size2 = this.f11760.size();
                        z2 = false;
                        for (int i2 = 0; i2 < size2; i2++) {
                            z2 |= ((InterfaceC3093) this.f11760.get(i2)).mo6717(arrayList2, arrayList3);
                        }
                    } finally {
                    }
                }
            }
            if (!z2) {
                m6698();
                m6655();
                ((HashMap) this.f11725.ʽʽ).values().removeAll(Collections.singleton(null));
                return z3;
            }
            z3 = true;
            this.f11759 = true;
            try {
                m6693(this.f11731, this.f11755);
            } finally {
                m6670();
            }
        }
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final void m6665() {
        Iterator it = m6684().iterator();
        while (it.hasNext()) {
            ((C3133) it.next()).m6866();
        }
    }

    /* renamed from: ʿ, reason: contains not printable characters */
    public final boolean m6666(int i, int i2) {
        m6664(false);
        m6707(true);
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = this.f11728;
        if (abstractComponentCallbacksC3123 != null && i < 0 && abstractComponentCallbacksC3123.m6788().m6676()) {
            return true;
        }
        boolean m6667 = m6667(this.f11731, this.f11755, i, i2);
        if (m6667) {
            this.f11759 = true;
            try {
                m6693(this.f11731, this.f11755);
            } finally {
                m6670();
            }
        }
        m6698();
        m6655();
        ((HashMap) this.f11725.ʽʽ).values().removeAll(Collections.singleton(null));
        return m6667;
    }

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public final boolean m6667(ArrayList arrayList, ArrayList arrayList2, int i, int i2) {
        boolean z = (i2 & 1) != 0;
        int i3 = -1;
        if (!this.f11732.isEmpty()) {
            if (i < 0) {
                i3 = z ? 0 : this.f11732.size() - 1;
            } else {
                int size = this.f11732.size() - 1;
                while (size >= 0) {
                    C3137 c3137 = (C3137) this.f11732.get(size);
                    if (i >= 0 && i == c3137.f12002) {
                        break;
                    }
                    size--;
                }
                if (size < 0) {
                    i3 = size;
                } else if (z) {
                    i3 = size;
                    while (i3 > 0) {
                        C3137 c31372 = (C3137) this.f11732.get(i3 - 1);
                        if (i < 0 || i != c31372.f12002) {
                            break;
                        }
                        i3--;
                    }
                } else if (size != this.f11732.size() - 1) {
                    i3 = size + 1;
                }
            }
        }
        if (i3 < 0) {
            return false;
        }
        for (int size2 = this.f11732.size() - 1; size2 >= i3; size2--) {
            arrayList.add((C3137) this.f11732.remove(size2));
            arrayList2.add(Boolean.TRUE);
        }
        return true;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final boolean m6668() {
        if (this.f11744 >= 1) {
            for (AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 : this.f11725.ʾᵎ()) {
                if (abstractComponentCallbacksC3123 != null) {
                    if (!abstractComponentCallbacksC3123.f11932 ? abstractComponentCallbacksC3123.f11903.m6668() : false) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final void m6669(AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123) {
        if (m6654(2)) {
            String str = "hide: " + abstractComponentCallbacksC3123;
        }
        if (abstractComponentCallbacksC3123.f11932) {
            return;
        }
        abstractComponentCallbacksC3123.f11932 = true;
        abstractComponentCallbacksC3123.f11913 = true ^ abstractComponentCallbacksC3123.f11913;
        m6712(abstractComponentCallbacksC3123);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m6670() {
        this.f11759 = false;
        this.f11755.clear();
        this.f11731.clear();
    }

    /* renamed from: ˈˏ, reason: contains not printable characters */
    public final void m6671(AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123, EnumC0199 enumC0199) {
        if (abstractComponentCallbacksC3123.equals(this.f11725.ᵔﹳ(abstractComponentCallbacksC3123.f11929)) && (abstractComponentCallbacksC3123.f11936 == null || abstractComponentCallbacksC3123.f11917 == this)) {
            abstractComponentCallbacksC3123.f11892 = enumC0199;
            return;
        }
        throw new IllegalArgumentException("Fragment " + abstractComponentCallbacksC3123 + " is not an active fragment of FragmentManager " + this);
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final AbstractComponentCallbacksC3123 m6672(int i) {
        ﹳٴ r0 = this.f11725;
        ArrayList arrayList = (ArrayList) r0.ᴵˊ;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = (AbstractComponentCallbacksC3123) arrayList.get(size);
            if (abstractComponentCallbacksC3123 != null && abstractComponentCallbacksC3123.f11904 == i) {
                return abstractComponentCallbacksC3123;
            }
        }
        for (C3120 c3120 : ((HashMap) r0.ʽʽ).values()) {
            if (c3120 != null) {
                AbstractComponentCallbacksC3123 abstractComponentCallbacksC31232 = c3120.f11861;
                if (abstractComponentCallbacksC31232.f11904 == i) {
                    return abstractComponentCallbacksC31232;
                }
            }
        }
        return null;
    }

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public final void m6673() {
        m6657(new C3122(this, -1, 0), false);
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final void m6674(boolean z) {
        if (z && this.f11729 != null) {
            m6690(new IllegalStateException("Do not call dispatchLowMemory() on host. Host implements OnTrimMemoryProvider and automatically dispatches low memory callbacks to fragments."));
            throw null;
        }
        for (AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 : this.f11725.ʾᵎ()) {
            if (abstractComponentCallbacksC3123 != null) {
                abstractComponentCallbacksC3123.f11926 = true;
                if (z) {
                    abstractComponentCallbacksC3123.f11903.m6674(true);
                }
            }
        }
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final void m6675() {
        ArrayList arrayList = this.f11725.ـˆ();
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = (AbstractComponentCallbacksC3123) obj;
            if (abstractComponentCallbacksC3123 != null) {
                abstractComponentCallbacksC3123.m6812();
                abstractComponentCallbacksC3123.f11903.m6675();
            }
        }
    }

    /* renamed from: ˉـ, reason: contains not printable characters */
    public final boolean m6676() {
        return m6666(-1, 0);
    }

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final C3137 m6677(int i) {
        if (i != this.f11732.size()) {
            return (C3137) this.f11732.get(i);
        }
        C3137 c3137 = this.f11756;
        if (c3137 != null) {
            return c3137;
        }
        throw new IndexOutOfBoundsException();
    }

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final void m6678() {
        Iterator it = m6684().iterator();
        while (it.hasNext()) {
            C3133 c3133 = (C3133) it.next();
            if (c3133.f11976) {
                if (m6654(2)) {
                }
                c3133.f11976 = false;
                c3133.m6870();
            }
        }
    }

    /* renamed from: ˊᵔ, reason: contains not printable characters */
    public final void m6679(String str) {
        Bundle bundle = Bundle.EMPTY;
        C3136 c3136 = (C3136) this.f11753.get(str);
        if (c3136 == null || !c3136.f11993.f1076.m733(EnumC0199.f1102)) {
            this.f11735.put(str, bundle);
        } else {
            c3136.mo6760(str, bundle);
        }
        if (m6654(2)) {
            String str2 = "Setting fragment result with key " + str + " and result " + bundle;
        }
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public final boolean m6680() {
        if (this.f11744 < 1) {
            return false;
        }
        boolean z = false;
        for (AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 : this.f11725.ʾᵎ()) {
            if (abstractComponentCallbacksC3123 != null && m6652(abstractComponentCallbacksC3123)) {
                if (!abstractComponentCallbacksC3123.f11932 ? abstractComponentCallbacksC3123.f11903.m6680() : false) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v10, types: [android.os.Parcelable, ˑʼ.ʿᵢ, java.lang.Object] */
    /* renamed from: ˏᵢ, reason: contains not printable characters */
    public final Bundle m6681() {
        int i;
        ArrayList arrayList;
        C3135[] c3135Arr;
        Bundle bundle = new Bundle();
        m6678();
        m6665();
        m6664(true);
        this.f11751 = true;
        this.f11741.f11948 = true;
        ﹳٴ r1 = this.f11725;
        r1.getClass();
        HashMap hashMap = (HashMap) r1.ʽʽ;
        ArrayList arrayList2 = new ArrayList(hashMap.size());
        for (C3120 c3120 : hashMap.values()) {
            if (c3120 != null) {
                AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = c3120.f11861;
                r1.ˋᵔ(abstractComponentCallbacksC3123.f11929, c3120.m6767());
                arrayList2.add(abstractComponentCallbacksC3123.f11929);
                if (m6654(2)) {
                    String str = "Saved state of " + abstractComponentCallbacksC3123 + ": " + abstractComponentCallbacksC3123.f11927;
                }
            }
        }
        HashMap hashMap2 = (HashMap) this.f11725.ˈٴ;
        if (!hashMap2.isEmpty()) {
            ﹳٴ r3 = this.f11725;
            synchronized (((ArrayList) r3.ᴵˊ)) {
                try {
                    if (((ArrayList) r3.ᴵˊ).isEmpty()) {
                        arrayList = null;
                    } else {
                        arrayList = new ArrayList(((ArrayList) r3.ᴵˊ).size());
                        ArrayList arrayList3 = (ArrayList) r3.ᴵˊ;
                        int size = arrayList3.size();
                        int i2 = 0;
                        while (i2 < size) {
                            Object obj = arrayList3.get(i2);
                            i2++;
                            AbstractComponentCallbacksC3123 abstractComponentCallbacksC31232 = (AbstractComponentCallbacksC3123) obj;
                            arrayList.add(abstractComponentCallbacksC31232.f11929);
                            if (m6654(2)) {
                                String str2 = "saveAllState: adding fragment (" + abstractComponentCallbacksC31232.f11929 + "): " + abstractComponentCallbacksC31232;
                            }
                        }
                    }
                } finally {
                }
            }
            int size2 = this.f11732.size();
            if (size2 > 0) {
                c3135Arr = new C3135[size2];
                for (i = 0; i < size2; i++) {
                    c3135Arr[i] = new C3135((C3137) this.f11732.get(i));
                    if (m6654(2)) {
                        StringBuilder m16 = AbstractC0001.m16(i, "saveAllState: adding back stack #", ": ");
                        m16.append(this.f11732.get(i));
                        m16.toString();
                    }
                }
            } else {
                c3135Arr = null;
            }
            ?? obj2 = new Object();
            obj2.f11771 = null;
            ArrayList arrayList4 = new ArrayList();
            obj2.f11768 = arrayList4;
            ArrayList arrayList5 = new ArrayList();
            obj2.f11769 = arrayList5;
            obj2.f11765 = arrayList2;
            obj2.f11770 = arrayList;
            obj2.f11764 = c3135Arr;
            obj2.f11766 = this.f11747.get();
            AbstractComponentCallbacksC3123 abstractComponentCallbacksC31233 = this.f11728;
            if (abstractComponentCallbacksC31233 != null) {
                obj2.f11771 = abstractComponentCallbacksC31233.f11929;
            }
            arrayList4.addAll(this.f11762.keySet());
            arrayList5.addAll(this.f11762.values());
            obj2.f11767 = new ArrayList(this.f11746);
            bundle.putParcelable("state", obj2);
            for (String str3 : this.f11735.keySet()) {
                bundle.putBundle(AbstractC1220.m3771("result_", str3), (Bundle) this.f11735.get(str3));
            }
            for (String str4 : hashMap2.keySet()) {
                bundle.putBundle(AbstractC1220.m3771("fragment_", str4), (Bundle) hashMap2.get(str4));
            }
        } else if (m6654(2)) {
            return bundle;
        }
        return bundle;
    }

    /* renamed from: ˑʼ, reason: contains not printable characters */
    public final void m6682() {
        ArrayList arrayList = this.f11725.ʻٴ();
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            C3120 c3120 = (C3120) obj;
            AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = c3120.f11861;
            if (abstractComponentCallbacksC3123.f11919) {
                if (this.f11759) {
                    this.f11754 = true;
                } else {
                    abstractComponentCallbacksC3123.f11919 = false;
                    c3120.m6769();
                }
            }
        }
    }

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public final boolean m6683() {
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = this.f11758;
        if (abstractComponentCallbacksC3123 == null) {
            return true;
        }
        return abstractComponentCallbacksC3123.m6786() && this.f11758.m6805().m6683();
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final HashSet m6684() {
        C3133 c3133;
        HashSet hashSet = new HashSet();
        ArrayList arrayList = this.f11725.ʻٴ();
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ViewGroup viewGroup = ((C3120) obj).f11861.f11888;
            if (viewGroup != null) {
                m6704();
                Object tag = viewGroup.getTag(R.id.qp);
                if (tag instanceof C3133) {
                    c3133 = (C3133) tag;
                } else {
                    c3133 = new C3133(viewGroup);
                    viewGroup.setTag(R.id.qp, c3133);
                }
                hashSet.add(c3133);
            }
        }
        return hashSet;
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final void m6685(boolean z, boolean z2) {
        if (z2 && this.f11729 != null) {
            m6690(new IllegalStateException("Do not call dispatchPictureInPictureModeChanged() on host. Host implements OnPictureInPictureModeChangedProvider and automatically dispatches picture-in-picture mode changes to fragments."));
            throw null;
        }
        for (AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 : this.f11725.ʾᵎ()) {
            if (abstractComponentCallbacksC3123 != null) {
                abstractComponentCallbacksC3123.m6794(z);
                if (z2) {
                    abstractComponentCallbacksC3123.f11903.m6685(z, true);
                }
            }
        }
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final void m6686(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        String m3791 = AbstractC1220.m3791(str, "    ");
        ﹳٴ r1 = this.f11725;
        ArrayList arrayList = (ArrayList) r1.ᴵˊ;
        String m37912 = AbstractC1220.m3791(str, "    ");
        HashMap hashMap = (HashMap) r1.ʽʽ;
        if (!hashMap.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Active Fragments:");
            for (C3120 c3120 : hashMap.values()) {
                printWriter.print(str);
                if (c3120 != null) {
                    AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = c3120.f11861;
                    printWriter.println(abstractComponentCallbacksC3123);
                    abstractComponentCallbacksC3123.getClass();
                    printWriter.print(m37912);
                    printWriter.print("mFragmentId=#");
                    printWriter.print(Integer.toHexString(abstractComponentCallbacksC3123.f11904));
                    printWriter.print(" mContainerId=#");
                    printWriter.print(Integer.toHexString(abstractComponentCallbacksC3123.f11897));
                    printWriter.print(" mTag=");
                    printWriter.println(abstractComponentCallbacksC3123.f11898);
                    printWriter.print(m37912);
                    printWriter.print("mState=");
                    printWriter.print(abstractComponentCallbacksC3123.f11895);
                    printWriter.print(" mWho=");
                    printWriter.print(abstractComponentCallbacksC3123.f11929);
                    printWriter.print(" mBackStackNesting=");
                    printWriter.println(abstractComponentCallbacksC3123.f11889);
                    printWriter.print(m37912);
                    printWriter.print("mAdded=");
                    printWriter.print(abstractComponentCallbacksC3123.f11931);
                    printWriter.print(" mRemoving=");
                    printWriter.print(abstractComponentCallbacksC3123.f11934);
                    printWriter.print(" mFromLayout=");
                    printWriter.print(abstractComponentCallbacksC3123.f11935);
                    printWriter.print(" mInLayout=");
                    printWriter.println(abstractComponentCallbacksC3123.f11900);
                    printWriter.print(m37912);
                    printWriter.print("mHidden=");
                    printWriter.print(abstractComponentCallbacksC3123.f11932);
                    printWriter.print(" mDetached=");
                    printWriter.print(abstractComponentCallbacksC3123.f11925);
                    printWriter.print(" mMenuVisible=");
                    printWriter.print(abstractComponentCallbacksC3123.f11911);
                    printWriter.print(" mHasMenu=");
                    printWriter.println(false);
                    printWriter.print(m37912);
                    printWriter.print("mRetainInstance=");
                    printWriter.print(abstractComponentCallbacksC3123.f11923);
                    printWriter.print(" mUserVisibleHint=");
                    printWriter.println(abstractComponentCallbacksC3123.f11901);
                    if (abstractComponentCallbacksC3123.f11917 != null) {
                        printWriter.print(m37912);
                        printWriter.print("mFragmentManager=");
                        printWriter.println(abstractComponentCallbacksC3123.f11917);
                    }
                    if (abstractComponentCallbacksC3123.f11936 != null) {
                        printWriter.print(m37912);
                        printWriter.print("mHost=");
                        printWriter.println(abstractComponentCallbacksC3123.f11936);
                    }
                    if (abstractComponentCallbacksC3123.f11928 != null) {
                        printWriter.print(m37912);
                        printWriter.print("mParentFragment=");
                        printWriter.println(abstractComponentCallbacksC3123.f11928);
                    }
                    if (abstractComponentCallbacksC3123.f11906 != null) {
                        printWriter.print(m37912);
                        printWriter.print("mArguments=");
                        printWriter.println(abstractComponentCallbacksC3123.f11906);
                    }
                    if (abstractComponentCallbacksC3123.f11927 != null) {
                        printWriter.print(m37912);
                        printWriter.print("mSavedFragmentState=");
                        printWriter.println(abstractComponentCallbacksC3123.f11927);
                    }
                    if (abstractComponentCallbacksC3123.f11891 != null) {
                        printWriter.print(m37912);
                        printWriter.print("mSavedViewState=");
                        printWriter.println(abstractComponentCallbacksC3123.f11891);
                    }
                    if (abstractComponentCallbacksC3123.f11902 != null) {
                        printWriter.print(m37912);
                        printWriter.print("mSavedViewRegistryState=");
                        printWriter.println(abstractComponentCallbacksC3123.f11902);
                    }
                    Object m6802 = abstractComponentCallbacksC3123.m6802(false);
                    if (m6802 != null) {
                        printWriter.print(m37912);
                        printWriter.print("mTarget=");
                        printWriter.print(m6802);
                        printWriter.print(" mTargetRequestCode=");
                        printWriter.println(abstractComponentCallbacksC3123.f11933);
                    }
                    printWriter.print(m37912);
                    printWriter.print("mPopDirection=");
                    C3121 c3121 = abstractComponentCallbacksC3123.f11938;
                    printWriter.println(c3121 == null ? false : c3121.f11880);
                    C3121 c31212 = abstractComponentCallbacksC3123.f11938;
                    if ((c31212 == null ? 0 : c31212.f11879) != 0) {
                        printWriter.print(m37912);
                        printWriter.print("getEnterAnim=");
                        C3121 c31213 = abstractComponentCallbacksC3123.f11938;
                        printWriter.println(c31213 == null ? 0 : c31213.f11879);
                    }
                    C3121 c31214 = abstractComponentCallbacksC3123.f11938;
                    if ((c31214 == null ? 0 : c31214.f11868) != 0) {
                        printWriter.print(m37912);
                        printWriter.print("getExitAnim=");
                        C3121 c31215 = abstractComponentCallbacksC3123.f11938;
                        printWriter.println(c31215 == null ? 0 : c31215.f11868);
                    }
                    C3121 c31216 = abstractComponentCallbacksC3123.f11938;
                    if ((c31216 == null ? 0 : c31216.f11870) != 0) {
                        printWriter.print(m37912);
                        printWriter.print("getPopEnterAnim=");
                        C3121 c31217 = abstractComponentCallbacksC3123.f11938;
                        printWriter.println(c31217 == null ? 0 : c31217.f11870);
                    }
                    C3121 c31218 = abstractComponentCallbacksC3123.f11938;
                    if ((c31218 == null ? 0 : c31218.f11873) != 0) {
                        printWriter.print(m37912);
                        printWriter.print("getPopExitAnim=");
                        C3121 c31219 = abstractComponentCallbacksC3123.f11938;
                        printWriter.println(c31219 == null ? 0 : c31219.f11873);
                    }
                    if (abstractComponentCallbacksC3123.f11888 != null) {
                        printWriter.print(m37912);
                        printWriter.print("mContainer=");
                        printWriter.println(abstractComponentCallbacksC3123.f11888);
                    }
                    if (abstractComponentCallbacksC3123.f11908 != null) {
                        printWriter.print(m37912);
                        printWriter.print("mView=");
                        printWriter.println(abstractComponentCallbacksC3123.f11908);
                    }
                    if (abstractComponentCallbacksC3123.mo4203() != null) {
                        ﹳٴ r9 = new ﹳٴ(abstractComponentCallbacksC3123.mo724(), C3398.f13268, C1081.f4235);
                        C2461 m5561 = AbstractC2443.m5561(C3398.class);
                        String m5583 = m5561.m5583();
                        if (m5583 == null) {
                            throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
                        }
                        C3360 c3360 = ((C3398) r9.ᵢˏ(m5561, "androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(m5583))).f13269;
                        if (c3360.f13143 > 0) {
                            printWriter.print(m37912);
                            printWriter.println("Loaders:");
                            if (c3360.f13143 > 0) {
                                if (c3360.m7202(0) != null) {
                                    throw new ClassCastException();
                                }
                                printWriter.print(m37912);
                                printWriter.print("  #");
                                printWriter.print(c3360.f13144[0]);
                                printWriter.print(": ");
                                throw null;
                            }
                        }
                    }
                    printWriter.print(m37912);
                    printWriter.println("Child " + abstractComponentCallbacksC3123.f11903 + ":");
                    abstractComponentCallbacksC3123.f11903.m6686(AbstractC1220.m3791(m37912, "  "), fileDescriptor, printWriter, strArr);
                } else {
                    printWriter.println("null");
                }
            }
        }
        int size2 = arrayList.size();
        if (size2 > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i = 0; i < size2; i++) {
                AbstractComponentCallbacksC3123 abstractComponentCallbacksC31232 = (AbstractComponentCallbacksC3123) arrayList.get(i);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.println(abstractComponentCallbacksC31232.toString());
            }
        }
        ArrayList arrayList2 = this.f11742;
        if (arrayList2 != null && (size = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i2 = 0; i2 < size; i2++) {
                AbstractComponentCallbacksC3123 abstractComponentCallbacksC31233 = (AbstractComponentCallbacksC3123) this.f11742.get(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(abstractComponentCallbacksC31233.toString());
            }
        }
        int size3 = this.f11732.size();
        if (size3 > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i3 = 0; i3 < size3; i3++) {
                C3137 c3137 = (C3137) this.f11732.get(i3);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i3);
                printWriter.print(": ");
                printWriter.println(c3137.toString());
                c3137.m6881(m3791, printWriter, true);
            }
        }
        printWriter.print(str);
        printWriter.println("Back Stack Index: " + this.f11747.get());
        synchronized (this.f11760) {
            try {
                int size4 = this.f11760.size();
                if (size4 > 0) {
                    printWriter.print(str);
                    printWriter.println("Pending Actions:");
                    for (int i4 = 0; i4 < size4; i4++) {
                        Object obj = (InterfaceC3093) this.f11760.get(i4);
                        printWriter.print(str);
                        printWriter.print("  #");
                        printWriter.print(i4);
                        printWriter.print(": ");
                        printWriter.println(obj);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.f11729);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.f11722);
        if (this.f11758 != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.f11758);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.f11744);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.f11751);
        printWriter.print(" mStopped=");
        printWriter.print(this.f11745);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.f11750);
        if (this.f11737) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.f11737);
        }
    }

    /* renamed from: ـˏ, reason: contains not printable characters */
    public final void m6687(int i, boolean z) {
        C3114 c3114;
        if (this.f11729 == null && i != -1) {
            throw new IllegalStateException("No activity");
        }
        if (z || i != this.f11744) {
            this.f11744 = i;
            ﹳٴ r6 = this.f11725;
            HashMap hashMap = (HashMap) r6.ʽʽ;
            ArrayList arrayList = (ArrayList) r6.ᴵˊ;
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                C3120 c3120 = (C3120) hashMap.get(((AbstractComponentCallbacksC3123) obj).f11929);
                if (c3120 != null) {
                    c3120.m6769();
                }
            }
            for (C3120 c31202 : hashMap.values()) {
                if (c31202 != null) {
                    c31202.m6769();
                    AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = c31202.f11861;
                    if (abstractComponentCallbacksC3123.f11934 && !abstractComponentCallbacksC3123.m6809()) {
                        r6.ᴵˊ(c31202);
                    }
                }
            }
            m6682();
            if (this.f11737 && (c3114 = this.f11729) != null && this.f11744 == 7) {
                c3114.f11852.invalidateOptionsMenu();
                this.f11737 = false;
            }
        }
    }

    /* renamed from: ـﹶ, reason: contains not printable characters */
    public final void m6688(String str, ʽⁱ r8, InterfaceC3117 interfaceC3117) {
        C0184 c0184 = r8.f11924;
        if (c0184.f1076 == EnumC0199.f1101) {
            return;
        }
        C3101 c3101 = new C3101(this, str, interfaceC3117, c0184, 0);
        C3136 c3136 = (C3136) this.f11753.put(str, new C3136(c0184, interfaceC3117, c3101));
        if (c3136 != null) {
            c3136.f11993.m715(c3136.f11992);
        }
        if (m6654(2)) {
            String str2 = "Setting FragmentResultListener with key " + str + " lifecycleOwner " + c0184 + " and listener " + interfaceC3117;
        }
        c0184.m714(c3101);
    }

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final ViewGroup m6689(AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123) {
        ViewGroup viewGroup = abstractComponentCallbacksC3123.f11888;
        if (viewGroup != null) {
            return viewGroup;
        }
        if (abstractComponentCallbacksC3123.f11897 <= 0 || !this.f11722.ᵢˏ()) {
            return null;
        }
        View view = this.f11722.ʼʼ(abstractComponentCallbacksC3123.f11897);
        if (view instanceof ViewGroup) {
            return (ViewGroup) view;
        }
        return null;
    }

    /* renamed from: ٴﹳ, reason: contains not printable characters */
    public final void m6690(IllegalStateException illegalStateException) {
        illegalStateException.getMessage();
        PrintWriter printWriter = new PrintWriter(new C3124());
        C3114 c3114 = this.f11729;
        if (c3114 == null) {
            try {
                m6686("  ", null, printWriter, new String[0]);
                throw illegalStateException;
            } catch (Exception e) {
                throw illegalStateException;
            }
        } else {
            try {
                c3114.f11852.dump("  ", null, printWriter, new String[0]);
                throw illegalStateException;
            } catch (Exception e2) {
                throw illegalStateException;
            }
        }
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final boolean m6691() {
        if (this.f11744 < 1) {
            return false;
        }
        ArrayList arrayList = null;
        boolean z = false;
        for (AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 : this.f11725.ʾᵎ()) {
            if (abstractComponentCallbacksC3123 != null && m6652(abstractComponentCallbacksC3123)) {
                if (!abstractComponentCallbacksC3123.f11932 ? abstractComponentCallbacksC3123.f11903.m6691() : false) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(abstractComponentCallbacksC3123);
                    z = true;
                }
            }
        }
        if (this.f11742 != null) {
            for (int i = 0; i < this.f11742.size(); i++) {
                AbstractComponentCallbacksC3123 abstractComponentCallbacksC31232 = (AbstractComponentCallbacksC3123) this.f11742.get(i);
                if (arrayList == null || !arrayList.contains(abstractComponentCallbacksC31232)) {
                    abstractComponentCallbacksC31232.getClass();
                }
            }
        }
        this.f11742 = arrayList;
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v1, types: [ˑʼ.ʻᵎ, java.lang.Object] */
    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public final void m6692(Bundle bundle) {
        C3125 c3125;
        int i;
        int i2;
        Bundle bundle2;
        C3120 c3120;
        Bundle bundle3;
        Bundle bundle4;
        for (String str : bundle.keySet()) {
            if (str.startsWith("result_") && (bundle4 = bundle.getBundle(str)) != null) {
                bundle4.setClassLoader(this.f11729.f11849.getClassLoader());
                this.f11735.put(str.substring(7), bundle4);
            }
        }
        HashMap hashMap = new HashMap();
        for (String str2 : bundle.keySet()) {
            if (str2.startsWith("fragment_") && (bundle3 = bundle.getBundle(str2)) != null) {
                bundle3.setClassLoader(this.f11729.f11849.getClassLoader());
                hashMap.put(str2.substring(9), bundle3);
            }
        }
        ﹳٴ r3 = this.f11725;
        HashMap hashMap2 = (HashMap) r3.ˈٴ;
        HashMap hashMap3 = (HashMap) r3.ʽʽ;
        hashMap2.clear();
        hashMap2.putAll(hashMap);
        C3086 c3086 = (C3086) bundle.getParcelable("state");
        if (c3086 == null) {
            return;
        }
        hashMap3.clear();
        ArrayList arrayList = c3086.f11765;
        int size = arrayList.size();
        int i3 = 0;
        while (true) {
            c3125 = this.f11724;
            if (i3 >= size) {
                break;
            }
            Object obj = arrayList.get(i3);
            i3++;
            Bundle bundle5 = r3.ˋᵔ((String) obj, (Bundle) null);
            if (bundle5 != null) {
                AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = (AbstractComponentCallbacksC3123) this.f11741.f11949.get(((C3103) bundle5.getParcelable("state")).f11828);
                if (abstractComponentCallbacksC3123 != null) {
                    if (m6654(2)) {
                        i2 = 2;
                        String str3 = "restoreSaveState: re-attaching retained " + abstractComponentCallbacksC3123;
                    } else {
                        i2 = 2;
                    }
                    c3120 = new C3120(c3125, r3, abstractComponentCallbacksC3123, bundle5);
                    bundle2 = bundle5;
                } else {
                    i2 = 2;
                    bundle2 = bundle5;
                    c3120 = new C3120(this.f11724, this.f11725, this.f11729.f11849.getClassLoader(), m6699(), bundle5);
                }
                AbstractComponentCallbacksC3123 abstractComponentCallbacksC31232 = c3120.f11861;
                abstractComponentCallbacksC31232.f11927 = bundle2;
                abstractComponentCallbacksC31232.f11917 = this;
                if (m6654(i2)) {
                    String str4 = "restoreSaveState: active (" + abstractComponentCallbacksC31232.f11929 + "): " + abstractComponentCallbacksC31232;
                }
                c3120.m6766(this.f11729.f11849.getClassLoader());
                r3.ʾˋ(c3120);
                c3120.f11863 = this.f11744;
            }
        }
        C3126 c3126 = this.f11741;
        c3126.getClass();
        ArrayList arrayList2 = new ArrayList(c3126.f11949.values());
        int size2 = arrayList2.size();
        int i4 = 0;
        while (i4 < size2) {
            Object obj2 = arrayList2.get(i4);
            i4++;
            AbstractComponentCallbacksC3123 abstractComponentCallbacksC31233 = (AbstractComponentCallbacksC3123) obj2;
            if (hashMap3.get(abstractComponentCallbacksC31233.f11929) == null) {
                if (m6654(2)) {
                    String str5 = "Discarding retained Fragment " + abstractComponentCallbacksC31233 + " that was not found in the set of active Fragments " + c3086.f11765;
                }
                this.f11741.m6859(abstractComponentCallbacksC31233);
                abstractComponentCallbacksC31233.f11917 = this;
                C3120 c31202 = new C3120(c3125, r3, abstractComponentCallbacksC31233);
                c31202.f11863 = 1;
                c31202.m6769();
                abstractComponentCallbacksC31233.f11934 = true;
                c31202.m6769();
            }
        }
        ArrayList arrayList3 = c3086.f11770;
        ((ArrayList) r3.ᴵˊ).clear();
        if (arrayList3 != null) {
            int size3 = arrayList3.size();
            int i5 = 0;
            while (i5 < size3) {
                Object obj3 = arrayList3.get(i5);
                i5++;
                String str6 = (String) obj3;
                AbstractComponentCallbacksC3123 abstractComponentCallbacksC31234 = r3.ᵔﹳ(str6);
                if (abstractComponentCallbacksC31234 == null) {
                    throw new IllegalStateException(AbstractC2305.m5378("No instantiated fragment for (", str6, ")"));
                }
                if (m6654(2)) {
                    String str7 = "restoreSaveState: added (" + str6 + "): " + abstractComponentCallbacksC31234;
                }
                r3.ʼˎ(abstractComponentCallbacksC31234);
            }
        }
        if (c3086.f11764 != null) {
            this.f11732 = new ArrayList(c3086.f11764.length);
            int i6 = 0;
            while (true) {
                C3135[] c3135Arr = c3086.f11764;
                if (i6 >= c3135Arr.length) {
                    break;
                }
                C3135 c3135 = c3135Arr[i6];
                ArrayList arrayList4 = c3135.f11986;
                C3137 c3137 = new C3137(this);
                int[] iArr = c3135.f11979;
                int i7 = 0;
                int i8 = 0;
                while (i7 < iArr.length) {
                    ?? obj4 = new Object();
                    int i9 = i7 + 1;
                    obj4.f11689 = iArr[i7];
                    if (m6654(2)) {
                        String str8 = "Instantiate " + c3137 + " op #" + i8 + " base fragment #" + iArr[i9];
                    }
                    obj4.f11687 = EnumC0199.values()[c3135.f11978[i8]];
                    obj4.f11682 = EnumC0199.values()[c3135.f11981[i8]];
                    int i10 = i7 + 2;
                    obj4.f11683 = iArr[i9] != 0;
                    int i11 = iArr[i10];
                    obj4.f11684 = i11;
                    int i12 = iArr[i7 + 3];
                    obj4.f11685 = i12;
                    int i13 = i7 + 5;
                    int i14 = iArr[i7 + 4];
                    obj4.f11690 = i14;
                    i7 += 6;
                    int[] iArr2 = iArr;
                    int i15 = iArr2[i13];
                    obj4.f11686 = i15;
                    c3137.f12010 = i11;
                    c3137.f11997 = i12;
                    c3137.f11999 = i14;
                    c3137.f12003 = i15;
                    c3137.m6888(obj4);
                    i8++;
                    iArr = iArr2;
                }
                c3137.f12014 = c3135.f11987;
                c3137.f11995 = c3135.f11983;
                c3137.f12006 = true;
                c3137.f11998 = c3135.f11982;
                c3137.f12005 = c3135.f11989;
                c3137.f12013 = c3135.f11984;
                c3137.f12000 = c3135.f11988;
                c3137.f12007 = c3135.f11990;
                c3137.f12001 = c3135.f11980;
                c3137.f11996 = c3135.f11991;
                c3137.f12002 = c3135.f11985;
                for (int i16 = 0; i16 < arrayList4.size(); i16++) {
                    String str9 = (String) arrayList4.get(i16);
                    if (str9 != null) {
                        ((C3074) c3137.f12011.get(i16)).f11688 = r3.ᵔﹳ(str9);
                    }
                }
                c3137.m6882(1);
                if (m6654(2)) {
                    StringBuilder m16 = AbstractC0001.m16(i6, "restoreAllState: back stack #", " (index ");
                    m16.append(c3137.f12002);
                    m16.append("): ");
                    m16.append(c3137);
                    m16.toString();
                    PrintWriter printWriter = new PrintWriter(new C3124());
                    c3137.m6881("  ", printWriter, false);
                    printWriter.close();
                }
                this.f11732.add(c3137);
                i6++;
            }
            i = 0;
        } else {
            i = 0;
            this.f11732 = new ArrayList();
        }
        this.f11747.set(c3086.f11766);
        String str10 = c3086.f11771;
        if (str10 != null) {
            AbstractComponentCallbacksC3123 abstractComponentCallbacksC31235 = r3.ᵔﹳ(str10);
            this.f11728 = abstractComponentCallbacksC31235;
            m6711(abstractComponentCallbacksC31235);
        }
        ArrayList arrayList5 = c3086.f11768;
        if (arrayList5 != null) {
            for (int i17 = i; i17 < arrayList5.size(); i17++) {
                this.f11762.put((String) arrayList5.get(i17), (C3079) c3086.f11769.get(i17));
            }
        }
        this.f11746 = new ArrayDeque(c3086.f11767);
    }

    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    public final void m6693(ArrayList arrayList, ArrayList arrayList2) {
        if (arrayList.isEmpty()) {
            return;
        }
        if (arrayList.size() != arrayList2.size()) {
            throw new IllegalStateException("Internal error with the back stack records");
        }
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (i < size) {
            if (!((C3137) arrayList.get(i)).f11996) {
                if (i2 != i) {
                    m6662(arrayList, arrayList2, i2, i);
                }
                i2 = i + 1;
                if (((Boolean) arrayList2.get(i)).booleanValue()) {
                    while (i2 < size && ((Boolean) arrayList2.get(i2)).booleanValue() && !((C3137) arrayList.get(i2)).f11996) {
                        i2++;
                    }
                }
                m6662(arrayList, arrayList2, i, i2);
                i = i2 - 1;
            }
            i++;
        }
        if (i2 != size) {
            m6662(arrayList, arrayList2, i2, size);
        }
    }

    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public final void m6694() {
        synchronized (this.f11760) {
            try {
                if (this.f11760.size() == 1) {
                    this.f11729.f11853.removeCallbacks(this.f11739);
                    this.f11729.f11853.post(this.f11739);
                    m6698();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final void m6695(C3137 c3137, boolean z) {
        if (z && (this.f11729 == null || this.f11750)) {
            return;
        }
        m6707(z);
        C3137 c31372 = this.f11756;
        if (c31372 != null) {
            c31372.f12004 = false;
            c31372.m6884();
            if (m6654(3)) {
                String str = "Reversing mTransitioningOp " + this.f11756 + " as part of execSingleAction for action " + c3137;
            }
            this.f11756.m6886(false, false);
            this.f11756.mo6717(this.f11731, this.f11755);
            ArrayList arrayList = this.f11756.f12011;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = ((C3074) obj).f11688;
                if (abstractComponentCallbacksC3123 != null) {
                    abstractComponentCallbacksC3123.f11899 = false;
                }
            }
            this.f11756 = null;
        }
        c3137.mo6717(this.f11731, this.f11755);
        this.f11759 = true;
        try {
            m6693(this.f11731, this.f11755);
            m6670();
            m6698();
            m6655();
            ((HashMap) this.f11725.ʽʽ).values().removeAll(Collections.singleton(null));
        } catch (Throwable th) {
            m6670();
            throw th;
        }
    }

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public final void m6696(int i, int i2, boolean z) {
        if (i < 0) {
            throw new IllegalArgumentException(AbstractC3740.m7932(i, "Bad id: "));
        }
        m6657(new C3122(this, i, i2), z);
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final AbstractComponentCallbacksC3123 m6697(String str) {
        ﹳٴ r0 = this.f11725;
        ArrayList arrayList = (ArrayList) r0.ᴵˊ;
        if (str != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = (AbstractComponentCallbacksC3123) arrayList.get(size);
                if (abstractComponentCallbacksC3123 != null && str.equals(abstractComponentCallbacksC3123.f11898)) {
                    return abstractComponentCallbacksC3123;
                }
            }
        }
        if (str == null) {
            return null;
        }
        for (C3120 c3120 : ((HashMap) r0.ʽʽ).values()) {
            if (c3120 != null) {
                AbstractComponentCallbacksC3123 abstractComponentCallbacksC31232 = c3120.f11861;
                if (str.equals(abstractComponentCallbacksC31232.f11898)) {
                    return abstractComponentCallbacksC31232;
                }
            }
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [ᴵⁱ.ﹳٴ, ˊʼ.ʼˎ] */
    /* JADX WARN: Type inference failed for: r2v5, types: [ᴵⁱ.ﹳٴ, ˊʼ.ʼˎ] */
    /* renamed from: ᵎʻ, reason: contains not printable characters */
    public final void m6698() {
        synchronized (this.f11760) {
            try {
                if (!this.f11760.isEmpty()) {
                    C3131 c3131 = this.f11730;
                    c3131.f11965 = true;
                    ?? r2 = c3131.f11962;
                    if (r2 != 0) {
                        r2.mo716();
                    }
                    if (m6654(3)) {
                        String str = "FragmentManager " + this + " enabling OnBackPressedCallback, caused by non-empty pending actions";
                    }
                    return;
                }
                boolean z = m6701() > 0 && m6651(this.f11758);
                if (m6654(3)) {
                    String str2 = "OnBackPressedCallback for FragmentManager " + this + " enabled state is " + z;
                }
                C3131 c31312 = this.f11730;
                c31312.f11965 = z;
                ?? r0 = c31312.f11962;
                if (r0 != 0) {
                    r0.mo716();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final C3105 m6699() {
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = this.f11758;
        return abstractComponentCallbacksC3123 != null ? abstractComponentCallbacksC3123.f11917.m6699() : this.f11748;
    }

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public final void m6700(AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123) {
        if (m6654(2)) {
            String str = "remove: " + abstractComponentCallbacksC3123 + " nesting=" + abstractComponentCallbacksC3123.f11889;
        }
        boolean m6809 = abstractComponentCallbacksC3123.m6809();
        if (abstractComponentCallbacksC3123.f11925 && m6809) {
            return;
        }
        ﹳٴ r0 = this.f11725;
        synchronized (((ArrayList) r0.ᴵˊ)) {
            ((ArrayList) r0.ᴵˊ).remove(abstractComponentCallbacksC3123);
        }
        abstractComponentCallbacksC3123.f11931 = false;
        if (m6650(abstractComponentCallbacksC3123)) {
            this.f11737 = true;
        }
        abstractComponentCallbacksC3123.f11934 = true;
        m6712(abstractComponentCallbacksC3123);
    }

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final int m6701() {
        return this.f11732.size() + (this.f11756 != null ? 1 : 0);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final C3120 m6702(AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123) {
        String str = abstractComponentCallbacksC3123.f11929;
        ﹳٴ r1 = this.f11725;
        C3120 c3120 = (C3120) ((HashMap) r1.ʽʽ).get(str);
        if (c3120 != null) {
            return c3120;
        }
        C3120 c31202 = new C3120(this.f11724, r1, abstractComponentCallbacksC3123);
        c31202.m6766(this.f11729.f11849.getClassLoader());
        c31202.f11863 = this.f11744;
        return c31202;
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final void m6703(boolean z) {
        if (z && this.f11729 != null) {
            m6690(new IllegalStateException("Do not call dispatchMultiWindowModeChanged() on host. Host implements OnMultiWindowModeChangedProvider and automatically dispatches multi-window mode changes to fragments."));
            throw null;
        }
        for (AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 : this.f11725.ʾᵎ()) {
            if (abstractComponentCallbacksC3123 != null && z) {
                abstractComponentCallbacksC3123.f11903.m6703(true);
            }
        }
    }

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final ˆʾ m6704() {
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = this.f11758;
        return abstractComponentCallbacksC3123 != null ? abstractComponentCallbacksC3123.f11917.m6704() : this.f11726;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m6705(AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123) {
        if (m6654(2)) {
            String str = "detach: " + abstractComponentCallbacksC3123;
        }
        if (abstractComponentCallbacksC3123.f11925) {
            return;
        }
        abstractComponentCallbacksC3123.f11925 = true;
        if (abstractComponentCallbacksC3123.f11931) {
            if (m6654(2)) {
                String str2 = "remove from detach: " + abstractComponentCallbacksC3123;
            }
            ﹳٴ r0 = this.f11725;
            synchronized (((ArrayList) r0.ᴵˊ)) {
                ((ArrayList) r0.ᴵˊ).remove(abstractComponentCallbacksC3123);
            }
            abstractComponentCallbacksC3123.f11931 = false;
            if (m6650(abstractComponentCallbacksC3123)) {
                this.f11737 = true;
            }
            m6712(abstractComponentCallbacksC3123);
        }
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final void m6706() {
        if (this.f11744 < 1) {
            return;
        }
        for (AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 : this.f11725.ʾᵎ()) {
            if (abstractComponentCallbacksC3123 != null && !abstractComponentCallbacksC3123.f11932) {
                abstractComponentCallbacksC3123.f11903.m6706();
            }
        }
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public final void m6707(boolean z) {
        if (this.f11759) {
            throw new IllegalStateException("FragmentManager is already executing transactions");
        }
        if (this.f11729 == null) {
            if (!this.f11750) {
                throw new IllegalStateException("FragmentManager has not been attached to a host.");
            }
            throw new IllegalStateException("FragmentManager has been destroyed");
        }
        if (Looper.myLooper() != this.f11729.f11853.getLooper()) {
            throw new IllegalStateException("Must be called from main thread of fragment host");
        }
        if (!z && m6658()) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        if (this.f11731 == null) {
            this.f11731 = new ArrayList();
            this.f11755 = new ArrayList();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m6708(C3114 c3114, ᵎﹶ r12, AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123) {
        if (this.f11729 != null) {
            throw new IllegalStateException("Already attached");
        }
        this.f11729 = c3114;
        this.f11722 = r12;
        this.f11758 = abstractComponentCallbacksC3123;
        CopyOnWriteArrayList copyOnWriteArrayList = this.f11757;
        if (abstractComponentCallbacksC3123 != 0) {
            copyOnWriteArrayList.add(new C3099(abstractComponentCallbacksC3123));
        } else if (c3114 != null) {
            copyOnWriteArrayList.add(c3114);
        }
        if (this.f11758 != null) {
            m6698();
        }
        if (c3114 != null) {
            C1254 m3849 = c3114.f11852.m3849();
            this.f11752 = m3849;
            C3114 c31142 = abstractComponentCallbacksC3123 != 0 ? abstractComponentCallbacksC3123 : c3114;
            m3849.getClass();
            C0184 mo691 = c31142.mo691();
            if (mo691.f1076 != EnumC0199.f1101) {
                C3131 c3131 = this.f11730;
                c3131.f11964.add(new C1261(m3849, mo691, c3131));
                m3849.m3840();
                c3131.f11962 = new ᴵᵔ(0, m3849, C1254.class, "updateEnabledCallbacks", "updateEnabledCallbacks()V", 0, 0, 1);
            }
        }
        if (abstractComponentCallbacksC3123 != 0) {
            C3126 c3126 = abstractComponentCallbacksC3123.f11917.f11741;
            HashMap hashMap = c3126.f11945;
            C3126 c31262 = (C3126) hashMap.get(abstractComponentCallbacksC3123.f11929);
            if (c31262 == null) {
                c31262 = new C3126(c3126.f11947);
                hashMap.put(abstractComponentCallbacksC3123.f11929, c31262);
            }
            this.f11741 = c31262;
        } else if (c3114 != null) {
            ﹳٴ r0 = new ﹳٴ(c3114.f11852.mo724(), C3126.f11944, C1081.f4235);
            C2461 m5561 = AbstractC2443.m5561(C3126.class);
            String m5583 = m5561.m5583();
            if (m5583 == null) {
                throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
            }
            this.f11741 = (C3126) r0.ᵢˏ(m5561, "androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(m5583));
        } else {
            this.f11741 = new C3126(false);
        }
        this.f11741.f11948 = m6658();
        this.f11725.ᴵᵔ = this.f11741;
        C3114 c31143 = this.f11729;
        if (c31143 != null && abstractComponentCallbacksC3123 == 0) {
            C3125 mo3852 = c31143.mo3852();
            mo3852.m6832("android:support:fragments", new C1256(3, this));
            Bundle m6817 = mo3852.m6817("android:support:fragments");
            if (m6817 != null) {
                m6692(m6817);
            }
        }
        C3114 c31144 = this.f11729;
        if (c31144 != null) {
            C1271 c1271 = c31144.f11852.f4904;
            String m3771 = AbstractC1220.m3771("FragmentManager:", abstractComponentCallbacksC3123 != 0 ? AbstractC1220.m3775(new StringBuilder(), abstractComponentCallbacksC3123.f11929, ":") : "");
            this.f11734 = c1271.m3863(AbstractC1220.m3791(m3771, "StartActivityForResult"), new C3076(3), new ʿ(22, this));
            this.f11749 = c1271.m3863(AbstractC1220.m3791(m3771, "StartIntentSenderForResult"), new C3076(0), new C3088(this, 1));
            this.f11738 = c1271.m3863(AbstractC1220.m3791(m3771, "RequestPermissions"), new C3076(1), new C3088(this, 0));
        }
        C3114 c31145 = this.f11729;
        if (c31145 != null) {
            c31145.f11852.m3847(this.f11761);
        }
        C3114 c31146 = this.f11729;
        if (c31146 != null) {
            c31146.f11852.f4892.add(this.f11743);
        }
        C3114 c31147 = this.f11729;
        if (c31147 != null) {
            c31147.f11852.f4893.add(this.f11740);
        }
        C3114 c31148 = this.f11729;
        if (c31148 != null) {
            c31148.f11852.f4899.add(this.f11727);
        }
        C3114 c31149 = this.f11729;
        if (c31149 == null || abstractComponentCallbacksC3123 != 0) {
            return;
        }
        ˑי.ʽ r11 = c31149.f11852.f4891;
        ((CopyOnWriteArrayList) r11.ᴵˊ).add(this.f11721);
        ((Runnable) r11.ʾˋ).run();
    }

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public final void m6709() {
        if (this.f11729 == null) {
            return;
        }
        this.f11751 = false;
        this.f11745 = false;
        this.f11741.f11948 = false;
        for (AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 : this.f11725.ʾᵎ()) {
            if (abstractComponentCallbacksC3123 != null) {
                abstractComponentCallbacksC3123.f11903.m6709();
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3120 m6710(AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123) {
        String str = abstractComponentCallbacksC3123.f11918;
        if (str != null) {
            AbstractC3655.m7673(abstractComponentCallbacksC3123, str);
        }
        if (m6654(2)) {
            String str2 = "add: " + abstractComponentCallbacksC3123;
        }
        C3120 m6702 = m6702(abstractComponentCallbacksC3123);
        abstractComponentCallbacksC3123.f11917 = this;
        ﹳٴ r1 = this.f11725;
        r1.ʾˋ(m6702);
        if (!abstractComponentCallbacksC3123.f11925) {
            r1.ʼˎ(abstractComponentCallbacksC3123);
            abstractComponentCallbacksC3123.f11934 = false;
            if (abstractComponentCallbacksC3123.f11908 == null) {
                abstractComponentCallbacksC3123.f11913 = false;
            }
            if (m6650(abstractComponentCallbacksC3123)) {
                this.f11737 = true;
            }
        }
        return m6702;
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final void m6711(AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123) {
        if (abstractComponentCallbacksC3123 != null) {
            if (abstractComponentCallbacksC3123.equals(this.f11725.ᵔﹳ(abstractComponentCallbacksC3123.f11929))) {
                abstractComponentCallbacksC3123.f11917.getClass();
                boolean m6651 = m6651(abstractComponentCallbacksC3123);
                Boolean bool = abstractComponentCallbacksC3123.f11920;
                if (bool == null || bool.booleanValue() != m6651) {
                    abstractComponentCallbacksC3123.f11920 = Boolean.valueOf(m6651);
                    C3085 c3085 = abstractComponentCallbacksC3123.f11903;
                    c3085.m6698();
                    c3085.m6711(c3085.f11728);
                }
            }
        }
    }

    /* renamed from: ﹳﹳ, reason: contains not printable characters */
    public final void m6712(AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123) {
        ViewGroup m6689 = m6689(abstractComponentCallbacksC3123);
        if (m6689 != null) {
            C3121 c3121 = abstractComponentCallbacksC3123.f11938;
            if ((c3121 == null ? 0 : c3121.f11873) + (c3121 == null ? 0 : c3121.f11870) + (c3121 == null ? 0 : c3121.f11868) + (c3121 == null ? 0 : c3121.f11879) > 0) {
                if (m6689.getTag(R.id.205) == null) {
                    m6689.setTag(R.id.205, abstractComponentCallbacksC3123);
                }
                AbstractComponentCallbacksC3123 abstractComponentCallbacksC31232 = (AbstractComponentCallbacksC3123) m6689.getTag(R.id.205);
                C3121 c31212 = abstractComponentCallbacksC3123.f11938;
                boolean z = c31212 != null ? c31212.f11880 : false;
                if (abstractComponentCallbacksC31232.f11938 == null) {
                    return;
                }
                abstractComponentCallbacksC31232.m6787().f11880 = z;
            }
        }
    }

    /* renamed from: ﹶᐧ, reason: contains not printable characters */
    public final void m6713(AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123) {
        if (abstractComponentCallbacksC3123 != null) {
            if (!abstractComponentCallbacksC3123.equals(this.f11725.ᵔﹳ(abstractComponentCallbacksC3123.f11929)) || (abstractComponentCallbacksC3123.f11936 != null && abstractComponentCallbacksC3123.f11917 != this)) {
                throw new IllegalArgumentException("Fragment " + abstractComponentCallbacksC3123 + " is not an active fragment of FragmentManager " + this);
            }
        }
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC31232 = this.f11728;
        this.f11728 = abstractComponentCallbacksC3123;
        m6711(abstractComponentCallbacksC31232);
        m6711(this.f11728);
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void m6714() {
        boolean z;
        this.f11750 = true;
        m6664(true);
        m6665();
        C3114 c3114 = this.f11729;
        ﹳٴ r2 = this.f11725;
        if (c3114 != null) {
            z = ((C3126) r2.ᴵᵔ).f11950;
        } else {
            z = AbstractC2305.m5366(c3114.f11849) ? !r1.isChangingConfigurations() : true;
        }
        if (z) {
            Iterator it = this.f11762.values().iterator();
            while (it.hasNext()) {
                ArrayList arrayList = ((C3079) it.next()).f11698;
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    ((C3126) r2.ᴵᵔ).m6860((String) obj, false);
                }
            }
        }
        m6663(-1);
        C3114 c31142 = this.f11729;
        if (c31142 != null) {
            c31142.f11852.f4892.remove(this.f11743);
        }
        C3114 c31143 = this.f11729;
        if (c31143 != null) {
            c31143.f11852.f4906.remove(this.f11761);
        }
        C3114 c31144 = this.f11729;
        if (c31144 != null) {
            c31144.f11852.f4893.remove(this.f11740);
        }
        C3114 c31145 = this.f11729;
        if (c31145 != null) {
            c31145.f11852.f4899.remove(this.f11727);
        }
        C3114 c31146 = this.f11729;
        if ((c31146 != null) && this.f11758 == null) {
            ˑי.ʽ r0 = c31146.f11852.f4891;
            CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) r0.ᴵˊ;
            C3090 c3090 = this.f11721;
            copyOnWriteArrayList.remove(c3090);
            if (((HashMap) r0.ʽʽ).remove(c3090) != null) {
                throw new ClassCastException();
            }
            ((Runnable) r0.ʾˋ).run();
        }
        this.f11729 = null;
        this.f11722 = null;
        this.f11758 = null;
        if (this.f11752 != null) {
            Iterator it2 = this.f11730.f11964.iterator();
            while (it2.hasNext()) {
                ((InterfaceC1253) it2.next()).cancel();
            }
            this.f11752 = null;
        }
        C3236 c3236 = this.f11734;
        if (c3236 != null) {
            c3236.m7063();
            this.f11749.m7063();
            this.f11738.m7063();
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final HashSet m6715(ArrayList arrayList, int i, int i2) {
        ViewGroup viewGroup;
        C3133 c3133;
        HashSet hashSet = new HashSet();
        while (i < i2) {
            ArrayList arrayList2 = ((C3137) arrayList.get(i)).f12011;
            int size = arrayList2.size();
            int i3 = 0;
            while (i3 < size) {
                Object obj = arrayList2.get(i3);
                i3++;
                AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = ((C3074) obj).f11688;
                if (abstractComponentCallbacksC3123 != null && (viewGroup = abstractComponentCallbacksC3123.f11888) != null) {
                    m6704();
                    Object tag = viewGroup.getTag(R.id.qp);
                    if (tag instanceof C3133) {
                        c3133 = (C3133) tag;
                    } else {
                        c3133 = new C3133(viewGroup);
                        viewGroup.setTag(R.id.qp, c3133);
                    }
                    hashSet.add(c3133);
                }
            }
            i++;
        }
        return hashSet;
    }
}
