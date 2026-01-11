package p363;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.location.LocationManager;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.Toolbar;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.WeakHashMap;
import p114.C1981;
import p114.InterfaceC1983;
import p136.AbstractC2228;
import p136.C2219;
import p136.C2226;
import p137.AbstractC2257;
import p137.C2284;
import p137.C2286;
import p137.C2304;
import p137.C2308;
import p137.C2349;
import p137.InterfaceC2341;
import p137.InterfaceC2345;
import p151.AbstractC2427;
import p186.AbstractC2776;
import p186.AbstractC2823;
import p186.C2798;
import p255.C3368;
import p256.AbstractC3376;
import p350.AbstractC4295;
import p353.C4329;
import p353.InterfaceC4323;
import p353.MenuC4312;
import ˑי.ʽ;

/* renamed from: ᵔᵢ.ᵢˏ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class LayoutInflaterFactory2C4430 extends AbstractC4427 implements InterfaceC4323, LayoutInflater.Factory2 {

    /* renamed from: ʻˋ, reason: contains not printable characters */
    public boolean f16487;

    /* renamed from: ʻᴵ, reason: contains not printable characters */
    public boolean f16488;

    /* renamed from: ʻᵎ, reason: contains not printable characters */
    public boolean f16489;

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public C4404 f16490;

    /* renamed from: ʼـ, reason: contains not printable characters */
    public int f16491;

    /* renamed from: ʽᵔ, reason: contains not printable characters */
    public boolean f16492;

    /* renamed from: ʽⁱ, reason: contains not printable characters */
    public C4420 f16493;

    /* renamed from: ʾˊ, reason: contains not printable characters */
    public final int f16494;

    /* renamed from: ʾﾞ, reason: contains not printable characters */
    public boolean f16495;

    /* renamed from: ʿـ, reason: contains not printable characters */
    public C4406 f16497;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public WindowCallbackC4401 f16499;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public C4425 f16500;

    /* renamed from: ˈˏ, reason: contains not printable characters */
    public boolean f16501;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public ActionBarContextView f16502;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public RunnableC4414 f16503;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public InterfaceC2345 f16504;

    /* renamed from: ˊᵔ, reason: contains not printable characters */
    public boolean f16505;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public CharSequence f16506;

    /* renamed from: ˎᐧ, reason: contains not printable characters */
    public boolean f16507;

    /* renamed from: ˏᵢ, reason: contains not printable characters */
    public View f16508;

    /* renamed from: ˑ, reason: contains not printable characters */
    public int f16509;

    /* renamed from: ˑʼ, reason: contains not printable characters */
    public C4402[] f16510;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public C2226 f16511;

    /* renamed from: י, reason: contains not printable characters */
    public Configuration f16512;

    /* renamed from: יﹳ, reason: contains not printable characters */
    public C4420 f16513;

    /* renamed from: ـˊ, reason: contains not printable characters */
    public Rect f16514;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public C4429 f16515;

    /* renamed from: ـᵎ, reason: contains not printable characters */
    public boolean f16516;

    /* renamed from: ـﹶ, reason: contains not printable characters */
    public boolean f16517;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final Object f16518;

    /* renamed from: ٴﹳ, reason: contains not printable characters */
    public C4402 f16519;

    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public TextView f16521;

    /* renamed from: ᐧﹶ, reason: contains not printable characters */
    public boolean f16522;

    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    public ViewGroup f16523;

    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public boolean f16524;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public PopupWindow f16525;

    /* renamed from: ᵎʻ, reason: contains not printable characters */
    public boolean f16526;

    /* renamed from: ᵎʿ, reason: contains not printable characters */
    public Rect f16527;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final Context f16528;

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public boolean f16529;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public Window f16530;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public final Object f16531;

    /* renamed from: ⁱˉ, reason: contains not printable characters */
    public int f16532;

    /* renamed from: ⁱי, reason: contains not printable characters */
    public OnBackInvokedCallback f16533;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public AbstractC2228 f16534;

    /* renamed from: ﹳⁱ, reason: contains not printable characters */
    public OnBackInvokedDispatcher f16535;

    /* renamed from: ﹳﹳ, reason: contains not printable characters */
    public boolean f16536;

    /* renamed from: ﹶᐧ, reason: contains not printable characters */
    public boolean f16537;

    /* renamed from: ʻʿ, reason: contains not printable characters */
    public static final C3368 f16484 = new C3368(0);

    /* renamed from: ﹶ, reason: contains not printable characters */
    public static final int[] f16486 = {R.attr.windowBackground};

    /* renamed from: ـᵢ, reason: contains not printable characters */
    public static final boolean f16485 = !"robolectric".equals(Build.FINGERPRINT);

    /* renamed from: ʿ, reason: contains not printable characters */
    public C2798 f16496 = null;

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public final boolean f16498 = true;

    /* renamed from: ᐧˎ, reason: contains not printable characters */
    public final RunnableC4414 f16520 = new RunnableC4414(this, 0);

    public LayoutInflaterFactory2C4430(Context context, Window window, InterfaceC4422 interfaceC4422, Object obj) {
        AbstractActivityC4410 abstractActivityC4410 = null;
        this.f16494 = -100;
        this.f16528 = context;
        this.f16531 = interfaceC4422;
        this.f16518 = obj;
        if (obj instanceof Dialog) {
            while (true) {
                if (context != null) {
                    if (!(context instanceof AbstractActivityC4410)) {
                        if (!(context instanceof ContextWrapper)) {
                            break;
                        } else {
                            context = ((ContextWrapper) context).getBaseContext();
                        }
                    } else {
                        abstractActivityC4410 = (AbstractActivityC4410) context;
                        break;
                    }
                } else {
                    break;
                }
            }
            if (abstractActivityC4410 != null) {
                this.f16494 = ((LayoutInflaterFactory2C4430) abstractActivityC4410.m8911()).f16494;
            }
        }
        if (this.f16494 == -100) {
            String name = this.f16518.getClass().getName();
            C3368 c3368 = f16484;
            Integer num = (Integer) c3368.get(name);
            if (num != null) {
                this.f16494 = num.intValue();
                c3368.remove(this.f16518.getClass().getName());
            }
        }
        if (window != null) {
            m8967(window);
        }
        C2284.m5330();
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public static C1981 m8948(Configuration configuration) {
        return Build.VERSION.SDK_INT >= 24 ? AbstractC4417.m8922(configuration) : C1981.m4966(AbstractC4419.m8924(configuration.locale));
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public static C1981 m8949(Context context) {
        C1981 c1981;
        C1981 m4966;
        int i = Build.VERSION.SDK_INT;
        if (i >= 33 || (c1981 = AbstractC4427.f16471) == null) {
            return null;
        }
        InterfaceC1983 interfaceC1983 = c1981.f7840;
        C1981 m8948 = m8948(context.getApplicationContext().getResources().getConfiguration());
        int i2 = 0;
        if (i < 24) {
            m4966 = interfaceC1983.isEmpty() ? C1981.f7839 : C1981.m4966(AbstractC4419.m8924(interfaceC1983.get(0)));
        } else if (interfaceC1983.isEmpty()) {
            m4966 = C1981.f7839;
        } else {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            while (i2 < m8948.f7840.size() + interfaceC1983.size()) {
                Locale locale = i2 < interfaceC1983.size() ? interfaceC1983.get(i2) : m8948.f7840.get(i2 - interfaceC1983.size());
                if (locale != null) {
                    linkedHashSet.add(locale);
                }
                i2++;
            }
            m4966 = C1981.m4967((Locale[]) linkedHashSet.toArray(new Locale[linkedHashSet.size()]));
        }
        return m4966.f7840.isEmpty() ? m8948 : m4966;
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public static Configuration m8950(Context context, int i, C1981 c1981, Configuration configuration, boolean z) {
        int i2 = i != 1 ? i != 2 ? z ? 0 : context.getApplicationContext().getResources().getConfiguration().uiMode & 48 : 32 : 16;
        Configuration configuration2 = new Configuration();
        configuration2.fontScale = 0.0f;
        if (configuration != null) {
            configuration2.setTo(configuration);
        }
        configuration2.uiMode = i2 | (configuration2.uiMode & (-49));
        if (c1981 != null) {
            InterfaceC1983 interfaceC1983 = c1981.f7840;
            if (Build.VERSION.SDK_INT >= 24) {
                AbstractC4417.m8921(configuration2, c1981);
                return configuration2;
            }
            configuration2.setLocale(interfaceC1983.get(0));
            configuration2.setLayoutDirection(interfaceC1983.get(0));
        }
        return configuration2;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:68:0x01e2
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1166)
        	at jadx.core.dex.visitors.regions.RegionMaker.processTryCatchBlocks(RegionMaker.java:1022)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:55)
        */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.LayoutInflater.Factory2
    public final android.view.View onCreateView(android.view.View r9, java.lang.String r10, android.content.Context r11, android.util.AttributeSet r12) {
        /*
            Method dump skipped, instructions count: 724
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p363.LayoutInflaterFactory2C4430.onCreateView(android.view.View, java.lang.String, android.content.Context, android.util.AttributeSet):android.view.View");
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final void m8951() {
        ViewGroup viewGroup;
        if (this.f16529) {
            return;
        }
        Context context = this.f16528;
        int[] iArr = AbstractC4295.f15906;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(iArr);
        if (!obtainStyledAttributes.hasValue(117)) {
            obtainStyledAttributes.recycle();
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
        if (obtainStyledAttributes.getBoolean(126, false)) {
            mo8939(1);
        } else if (obtainStyledAttributes.getBoolean(117, false)) {
            mo8939(108);
        }
        if (obtainStyledAttributes.getBoolean(118, false)) {
            mo8939(109);
        }
        if (obtainStyledAttributes.getBoolean(119, false)) {
            mo8939(10);
        }
        this.f16537 = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
        m8962();
        this.f16530.getDecorView();
        LayoutInflater from = LayoutInflater.from(context);
        if (this.f16536) {
            viewGroup = this.f16501 ? (ViewGroup) from.inflate(ar.tvplayer.tv.R.layout.73d, (ViewGroup) null) : (ViewGroup) from.inflate(ar.tvplayer.tv.R.layout.65r, (ViewGroup) null);
        } else if (this.f16537) {
            viewGroup = (ViewGroup) from.inflate(ar.tvplayer.tv.R.layout.689, (ViewGroup) null);
            this.f16517 = false;
            this.f16505 = false;
        } else if (this.f16505) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(ar.tvplayer.tv.R.attr.6lo, typedValue, true);
            viewGroup = (ViewGroup) LayoutInflater.from(typedValue.resourceId != 0 ? new C2219(context, typedValue.resourceId) : context).inflate(ar.tvplayer.tv.R.layout.1jf, (ViewGroup) null);
            InterfaceC2345 interfaceC2345 = (InterfaceC2345) viewGroup.findViewById(ar.tvplayer.tv.R.id.76m);
            this.f16504 = interfaceC2345;
            interfaceC2345.setWindowCallback(this.f16530.getCallback());
            if (this.f16517) {
                ((ActionBarOverlayLayout) this.f16504).m43(109);
            }
            if (this.f16524) {
                ((ActionBarOverlayLayout) this.f16504).m43(2);
            }
            if (this.f16489) {
                ((ActionBarOverlayLayout) this.f16504).m43(5);
            }
        } else {
            viewGroup = null;
        }
        if (viewGroup == null) {
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.f16505 + ", windowActionBarOverlay: " + this.f16517 + ", android:windowIsFloating: " + this.f16537 + ", windowActionModeOverlay: " + this.f16501 + ", windowNoTitle: " + this.f16536 + " }");
        }
        C4404 c4404 = new C4404(this);
        WeakHashMap weakHashMap = AbstractC2823.f10603;
        AbstractC2776.m6173(viewGroup, c4404);
        if (this.f16504 == null) {
            this.f16521 = (TextView) viewGroup.findViewById(ar.tvplayer.tv.R.id.title);
        }
        boolean z = AbstractC2257.f8861;
        try {
            Method method = viewGroup.getClass().getMethod("makeOptionalFitsSystemWindows", null);
            if (!method.isAccessible()) {
                method.setAccessible(true);
            }
            method.invoke(viewGroup, null);
        } catch (IllegalAccessException e) {
        } catch (NoSuchMethodException unused) {
        } catch (InvocationTargetException e2) {
        }
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(ar.tvplayer.tv.R.id.5u4);
        ViewGroup viewGroup2 = (ViewGroup) this.f16530.findViewById(R.id.content);
        if (viewGroup2 != null) {
            while (viewGroup2.getChildCount() > 0) {
                View childAt = viewGroup2.getChildAt(0);
                viewGroup2.removeViewAt(0);
                contentFrameLayout.addView(childAt);
            }
            viewGroup2.setId(-1);
            contentFrameLayout.setId(R.id.content);
            if (viewGroup2 instanceof FrameLayout) {
                ((FrameLayout) viewGroup2).setForeground(null);
            }
        }
        this.f16530.setContentView(viewGroup);
        contentFrameLayout.setAttachListener(new C4429(this));
        this.f16523 = viewGroup;
        Object obj = this.f16518;
        CharSequence title = obj instanceof Activity ? ((Activity) obj).getTitle() : this.f16506;
        if (!TextUtils.isEmpty(title)) {
            InterfaceC2345 interfaceC23452 = this.f16504;
            if (interfaceC23452 != null) {
                interfaceC23452.setWindowTitle(title);
            } else {
                C4425 c4425 = this.f16500;
                if (c4425 != null) {
                    C2286 c2286 = (C2286) c4425.f16460;
                    if (!c2286.f8951) {
                        Toolbar toolbar = c2286.f8955;
                        c2286.f8953 = title;
                        if ((c2286.f8954 & 8) != 0) {
                            toolbar.setTitle(title);
                            if (c2286.f8951) {
                                AbstractC2823.m6278(toolbar.getRootView(), title);
                            }
                        }
                    }
                } else {
                    TextView textView = this.f16521;
                    if (textView != null) {
                        textView.setText(title);
                    }
                }
            }
        }
        ContentFrameLayout contentFrameLayout2 = (ContentFrameLayout) this.f16523.findViewById(R.id.content);
        View decorView = this.f16530.getDecorView();
        contentFrameLayout2.f153.set(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        if (contentFrameLayout2.isLaidOut()) {
            contentFrameLayout2.requestLayout();
        }
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(iArr);
        obtainStyledAttributes2.getValue(124, contentFrameLayout2.getMinWidthMajor());
        obtainStyledAttributes2.getValue(125, contentFrameLayout2.getMinWidthMinor());
        if (obtainStyledAttributes2.hasValue(122)) {
            obtainStyledAttributes2.getValue(122, contentFrameLayout2.getFixedWidthMajor());
        }
        if (obtainStyledAttributes2.hasValue(123)) {
            obtainStyledAttributes2.getValue(123, contentFrameLayout2.getFixedWidthMinor());
        }
        if (obtainStyledAttributes2.hasValue(120)) {
            obtainStyledAttributes2.getValue(120, contentFrameLayout2.getFixedHeightMajor());
        }
        if (obtainStyledAttributes2.hasValue(121)) {
            obtainStyledAttributes2.getValue(121, contentFrameLayout2.getFixedHeightMinor());
        }
        obtainStyledAttributes2.recycle();
        contentFrameLayout2.requestLayout();
        this.f16529 = true;
        C4402 m8969 = m8969(0);
        if (this.f16522 || m8969.f16378 != null) {
            return;
        }
        m8964(108);
    }

    @Override // p363.AbstractC4427
    /* renamed from: ʼˎ */
    public final void mo8935(int i) {
        m8951();
        ViewGroup viewGroup = (ViewGroup) this.f16523.findViewById(R.id.content);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.f16528).inflate(i, viewGroup);
        this.f16499.m8904(this.f16530.getCallback());
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final void m8952(int i, C4402 c4402, MenuC4312 menuC4312) {
        if (menuC4312 == null) {
            if (c4402 == null && i >= 0) {
                C4402[] c4402Arr = this.f16510;
                if (i < c4402Arr.length) {
                    c4402 = c4402Arr[i];
                }
            }
            if (c4402 != null) {
                menuC4312 = c4402.f16378;
            }
        }
        if ((c4402 == null || c4402.f16372) && !this.f16522) {
            WindowCallbackC4401 windowCallbackC4401 = this.f16499;
            Window.Callback callback = this.f16530.getCallback();
            windowCallbackC4401.getClass();
            try {
                windowCallbackC4401.f16364 = true;
                callback.onPanelClosed(i, menuC4312);
            } finally {
                windowCallbackC4401.f16364 = false;
            }
        }
    }

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final int m8953(Context context, int i) {
        if (i != -100) {
            if (i != -1) {
                if (i != 0) {
                    if (i != 1 && i != 2) {
                        if (i != 3) {
                            throw new IllegalStateException("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
                        }
                        if (this.f16493 == null) {
                            this.f16493 = new C4420(this, context);
                        }
                        return this.f16493.mo7252();
                    }
                } else if (((UiModeManager) context.getApplicationContext().getSystemService("uimode")).getNightMode() != 0) {
                    return m8956(context).mo7252();
                }
            }
            return i;
        }
        return -1;
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final void m8954(int i) {
        C4402 m8969 = m8969(i);
        if (m8969.f16378 != null) {
            Bundle bundle = new Bundle();
            m8969.f16378.m8725(bundle);
            if (bundle.size() > 0) {
                m8969.f16368 = bundle;
            }
            m8969.f16378.m8727();
            m8969.f16378.clear();
        }
        m8969.f16373 = true;
        m8969.f16377 = true;
        if ((i == 108 || i == 0) && this.f16504 != null) {
            C4402 m89692 = m8969(0);
            m89692.f16375 = false;
            m8963(m89692, null);
        }
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final void m8955() {
        m8951();
        if (this.f16505 && this.f16500 == null) {
            Object obj = this.f16518;
            if (obj instanceof Activity) {
                this.f16500 = new C4425((Activity) obj, this.f16517);
            } else if (obj instanceof Dialog) {
                this.f16500 = new C4425((Dialog) obj);
            }
            C4425 c4425 = this.f16500;
            if (c4425 != null) {
                c4425.m8929(this.f16488);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, ˑי.ʽ] */
    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final AbstractC3376 m8956(Context context) {
        if (this.f16513 == null) {
            if (ʽ.ˈٴ == null) {
                Context applicationContext = context.getApplicationContext();
                LocationManager locationManager = (LocationManager) applicationContext.getSystemService("location");
                ?? obj = new Object();
                ((ʽ) obj).ʽʽ = new Object();
                ((ʽ) obj).ʾˋ = applicationContext;
                ((ʽ) obj).ᴵˊ = locationManager;
                ʽ.ˈٴ = obj;
            }
            this.f16513 = new C4420(this, ʽ.ˈٴ);
        }
        return this.f16513;
    }

    @Override // p363.AbstractC4427
    /* renamed from: ˆʾ */
    public final void mo8936(View view) {
        m8951();
        ViewGroup viewGroup = (ViewGroup) this.f16523.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.f16499.m8904(this.f16530.getCallback());
    }

    @Override // p353.InterfaceC4323
    /* renamed from: ˈ */
    public final boolean mo5214(MenuC4312 menuC4312, MenuItem menuItem) {
        C4402 c4402;
        Window.Callback callback = this.f16530.getCallback();
        if (callback != null && !this.f16522) {
            MenuC4312 mo8717 = menuC4312.mo8717();
            C4402[] c4402Arr = this.f16510;
            int length = c4402Arr != null ? c4402Arr.length : 0;
            int i = 0;
            while (true) {
                if (i < length) {
                    c4402 = c4402Arr[i];
                    if (c4402 != null && c4402.f16378 == mo8717) {
                        break;
                    }
                    i++;
                } else {
                    c4402 = null;
                    break;
                }
            }
            if (c4402 != null) {
                return callback.onMenuItemSelected(c4402.f16380, menuItem);
            }
        }
        return false;
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final boolean m8957() {
        InterfaceC2341 interfaceC2341;
        C2304 c2304;
        boolean z = this.f16526;
        this.f16526 = false;
        C4402 m8969 = m8969(0);
        if (!m8969.f16372) {
            AbstractC2228 abstractC2228 = this.f16534;
            if (abstractC2228 != null) {
                abstractC2228.mo5223();
                return true;
            }
            m8955();
            C4425 c4425 = this.f16500;
            if (c4425 == null || (interfaceC2341 = c4425.f16460) == null || (c2304 = ((C2286) interfaceC2341).f8955.f204) == null || c2304.f8996 == null) {
                return false;
            }
            C2304 c23042 = ((C2286) interfaceC2341).f8955.f204;
            C4329 c4329 = c23042 == null ? null : c23042.f8996;
            if (c4329 != null) {
                c4329.collapseActionView();
            }
        } else if (!z) {
            m8970(m8969, true);
            return true;
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:142:0x021a  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0239  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x024b  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x025c  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0241  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0102 A[ADDED_TO_REGION] */
    /* renamed from: ˉʿ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m8958(boolean r17, boolean r18) {
        /*
            Method dump skipped, instructions count: 612
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p363.LayoutInflaterFactory2C4430.m8958(boolean, boolean):boolean");
    }

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final void m8959() {
        if (this.f16529) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final boolean m8960(C4402 c4402, int i, KeyEvent keyEvent) {
        MenuC4312 menuC4312;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((c4402.f16375 || m8963(c4402, keyEvent)) && (menuC4312 = c4402.f16378) != null) {
            return menuC4312.performShortcut(i, keyEvent, 1);
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0037, code lost:
    
        if (r4.dispatchKeyEvent(r7) != false) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00dc, code lost:
    
        if (r7.m5389() != false) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0102, code lost:
    
        if (r7.m5392() != false) goto L91;
     */
    /* JADX WARN: Removed duplicated region for block: B:62:0x012d  */
    /* renamed from: ˏי, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m8961(android.view.KeyEvent r7) {
        /*
            Method dump skipped, instructions count: 333
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p363.LayoutInflaterFactory2C4430.m8961(android.view.KeyEvent):boolean");
    }

    @Override // p363.AbstractC4427
    /* renamed from: ˑﹳ */
    public final void mo8937() {
        String str;
        this.f16516 = true;
        m8958(false, true);
        m8962();
        Object obj = this.f16518;
        if (obj instanceof Activity) {
            try {
                Activity activity = (Activity) obj;
                try {
                    str = AbstractC2427.m5534(activity, activity.getComponentName());
                } catch (PackageManager.NameNotFoundException e) {
                    throw new IllegalArgumentException(e);
                }
            } catch (IllegalArgumentException unused) {
                str = null;
            }
            if (str != null) {
                C4425 c4425 = this.f16500;
                if (c4425 == null) {
                    this.f16488 = true;
                } else {
                    c4425.m8929(true);
                }
            }
            synchronized (AbstractC4427.f16474) {
                AbstractC4427.m8934(this);
                AbstractC4427.f16476.add(new WeakReference(this));
            }
        }
        this.f16512 = new Configuration(this.f16528.getResources().getConfiguration());
        this.f16492 = true;
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final void m8962() {
        if (this.f16530 == null) {
            Object obj = this.f16518;
            if (obj instanceof Activity) {
                m8967(((Activity) obj).getWindow());
            }
        }
        if (this.f16530 == null) {
            throw new IllegalStateException("We have not been given a Window");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x00cd, code lost:
    
        if (r13.f16378 == null) goto L78;
     */
    /* renamed from: ٴᵢ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m8963(p363.C4402 r13, android.view.KeyEvent r14) {
        /*
            Method dump skipped, instructions count: 360
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p363.LayoutInflaterFactory2C4430.m8963(ᵔᵢ.ʼʼ, android.view.KeyEvent):boolean");
    }

    @Override // p363.AbstractC4427
    /* renamed from: ٴﹶ */
    public final void mo8938(View view, ViewGroup.LayoutParams layoutParams) {
        m8951();
        ViewGroup viewGroup = (ViewGroup) this.f16523.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.f16499.m8904(this.f16530.getCallback());
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final void m8964(int i) {
        this.f16532 = (1 << i) | this.f16532;
        if (this.f16495) {
            return;
        }
        View decorView = this.f16530.getDecorView();
        WeakHashMap weakHashMap = AbstractC2823.f10603;
        decorView.postOnAnimation(this.f16520);
        this.f16495 = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:62:0x0175, code lost:
    
        if (r2.f16099.getCount() > 0) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0155, code lost:
    
        if (r2 != null) goto L77;
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x01d2  */
    /* JADX WARN: Removed duplicated region for block: B:36:? A[RETURN, SYNTHETIC] */
    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m8965(p363.C4402 r18, android.view.KeyEvent r19) {
        /*
            Method dump skipped, instructions count: 473
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p363.LayoutInflaterFactory2C4430.m8965(ᵔᵢ.ʼʼ, android.view.KeyEvent):void");
    }

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final void m8966() {
        OnBackInvokedCallback onBackInvokedCallback;
        if (Build.VERSION.SDK_INT >= 33) {
            boolean z = false;
            if (this.f16535 != null && (m8969(0).f16372 || this.f16534 != null)) {
                z = true;
            }
            if (z && this.f16533 == null) {
                this.f16533 = AbstractC4407.m8907(this.f16535, this);
            } else {
                if (z || (onBackInvokedCallback = this.f16533) == null) {
                    return;
                }
                AbstractC4407.m8906(this.f16535, onBackInvokedCallback);
                this.f16533 = null;
            }
        }
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final void m8967(Window window) {
        Drawable drawable;
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        OnBackInvokedCallback onBackInvokedCallback;
        int resourceId;
        if (this.f16530 != null) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        Window.Callback callback = window.getCallback();
        if (callback instanceof WindowCallbackC4401) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        WindowCallbackC4401 windowCallbackC4401 = new WindowCallbackC4401(this, callback);
        this.f16499 = windowCallbackC4401;
        window.setCallback(windowCallbackC4401);
        Context context = this.f16528;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, f16486);
        if (!obtainStyledAttributes.hasValue(0) || (resourceId = obtainStyledAttributes.getResourceId(0, 0)) == 0) {
            drawable = null;
        } else {
            C2284 m5332 = C2284.m5332();
            synchronized (m5332) {
                drawable = m5332.f8942.m5250(context, resourceId, true);
            }
        }
        if (drawable != null) {
            window.setBackgroundDrawable(drawable);
        }
        obtainStyledAttributes.recycle();
        this.f16530 = window;
        if (Build.VERSION.SDK_INT < 33 || (onBackInvokedDispatcher = this.f16535) != null) {
            return;
        }
        Object obj = this.f16518;
        if (onBackInvokedDispatcher != null && (onBackInvokedCallback = this.f16533) != null) {
            AbstractC4407.m8906(onBackInvokedDispatcher, onBackInvokedCallback);
            this.f16533 = null;
        }
        if (obj instanceof Activity) {
            Activity activity = (Activity) obj;
            if (activity.getWindow() != null) {
                this.f16535 = AbstractC4407.m8908(activity);
                m8966();
            }
        }
        this.f16535 = null;
        m8966();
    }

    @Override // p363.AbstractC4427
    /* renamed from: ᵔᵢ */
    public final boolean mo8939(int i) {
        if (i == 8) {
            i = 108;
        } else if (i == 9) {
            i = 109;
        }
        if (this.f16536 && i == 108) {
            return false;
        }
        if (this.f16505 && i == 1) {
            this.f16505 = false;
        }
        if (i == 1) {
            m8959();
            this.f16536 = true;
            return true;
        }
        if (i == 2) {
            m8959();
            this.f16524 = true;
            return true;
        }
        if (i == 5) {
            m8959();
            this.f16489 = true;
            return true;
        }
        if (i == 10) {
            m8959();
            this.f16501 = true;
            return true;
        }
        if (i == 108) {
            m8959();
            this.f16505 = true;
            return true;
        }
        if (i != 109) {
            return this.f16530.requestFeature(i);
        }
        m8959();
        this.f16517 = true;
        return true;
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final void m8968(MenuC4312 menuC4312) {
        C2308 c2308;
        if (this.f16487) {
            return;
        }
        this.f16487 = true;
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) this.f16504;
        actionBarOverlayLayout.m46();
        ActionMenuView actionMenuView = ((C2286) actionBarOverlayLayout.f123).f8955.f209;
        if (actionMenuView != null && (c2308 = actionMenuView.f138) != null) {
            c2308.m5389();
            C2349 c2349 = c2308.f9014;
            if (c2349 != null && c2349.m8749()) {
                c2349.f16008.dismiss();
            }
        }
        Window.Callback callback = this.f16530.getCallback();
        if (callback != null && !this.f16522) {
            callback.onPanelClosed(108, menuC4312);
        }
        this.f16487 = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0006, code lost:
    
        if (r2 <= r5) goto L6;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v3, types: [ᵔᵢ.ʼʼ, java.lang.Object] */
    /* renamed from: ᵢˏ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p363.C4402 m8969(int r5) {
        /*
            r4 = this;
            ᵔᵢ.ʼʼ[] r0 = r4.f16510
            r1 = 0
            if (r0 == 0) goto L8
            int r2 = r0.length
            if (r2 > r5) goto L15
        L8:
            int r2 = r5 + 1
            ᵔᵢ.ʼʼ[] r2 = new p363.C4402[r2]
            if (r0 == 0) goto L12
            int r3 = r0.length
            java.lang.System.arraycopy(r0, r1, r2, r1, r3)
        L12:
            r4.f16510 = r2
            r0 = r2
        L15:
            r2 = r0[r5]
            if (r2 != 0) goto L24
            ᵔᵢ.ʼʼ r2 = new ᵔᵢ.ʼʼ
            r2.<init>()
            r2.f16380 = r5
            r2.f16377 = r1
            r0[r5] = r2
        L24:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: p363.LayoutInflaterFactory2C4430.m8969(int):ᵔᵢ.ʼʼ");
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0048, code lost:
    
        if (r6.m5393() != false) goto L20;
     */
    @Override // p353.InterfaceC4323
    /* renamed from: ⁱˊ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo5222(p353.MenuC4312 r6) {
        /*
            Method dump skipped, instructions count: 241
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p363.LayoutInflaterFactory2C4430.mo5222(ᵔʾ.ˆʾ):void");
    }

    @Override // p363.AbstractC4427
    /* renamed from: ﹳٴ */
    public final void mo8940() {
        LayoutInflater from = LayoutInflater.from(this.f16528);
        if (from.getFactory() == null) {
            from.setFactory2(this);
        } else if (from.getFactory2() instanceof LayoutInflaterFactory2C4430) {
        }
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final void m8970(C4402 c4402, boolean z) {
        C4409 c4409;
        InterfaceC2345 interfaceC2345;
        C2308 c2308;
        if (z && c4402.f16380 == 0 && (interfaceC2345 = this.f16504) != null) {
            ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) interfaceC2345;
            actionBarOverlayLayout.m46();
            ActionMenuView actionMenuView = ((C2286) actionBarOverlayLayout.f123).f8955.f209;
            if (actionMenuView != null && (c2308 = actionMenuView.f138) != null && c2308.m5393()) {
                m8968(c4402.f16378);
                return;
            }
        }
        WindowManager windowManager = (WindowManager) this.f16528.getSystemService("window");
        if (windowManager != null && c4402.f16372 && (c4409 = c4402.f16374) != null) {
            windowManager.removeView(c4409);
            if (z) {
                m8952(c4402.f16380, c4402, null);
            }
        }
        c4402.f16375 = false;
        c4402.f16381 = false;
        c4402.f16372 = false;
        c4402.f16382 = null;
        c4402.f16377 = true;
        if (this.f16519 == c4402) {
            this.f16519 = null;
        }
        if (c4402.f16380 == 0) {
            m8966();
        }
    }

    @Override // p363.AbstractC4427
    /* renamed from: ﾞʻ */
    public final void mo8941(CharSequence charSequence) {
        this.f16506 = charSequence;
        InterfaceC2345 interfaceC2345 = this.f16504;
        if (interfaceC2345 != null) {
            interfaceC2345.setWindowTitle(charSequence);
            return;
        }
        C4425 c4425 = this.f16500;
        if (c4425 == null) {
            TextView textView = this.f16521;
            if (textView != null) {
                textView.setText(charSequence);
                return;
            }
            return;
        }
        C2286 c2286 = (C2286) c4425.f16460;
        if (c2286.f8951) {
            return;
        }
        Toolbar toolbar = c2286.f8955;
        c2286.f8953 = charSequence;
        if ((c2286.f8954 & 8) != 0) {
            toolbar.setTitle(charSequence);
            if (c2286.f8951) {
                AbstractC2823.m6278(toolbar.getRootView(), charSequence);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:31:? A[RETURN, SYNTHETIC] */
    @Override // p363.AbstractC4427
    /* renamed from: ﾞᴵ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo8942() {
        /*
            r3 = this;
            java.lang.Object r0 = r3.f16518
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto L11
            java.lang.Object r0 = p363.AbstractC4427.f16474
            monitor-enter(r0)
            p363.AbstractC4427.m8934(r3)     // Catch: java.lang.Throwable -> Le
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Le
            goto L11
        Le:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Le
            throw r1
        L11:
            boolean r0 = r3.f16495
            if (r0 == 0) goto L20
            android.view.Window r0 = r3.f16530
            android.view.View r0 = r0.getDecorView()
            ᵔᵢ.ˉˆ r1 = r3.f16520
            r0.removeCallbacks(r1)
        L20:
            r0 = 1
            r3.f16522 = r0
            int r0 = r3.f16494
            r1 = -100
            if (r0 == r1) goto L4d
            java.lang.Object r0 = r3.f16518
            boolean r1 = r0 instanceof android.app.Activity
            if (r1 == 0) goto L4d
            android.app.Activity r0 = (android.app.Activity) r0
            boolean r0 = r0.isChangingConfigurations()
            if (r0 == 0) goto L4d
            יـ.ﹳᐧ r0 = p363.LayoutInflaterFactory2C4430.f16484
            java.lang.Object r1 = r3.f16518
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            int r2 = r3.f16494
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r0.put(r1, r2)
            goto L5c
        L4d:
            יـ.ﹳᐧ r0 = p363.LayoutInflaterFactory2C4430.f16484
            java.lang.Object r1 = r3.f16518
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            r0.remove(r1)
        L5c:
            ᵔᵢ.ـˆ r0 = r3.f16513
            if (r0 == 0) goto L63
            r0.m7247()
        L63:
            ᵔᵢ.ـˆ r0 = r3.f16493
            if (r0 == 0) goto L6a
            r0.m7247()
        L6a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p363.LayoutInflaterFactory2C4430.mo8942():void");
    }
}
