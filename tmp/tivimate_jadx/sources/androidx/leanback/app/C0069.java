package androidx.leanback.app;

import android.R;
import android.animation.AnimatorSet;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.transition.Fade;
import android.transition.TransitionSet;
import android.util.Pair;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.leanback.transition.C0079;
import androidx.leanback.transition.FadeAndShortSlide;
import androidx.leanback.widget.C0094;
import androidx.leanback.widget.C0095;
import androidx.leanback.widget.C0108;
import androidx.leanback.widget.C0117;
import androidx.leanback.widget.NonOverlappingLinearLayout;
import androidx.leanback.widget.VerticalGridView;
import androidx.leanback.widget.ʻٴ;
import com.google.android.gms.internal.measurement.C0344;
import java.util.ArrayList;
import java.util.WeakHashMap;
import p137.AbstractC2305;
import p186.AbstractC2776;
import p186.AbstractC2823;
import p229.AbstractC3100;
import p229.AbstractComponentCallbacksC3123;
import p229.C3085;
import p229.C3137;
import p229.C3139;
import p363.AbstractActivityC4410;
import ʼⁱ.ˉʿ;

/* renamed from: androidx.leanback.app.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C0069 extends AbstractComponentCallbacksC3123 {

    /* renamed from: ʻʿ, reason: contains not printable characters */
    public C0344 f527;

    /* renamed from: ʻᴵ, reason: contains not printable characters */
    public ʻٴ f528;

    /* renamed from: ʿـ, reason: contains not printable characters */
    public C0108 f529;

    /* renamed from: ـˊ, reason: contains not printable characters */
    public C0117 f530;

    /* renamed from: ᐧˎ, reason: contains not printable characters */
    public ContextThemeWrapper f532;

    /* renamed from: ᵎʿ, reason: contains not printable characters */
    public C0117 f533;

    /* renamed from: ⁱי, reason: contains not printable characters */
    public C0108 f534;

    /* renamed from: ﹳⁱ, reason: contains not printable characters */
    public C0108 f535;

    /* renamed from: ﹶ, reason: contains not printable characters */
    public ArrayList f536 = new ArrayList();

    /* renamed from: ـᵢ, reason: contains not printable characters */
    public ArrayList f531 = new ArrayList();

    public C0069() {
        m427();
    }

    /* renamed from: ˈـ, reason: contains not printable characters */
    public static void m415(AbstractActivityC4410 abstractActivityC4410, ˉʿ r3) {
        abstractActivityC4410.getWindow().getDecorView();
        C3085 m8914 = abstractActivityC4410.m8914();
        if (m8914.m6697("leanBackGuidedStepSupportFragment") != null) {
            return;
        }
        C3137 c3137 = new C3137(m8914);
        r3.m437(2);
        c3137.m6889(R.id.content, r3, "leanBackGuidedStepSupportFragment");
        c3137.m6886(false, true);
    }

    /* renamed from: ˋـ, reason: contains not printable characters */
    public static boolean m416(C0095 c0095) {
        return (c0095.f875 & 64) == 64 && c0095.f880 != -1;
    }

    /* renamed from: ˎʾ, reason: contains not printable characters */
    public static void m417(C3137 c3137, View view, String str) {
        if (view != null) {
            C3139 c3139 = AbstractC3100.f11812;
            WeakHashMap weakHashMap = AbstractC2823.f10603;
            String m6176 = AbstractC2776.m6176(view);
            if (m6176 == null) {
                throw new IllegalArgumentException("Unique transitionNames are required for all sharedElements");
            }
            if (c3137.f12007 == null) {
                c3137.f12007 = new ArrayList();
                c3137.f12001 = new ArrayList();
            } else {
                if (c3137.f12001.contains(str)) {
                    throw new IllegalArgumentException(AbstractC2305.m5378("A shared element with the target name '", str, "' has already been added to the transaction."));
                }
                if (c3137.f12007.contains(m6176)) {
                    throw new IllegalArgumentException(AbstractC2305.m5378("A shared element with the source name '", m6176, "' has already been added to the transaction."));
                }
            }
            c3137.f12007.add(m6176);
            c3137.f12001.add(str);
        }
    }

    /* renamed from: ᵢˋ, reason: contains not printable characters */
    public static boolean m418(Context context) {
        TypedValue typedValue = new TypedValue();
        return context.getTheme().resolveAttribute(ar.tvplayer.tv.R.attr.14n, typedValue, true) && typedValue.type == 18 && typedValue.data != 0;
    }

    /* renamed from: ﾞˋ, reason: contains not printable characters */
    public static void m419(C3085 c3085, C0069 c0069) {
        AbstractComponentCallbacksC3123 m6697 = c3085.m6697("leanBackGuidedStepSupportFragment");
        C0069 c00692 = m6697 instanceof C0069 ? (C0069) m6697 : null;
        int i = c00692 != null ? 1 : 0;
        C3137 c3137 = new C3137(c3085);
        c0069.m437(i ^ 1);
        Bundle bundle = c0069.f11906;
        int i2 = bundle == null ? 1 : bundle.getInt("uiStyle", 1);
        Class<?> cls = c0069.getClass();
        c3137.m6880(i2 != 0 ? i2 != 1 ? "" : "GuidedStepEntrance".concat(cls.getName()) : "GuidedStepDefault".concat(cls.getName()));
        if (c00692 != null) {
            View view = c00692.f11908;
            m417(c3137, view.findViewById(ar.tvplayer.tv.R.id.3l7), "action_fragment_root");
            m417(c3137, view.findViewById(ar.tvplayer.tv.R.id.3p6), "action_fragment_background");
            m417(c3137, view.findViewById(ar.tvplayer.tv.R.id.51c), "action_fragment");
            m417(c3137, view.findViewById(ar.tvplayer.tv.R.id.3kv), "guidedactions_root");
            m417(c3137, view.findViewById(ar.tvplayer.tv.R.id.25n), "guidedactions_content");
            m417(c3137, view.findViewById(ar.tvplayer.tv.R.id.o3), "guidedactions_list_background");
            m417(c3137, view.findViewById(ar.tvplayer.tv.R.id.5vf), "guidedactions_root2");
            m417(c3137, view.findViewById(ar.tvplayer.tv.R.id.3e1), "guidedactions_content2");
            m417(c3137, view.findViewById(ar.tvplayer.tv.R.id.279), "guidedactions_list_background2");
        }
        c3137.m6889(R.id.content, c0069, "leanBackGuidedStepSupportFragment");
        c3137.m6886(false, true);
    }

    /* renamed from: ʽʾ, reason: contains not printable characters */
    public final void m420(C0095 c0095) {
        C0117 c0117 = this.f530;
        C0108 c0108 = (C0108) c0117.f944.getAdapter();
        c0108.getClass();
        int indexOf = new ArrayList(c0108.f909).indexOf(c0095);
        if (indexOf < 0 || !c0095.m579()) {
            return;
        }
        c0117.f944.m653(indexOf, new C0094(c0108));
    }

    @Override // p229.AbstractComponentCallbacksC3123
    /* renamed from: ʽᵔ, reason: contains not printable characters */
    public void mo421(Bundle bundle) {
        super.mo421(bundle);
        this.f528 = new ʻٴ(0);
        this.f530 = m434();
        this.f533 = m426();
        m427();
        ArrayList arrayList = new ArrayList();
        m436(arrayList);
        if (bundle != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                C0095 c0095 = (C0095) arrayList.get(i);
                if (m416(c0095)) {
                    c0095.m581("action_" + c0095.f880, bundle);
                }
            }
        }
        m430(arrayList);
        ArrayList arrayList2 = new ArrayList();
        m440(arrayList2);
        if (bundle != null) {
            int size2 = arrayList2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                C0095 c00952 = (C0095) arrayList2.get(i2);
                if (m416(c00952)) {
                    c00952.m581("buttonaction_" + c00952.f880, bundle);
                }
            }
        }
        this.f531 = arrayList2;
        C0108 c0108 = this.f534;
        if (c0108 != null) {
            c0108.m608(arrayList2);
        }
    }

    @Override // p229.AbstractComponentCallbacksC3123
    /* renamed from: ʽⁱ, reason: contains not printable characters */
    public final void mo422() {
        this.f11926 = true;
        this.f11908.findViewById(ar.tvplayer.tv.R.id.51c).requestFocus();
    }

    @Override // p229.AbstractComponentCallbacksC3123
    /* renamed from: ʾˊ, reason: contains not printable characters */
    public final void mo423() {
        ʻٴ r0 = this.f528;
        r0.ᴵᵔ = null;
        r0.ˈٴ = null;
        r0.ˊʻ = null;
        r0.ʽʽ = null;
        r0.ᴵˊ = null;
        C0117 c0117 = this.f530;
        c0117.f946 = null;
        c0117.f938 = null;
        c0117.f944 = null;
        c0117.f931 = null;
        c0117.f933 = null;
        c0117.f937 = null;
        c0117.f945 = null;
        C0117 c01172 = this.f533;
        c01172.f946 = null;
        c01172.f938 = null;
        c01172.f944 = null;
        c01172.f931 = null;
        c01172.f933 = null;
        c01172.f937 = null;
        c01172.f945 = null;
        this.f529 = null;
        this.f535 = null;
        this.f534 = null;
        this.f527 = null;
        this.f11926 = true;
    }

    @Override // p229.AbstractComponentCallbacksC3123
    /* renamed from: ʾﾞ, reason: contains not printable characters */
    public void mo424(Bundle bundle) {
        ArrayList arrayList = this.f536;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            C0095 c0095 = (C0095) arrayList.get(i);
            if (m416(c0095)) {
                c0095.m586("action_" + c0095.f880, bundle);
            }
        }
        ArrayList arrayList2 = this.f531;
        int size2 = arrayList2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            C0095 c00952 = (C0095) arrayList2.get(i2);
            if (m416(c00952)) {
                c00952.m586("buttonaction_" + c00952.f880, bundle);
            }
        }
    }

    /* renamed from: ˆˑ, reason: contains not printable characters */
    public final void m425(boolean z) {
        ArrayList arrayList = new ArrayList();
        if (z) {
            this.f528.getClass();
            this.f530.getClass();
            this.f533.getClass();
        } else {
            this.f528.getClass();
            this.f530.getClass();
            this.f533.getClass();
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        animatorSet.start();
    }

    /* renamed from: ˊˊ, reason: contains not printable characters */
    public C0117 m426() {
        C0117 c0117 = new C0117();
        if (c0117.f945 != null) {
            throw new IllegalStateException("setAsButtonActions() must be called before creating views");
        }
        c0117.f948 = true;
        return c0117;
    }

    /* renamed from: ˊﹳ, reason: contains not printable characters */
    public void m427() {
        Bundle bundle = this.f11906;
        int i = bundle == null ? 1 : bundle.getInt("uiStyle", 1);
        if (i == 0) {
            FadeAndShortSlide fadeAndShortSlide = new FadeAndShortSlide(8388613);
            fadeAndShortSlide.excludeTarget(ar.tvplayer.tv.R.id.74r, true);
            fadeAndShortSlide.excludeTarget(ar.tvplayer.tv.R.id.i4, true);
            m6811(fadeAndShortSlide);
            Fade fade = new Fade(3);
            fade.addTarget(ar.tvplayer.tv.R.id.i4);
            C0079 c0079 = new C0079();
            c0079.setReparent(false);
            TransitionSet transitionSet = new TransitionSet();
            transitionSet.setOrdering(0);
            transitionSet.addTransition(fade);
            transitionSet.addTransition(c0079);
            m6787().f11871 = transitionSet;
        } else if (i == 1) {
            Fade fade2 = new Fade(3);
            fade2.addTarget(ar.tvplayer.tv.R.id.74r);
            FadeAndShortSlide fadeAndShortSlide2 = new FadeAndShortSlide(8388615);
            fadeAndShortSlide2.addTarget(ar.tvplayer.tv.R.id.734);
            fadeAndShortSlide2.addTarget(ar.tvplayer.tv.R.id.3l7);
            TransitionSet transitionSet2 = new TransitionSet();
            transitionSet2.setOrdering(0);
            transitionSet2.addTransition(fade2);
            transitionSet2.addTransition(fadeAndShortSlide2);
            m6811(transitionSet2);
            m6787().f11871 = null;
        } else if (i == 2) {
            m6811(null);
            m6787().f11871 = null;
        }
        FadeAndShortSlide fadeAndShortSlide3 = new FadeAndShortSlide(8388611);
        fadeAndShortSlide3.excludeTarget(ar.tvplayer.tv.R.id.74r, true);
        fadeAndShortSlide3.excludeTarget(ar.tvplayer.tv.R.id.i4, true);
        m6783(fadeAndShortSlide3);
    }

    /* renamed from: ˊﾞ, reason: contains not printable characters */
    public ˏˆ.ﹳٴ m428() {
        return new ˏˆ.ﹳٴ("", "", "", (Object) null, 1);
    }

    /* renamed from: ˎˉ, reason: contains not printable characters */
    public final int m429(long j) {
        if (this.f536 == null) {
            return -1;
        }
        for (int i = 0; i < this.f536.size(); i++) {
            if (((C0095) this.f536.get(i)).f880 == j) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: ˎـ, reason: contains not printable characters */
    public final void m430(ArrayList arrayList) {
        this.f536 = arrayList;
        C0108 c0108 = this.f529;
        if (c0108 != null) {
            c0108.m608(arrayList);
        }
    }

    /* renamed from: ˏⁱ, reason: contains not printable characters */
    public long m431(C0095 c0095) {
        return -2L;
    }

    /* renamed from: ˑˆ, reason: contains not printable characters */
    public final C0095 m432(long j) {
        int m429 = m429(j);
        if (m429 >= 0) {
            return (C0095) this.f536.get(m429);
        }
        return null;
    }

    /* renamed from: ـʻ, reason: contains not printable characters */
    public void m433(C0095 c0095) {
    }

    /* renamed from: ٴʿ, reason: contains not printable characters */
    public C0117 m434() {
        return new C0117();
    }

    @Override // p229.AbstractComponentCallbacksC3123
    /* renamed from: ᐧﹶ, reason: contains not printable characters */
    public final View mo435(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Context mo4203 = mo4203();
        if (!m418(mo4203)) {
            TypedValue typedValue = new TypedValue();
            boolean resolveAttribute = mo4203.getTheme().resolveAttribute(ar.tvplayer.tv.R.attr.65l, typedValue, true);
            if (resolveAttribute) {
                ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(mo4203, typedValue.resourceId);
                if (m418(contextThemeWrapper)) {
                    this.f532 = contextThemeWrapper;
                } else {
                    this.f532 = null;
                    resolveAttribute = false;
                }
            }
            if (!resolveAttribute) {
            }
        }
        ContextThemeWrapper contextThemeWrapper2 = this.f532;
        LayoutInflater cloneInContext = contextThemeWrapper2 == null ? layoutInflater : layoutInflater.cloneInContext(contextThemeWrapper2);
        GuidedStepRootLayout guidedStepRootLayout = (GuidedStepRootLayout) cloneInContext.inflate(ar.tvplayer.tv.R.layout.3rl, viewGroup, false);
        guidedStepRootLayout.getClass();
        ViewGroup viewGroup2 = (ViewGroup) guidedStepRootLayout.findViewById(ar.tvplayer.tv.R.id.734);
        ViewGroup viewGroup3 = (ViewGroup) guidedStepRootLayout.findViewById(ar.tvplayer.tv.R.id.51c);
        ((NonOverlappingLinearLayout) viewGroup3).setFocusableViewAvailableFixEnabled(true);
        ˏˆ.ﹳٴ m428 = m428();
        String str = (String) m428.ʽʽ;
        String str2 = (String) m428.ᴵˊ;
        String str3 = (String) m428.ˈٴ;
        ʻٴ r12 = this.f528;
        r12.getClass();
        View inflate = cloneInContext.inflate(ar.tvplayer.tv.R.layout.33m, viewGroup2, false);
        r12.ʽʽ = (TextView) inflate.findViewById(ar.tvplayer.tv.R.id.1qa);
        r12.ᴵᵔ = (TextView) inflate.findViewById(ar.tvplayer.tv.R.id.74g);
        r12.ˈٴ = (TextView) inflate.findViewById(ar.tvplayer.tv.R.id.72j);
        r12.ˊʻ = (ImageView) inflate.findViewById(ar.tvplayer.tv.R.id.1kv);
        r12.ᴵˊ = inflate.findViewById(ar.tvplayer.tv.R.id.6ds);
        TextView textView = (TextView) r12.ʽʽ;
        if (textView != null) {
            textView.setText(str2);
        }
        TextView textView2 = (TextView) r12.ᴵᵔ;
        if (textView2 != null) {
            textView2.setText(str3);
        }
        TextView textView3 = (TextView) r12.ˈٴ;
        if (textView3 != null) {
            textView3.setText(str);
        }
        ImageView imageView = (ImageView) r12.ˊʻ;
        if (imageView != null) {
            Drawable drawable = (Drawable) m428.ᴵᵔ;
            if (drawable != null) {
                imageView.setImageDrawable(drawable);
            } else {
                imageView.setVisibility(8);
            }
        }
        View view = (View) r12.ᴵˊ;
        if (view != null && TextUtils.isEmpty(view.getContentDescription())) {
            StringBuilder sb = new StringBuilder();
            if (!TextUtils.isEmpty(str3)) {
                sb.append(str3);
                sb.append('\n');
            }
            if (!TextUtils.isEmpty(str2)) {
                sb.append(str2);
                sb.append('\n');
            }
            if (!TextUtils.isEmpty(str)) {
                sb.append(str);
                sb.append('\n');
            }
            ((View) r12.ᴵˊ).setContentDescription(sb);
        }
        viewGroup2.addView(inflate);
        viewGroup3.addView(this.f530.m614(cloneInContext, viewGroup3));
        ViewGroup m614 = this.f533.m614(cloneInContext, viewGroup3);
        viewGroup3.addView(m614);
        C0071 c0071 = new C0071(this);
        this.f529 = new C0108(this.f536, new C0070(this, 0), this, this.f530, false);
        this.f534 = new C0108(this.f531, new C0071(this), this, this.f533, false);
        this.f535 = new C0108(null, new C0070(this, 1), this, this.f530, true);
        C0344 c0344 = new C0344(1, false);
        ArrayList arrayList = new ArrayList();
        c0344.f1997 = arrayList;
        this.f527 = c0344;
        C0108 c0108 = this.f529;
        C0108 c01082 = this.f534;
        arrayList.add(new Pair(c0108, c01082));
        if (c0108 != null) {
            c0108.f911 = c0344;
        }
        if (c01082 != null) {
            c01082.f911 = c0344;
        }
        C0344 c03442 = this.f527;
        C0108 c01083 = this.f535;
        ((ArrayList) c03442.f1997).add(new Pair(c01083, null));
        if (c01083 != null) {
            c01083.f911 = c03442;
        }
        this.f527.f1999 = c0071;
        C0117 c0117 = this.f530;
        c0117.getClass();
        c0117.f944.setAdapter(this.f529);
        VerticalGridView verticalGridView = this.f530.f931;
        if (verticalGridView != null) {
            verticalGridView.setAdapter(this.f535);
        }
        this.f533.f944.setAdapter(this.f534);
        if (this.f531.size() == 0) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) m614.getLayoutParams();
            layoutParams.weight = 0.0f;
            m614.setLayoutParams(layoutParams);
        } else {
            Context context = this.f532;
            if (context == null) {
                context = mo4203();
            }
            TypedValue typedValue2 = new TypedValue();
            if (context.getTheme().resolveAttribute(ar.tvplayer.tv.R.attr.1ov, typedValue2, true)) {
                View findViewById = guidedStepRootLayout.findViewById(ar.tvplayer.tv.R.id.3l7);
                float f = typedValue2.getFloat();
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) findViewById.getLayoutParams();
                layoutParams2.weight = f;
                findViewById.setLayoutParams(layoutParams2);
            }
        }
        View inflate2 = cloneInContext.inflate(ar.tvplayer.tv.R.layout.lb_guidedstep_background, (ViewGroup) guidedStepRootLayout, false);
        if (inflate2 != null) {
            ((FrameLayout) guidedStepRootLayout.findViewById(ar.tvplayer.tv.R.id.3ec)).addView(inflate2, 0);
        }
        return guidedStepRootLayout;
    }

    /* renamed from: ᵔⁱ, reason: contains not printable characters */
    public void m436(ArrayList arrayList) {
    }

    /* renamed from: ᵢʻ, reason: contains not printable characters */
    public final void m437(int i) {
        Bundle bundle = this.f11906;
        boolean z = true;
        int i2 = bundle == null ? 1 : bundle.getInt("uiStyle", 1);
        Bundle bundle2 = this.f11906;
        if (bundle2 == null) {
            bundle2 = new Bundle();
        } else {
            z = false;
        }
        bundle2.putInt("uiStyle", i);
        if (z) {
            m6807(bundle2);
        }
        if (i != i2) {
            m427();
        }
    }

    /* renamed from: ﹳᵢ, reason: contains not printable characters */
    public final int m438(long j) {
        if (this.f531 == null) {
            return -1;
        }
        for (int i = 0; i < this.f531.size(); i++) {
            if (((C0095) this.f531.get(i)).f880 == j) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: ﹶʽ, reason: contains not printable characters */
    public final void m439(int i) {
        C0108 c0108 = this.f529;
        if (c0108 != null) {
            c0108.f10419.m6057(i, 1, null);
        }
    }

    /* renamed from: ﾞˏ, reason: contains not printable characters */
    public void m440(ArrayList arrayList) {
    }
}
