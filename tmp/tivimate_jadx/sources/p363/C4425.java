package p363;

import android.R;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.Toolbar;
import com.google.android.gms.internal.measurement.ˏʻ;
import java.util.ArrayList;
import java.util.WeakHashMap;
import p136.C2218;
import p136.C2220;
import p137.C2286;
import p137.InterfaceC2242;
import p137.InterfaceC2341;
import p186.AbstractC2776;
import p186.AbstractC2780;
import p186.AbstractC2823;
import p186.C2798;
import p229.C3125;
import p350.AbstractC4295;
import p363.C4425;
import ᐧﹳ.ʽ;

/* renamed from: ᵔᵢ.ᵎⁱ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4425 extends ˏʻ implements InterfaceC2242 {

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public boolean f16445;

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public C2220 f16446;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public ActionBarOverlayLayout f16447;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public C4415 f16448;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C4421 f16449;

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public boolean f16450;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public boolean f16451;

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public boolean f16452;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public ActionBarContainer f16453;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final ʽ f16454;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final View f16455;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public C4415 f16456;

    /* renamed from: ˏי, reason: contains not printable characters */
    public int f16457;

    /* renamed from: יـ, reason: contains not printable characters */
    public final ArrayList f16458;

    /* renamed from: ـˆ, reason: contains not printable characters */
    public boolean f16459;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public InterfaceC2341 f16460;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C4421 f16461;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public Context f16462;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public boolean f16463;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public Context f16464;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public C3125 f16465;

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public boolean f16466;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public boolean f16467;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public ActionBarContextView f16468;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final AccelerateInterpolator f16444 = new AccelerateInterpolator();

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static final DecelerateInterpolator f16443 = new DecelerateInterpolator();

    public C4425(Activity activity, boolean z) {
        new ArrayList();
        this.f16458 = new ArrayList();
        this.f16457 = 0;
        this.f16450 = true;
        this.f16452 = true;
        this.f16461 = new C4421(this, 0);
        this.f16449 = new C4421(this, 1);
        this.f16454 = new ʽ(8, this);
        View decorView = activity.getWindow().getDecorView();
        m8930(decorView);
        if (z) {
            return;
        }
        this.f16455 = decorView.findViewById(R.id.content);
    }

    public C4425(Dialog dialog) {
        new ArrayList();
        this.f16458 = new ArrayList();
        this.f16457 = 0;
        this.f16450 = true;
        this.f16452 = true;
        this.f16461 = new C4421(this, 0);
        this.f16449 = new C4421(this, 1);
        this.f16454 = new ʽ(8, this);
        m8930(dialog.getWindow().getDecorView());
    }

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public final void m8927(boolean z) {
        C2798 m35;
        C2798 c2798;
        if (z) {
            if (!this.f16459) {
                this.f16459 = true;
                ActionBarOverlayLayout actionBarOverlayLayout = this.f16447;
                if (actionBarOverlayLayout != null) {
                    actionBarOverlayLayout.setShowingForActionMode(true);
                }
                m8931(false);
            }
        } else if (this.f16459) {
            this.f16459 = false;
            ActionBarOverlayLayout actionBarOverlayLayout2 = this.f16447;
            if (actionBarOverlayLayout2 != null) {
                actionBarOverlayLayout2.setShowingForActionMode(false);
            }
            m8931(false);
        }
        if (!this.f16453.isLaidOut()) {
            if (z) {
                ((C2286) this.f16460).f8955.setVisibility(4);
                this.f16468.setVisibility(0);
                return;
            } else {
                ((C2286) this.f16460).f8955.setVisibility(0);
                this.f16468.setVisibility(8);
                return;
            }
        }
        if (z) {
            C2286 c2286 = (C2286) this.f16460;
            C2798 m6281 = AbstractC2823.m6281(c2286.f8955);
            m6281.m6230(0.0f);
            m6281.m6226(100L);
            m6281.m6227(new C2218(c2286, 4));
            c2798 = this.f16468.m35(0, 200L);
            m35 = m6281;
        } else {
            C2286 c22862 = (C2286) this.f16460;
            C2798 m62812 = AbstractC2823.m6281(c22862.f8955);
            m62812.m6230(1.0f);
            m62812.m6226(200L);
            m62812.m6227(new C2218(c22862, 0));
            m35 = this.f16468.m35(8, 100L);
            c2798 = m62812;
        }
        C2220 c2220 = new C2220();
        ArrayList arrayList = c2220.f8704;
        arrayList.add(m35);
        View view = (View) m35.f10550.get();
        long duration = view != null ? view.animate().getDuration() : 0L;
        View view2 = (View) c2798.f10550.get();
        if (view2 != null) {
            view2.animate().setStartDelay(duration);
        }
        arrayList.add(c2798);
        c2220.m5208();
    }

    /* renamed from: ˏᵢ, reason: contains not printable characters */
    public final void m8928(boolean z) {
        if (z) {
            this.f16453.setTabContainer(null);
            ((C2286) this.f16460).getClass();
        } else {
            ((C2286) this.f16460).getClass();
            this.f16453.setTabContainer(null);
        }
        this.f16460.getClass();
        ((C2286) this.f16460).f8955.setCollapsible(false);
        this.f16447.setHasNonEmbeddedTabs(false);
    }

    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public final void m8929(boolean z) {
        if (this.f16463) {
            return;
        }
        int i = z ? 4 : 0;
        C2286 c2286 = (C2286) this.f16460;
        int i2 = c2286.f8954;
        this.f16463 = true;
        c2286.m5336((i & 4) | (i2 & (-5)));
    }

    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    public final void m8930(View view) {
        InterfaceC2341 wrapper;
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) view.findViewById(ar.tvplayer.tv.R.id.76m);
        this.f16447 = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setActionBarVisibilityCallback(this);
        }
        KeyEvent.Callback findViewById = view.findViewById(ar.tvplayer.tv.R.id.6eh);
        if (findViewById instanceof InterfaceC2341) {
            wrapper = (InterfaceC2341) findViewById;
        } else {
            if (!(findViewById instanceof Toolbar)) {
                throw new IllegalStateException("Can't make a decor toolbar out of ".concat(findViewById != null ? findViewById.getClass().getSimpleName() : "null"));
            }
            wrapper = ((Toolbar) findViewById).getWrapper();
        }
        this.f16460 = wrapper;
        this.f16468 = (ActionBarContextView) view.findViewById(ar.tvplayer.tv.R.id.5r0);
        ActionBarContainer actionBarContainer = (ActionBarContainer) view.findViewById(ar.tvplayer.tv.R.id.331);
        this.f16453 = actionBarContainer;
        InterfaceC2341 interfaceC2341 = this.f16460;
        if (interfaceC2341 == null || this.f16468 == null || actionBarContainer == null) {
            throw new IllegalStateException(C4425.class.getSimpleName().concat(" can only be used with a compatible window decor layout"));
        }
        Context context = ((C2286) interfaceC2341).f8955.getContext();
        this.f16462 = context;
        if ((((C2286) this.f16460).f8954 & 4) != 0) {
            this.f16463 = true;
        }
        int i = context.getApplicationInfo().targetSdkVersion;
        this.f16460.getClass();
        m8928(context.getResources().getBoolean(ar.tvplayer.tv.R.bool.4f5));
        TypedArray obtainStyledAttributes = this.f16462.obtainStyledAttributes(null, AbstractC4295.f15921, ar.tvplayer.tv.R.attr.35d, 0);
        if (obtainStyledAttributes.getBoolean(14, false)) {
            ActionBarOverlayLayout actionBarOverlayLayout2 = this.f16447;
            if (!actionBarOverlayLayout2.f119) {
                throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
            }
            this.f16451 = true;
            actionBarOverlayLayout2.setHideOnContentScrollEnabled(true);
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(12, 0);
        if (dimensionPixelSize != 0) {
            ActionBarContainer actionBarContainer2 = this.f16453;
            WeakHashMap weakHashMap = AbstractC2823.f10603;
            AbstractC2776.m6171(actionBarContainer2, dimensionPixelSize);
        }
        obtainStyledAttributes.recycle();
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [ˋᵔ.ˊˋ, ᵔᵢ.ٴᵢ] */
    /* JADX WARN: Type inference failed for: r1v2, types: [ˋᵔ.ˊˋ, ᵔᵢ.ٴᵢ] */
    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public final void m8931(boolean z) {
        boolean z2 = this.f16445;
        boolean z3 = this.f16459;
        final ʽ r6 = this.f16454;
        View view = this.f16455;
        if (!z3 && z2) {
            if (this.f16452) {
                this.f16452 = false;
                C2220 c2220 = this.f16446;
                if (c2220 != null) {
                    c2220.m5209();
                }
                int i = this.f16457;
                ?? r1 = this.f16461;
                if (i != 0 || (!this.f16466 && !z)) {
                    r1.m8926();
                    return;
                }
                this.f16453.setAlpha(1.0f);
                this.f16453.setTransitioning(true);
                C2220 c22202 = new C2220();
                float f = -this.f16453.getHeight();
                if (z) {
                    this.f16453.getLocationInWindow(new int[]{0, 0});
                    f -= r12[1];
                }
                C2798 m6281 = AbstractC2823.m6281(this.f16453);
                m6281.m6228(f);
                final View view2 = (View) m6281.f10550.get();
                if (view2 != null) {
                    view2.animate().setUpdateListener(r6 != null ? new ValueAnimator.AnimatorUpdateListener() { // from class: ˋᵔ.ˈʿ
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                            ((View) ((C4425) r6.ᴵˊ).f16453.getParent()).invalidate();
                        }
                    } : null);
                }
                boolean z4 = c22202.f8702;
                ArrayList arrayList = c22202.f8704;
                if (!z4) {
                    arrayList.add(m6281);
                }
                if (this.f16450 && view != null) {
                    C2798 m62812 = AbstractC2823.m6281(view);
                    m62812.m6228(f);
                    if (!c22202.f8702) {
                        arrayList.add(m62812);
                    }
                }
                boolean z5 = c22202.f8702;
                if (!z5) {
                    c22202.f8700 = f16444;
                }
                if (!z5) {
                    c22202.f8703 = 250L;
                }
                if (!z5) {
                    c22202.f8701 = r1;
                }
                this.f16446 = c22202;
                c22202.m5208();
                return;
            }
            return;
        }
        if (this.f16452) {
            return;
        }
        this.f16452 = true;
        C2220 c22203 = this.f16446;
        if (c22203 != null) {
            c22203.m5209();
        }
        this.f16453.setVisibility(0);
        int i2 = this.f16457;
        ?? r12 = this.f16449;
        if (i2 == 0 && (this.f16466 || z)) {
            this.f16453.setTranslationY(0.0f);
            float f2 = -this.f16453.getHeight();
            if (z) {
                this.f16453.getLocationInWindow(new int[]{0, 0});
                f2 -= r12[1];
            }
            this.f16453.setTranslationY(f2);
            C2220 c22204 = new C2220();
            C2798 m62813 = AbstractC2823.m6281(this.f16453);
            m62813.m6228(0.0f);
            final View view3 = (View) m62813.f10550.get();
            if (view3 != null) {
                view3.animate().setUpdateListener(r6 != null ? new ValueAnimator.AnimatorUpdateListener() { // from class: ˋᵔ.ˈʿ
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        ((View) ((C4425) r6.ᴵˊ).f16453.getParent()).invalidate();
                    }
                } : null);
            }
            boolean z6 = c22204.f8702;
            ArrayList arrayList2 = c22204.f8704;
            if (!z6) {
                arrayList2.add(m62813);
            }
            if (this.f16450 && view != null) {
                view.setTranslationY(f2);
                C2798 m62814 = AbstractC2823.m6281(view);
                m62814.m6228(0.0f);
                if (!c22204.f8702) {
                    arrayList2.add(m62814);
                }
            }
            boolean z7 = c22204.f8702;
            if (!z7) {
                c22204.f8700 = f16443;
            }
            if (!z7) {
                c22204.f8703 = 250L;
            }
            if (!z7) {
                c22204.f8701 = r12;
            }
            this.f16446 = c22204;
            c22204.m5208();
        } else {
            this.f16453.setAlpha(1.0f);
            this.f16453.setTranslationY(0.0f);
            if (this.f16450 && view != null) {
                view.setTranslationY(0.0f);
            }
            r12.m8926();
        }
        ActionBarOverlayLayout actionBarOverlayLayout = this.f16447;
        if (actionBarOverlayLayout != null) {
            WeakHashMap weakHashMap = AbstractC2823.f10603;
            AbstractC2780.m6186(actionBarOverlayLayout);
        }
    }

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public final Context m8932() {
        if (this.f16464 == null) {
            TypedValue typedValue = new TypedValue();
            this.f16462.getTheme().resolveAttribute(ar.tvplayer.tv.R.attr.52d, typedValue, true);
            int i = typedValue.resourceId;
            if (i != 0) {
                this.f16464 = new ContextThemeWrapper(this.f16462, i);
            } else {
                this.f16464 = this.f16462;
            }
        }
        return this.f16464;
    }
}
