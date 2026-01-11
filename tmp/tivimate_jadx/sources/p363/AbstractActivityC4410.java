package p363;

import android.R;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.lifecycle.C0184;
import androidx.lifecycle.EnumC0174;
import androidx.lifecycle.EnumC0199;
import j$.util.Objects;
import java.util.ArrayList;
import p000.RunnableC0759;
import p035.ExecutorC1212;
import p036.AbstractActivityC1262;
import p036.C1256;
import p036.C1260;
import p114.C1981;
import p136.C2219;
import p136.C2220;
import p136.C2226;
import p137.AbstractC2329;
import p137.C2284;
import p137.C2286;
import p143.AbstractC2392;
import p151.AbstractC2427;
import p151.InterfaceC2436;
import p229.AbstractComponentCallbacksC3123;
import p229.C3085;
import p229.C3114;
import p229.C3115;
import p229.C3125;
import p238.InterfaceC3206;
import p333.C4205;
import p363.AbstractActivityC4410;
import ˉˆ.ʿ;
import ˑˊ.ﹳٴ;

/* renamed from: ᵔᵢ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractActivityC4410 extends AbstractActivityC1262 implements InterfaceC4422, InterfaceC2436 {

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public boolean f16399;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public LayoutInflaterFactory2C4430 f16400;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public boolean f16403;

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public final ʿ f16398 = new ʿ(21, new C3114(this));

    /* renamed from: ـˏ, reason: contains not printable characters */
    public final C0184 f16401 = new C0184(this);

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public boolean f16402 = true;

    public AbstractActivityC4410() {
        ((C3125) this.f4903.f13456).m6832("android:support:lifecycle", new C1256(2, this));
        final int i = 0;
        m3847(new InterfaceC3206(this) { // from class: ˑʼ.ˊʻ

            /* renamed from: ⁱˊ, reason: contains not printable characters */
            public final /* synthetic */ AbstractActivityC4410 f11808;

            {
                this.f11808 = this;
            }

            @Override // p238.InterfaceC3206
            public final void accept(Object obj) {
                switch (i) {
                    case 0:
                        this.f11808.f16398.ᵔٴ();
                        return;
                    default:
                        this.f11808.f16398.ᵔٴ();
                        return;
                }
            }
        });
        final int i2 = 1;
        this.f4907.add(new InterfaceC3206(this) { // from class: ˑʼ.ˊʻ

            /* renamed from: ⁱˊ, reason: contains not printable characters */
            public final /* synthetic */ AbstractActivityC4410 f11808;

            {
                this.f11808 = this;
            }

            @Override // p238.InterfaceC3206
            public final void accept(Object obj) {
                switch (i2) {
                    case 0:
                        this.f11808.f16398.ᵔٴ();
                        return;
                    default:
                        this.f11808.f16398.ᵔٴ();
                        return;
                }
            }
        });
        m3848(new C1260(this, 1));
        ((C3125) this.f4903.f13456).m6832("androidx:appcompat", new C4205(this));
        m3848(new C4403(this));
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static boolean m8909(C3085 c3085) {
        boolean z = false;
        for (AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 : c3085.f11725.ʾᵎ()) {
            if (abstractComponentCallbacksC3123 != null) {
                C3114 c3114 = abstractComponentCallbacksC3123.f11936;
                if ((c3114 == null ? null : c3114.f11852) != null) {
                    z |= m8909(abstractComponentCallbacksC3123.m6788());
                }
                C3115 c3115 = abstractComponentCallbacksC3123.f11915;
                EnumC0199 enumC0199 = EnumC0199.f1100;
                EnumC0199 enumC01992 = EnumC0199.f1102;
                if (c3115 != null && c3115.mo691().f1076.m733(enumC01992)) {
                    C0184 c0184 = abstractComponentCallbacksC3123.f11915.f11856;
                    c0184.m709("setCurrentState");
                    c0184.m711(enumC0199);
                    z = true;
                }
                if (abstractComponentCallbacksC3123.f11924.f1076.m733(enumC01992)) {
                    C0184 c01842 = abstractComponentCallbacksC3123.f11924;
                    c01842.m709("setCurrentState");
                    c01842.m711(enumC0199);
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // p036.AbstractActivityC1262, android.app.Activity
    public final void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m3850();
        LayoutInflaterFactory2C4430 layoutInflaterFactory2C4430 = (LayoutInflaterFactory2C4430) m8911();
        layoutInflaterFactory2C4430.m8951();
        ((ViewGroup) layoutInflaterFactory2C4430.f16523.findViewById(R.id.content)).addView(view, layoutParams);
        layoutInflaterFactory2C4430.f16499.m8904(layoutInflaterFactory2C4430.f16530.getCallback());
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        LayoutInflaterFactory2C4430 layoutInflaterFactory2C4430 = (LayoutInflaterFactory2C4430) m8911();
        layoutInflaterFactory2C4430.f16516 = true;
        int i = layoutInflaterFactory2C4430.f16494;
        if (i == -100) {
            i = AbstractC4427.f16477;
        }
        int m8953 = layoutInflaterFactory2C4430.m8953(context, i);
        if (AbstractC4427.m8933(context) && AbstractC4427.m8933(context)) {
            if (Build.VERSION.SDK_INT < 33) {
                synchronized (AbstractC4427.f16479) {
                    try {
                        C1981 c1981 = AbstractC4427.f16471;
                        if (c1981 == null) {
                            if (AbstractC4427.f16473 == null) {
                                AbstractC4427.f16473 = C1981.m4966(AbstractC2427.m5536(context));
                            }
                            if (!AbstractC4427.f16473.f7840.isEmpty()) {
                                AbstractC4427.f16471 = AbstractC4427.f16473;
                            }
                        } else if (!c1981.equals(AbstractC4427.f16473)) {
                            C1981 c19812 = AbstractC4427.f16471;
                            AbstractC4427.f16473 = c19812;
                            AbstractC2427.m5535(context, c19812.f7840.mo4969());
                        }
                    } finally {
                    }
                }
            } else if (!AbstractC4427.f16475) {
                AbstractC4427.f16472.execute(new RunnableC0759(context, 2));
            }
        }
        C1981 m8949 = LayoutInflaterFactory2C4430.m8949(context);
        Configuration configuration = null;
        if (context instanceof ContextThemeWrapper) {
            try {
                ((ContextThemeWrapper) context).applyOverrideConfiguration(LayoutInflaterFactory2C4430.m8950(context, m8953, m8949, null, false));
            } catch (IllegalStateException unused) {
            }
            super.attachBaseContext(context);
        }
        if (context instanceof C2219) {
            try {
                ((C2219) context).m5207(LayoutInflaterFactory2C4430.m8950(context, m8953, m8949, null, false));
            } catch (IllegalStateException unused2) {
            }
            super.attachBaseContext(context);
        }
        if (LayoutInflaterFactory2C4430.f16485) {
            Configuration configuration2 = new Configuration();
            configuration2.uiMode = -1;
            configuration2.fontScale = 0.0f;
            Configuration configuration3 = context.createConfigurationContext(configuration2).getResources().getConfiguration();
            Configuration configuration4 = context.getResources().getConfiguration();
            configuration3.uiMode = configuration4.uiMode;
            if (!configuration3.equals(configuration4)) {
                configuration = new Configuration();
                configuration.fontScale = 0.0f;
                if (configuration3.diff(configuration4) != 0) {
                    float f = configuration3.fontScale;
                    float f2 = configuration4.fontScale;
                    if (f != f2) {
                        configuration.fontScale = f2;
                    }
                    int i2 = configuration3.mcc;
                    int i3 = configuration4.mcc;
                    if (i2 != i3) {
                        configuration.mcc = i3;
                    }
                    int i4 = configuration3.mnc;
                    int i5 = configuration4.mnc;
                    if (i4 != i5) {
                        configuration.mnc = i5;
                    }
                    int i6 = Build.VERSION.SDK_INT;
                    if (i6 >= 24) {
                        AbstractC4417.m8923(configuration3, configuration4, configuration);
                    } else if (!Objects.equals(configuration3.locale, configuration4.locale)) {
                        configuration.locale = configuration4.locale;
                    }
                    int i7 = configuration3.touchscreen;
                    int i8 = configuration4.touchscreen;
                    if (i7 != i8) {
                        configuration.touchscreen = i8;
                    }
                    int i9 = configuration3.keyboard;
                    int i10 = configuration4.keyboard;
                    if (i9 != i10) {
                        configuration.keyboard = i10;
                    }
                    int i11 = configuration3.keyboardHidden;
                    int i12 = configuration4.keyboardHidden;
                    if (i11 != i12) {
                        configuration.keyboardHidden = i12;
                    }
                    int i13 = configuration3.navigation;
                    int i14 = configuration4.navigation;
                    if (i13 != i14) {
                        configuration.navigation = i14;
                    }
                    int i15 = configuration3.navigationHidden;
                    int i16 = configuration4.navigationHidden;
                    if (i15 != i16) {
                        configuration.navigationHidden = i16;
                    }
                    int i17 = configuration3.orientation;
                    int i18 = configuration4.orientation;
                    if (i17 != i18) {
                        configuration.orientation = i18;
                    }
                    int i19 = configuration3.screenLayout & 15;
                    int i20 = configuration4.screenLayout & 15;
                    if (i19 != i20) {
                        configuration.screenLayout |= i20;
                    }
                    int i21 = configuration3.screenLayout & 192;
                    int i22 = configuration4.screenLayout & 192;
                    if (i21 != i22) {
                        configuration.screenLayout |= i22;
                    }
                    int i23 = configuration3.screenLayout & 48;
                    int i24 = configuration4.screenLayout & 48;
                    if (i23 != i24) {
                        configuration.screenLayout |= i24;
                    }
                    int i25 = configuration3.screenLayout & 768;
                    int i26 = configuration4.screenLayout & 768;
                    if (i25 != i26) {
                        configuration.screenLayout |= i26;
                    }
                    if (i6 >= 26) {
                        ﹳٴ.ʽ(configuration3, configuration4, configuration);
                    }
                    int i27 = configuration3.uiMode & 15;
                    int i28 = configuration4.uiMode & 15;
                    if (i27 != i28) {
                        configuration.uiMode |= i28;
                    }
                    int i29 = configuration3.uiMode & 48;
                    int i30 = configuration4.uiMode & 48;
                    if (i29 != i30) {
                        configuration.uiMode |= i30;
                    }
                    int i31 = configuration3.screenWidthDp;
                    int i32 = configuration4.screenWidthDp;
                    if (i31 != i32) {
                        configuration.screenWidthDp = i32;
                    }
                    int i33 = configuration3.screenHeightDp;
                    int i34 = configuration4.screenHeightDp;
                    if (i33 != i34) {
                        configuration.screenHeightDp = i34;
                    }
                    int i35 = configuration3.smallestScreenWidthDp;
                    int i36 = configuration4.smallestScreenWidthDp;
                    if (i35 != i36) {
                        configuration.smallestScreenWidthDp = i36;
                    }
                    int i37 = configuration3.densityDpi;
                    int i38 = configuration4.densityDpi;
                    if (i37 != i38) {
                        configuration.densityDpi = i38;
                    }
                }
            }
            Configuration m8950 = LayoutInflaterFactory2C4430.m8950(context, m8953, m8949, configuration, true);
            C2219 c2219 = new C2219(context, ar.tvplayer.tv.R.style.f264915iv);
            c2219.m5207(m8950);
            try {
                if (context.getTheme() != null) {
                    AbstractC2392.m5488(c2219.getTheme());
                }
            } catch (NullPointerException unused3) {
            }
            context = c2219;
        }
        super.attachBaseContext(context);
    }

    @Override // android.app.Activity
    public final void closeOptionsMenu() {
        ((LayoutInflaterFactory2C4430) m8911()).m8955();
        if (getWindow().hasFeature(0)) {
            super.closeOptionsMenu();
        }
    }

    @Override // p151.AbstractActivityC2438, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        keyEvent.getKeyCode();
        ((LayoutInflaterFactory2C4430) m8911()).m8955();
        return super.dispatchKeyEvent(keyEvent);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x003a, code lost:
    
        if (r1.equals("--list-dumpables") == false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004a, code lost:
    
        if (android.os.Build.VERSION.SDK_INT < 33) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0043, code lost:
    
        if (r1.equals("--dump-dumpable") == false) goto L37;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0010. Please report as an issue. */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void dump(java.lang.String r7, java.io.FileDescriptor r8, java.io.PrintWriter r9, java.lang.String[] r10) {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p363.AbstractActivityC4410.dump(java.lang.String, java.io.FileDescriptor, java.io.PrintWriter, java.lang.String[]):void");
    }

    @Override // android.app.Activity
    public final View findViewById(int i) {
        LayoutInflaterFactory2C4430 layoutInflaterFactory2C4430 = (LayoutInflaterFactory2C4430) m8911();
        layoutInflaterFactory2C4430.m8951();
        return layoutInflaterFactory2C4430.f16530.findViewById(i);
    }

    @Override // android.app.Activity
    public final MenuInflater getMenuInflater() {
        LayoutInflaterFactory2C4430 layoutInflaterFactory2C4430 = (LayoutInflaterFactory2C4430) m8911();
        if (layoutInflaterFactory2C4430.f16511 == null) {
            layoutInflaterFactory2C4430.m8955();
            C4425 c4425 = layoutInflaterFactory2C4430.f16500;
            layoutInflaterFactory2C4430.f16511 = new C2226(c4425 != null ? c4425.m8932() : layoutInflaterFactory2C4430.f16528);
        }
        return layoutInflaterFactory2C4430.f16511;
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final Resources getResources() {
        int i = AbstractC2329.f9068;
        return super.getResources();
    }

    @Override // android.app.Activity
    public final void invalidateOptionsMenu() {
        LayoutInflaterFactory2C4430 layoutInflaterFactory2C4430 = (LayoutInflaterFactory2C4430) m8911();
        if (layoutInflaterFactory2C4430.f16500 != null) {
            layoutInflaterFactory2C4430.m8955();
            layoutInflaterFactory2C4430.f16500.getClass();
            layoutInflaterFactory2C4430.m8964(0);
        }
    }

    @Override // p036.AbstractActivityC1262, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        this.f16398.ᵔٴ();
        super.onActivityResult(i, i2, intent);
    }

    @Override // p036.AbstractActivityC1262, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        LayoutInflaterFactory2C4430 layoutInflaterFactory2C4430 = (LayoutInflaterFactory2C4430) m8911();
        if (layoutInflaterFactory2C4430.f16505 && layoutInflaterFactory2C4430.f16529) {
            layoutInflaterFactory2C4430.m8955();
            C4425 c4425 = layoutInflaterFactory2C4430.f16500;
            if (c4425 != null) {
                c4425.m8928(c4425.f16462.getResources().getBoolean(ar.tvplayer.tv.R.bool.4f5));
            }
        }
        C2284 m5332 = C2284.m5332();
        Context context = layoutInflaterFactory2C4430.f16528;
        synchronized (m5332) {
            m5332.f8942.m5254(context);
        }
        layoutInflaterFactory2C4430.f16512 = new Configuration(layoutInflaterFactory2C4430.f16528.getResources().getConfiguration());
        layoutInflaterFactory2C4430.m8958(false, false);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onContentChanged() {
    }

    @Override // p036.AbstractActivityC1262, p151.AbstractActivityC2438, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f16401.m710(EnumC0174.ON_CREATE);
        C3085 c3085 = ((C3114) this.f16398.ᴵˊ).f11850;
        c3085.f11751 = false;
        c3085.f11745 = false;
        c3085.f11741.f11948 = false;
        c3085.m6663(1);
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View onCreateView = ((C3114) this.f16398.ᴵˊ).f11850.f11763.onCreateView(view, str, context, attributeSet);
        return onCreateView == null ? super.onCreateView(view, str, context, attributeSet) : onCreateView;
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View onCreateView = ((C3114) this.f16398.ᴵˊ).f11850.f11763.onCreateView(null, str, context, attributeSet);
        return onCreateView == null ? super.onCreateView(str, context, attributeSet) : onCreateView;
    }

    @Override // android.app.Activity
    public void onDestroy() {
        m8912();
        m8911().mo8942();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        Window window;
        if (Build.VERSION.SDK_INT >= 26 || keyEvent.isCtrlPressed() || KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState()) || keyEvent.getRepeatCount() != 0 || KeyEvent.isModifierKey(keyEvent.getKeyCode()) || (window = getWindow()) == null || window.getDecorView() == null || !window.getDecorView().dispatchKeyShortcutEvent(keyEvent)) {
            return super.onKeyDown(i, keyEvent);
        }
        return true;
    }

    @Override // p036.AbstractActivityC1262, android.app.Activity, android.view.Window.Callback
    public final boolean onMenuItemSelected(int i, MenuItem menuItem) {
        Intent m5538;
        if (!m8915(i, menuItem)) {
            LayoutInflaterFactory2C4430 layoutInflaterFactory2C4430 = (LayoutInflaterFactory2C4430) m8911();
            layoutInflaterFactory2C4430.m8955();
            C4425 c4425 = layoutInflaterFactory2C4430.f16500;
            if (menuItem.getItemId() != 16908332 || c4425 == null || (((C2286) c4425.f16460).f8954 & 4) == 0 || (m5538 = AbstractC2427.m5538(this)) == null) {
                return false;
            }
            if (!shouldUpRecreateTask(m5538)) {
                navigateUpTo(m5538);
                return true;
            }
            ArrayList arrayList = new ArrayList();
            Intent m55382 = AbstractC2427.m5538(this);
            if (m55382 == null) {
                m55382 = AbstractC2427.m5538(this);
            }
            if (m55382 != null) {
                ComponentName component = m55382.getComponent();
                if (component == null) {
                    component = m55382.resolveActivity(getPackageManager());
                }
                int size = arrayList.size();
                try {
                    Intent m5537 = AbstractC2427.m5537(this, component);
                    while (m5537 != null) {
                        arrayList.add(size, m5537);
                        m5537 = AbstractC2427.m5537(this, m5537.getComponent());
                    }
                    arrayList.add(m55382);
                } catch (PackageManager.NameNotFoundException e) {
                    throw new IllegalArgumentException(e);
                }
            }
            if (arrayList.isEmpty()) {
                throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
            }
            Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[0]);
            intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
            startActivities(intentArr, null);
            try {
                finishAffinity();
            } catch (IllegalStateException unused) {
                finish();
            }
        }
        return true;
    }

    @Override // android.app.Activity
    public final void onPause() {
        super.onPause();
        this.f16399 = false;
        ((C3114) this.f16398.ᴵˊ).f11850.m6663(5);
        this.f16401.m710(EnumC0174.ON_PAUSE);
    }

    @Override // android.app.Activity
    public final void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        ((LayoutInflaterFactory2C4430) m8911()).m8951();
    }

    @Override // android.app.Activity
    public final void onPostResume() {
        m8913();
        LayoutInflaterFactory2C4430 layoutInflaterFactory2C4430 = (LayoutInflaterFactory2C4430) m8911();
        layoutInflaterFactory2C4430.m8955();
        C4425 c4425 = layoutInflaterFactory2C4430.f16500;
        if (c4425 != null) {
            c4425.f16466 = true;
        }
    }

    @Override // p036.AbstractActivityC1262, android.app.Activity
    public final void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        this.f16398.ᵔٴ();
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    @Override // android.app.Activity
    public void onResume() {
        ʿ r0 = this.f16398;
        r0.ᵔٴ();
        super.onResume();
        this.f16399 = true;
        ((C3114) r0.ᴵˊ).f11850.m6664(true);
    }

    @Override // android.app.Activity
    public void onStart() {
        m8910();
        ((LayoutInflaterFactory2C4430) m8911()).m8958(true, false);
    }

    @Override // android.app.Activity
    public final void onStateNotSaved() {
        this.f16398.ᵔٴ();
    }

    @Override // android.app.Activity
    public void onStop() {
        m8916();
        LayoutInflaterFactory2C4430 layoutInflaterFactory2C4430 = (LayoutInflaterFactory2C4430) m8911();
        layoutInflaterFactory2C4430.m8955();
        C4425 c4425 = layoutInflaterFactory2C4430.f16500;
        if (c4425 != null) {
            c4425.f16466 = false;
            C2220 c2220 = c4425.f16446;
            if (c2220 != null) {
                c2220.m5209();
            }
        }
    }

    @Override // android.app.Activity
    public final void onTitleChanged(CharSequence charSequence, int i) {
        super.onTitleChanged(charSequence, i);
        m8911().mo8941(charSequence);
    }

    @Override // android.app.Activity
    public final void openOptionsMenu() {
        ((LayoutInflaterFactory2C4430) m8911()).m8955();
        if (getWindow().hasFeature(0)) {
            super.openOptionsMenu();
        }
    }

    @Override // p036.AbstractActivityC1262, android.app.Activity
    public final void setContentView(int i) {
        m3850();
        m8911().mo8935(i);
    }

    @Override // p036.AbstractActivityC1262, android.app.Activity
    public void setContentView(View view) {
        m3850();
        m8911().mo8936(view);
    }

    @Override // p036.AbstractActivityC1262, android.app.Activity
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m3850();
        m8911().mo8938(view, layoutParams);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final void setTheme(int i) {
        super.setTheme(i);
        ((LayoutInflaterFactory2C4430) m8911()).f16509 = i;
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final void m8910() {
        ʿ r0 = this.f16398;
        r0.ᵔٴ();
        C3114 c3114 = (C3114) r0.ᴵˊ;
        super.onStart();
        this.f16402 = false;
        if (!this.f16403) {
            this.f16403 = true;
            C3085 c3085 = c3114.f11850;
            c3085.f11751 = false;
            c3085.f11745 = false;
            c3085.f11741.f11948 = false;
            c3085.m6663(4);
        }
        c3114.f11850.m6664(true);
        this.f16401.m710(EnumC0174.ON_START);
        C3085 c30852 = c3114.f11850;
        c30852.f11751 = false;
        c30852.f11745 = false;
        c30852.f11741.f11948 = false;
        c30852.m6663(5);
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final AbstractC4427 m8911() {
        if (this.f16400 == null) {
            ExecutorC1212 executorC1212 = AbstractC4427.f16472;
            this.f16400 = new LayoutInflaterFactory2C4430(this, null, this, this);
        }
        return this.f16400;
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final void m8912() {
        super.onDestroy();
        ((C3114) this.f16398.ᴵˊ).f11850.m6714();
        this.f16401.m710(EnumC0174.ON_DESTROY);
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final void m8913() {
        super.onPostResume();
        this.f16401.m710(EnumC0174.ON_RESUME);
        C3085 c3085 = ((C3114) this.f16398.ᴵˊ).f11850;
        c3085.f11751 = false;
        c3085.f11745 = false;
        c3085.f11741.f11948 = false;
        c3085.m6663(7);
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final C3085 m8914() {
        return ((C3114) this.f16398.ᴵˊ).f11850;
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final boolean m8915(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        if (i == 6) {
            return ((C3114) this.f16398.ᴵˊ).f11850.m6668();
        }
        return false;
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final void m8916() {
        super.onStop();
        this.f16402 = true;
        do {
        } while (m8909(m8914()));
        C3085 c3085 = ((C3114) this.f16398.ᴵˊ).f11850;
        c3085.f11745 = true;
        c3085.f11741.f11948 = true;
        c3085.m6663(4);
        this.f16401.m710(EnumC0174.ON_STOP);
    }
}
