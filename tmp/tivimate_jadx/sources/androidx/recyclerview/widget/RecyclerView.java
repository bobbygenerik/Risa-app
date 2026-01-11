package androidx.recyclerview.widget;

import android.R;
import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Parcelable;
import android.os.SystemClock;
import android.os.Trace;
import android.support.v4.media.session.AbstractC0001;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import com.google.android.gms.internal.measurement.ᵎ;
import com.parse.ʽˑ;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.WeakHashMap;
import p003.C0781;
import p010.AbstractC0844;
import p012.C0882;
import p079.C1681;
import p116.AbstractC1989;
import p132.C2197;
import p137.AbstractC2305;
import p142.InterpolatorC2380;
import p179.AbstractC2669;
import p179.AbstractC2673;
import p179.AbstractC2680;
import p179.AbstractC2691;
import p179.AbstractC2704;
import p179.AbstractC2716;
import p179.AbstractC2722;
import p179.AbstractC2724;
import p179.AbstractC2727;
import p179.C2666;
import p179.C2676;
import p179.C2685;
import p179.C2688;
import p179.C2693;
import p179.C2700;
import p179.C2709;
import p179.C2711;
import p179.C2719;
import p179.C2723;
import p179.C2726;
import p179.C2729;
import p179.C2742;
import p179.C2743;
import p179.C2745;
import p179.C2746;
import p179.InterfaceC2706;
import p179.InterfaceC2731;
import p179.RunnableC2705;
import p179.RunnableC2714;
import p179.RunnableC2728;
import p186.AbstractC2776;
import p186.AbstractC2821;
import p186.AbstractC2823;
import p186.AbstractC2828;
import p186.C2830;
import p186.C2839;
import p255.C3352;
import p255.C3368;
import p307.AbstractC3740;
import p323.AbstractC3985;
import p404.C4790;
import p430.AbstractC5106;
import ʿי.ـᵎ;
import ˑˊ.ﹳٴ;
import ﹳˋ.ʽʽ;

/* loaded from: classes.dex */
public class RecyclerView extends ViewGroup {

    /* renamed from: ˊﾞ */
    public static final Class[] f1449;

    /* renamed from: ˋـ */
    public static boolean f1450;

    /* renamed from: ˏⁱ */
    public static final C2709 f1451;

    /* renamed from: ـʻ */
    public static final InterpolatorC2380 f1452;

    /* renamed from: ﹶʽ */
    public static boolean f1455;

    /* renamed from: ʻʿ */
    public boolean f1457;

    /* renamed from: ʻˋ */
    public EdgeEffect f1458;

    /* renamed from: ʻᴵ */
    public RunnableC2728 f1459;

    /* renamed from: ʻᵎ */
    public int f1460;

    /* renamed from: ʼˈ */
    public C2726 f1461;

    /* renamed from: ʼـ */
    public AbstractC2716 f1462;

    /* renamed from: ʼᵢ */
    public final int[] f1463;

    /* renamed from: ʽʽ */
    public final C2666 f1464;

    /* renamed from: ʽˑ */
    public final int[] f1465;

    /* renamed from: ʽᵔ */
    public int f1466;

    /* renamed from: ʽⁱ */
    public final float f1467;

    /* renamed from: ʾˊ */
    public int f1468;

    /* renamed from: ʾˋ */
    public final float f1469;

    /* renamed from: ʾﾞ */
    public final float f1470;

    /* renamed from: ʿ */
    public boolean f1471;

    /* renamed from: ʿـ */
    public AbstractC2691 f1472;

    /* renamed from: ʿᵢ */
    public boolean f1473;

    /* renamed from: ˆﾞ */
    public AbstractC2727 f1474;

    /* renamed from: ˈʿ */
    public InterfaceC2706 f1475;

    /* renamed from: ˈˏ */
    public EdgeEffect f1476;

    /* renamed from: ˈـ */
    public boolean f1477;

    /* renamed from: ˈٴ */
    public C2729 f1478;

    /* renamed from: ˈⁱ */
    public boolean f1479;

    /* renamed from: ˉـ */
    public boolean f1480;

    /* renamed from: ˉٴ */
    public boolean f1481;

    /* renamed from: ˊʻ */
    public final ʽˑ f1482;

    /* renamed from: ˊˋ */
    public final ArrayList f1483;

    /* renamed from: ˊᵔ */
    public int f1484;

    /* renamed from: ˋˊ */
    public final int[] f1485;

    /* renamed from: ˋᵔ */
    public final ArrayList f1486;

    /* renamed from: ˎʾ */
    public int f1487;

    /* renamed from: ˎˉ */
    public final boolean f1488;

    /* renamed from: ˎᐧ */
    public final int f1489;

    /* renamed from: ˏᵢ */
    public boolean f1490;

    /* renamed from: ˑ */
    public int f1491;

    /* renamed from: ˑʼ */
    public AbstractC2722 f1492;

    /* renamed from: ˑˆ */
    public int f1493;

    /* renamed from: ˑٴ */
    public final ArrayList f1494;

    /* renamed from: י */
    public int f1495;

    /* renamed from: יˉ */
    public final ArrayList f1496;

    /* renamed from: יﹳ */
    public final int f1497;

    /* renamed from: ـˊ */
    public final C2676 f1498;

    /* renamed from: ـˏ */
    public boolean f1499;

    /* renamed from: ـᵎ */
    public VelocityTracker f1500;

    /* renamed from: ـᵢ */
    public boolean f1501;

    /* renamed from: ـﹶ */
    public AbstractC2724 f1502;

    /* renamed from: ٴʼ */
    public final Rect f1503;

    /* renamed from: ٴᴵ */
    public C2711 f1504;

    /* renamed from: ٴᵢ */
    public final C4790 f1505;

    /* renamed from: ٴﹳ */
    public int f1506;

    /* renamed from: ᐧˎ */
    public final RunnableC2705 f1507;

    /* renamed from: ᐧᴵ */
    public final AccessibilityManager f1508;

    /* renamed from: ᐧﹶ */
    public int f1509;

    /* renamed from: ᐧﾞ */
    public boolean f1510;

    /* renamed from: ᴵʼ */
    public boolean f1511;

    /* renamed from: ᴵˊ */
    public final C2719 f1512;

    /* renamed from: ᴵˑ */
    public int f1513;

    /* renamed from: ᴵᵔ */
    public final C0882 f1514;

    /* renamed from: ᵎʻ */
    public int f1515;

    /* renamed from: ᵎʿ */
    public final C2723 f1516;

    /* renamed from: ᵎˊ */
    public final Rect f1517;

    /* renamed from: ᵎᵔ */
    public int f1518;

    /* renamed from: ᵎⁱ */
    public final RunnableC2714 f1519;

    /* renamed from: ᵔי */
    public final RectF f1520;

    /* renamed from: ᵔٴ */
    public AbstractC2669 f1521;

    /* renamed from: ᵢˋ */
    public final C2830 f1522;

    /* renamed from: ⁱˉ */
    public boolean f1523;

    /* renamed from: ⁱי */
    public boolean f1524;

    /* renamed from: ⁱᴵ */
    public final int[] f1525;

    /* renamed from: ﹳـ */
    public boolean f1526;

    /* renamed from: ﹳᵢ */
    public final C2742 f1527;

    /* renamed from: ﹳⁱ */
    public ArrayList f1528;

    /* renamed from: ﹳﹳ */
    public EdgeEffect f1529;

    /* renamed from: ﹶ */
    public final C2742 f1530;

    /* renamed from: ﹶˎ */
    public C2839 f1531;

    /* renamed from: ﹶᐧ */
    public EdgeEffect f1532;

    /* renamed from: ﾞˋ */
    public final RunnableC2714 f1533;

    /* renamed from: ᵔⁱ */
    public static final int[] f1454 = {R.attr.nestedScrollingEnabled};

    /* renamed from: ٴʿ */
    public static final float f1453 = (float) (Math.log(0.78d) / Math.log(0.9d));

    /* renamed from: ﾞˏ */
    public static final boolean f1456 = true;

    /* renamed from: ˊˊ */
    public static final boolean f1448 = true;

    /* JADX WARN: Type inference failed for: r0v7, types: [ˋˋ.י, java.lang.Object] */
    static {
        Class cls = Integer.TYPE;
        f1449 = new Class[]{Context.class, AttributeSet.class, cls, cls};
        f1452 = new InterpolatorC2380(1);
        f1451 = new Object();
    }

    public RecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, ar.tvplayer.tv.R.attr.6pb);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r3v38, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v6, types: [ˋˋ.ᐧﹶ, java.lang.Object] */
    public RecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        float m6287;
        char c;
        int i2;
        boolean z;
        char c2;
        int i3;
        TypedArray typedArray;
        Constructor constructor;
        Object[] objArr;
        this.f1512 = new C2719(this);
        this.f1464 = new C2666(this);
        this.f1505 = new C4790(22);
        this.f1519 = new RunnableC2714(this, 0);
        this.f1503 = new Rect();
        this.f1517 = new Rect();
        this.f1520 = new RectF();
        this.f1494 = new ArrayList();
        this.f1486 = new ArrayList();
        this.f1483 = new ArrayList();
        this.f1513 = 0;
        this.f1490 = false;
        this.f1511 = false;
        this.f1460 = 0;
        this.f1484 = 0;
        this.f1502 = f1451;
        this.f1492 = new ـᵎ(1);
        this.f1506 = 0;
        this.f1515 = -1;
        this.f1467 = Float.MIN_VALUE;
        this.f1470 = Float.MIN_VALUE;
        this.f1523 = true;
        this.f1507 = new RunnableC2705(this);
        this.f1498 = f1448 ? new Object() : null;
        ?? obj = new Object();
        obj.f10380 = -1;
        obj.f10379 = 0;
        obj.f10369 = 0;
        obj.f10371 = 1;
        obj.f10374 = 0;
        obj.f10382 = false;
        obj.f10376 = false;
        obj.f10378 = false;
        obj.f10367 = false;
        obj.f10370 = false;
        obj.f10375 = false;
        this.f1516 = obj;
        this.f1524 = false;
        this.f1457 = false;
        C2742 c2742 = new C2742(this);
        this.f1530 = c2742;
        this.f1501 = false;
        this.f1525 = new int[2];
        this.f1465 = new int[2];
        this.f1485 = new int[2];
        this.f1463 = new int[2];
        this.f1496 = new ArrayList();
        this.f1533 = new RunnableC2714(this, 1);
        this.f1487 = 0;
        this.f1493 = 0;
        this.f1527 = new C2742(this);
        this.f1522 = new C2830(getContext(), new C2693(this));
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f1491 = viewConfiguration.getScaledTouchSlop();
        int i4 = Build.VERSION.SDK_INT;
        if (i4 >= 26) {
            Method method = AbstractC2828.f10612;
            m6287 = ﹳٴ.ˈ(viewConfiguration);
        } else {
            m6287 = AbstractC2828.m6287(viewConfiguration, context);
        }
        this.f1467 = m6287;
        this.f1470 = i4 >= 26 ? ﹳٴ.ˑﹳ(viewConfiguration) : AbstractC2828.m6287(viewConfiguration, context);
        this.f1489 = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f1497 = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f1469 = context.getResources().getDisplayMetrics().density * 160.0f * 386.0878f * 0.84f;
        setWillNotDraw(getOverScrollMode() == 2);
        this.f1492.f10365 = c2742;
        this.f1514 = new C0882(new C2693(this));
        this.f1482 = new ʽˑ(new C2742(this));
        WeakHashMap weakHashMap = AbstractC2823.f10603;
        if ((i4 >= 26 ? AbstractC2821.m6263(this) : 0) == 0 && i4 >= 26) {
            AbstractC2821.m6262(this, 8);
        }
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
        this.f1508 = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new C2711(this));
        int[] iArr = AbstractC1989.f7849;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, 0);
        AbstractC2823.m6282(this, context, iArr, attributeSet, obtainStyledAttributes, i);
        String string = obtainStyledAttributes.getString(8);
        if (obtainStyledAttributes.getInt(2, -1) == -1) {
            setDescendantFocusability(262144);
        }
        this.f1481 = obtainStyledAttributes.getBoolean(1, true);
        if (obtainStyledAttributes.getBoolean(3, false)) {
            StateListDrawable stateListDrawable = (StateListDrawable) obtainStyledAttributes.getDrawable(6);
            Drawable drawable = obtainStyledAttributes.getDrawable(7);
            StateListDrawable stateListDrawable2 = (StateListDrawable) obtainStyledAttributes.getDrawable(4);
            Drawable drawable2 = obtainStyledAttributes.getDrawable(5);
            if (stateListDrawable == null || drawable == null || stateListDrawable2 == null || drawable2 == null) {
                throw new IllegalArgumentException(AbstractC2305.m5376(this, new StringBuilder("Trying to set fast scroller without both required drawables.")));
            }
            Resources resources = getContext().getResources();
            c2 = 2;
            z = 1;
            typedArray = obtainStyledAttributes;
            i3 = i;
            c = 3;
            i2 = 4;
            new C2726(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(ar.tvplayer.tv.R.dimen.3de), resources.getDimensionPixelSize(ar.tvplayer.tv.R.dimen.308), resources.getDimensionPixelOffset(ar.tvplayer.tv.R.dimen.771));
        } else {
            c = 3;
            i2 = 4;
            z = 1;
            c2 = 2;
            i3 = i;
            typedArray = obtainStyledAttributes;
        }
        typedArray.recycle();
        this.f1488 = context.getPackageManager().hasSystemFeature("android.hardware.rotaryencoder.lowres");
        if (string != null) {
            String trim = string.trim();
            if (!trim.isEmpty()) {
                if (trim.charAt(0) == '.') {
                    trim = context.getPackageName() + trim;
                } else if (!trim.contains(".")) {
                    trim = RecyclerView.class.getPackage().getName() + '.' + trim;
                }
                String str = trim;
                try {
                    Class asSubclass = Class.forName(str, false, isInEditMode() ? getClass().getClassLoader() : context.getClassLoader()).asSubclass(AbstractC2669.class);
                    try {
                        constructor = asSubclass.getConstructor(f1449);
                        Object[] objArr2 = new Object[i2];
                        objArr2[0] = context;
                        objArr2[z] = attributeSet;
                        objArr2[c2] = Integer.valueOf(i3);
                        objArr2[c] = 0;
                        objArr = objArr2;
                    } catch (NoSuchMethodException e) {
                        try {
                            constructor = asSubclass.getConstructor(null);
                            objArr = null;
                        } catch (NoSuchMethodException e2) {
                            e2.initCause(e);
                            throw new IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + str, e2);
                        }
                    }
                    constructor.setAccessible(z);
                    setLayoutManager((AbstractC2669) constructor.newInstance(objArr));
                } catch (ClassCastException e3) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Class is not a LayoutManager " + str, e3);
                } catch (ClassNotFoundException e4) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Unable to find LayoutManager " + str, e4);
                } catch (IllegalAccessException e5) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Cannot access non-public constructor " + str, e5);
                } catch (InstantiationException e6) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + str, e6);
                } catch (InvocationTargetException e7) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + str, e7);
                }
            }
        }
        int[] iArr2 = f1454;
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr2, i3, 0);
        AbstractC2823.m6282(this, context, iArr2, attributeSet, obtainStyledAttributes2, i3);
        boolean z2 = obtainStyledAttributes2.getBoolean(0, true);
        obtainStyledAttributes2.recycle();
        setNestedScrollingEnabled(z2);
        setTag(ar.tvplayer.tv.R.id.1ne, Boolean.TRUE);
    }

    private C2839 getScrollingChildHelper() {
        if (this.f1531 == null) {
            this.f1531 = new C2839(this);
        }
        return this.f1531;
    }

    public static void setDebugAssertionsEnabled(boolean z) {
        f1450 = z;
    }

    public static void setVerboseLoggingEnabled(boolean z) {
        f1455 = z;
    }

    /* renamed from: ˉˆ */
    public static int m923(int i, EdgeEffect edgeEffect, EdgeEffect edgeEffect2, int i2) {
        if (i > 0 && edgeEffect != null && ʽʽ.ﾞʻ(edgeEffect) != 0.0f) {
            int round = Math.round(ʽʽ.ˏי(edgeEffect, ((-i) * 4.0f) / i2, 0.5f) * ((-i2) / 4.0f));
            if (round != i) {
                edgeEffect.finish();
            }
            return i - round;
        }
        if (i >= 0 || edgeEffect2 == null || ʽʽ.ﾞʻ(edgeEffect2) == 0.0f) {
            return i;
        }
        float f = i2;
        int round2 = Math.round(ʽʽ.ˏי(edgeEffect2, (i * 4.0f) / f, 0.5f) * (f / 4.0f));
        if (round2 != i) {
            edgeEffect2.finish();
        }
        return i - round2;
    }

    /* renamed from: ٴᵢ */
    public static RecyclerView m925(View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof RecyclerView) {
            return (RecyclerView) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            RecyclerView m925 = m925(viewGroup.getChildAt(i));
            if (m925 != null) {
                return m925;
            }
        }
        return null;
    }

    /* renamed from: ᵔٴ */
    public static AbstractC2673 m927(View view) {
        if (view == null) {
            return null;
        }
        return ((C2700) view.getLayoutParams()).f10283;
    }

    /* renamed from: ﾞʻ */
    public static void m929(AbstractC2673 abstractC2673) {
        WeakReference weakReference = abstractC2673.f10187;
        if (weakReference != null) {
            View view = (View) weakReference.get();
            while (view != null) {
                if (view == abstractC2673.f10176) {
                    return;
                }
                Object parent = view.getParent();
                view = parent instanceof View ? (View) parent : null;
            }
            abstractC2673.f10187 = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList arrayList, int i, int i2) {
        AbstractC2669 abstractC2669 = this.f1521;
        if (abstractC2669 == null || !abstractC2669.mo479(this, arrayList, i, i2)) {
            super.addFocusables(arrayList, i, i2);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof C2700) && this.f1521.mo524((C2700) layoutParams);
    }

    @Override // android.view.View
    public final int computeHorizontalScrollExtent() {
        AbstractC2669 abstractC2669 = this.f1521;
        if (abstractC2669 != null && abstractC2669.mo506()) {
            return this.f1521.mo907(this.f1516);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeHorizontalScrollOffset() {
        AbstractC2669 abstractC2669 = this.f1521;
        if (abstractC2669 != null && abstractC2669.mo506()) {
            return this.f1521.mo884(this.f1516);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeHorizontalScrollRange() {
        AbstractC2669 abstractC2669 = this.f1521;
        if (abstractC2669 != null && abstractC2669.mo506()) {
            return this.f1521.mo866(this.f1516);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeVerticalScrollExtent() {
        AbstractC2669 abstractC2669 = this.f1521;
        if (abstractC2669 != null && abstractC2669.mo538()) {
            return this.f1521.mo911(this.f1516);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeVerticalScrollOffset() {
        AbstractC2669 abstractC2669 = this.f1521;
        if (abstractC2669 != null && abstractC2669.mo538()) {
            return this.f1521.mo867(this.f1516);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeVerticalScrollRange() {
        AbstractC2669 abstractC2669 = this.f1521;
        if (abstractC2669 != null && abstractC2669.mo538()) {
            return this.f1521.mo859(this.f1516);
        }
        return 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (super.dispatchKeyEvent(keyEvent)) {
            return true;
        }
        AbstractC2669 layoutManager = getLayoutManager();
        int i = 0;
        if (layoutManager != null) {
            if (layoutManager.mo538()) {
                int keyCode = keyEvent.getKeyCode();
                if (keyCode == 92 || keyCode == 93) {
                    int measuredHeight = getMeasuredHeight();
                    if (keyCode == 93) {
                        m968(0, measuredHeight, false);
                        return true;
                    }
                    m968(0, -measuredHeight, false);
                    return true;
                }
                if (keyCode == 122 || keyCode == 123) {
                    boolean mo886 = layoutManager.mo886();
                    if (keyCode == 122) {
                        if (mo886) {
                            i = getAdapter().mo611();
                        }
                    } else if (!mo886) {
                        i = getAdapter().mo611();
                    }
                    mo656(i);
                    return true;
                }
            } else if (layoutManager.mo506()) {
                int keyCode2 = keyEvent.getKeyCode();
                if (keyCode2 == 92 || keyCode2 == 93) {
                    int measuredWidth = getMeasuredWidth();
                    if (keyCode2 == 93) {
                        m968(measuredWidth, 0, false);
                        return true;
                    }
                    m968(-measuredWidth, 0, false);
                    return true;
                }
                if (keyCode2 == 122 || keyCode2 == 123) {
                    boolean mo8862 = layoutManager.mo886();
                    if (keyCode2 == 122) {
                        if (mo8862) {
                            i = getAdapter().mo611();
                        }
                    } else if (!mo8862) {
                        i = getAdapter().mo611();
                    }
                    mo656(i);
                    return true;
                }
            }
        }
        return false;
    }

    @Override // android.view.View
    public final boolean dispatchNestedFling(float f, float f2, boolean z) {
        return getScrollingChildHelper().m6302(f, f2, z);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreFling(float f, float f2) {
        return getScrollingChildHelper().m6301(f, f2);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().m6296(i, i2, 0, iArr, iArr2);
    }

    @Override // android.view.View
    public final boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return getScrollingChildHelper().m6297(i, i2, i3, i4, iArr, 0, null);
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchSaveInstanceState(SparseArray sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        boolean z;
        super.draw(canvas);
        ArrayList arrayList = this.f1486;
        int size = arrayList.size();
        boolean z2 = false;
        for (int i = 0; i < size; i++) {
            ((AbstractC2704) arrayList.get(i)).mo3085(canvas, this);
        }
        EdgeEffect edgeEffect = this.f1476;
        if (edgeEffect == null || edgeEffect.isFinished()) {
            z = false;
        } else {
            int save = canvas.save();
            int paddingBottom = this.f1481 ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + paddingBottom, 0.0f);
            EdgeEffect edgeEffect2 = this.f1476;
            z = edgeEffect2 != null && edgeEffect2.draw(canvas);
            canvas.restoreToCount(save);
        }
        EdgeEffect edgeEffect3 = this.f1532;
        if (edgeEffect3 != null && !edgeEffect3.isFinished()) {
            int save2 = canvas.save();
            if (this.f1481) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            EdgeEffect edgeEffect4 = this.f1532;
            z |= edgeEffect4 != null && edgeEffect4.draw(canvas);
            canvas.restoreToCount(save2);
        }
        EdgeEffect edgeEffect5 = this.f1529;
        if (edgeEffect5 != null && !edgeEffect5.isFinished()) {
            int save3 = canvas.save();
            int width = getWidth();
            int paddingTop = this.f1481 ? getPaddingTop() : 0;
            canvas.rotate(90.0f);
            canvas.translate(paddingTop, -width);
            EdgeEffect edgeEffect6 = this.f1529;
            z |= edgeEffect6 != null && edgeEffect6.draw(canvas);
            canvas.restoreToCount(save3);
        }
        EdgeEffect edgeEffect7 = this.f1458;
        if (edgeEffect7 != null && !edgeEffect7.isFinished()) {
            int save4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.f1481) {
                canvas.translate(getPaddingRight() + (-getWidth()), getPaddingBottom() + (-getHeight()));
            } else {
                canvas.translate(-getWidth(), -getHeight());
            }
            EdgeEffect edgeEffect8 = this.f1458;
            if (edgeEffect8 != null && edgeEffect8.draw(canvas)) {
                z2 = true;
            }
            z |= z2;
            canvas.restoreToCount(save4);
        }
        if ((z || this.f1492 == null || arrayList.size() <= 0 || !this.f1492.m6105()) ? z : true) {
            postInvalidateOnAnimation();
        }
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j) {
        return super.drawChild(canvas, view, j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x0181, code lost:
    
        if (r5 > 0) goto L282;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x0184, code lost:
    
        if (r7 < 0) goto L282;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x0187, code lost:
    
        if (r5 < 0) goto L282;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x018f, code lost:
    
        if ((r5 * r6) <= 0) goto L264;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0197, code lost:
    
        if ((r5 * r6) >= 0) goto L264;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0168, code lost:
    
        if (r7 > 0) goto L282;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00d2 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x019b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00e1  */
    @Override // android.view.ViewGroup, android.view.ViewParent
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View focusSearch(android.view.View r17, int r18) {
        /*
            Method dump skipped, instructions count: 417
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.focusSearch(android.view.View, int):android.view.View");
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        AbstractC2669 abstractC2669 = this.f1521;
        if (abstractC2669 != null) {
            return abstractC2669.mo502();
        }
        throw new IllegalStateException(AbstractC2305.m5376(this, new StringBuilder("RecyclerView has no LayoutManager")));
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        AbstractC2669 abstractC2669 = this.f1521;
        if (abstractC2669 != null) {
            return abstractC2669.mo476(getContext(), attributeSet);
        }
        throw new IllegalStateException(AbstractC2305.m5376(this, new StringBuilder("RecyclerView has no LayoutManager")));
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        AbstractC2669 abstractC2669 = this.f1521;
        if (abstractC2669 != null) {
            return abstractC2669.mo468(layoutParams);
        }
        throw new IllegalStateException(AbstractC2305.m5376(this, new StringBuilder("RecyclerView has no LayoutManager")));
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "androidx.recyclerview.widget.RecyclerView";
    }

    public AbstractC2727 getAdapter() {
        return this.f1474;
    }

    @Override // android.view.View
    public int getBaseline() {
        AbstractC2669 abstractC2669 = this.f1521;
        if (abstractC2669 == null) {
            return super.getBaseline();
        }
        abstractC2669.getClass();
        return -1;
    }

    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i, int i2) {
        return super.getChildDrawingOrder(i, i2);
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.f1481;
    }

    public C2711 getCompatAccessibilityDelegate() {
        return this.f1504;
    }

    public AbstractC2724 getEdgeEffectFactory() {
        return this.f1502;
    }

    public AbstractC2722 getItemAnimator() {
        return this.f1492;
    }

    public int getItemDecorationCount() {
        return this.f1486.size();
    }

    public AbstractC2669 getLayoutManager() {
        return this.f1521;
    }

    public int getMaxFlingVelocity() {
        return this.f1497;
    }

    public int getMinFlingVelocity() {
        return this.f1489;
    }

    public long getNanoTime() {
        if (f1448) {
            return System.nanoTime();
        }
        return 0L;
    }

    public AbstractC2716 getOnFlingListener() {
        return this.f1462;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.f1523;
    }

    public C2745 getRecycledViewPool() {
        return this.f1464.m5949();
    }

    public int getScrollState() {
        return this.f1506;
    }

    @Override // android.view.View
    public final boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().m6303(0);
    }

    @Override // android.view.View
    public final boolean isAttachedToWindow() {
        return this.f1499;
    }

    @Override // android.view.ViewGroup
    public final boolean isLayoutSuppressed() {
        return this.f1471;
    }

    @Override // android.view.View
    public final boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().f10642;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0055, code lost:
    
        if (r1 >= 30.0f) goto L55;
     */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onAttachedToWindow() {
        /*
            r5 = this;
            super.onAttachedToWindow()
            r0 = 0
            r5.f1460 = r0
            r1 = 1
            r5.f1499 = r1
            boolean r2 = r5.f1479
            if (r2 == 0) goto L15
            boolean r2 = r5.isLayoutRequested()
            if (r2 != 0) goto L15
            r2 = r1
            goto L16
        L15:
            r2 = r0
        L16:
            r5.f1479 = r2
            ˋˋ.ʻˋ r2 = r5.f1464
            r2.m5953()
            ˋˋ.ʻᵎ r2 = r5.f1521
            if (r2 == 0) goto L26
            r2.f10151 = r1
            r2.mo2375(r5)
        L26:
            r5.f1501 = r0
            boolean r0 = androidx.recyclerview.widget.RecyclerView.f1448
            if (r0 == 0) goto L80
            java.lang.ThreadLocal r0 = p179.RunnableC2728.f10421
            java.lang.Object r1 = r0.get()
            ˋˋ.ᴵᵔ r1 = (p179.RunnableC2728) r1
            r5.f1459 = r1
            if (r1 != 0) goto L66
            ˋˋ.ᴵᵔ r1 = new ˋˋ.ᴵᵔ
            r1.<init>()
            r5.f1459 = r1
            java.util.WeakHashMap r1 = p186.AbstractC2823.f10603
            android.view.Display r1 = r5.getDisplay()
            boolean r2 = r5.isInEditMode()
            if (r2 != 0) goto L58
            if (r1 == 0) goto L58
            float r1 = r1.getRefreshRate()
            r2 = 1106247680(0x41f00000, float:30.0)
            int r2 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            if (r2 < 0) goto L58
            goto L5a
        L58:
            r1 = 1114636288(0x42700000, float:60.0)
        L5a:
            ˋˋ.ᴵᵔ r2 = r5.f1459
            r3 = 1315859240(0x4e6e6b28, float:1.0E9)
            float r3 = r3 / r1
            long r3 = (long) r3
            r2.f10422 = r3
            r0.set(r2)
        L66:
            ˋˋ.ᴵᵔ r0 = r5.f1459
            java.util.ArrayList r0 = r0.f10423
            boolean r1 = androidx.recyclerview.widget.RecyclerView.f1450
            if (r1 == 0) goto L7d
            boolean r1 = r0.contains(r5)
            if (r1 != 0) goto L75
            goto L7d
        L75:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "RecyclerView already present in worker list!"
            r0.<init>(r1)
            throw r0
        L7d:
            r0.add(r5)
        L80:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onAttachedToWindow():void");
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        RunnableC2728 runnableC2728;
        super.onDetachedFromWindow();
        AbstractC2722 abstractC2722 = this.f1492;
        if (abstractC2722 != null) {
            abstractC2722.m6108();
        }
        m940();
        int i = 0;
        this.f1499 = false;
        AbstractC2669 abstractC2669 = this.f1521;
        if (abstractC2669 != null) {
            abstractC2669.f10151 = false;
            abstractC2669.mo910(this);
        }
        this.f1496.clear();
        removeCallbacks(this.f1533);
        this.f1505.getClass();
        do {
        } while (C2685.f10227.mo3016() != null);
        C2666 c2666 = this.f1464;
        ArrayList arrayList = c2666.f10120;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            ᵎ.ﾞᴵ(((AbstractC2673) arrayList.get(i2)).f10176);
        }
        c2666.m5961(c2666.f10124.f1474, false);
        while (i < getChildCount()) {
            int i3 = i + 1;
            View childAt = getChildAt(i);
            if (childAt == null) {
                throw new IndexOutOfBoundsException();
            }
            C2197 c2197 = (C2197) childAt.getTag(ar.tvplayer.tv.R.id.9t);
            if (c2197 == null) {
                c2197 = new C2197();
                childAt.setTag(ar.tvplayer.tv.R.id.9t, c2197);
            }
            ArrayList arrayList2 = c2197.f8657;
            int m10048 = AbstractC5106.m10048(arrayList2);
            if (-1 < m10048) {
                throw AbstractC3740.m7931(m10048, arrayList2);
            }
            i = i3;
        }
        if (!f1448 || (runnableC2728 = this.f1459) == null) {
            return;
        }
        boolean remove = runnableC2728.f10423.remove(this);
        if (f1450 && !remove) {
            throw new IllegalStateException("RecyclerView removal failed!");
        }
        this.f1459 = null;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        ArrayList arrayList = this.f1486;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((AbstractC2704) arrayList.get(i)).mo2392(this);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0119, code lost:
    
        if (r9 != false) goto L141;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x011b, code lost:
    
        r17.f1522.m6288(r18, r8);
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onGenericMotionEvent(android.view.MotionEvent r18) {
        /*
            Method dump skipped, instructions count: 289
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onGenericMotionEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        if (!this.f1471) {
            this.f1461 = null;
            if (m976(motionEvent)) {
                VelocityTracker velocityTracker = this.f1500;
                if (velocityTracker != null) {
                    velocityTracker.clear();
                }
                m961(0);
                m959();
                setScrollState(0);
                return true;
            }
            AbstractC2669 abstractC2669 = this.f1521;
            if (abstractC2669 != null) {
                boolean mo506 = abstractC2669.mo506();
                boolean mo538 = this.f1521.mo538();
                if (this.f1500 == null) {
                    this.f1500 = VelocityTracker.obtain();
                }
                this.f1500.addMovement(motionEvent);
                int actionMasked = motionEvent.getActionMasked();
                int actionIndex = motionEvent.getActionIndex();
                if (actionMasked == 0) {
                    if (this.f1473) {
                        this.f1473 = false;
                    }
                    this.f1515 = motionEvent.getPointerId(0);
                    int x = (int) (motionEvent.getX() + 0.5f);
                    this.f1495 = x;
                    this.f1466 = x;
                    int y = (int) (motionEvent.getY() + 0.5f);
                    this.f1468 = y;
                    this.f1509 = y;
                    EdgeEffect edgeEffect = this.f1476;
                    if (edgeEffect == null || ʽʽ.ﾞʻ(edgeEffect) == 0.0f || canScrollHorizontally(-1)) {
                        z = false;
                    } else {
                        ʽʽ.ˏי(this.f1476, 0.0f, 1.0f - (motionEvent.getY() / getHeight()));
                        z = true;
                    }
                    EdgeEffect edgeEffect2 = this.f1529;
                    if (edgeEffect2 != null && ʽʽ.ﾞʻ(edgeEffect2) != 0.0f && !canScrollHorizontally(1)) {
                        ʽʽ.ˏי(this.f1529, 0.0f, motionEvent.getY() / getHeight());
                        z = true;
                    }
                    EdgeEffect edgeEffect3 = this.f1532;
                    if (edgeEffect3 != null && ʽʽ.ﾞʻ(edgeEffect3) != 0.0f && !canScrollVertically(-1)) {
                        ʽʽ.ˏי(this.f1532, 0.0f, motionEvent.getX() / getWidth());
                        z = true;
                    }
                    EdgeEffect edgeEffect4 = this.f1458;
                    if (edgeEffect4 != null && ʽʽ.ﾞʻ(edgeEffect4) != 0.0f && !canScrollVertically(1)) {
                        ʽʽ.ˏי(this.f1458, 0.0f, 1.0f - (motionEvent.getX() / getWidth()));
                        z = true;
                    }
                    if (z || this.f1506 == 2) {
                        getParent().requestDisallowInterceptTouchEvent(true);
                        setScrollState(1);
                        m961(1);
                    }
                    int[] iArr = this.f1485;
                    iArr[1] = 0;
                    iArr[0] = 0;
                    m938(0);
                } else if (actionMasked == 1) {
                    this.f1500.clear();
                    m961(0);
                } else if (actionMasked == 2) {
                    int findPointerIndex = motionEvent.findPointerIndex(this.f1515);
                    if (findPointerIndex < 0) {
                        String str = "Error processing scroll; pointer index for id " + this.f1515 + " not found. Did any MotionEvents get skipped?";
                        return false;
                    }
                    int x2 = (int) (motionEvent.getX(findPointerIndex) + 0.5f);
                    int y2 = (int) (motionEvent.getY(findPointerIndex) + 0.5f);
                    if (this.f1506 != 1) {
                        int i = x2 - this.f1466;
                        int i2 = y2 - this.f1509;
                        if (!mo506 || Math.abs(i) <= this.f1491) {
                            z2 = false;
                        } else {
                            this.f1495 = x2;
                            z2 = true;
                        }
                        if (mo538 && Math.abs(i2) > this.f1491) {
                            this.f1468 = y2;
                            z2 = true;
                        }
                        if (z2) {
                            setScrollState(1);
                        }
                    }
                } else if (actionMasked == 3) {
                    VelocityTracker velocityTracker2 = this.f1500;
                    if (velocityTracker2 != null) {
                        velocityTracker2.clear();
                    }
                    m961(0);
                    m959();
                    setScrollState(0);
                } else if (actionMasked == 5) {
                    this.f1515 = motionEvent.getPointerId(actionIndex);
                    int x3 = (int) (motionEvent.getX(actionIndex) + 0.5f);
                    this.f1495 = x3;
                    this.f1466 = x3;
                    int y3 = (int) (motionEvent.getY(actionIndex) + 0.5f);
                    this.f1468 = y3;
                    this.f1509 = y3;
                } else if (actionMasked == 6) {
                    m952(motionEvent);
                }
                if (this.f1506 == 1) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        Trace.beginSection("RV OnLayout");
        m986();
        Trace.endSection();
        this.f1479 = true;
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        AbstractC2669 abstractC2669 = this.f1521;
        if (abstractC2669 == null) {
            m983(i, i2);
            return;
        }
        boolean mo894 = abstractC2669.mo894();
        C2666 c2666 = this.f1464;
        boolean z = false;
        C2723 c2723 = this.f1516;
        if (mo894) {
            int mode = View.MeasureSpec.getMode(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            this.f1521.mo513(c2666, c2723, i, i2);
            if (mode == 1073741824 && mode2 == 1073741824) {
                z = true;
            }
            this.f1477 = z;
            if (z || this.f1474 == null) {
                return;
            }
            if (c2723.f10371 == 1) {
                m962();
            }
            this.f1521.m5983(i, i2);
            c2723.f10367 = true;
            m958();
            this.f1521.m5993(i, i2);
            if (this.f1521.mo896()) {
                this.f1521.m5983(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
                c2723.f10367 = true;
                m958();
                this.f1521.m5993(i, i2);
            }
            this.f1487 = getMeasuredWidth();
            this.f1493 = getMeasuredHeight();
            return;
        }
        if (this.f1526) {
            this.f1521.mo513(c2666, c2723, i, i2);
            return;
        }
        if (this.f1510) {
            m965();
            m950();
            m978();
            m975(true);
            if (c2723.f10375) {
                c2723.f10376 = true;
            } else {
                this.f1514.m3126();
                c2723.f10376 = false;
            }
            this.f1510 = false;
            m971(false);
        } else if (c2723.f10375) {
            setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
            return;
        }
        AbstractC2727 abstractC2727 = this.f1474;
        if (abstractC2727 != null) {
            c2723.f10374 = abstractC2727.mo611();
        } else {
            c2723.f10374 = 0;
        }
        m965();
        this.f1521.mo513(c2666, c2723, i, i2);
        m971(false);
        c2723.f10376 = false;
    }

    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i, Rect rect) {
        if (m955()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i, rect);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C2729)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C2729 c2729 = (C2729) parcelable;
        this.f1478 = c2729;
        super.onRestoreInstanceState(c2729.f15355);
        requestLayout();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [android.os.Parcelable, ᴵˑ.ⁱˊ, ˋˋ.ᵎʻ] */
    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        ?? abstractC3985 = new AbstractC3985(super.onSaveInstanceState());
        C2729 c2729 = this.f1478;
        if (c2729 != null) {
            abstractC3985.f10426 = c2729.f10426;
            return abstractC3985;
        }
        AbstractC2669 abstractC2669 = this.f1521;
        if (abstractC2669 != null) {
            abstractC3985.f10426 = abstractC2669.mo508();
            return abstractC3985;
        }
        abstractC3985.f10426 = null;
        return abstractC3985;
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i == i3 && i2 == i4) {
            return;
        }
        this.f1458 = null;
        this.f1532 = null;
        this.f1529 = null;
        this.f1476 = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x020c  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0222  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r19) {
        /*
            Method dump skipped, instructions count: 797
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup
    public final void removeDetachedView(View view, boolean z) {
        AbstractC2673 m927 = m927(view);
        if (m927 != null) {
            if (m927.m6020()) {
                m927.f10185 &= -257;
            } else if (!m927.m6016()) {
                StringBuilder sb = new StringBuilder("Called removeDetachedView with a view which is not flagged as tmp detached.");
                sb.append(m927);
                throw new IllegalArgumentException(AbstractC2305.m5376(this, sb));
            }
        } else if (f1450) {
            StringBuilder sb2 = new StringBuilder("No ViewHolder found for child: ");
            sb2.append(view);
            throw new IllegalArgumentException(AbstractC2305.m5376(this, sb2));
        }
        view.clearAnimation();
        AbstractC2673 m9272 = m927(view);
        AbstractC2727 abstractC2727 = this.f1474;
        if (abstractC2727 != null && m9272 != null) {
            abstractC2727.m6117(m9272);
        }
        super.removeDetachedView(view, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!this.f1521.mo475(this, view, view2) && view2 != null) {
            m956(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        return this.f1521.mo518(this, view, rect, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z) {
        ArrayList arrayList = this.f1483;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((C2726) arrayList.get(i)).getClass();
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        if (this.f1513 != 0 || this.f1471) {
            this.f1480 = true;
        } else {
            super.requestLayout();
        }
    }

    @Override // android.view.View
    public final void scrollBy(int i, int i2) {
        AbstractC2669 abstractC2669 = this.f1521;
        if (abstractC2669 == null || this.f1471) {
            return;
        }
        boolean mo506 = abstractC2669.mo506();
        boolean mo538 = this.f1521.mo538();
        if (mo506 || mo538) {
            if (!mo506) {
                i = 0;
            }
            if (!mo538) {
                i2 = 0;
            }
            m966(i, i2, null, 0);
        }
    }

    @Override // android.view.View
    public final void scrollTo(int i, int i2) {
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public final void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (!m955()) {
            super.sendAccessibilityEventUnchecked(accessibilityEvent);
        } else {
            int contentChangeTypes = accessibilityEvent != null ? accessibilityEvent.getContentChangeTypes() : 0;
            this.f1518 |= contentChangeTypes != 0 ? contentChangeTypes : 0;
        }
    }

    public void setAccessibilityDelegateCompat(C2711 c2711) {
        this.f1504 = c2711;
        AbstractC2823.m6273(this, c2711);
    }

    public void setAdapter(AbstractC2727 abstractC2727) {
        setLayoutFrozen(false);
        AbstractC2727 abstractC27272 = this.f1474;
        C2719 c2719 = this.f1512;
        if (abstractC27272 != null) {
            abstractC27272.f10419.unregisterObserver(c2719);
            this.f1474.getClass();
        }
        AbstractC2722 abstractC2722 = this.f1492;
        if (abstractC2722 != null) {
            abstractC2722.m6108();
        }
        AbstractC2669 abstractC2669 = this.f1521;
        C2666 c2666 = this.f1464;
        if (abstractC2669 != null) {
            abstractC2669.mo499(c2666);
            this.f1521.m5980(c2666);
        }
        c2666.f10126.clear();
        c2666.m5955();
        C0882 c0882 = this.f1514;
        c0882.m3127((ArrayList) c0882.f3740);
        c0882.m3127((ArrayList) c0882.f3741);
        c0882.f3744 = 0;
        AbstractC2727 abstractC27273 = this.f1474;
        this.f1474 = abstractC2727;
        if (abstractC2727 != null) {
            abstractC2727.f10419.registerObserver(c2719);
        }
        AbstractC2669 abstractC26692 = this.f1521;
        if (abstractC26692 != null) {
            abstractC26692.mo490(abstractC27273);
        }
        AbstractC2727 abstractC27274 = this.f1474;
        c2666.f10126.clear();
        c2666.m5955();
        c2666.m5961(abstractC27273, true);
        C2745 m5949 = c2666.m5949();
        if (abstractC27273 != null) {
            m5949.f10472--;
        }
        if (m5949.f10472 == 0) {
            SparseArray sparseArray = m5949.f10473;
            for (int i = 0; i < sparseArray.size(); i++) {
                C2746 c2746 = (C2746) sparseArray.valueAt(i);
                ArrayList arrayList = c2746.f10477;
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    ᵎ.ﾞᴵ(((AbstractC2673) obj).f10176);
                }
                c2746.f10477.clear();
            }
        }
        if (abstractC27274 != null) {
            m5949.f10472++;
        }
        c2666.m5953();
        this.f1516.f10382 = true;
        m972(false);
        requestLayout();
    }

    public void setChildDrawingOrderCallback(InterfaceC2731 interfaceC2731) {
        if (interfaceC2731 == null) {
            return;
        }
        setChildrenDrawingOrderEnabled(false);
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z) {
        if (z != this.f1481) {
            this.f1458 = null;
            this.f1532 = null;
            this.f1529 = null;
            this.f1476 = null;
        }
        this.f1481 = z;
        super.setClipToPadding(z);
        if (this.f1479) {
            requestLayout();
        }
    }

    public void setEdgeEffectFactory(AbstractC2724 abstractC2724) {
        abstractC2724.getClass();
        this.f1502 = abstractC2724;
        this.f1458 = null;
        this.f1532 = null;
        this.f1529 = null;
        this.f1476 = null;
    }

    public void setHasFixedSize(boolean z) {
        this.f1526 = z;
    }

    public void setItemAnimator(AbstractC2722 abstractC2722) {
        AbstractC2722 abstractC27222 = this.f1492;
        if (abstractC27222 != null) {
            abstractC27222.m6108();
            this.f1492.f10365 = null;
        }
        this.f1492 = abstractC2722;
        if (abstractC2722 != null) {
            abstractC2722.f10365 = this.f1530;
        }
    }

    public void setItemViewCacheSize(int i) {
        C2666 c2666 = this.f1464;
        c2666.f10122 = i;
        c2666.m5956();
    }

    @Deprecated
    public void setLayoutFrozen(boolean z) {
        suppressLayout(z);
    }

    public void setLayoutManager(AbstractC2669 abstractC2669) {
        if (abstractC2669 == this.f1521) {
            return;
        }
        m940();
        AbstractC2669 abstractC26692 = this.f1521;
        C2666 c2666 = this.f1464;
        if (abstractC26692 != null) {
            AbstractC2722 abstractC2722 = this.f1492;
            if (abstractC2722 != null) {
                abstractC2722.m6108();
            }
            this.f1521.mo499(c2666);
            this.f1521.m5980(c2666);
            c2666.f10126.clear();
            c2666.m5955();
            if (this.f1499) {
                AbstractC2669 abstractC26693 = this.f1521;
                abstractC26693.f10151 = false;
                abstractC26693.mo910(this);
            }
            this.f1521.m5996(null);
            this.f1521 = null;
        } else {
            c2666.f10126.clear();
            c2666.m5955();
        }
        ʽˑ r0 = this.f1482;
        RecyclerView recyclerView = ((C2742) r0.ʽʽ).f10463;
        ((C1681) r0.ˈٴ).m4597();
        ArrayList arrayList = (ArrayList) r0.ᴵᵔ;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            AbstractC2673 m927 = m927((View) arrayList.get(size));
            if (m927 != null) {
                int i = m927.f10184;
                if (recyclerView.m955()) {
                    m927.f10183 = i;
                    recyclerView.f1496.add(m927);
                } else {
                    m927.f10176.setImportantForAccessibility(i);
                }
                m927.f10184 = 0;
            }
            arrayList.remove(size);
        }
        int childCount = recyclerView.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = recyclerView.getChildAt(i2);
            AbstractC2673 m9272 = m927(childAt);
            AbstractC2727 abstractC2727 = recyclerView.f1474;
            if (abstractC2727 != null && m9272 != null) {
                abstractC2727.m6117(m9272);
            }
            childAt.clearAnimation();
        }
        recyclerView.removeAllViews();
        this.f1521 = abstractC2669;
        if (abstractC2669 != null) {
            if (abstractC2669.f10154 != null) {
                StringBuilder sb = new StringBuilder("LayoutManager ");
                sb.append(abstractC2669);
                sb.append(" is already attached to a RecyclerView:");
                throw new IllegalArgumentException(AbstractC2305.m5376(abstractC2669.f10154, sb));
            }
            abstractC2669.m5996(this);
            if (this.f1499) {
                AbstractC2669 abstractC26694 = this.f1521;
                abstractC26694.f10151 = true;
                abstractC26694.mo2375(this);
            }
        }
        c2666.m5956();
        requestLayout();
    }

    @Override // android.view.ViewGroup
    @Deprecated
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        if (layoutTransition != null) {
            throw new IllegalArgumentException("Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView");
        }
        super.setLayoutTransition(null);
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        C2839 scrollingChildHelper = getScrollingChildHelper();
        if (scrollingChildHelper.f10642) {
            ViewGroup viewGroup = scrollingChildHelper.f10641;
            WeakHashMap weakHashMap = AbstractC2823.f10603;
            AbstractC2776.m6175(viewGroup);
        }
        scrollingChildHelper.f10642 = z;
    }

    public void setOnFlingListener(AbstractC2716 abstractC2716) {
        this.f1462 = abstractC2716;
    }

    @Deprecated
    public void setOnScrollListener(AbstractC2691 abstractC2691) {
        this.f1472 = abstractC2691;
    }

    public void setPreserveFocusAfterLayout(boolean z) {
        this.f1523 = z;
    }

    public void setRecycledViewPool(C2745 c2745) {
        C2666 c2666 = this.f1464;
        RecyclerView recyclerView = c2666.f10124;
        c2666.m5961(recyclerView.f1474, false);
        if (c2666.f10123 != null) {
            r2.f10472--;
        }
        c2666.f10123 = c2745;
        if (c2745 != null && recyclerView.getAdapter() != null) {
            c2666.f10123.f10472++;
        }
        c2666.m5953();
    }

    @Deprecated
    public void setRecyclerListener(InterfaceC2706 interfaceC2706) {
        this.f1475 = interfaceC2706;
    }

    public void setScrollState(int i) {
        C2688 c2688;
        if (i == this.f1506) {
            return;
        }
        if (f1455) {
            StringBuilder m16 = AbstractC0001.m16(i, "setting scroll state to ", " from ");
            m16.append(this.f1506);
            m16.toString();
            new Exception();
        }
        this.f1506 = i;
        if (i != 2) {
            RunnableC2705 runnableC2705 = this.f1507;
            runnableC2705.f10296.removeCallbacks(runnableC2705);
            runnableC2705.f10292.abortAnimation();
            AbstractC2669 abstractC2669 = this.f1521;
            if (abstractC2669 != null && (c2688 = abstractC2669.f10149) != null) {
                c2688.m6037();
            }
        }
        AbstractC2669 abstractC26692 = this.f1521;
        if (abstractC26692 != null) {
            abstractC26692.mo991(i);
        }
        AbstractC2691 abstractC2691 = this.f1472;
        if (abstractC2691 != null) {
            abstractC2691.mo6027(i);
        }
        ArrayList arrayList = this.f1528;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((AbstractC2691) this.f1528.get(size)).mo6027(i);
            }
        }
    }

    public void setScrollingTouchSlop(int i) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        if (i != 0) {
            if (i == 1) {
                this.f1491 = viewConfiguration.getScaledPagingTouchSlop();
                return;
            }
            String str = "setScrollingTouchSlop(): bad argument constant " + i + "; using default value";
        }
        this.f1491 = viewConfiguration.getScaledTouchSlop();
    }

    public void setViewCacheExtension(AbstractC2680 abstractC2680) {
        this.f1464.getClass();
    }

    @Override // android.view.View
    public final boolean startNestedScroll(int i) {
        return getScrollingChildHelper().m6299(i, 0);
    }

    @Override // android.view.View
    public final void stopNestedScroll() {
        getScrollingChildHelper().m6300(0);
    }

    @Override // android.view.ViewGroup
    public final void suppressLayout(boolean z) {
        if (z != this.f1471) {
            m969("Do not suppressLayout in layout or scroll");
            if (z) {
                long uptimeMillis = SystemClock.uptimeMillis();
                onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0));
                this.f1471 = true;
                this.f1473 = true;
                m940();
                return;
            }
            this.f1471 = false;
            if (this.f1480 && this.f1521 != null && this.f1474 != null) {
                requestLayout();
            }
            this.f1480 = false;
        }
    }

    /* renamed from: ʻˋ */
    public void mo652(int i, int i2) {
        mo655(i, i2);
    }

    /* renamed from: ʻٴ */
    public final void m931(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        getScrollingChildHelper().m6297(i, i2, i3, i4, iArr, i5, iArr2);
    }

    /* renamed from: ʻᵎ */
    public final int m932(int i, float f) {
        float width = f / getWidth();
        float height = i / getHeight();
        EdgeEffect edgeEffect = this.f1532;
        float f2 = 0.0f;
        if (edgeEffect == null || ʽʽ.ﾞʻ(edgeEffect) == 0.0f) {
            EdgeEffect edgeEffect2 = this.f1458;
            if (edgeEffect2 != null && ʽʽ.ﾞʻ(edgeEffect2) != 0.0f) {
                if (canScrollVertically(1)) {
                    this.f1458.onRelease();
                } else {
                    float f3 = ʽʽ.ˏי(this.f1458, height, 1.0f - width);
                    if (ʽʽ.ﾞʻ(this.f1458) == 0.0f) {
                        this.f1458.onRelease();
                    }
                    f2 = f3;
                }
                invalidate();
            }
        } else {
            if (canScrollVertically(-1)) {
                this.f1532.onRelease();
            } else {
                float f4 = -ʽʽ.ˏי(this.f1532, -height, width);
                if (ʽʽ.ﾞʻ(this.f1532) == 0.0f) {
                    this.f1532.onRelease();
                }
                f2 = f4;
            }
            invalidate();
        }
        return Math.round(f2 * getHeight());
    }

    /* renamed from: ʼʼ */
    public final void m933() {
        if (this.f1476 != null) {
            return;
        }
        ((C2709) this.f1502).getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.f1476 = edgeEffect;
        if (this.f1481) {
            edgeEffect.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffect.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    /* renamed from: ʼˈ */
    public final void m934(int i) {
        if (this.f1521 == null) {
            return;
        }
        setScrollState(2);
        this.f1521.mo531(i);
        awakenScrollBars();
    }

    /* renamed from: ʼˎ */
    public final void m935(AbstractC2704 abstractC2704) {
        AbstractC2669 abstractC2669 = this.f1521;
        if (abstractC2669 != null) {
            abstractC2669.mo887("Cannot add item decoration during a scroll  or layout");
        }
        ArrayList arrayList = this.f1486;
        if (arrayList.isEmpty()) {
            setWillNotDraw(false);
        }
        arrayList.add(abstractC2704);
        m964();
        requestLayout();
    }

    /* renamed from: ʼᐧ */
    public final void m936() {
        if (!this.f1479 || this.f1490) {
            Trace.beginSection("RV FullInvalidate");
            m986();
            Trace.endSection();
            return;
        }
        if (this.f1514.m3138()) {
            C0882 c0882 = this.f1514;
            int i = c0882.f3744;
            if ((i & 4) == 0 || (i & 11) != 0) {
                if (c0882.m3138()) {
                    Trace.beginSection("RV FullInvalidate");
                    m986();
                    Trace.endSection();
                    return;
                }
                return;
            }
            Trace.beginSection("RV PartialInvalidate");
            m965();
            m950();
            this.f1514.m3137();
            if (!this.f1480) {
                int i2 = this.f1482.ˉٴ();
                int i3 = 0;
                while (true) {
                    if (i3 < i2) {
                        AbstractC2673 m927 = m927(this.f1482.ٴᵢ(i3));
                        if (m927 != null && !m927.m6016() && m927.m6009()) {
                            m986();
                            break;
                        }
                        i3++;
                    } else {
                        this.f1514.m3122();
                        break;
                    }
                }
            }
            m971(true);
            m975(true);
            Trace.endSection();
        }
    }

    /* renamed from: ʽʽ */
    public final void m937(C2723 c2723) {
        if (getScrollState() != 2) {
            c2723.f10373 = 0;
            c2723.f10368 = 0;
        } else {
            OverScroller overScroller = this.f1507.f10292;
            c2723.f10373 = overScroller.getFinalX() - overScroller.getCurrX();
            c2723.f10368 = overScroller.getFinalY() - overScroller.getCurrY();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ʽᵔ */
    public final void m938(int i) {
        boolean mo506 = this.f1521.mo506();
        int i2 = mo506;
        if (this.f1521.mo538()) {
            i2 = (mo506 ? 1 : 0) | 2;
        }
        getScrollingChildHelper().m6299(i2, i);
    }

    /* renamed from: ʽﹳ */
    public final boolean m939(int i, int i2, int i3, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().m6296(i, i2, i3, iArr, iArr2);
    }

    /* renamed from: ʾˊ */
    public final void m940() {
        C2688 c2688;
        setScrollState(0);
        RunnableC2705 runnableC2705 = this.f1507;
        runnableC2705.f10296.removeCallbacks(runnableC2705);
        runnableC2705.f10292.abortAnimation();
        AbstractC2669 abstractC2669 = this.f1521;
        if (abstractC2669 == null || (c2688 = abstractC2669.f10149) == null) {
            return;
        }
        c2688.m6037();
    }

    /* renamed from: ʾˋ */
    public final void m941() {
        if (this.f1532 != null) {
            return;
        }
        ((C2709) this.f1502).getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.f1532 = edgeEffect;
        if (this.f1481) {
            edgeEffect.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffect.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    /* renamed from: ʾᵎ */
    public final void m942() {
        if (this.f1458 != null) {
            return;
        }
        ((C2709) this.f1502).getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.f1458 = edgeEffect;
        if (this.f1481) {
            edgeEffect.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffect.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    /* renamed from: ʿ */
    public void m943(int i, int i2) {
    }

    /* renamed from: ʿᵢ */
    public final void m944() {
        if (this.f1501 || !this.f1499) {
            return;
        }
        WeakHashMap weakHashMap = AbstractC2823.f10603;
        postOnAnimation(this.f1533);
        this.f1501 = true;
    }

    /* renamed from: ˆʾ */
    public final void m945(AbstractC2691 abstractC2691) {
        if (this.f1528 == null) {
            this.f1528 = new ArrayList();
        }
        this.f1528.add(abstractC2691);
    }

    /* renamed from: ˆﾞ */
    public AbstractC2673 m946(View view) {
        ViewParent parent = view.getParent();
        if (parent == null || parent == this) {
            return m927(view);
        }
        throw new IllegalArgumentException("View " + view + " is not a direct child of " + this);
    }

    /* renamed from: ˈʿ */
    public final Rect m947(View view) {
        C2700 c2700 = (C2700) view.getLayoutParams();
        boolean z = c2700.f10280;
        Rect rect = c2700.f10282;
        if (!z || (this.f1516.f10376 && (c2700.f10283.m6009() || c2700.f10283.m6015()))) {
            return rect;
        }
        rect.set(0, 0, 0, 0);
        ArrayList arrayList = this.f1486;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            Rect rect2 = this.f1503;
            rect2.set(0, 0, 0, 0);
            ((AbstractC2704) arrayList.get(i)).mo3087(rect2, view, this);
            rect.left += rect2.left;
            rect.top += rect2.top;
            rect.right += rect2.right;
            rect.bottom += rect2.bottom;
        }
        c2700.f10280 = false;
        return rect;
    }

    /* renamed from: ˈˏ */
    public final void m948(int[] iArr, int i, int i2) {
        AbstractC2673 abstractC2673;
        m965();
        m950();
        Trace.beginSection("RV Scroll");
        C2723 c2723 = this.f1516;
        m937(c2723);
        C2666 c2666 = this.f1464;
        int mo481 = i != 0 ? this.f1521.mo481(i, c2666, c2723) : 0;
        int mo530 = i2 != 0 ? this.f1521.mo530(i2, c2666, c2723) : 0;
        Trace.endSection();
        int i3 = this.f1482.ˉٴ();
        for (int i4 = 0; i4 < i3; i4++) {
            View view = this.f1482.ٴᵢ(i4);
            AbstractC2673 m946 = m946(view);
            if (m946 != null && (abstractC2673 = m946.f10190) != null) {
                View view2 = abstractC2673.f10176;
                int left = view.getLeft();
                int top = view.getTop();
                if (left != view2.getLeft() || top != view2.getTop()) {
                    view2.layout(left, top, view2.getWidth() + left, view2.getHeight() + top);
                }
            }
        }
        m975(true);
        m971(false);
        if (iArr != null) {
            iArr[0] = mo481;
            iArr[1] = mo530;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0016, code lost:
    
        return r3;
     */
    /* renamed from: ˈٴ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View m949(android.view.View r3) {
        /*
            r2 = this;
            android.view.ViewParent r0 = r3.getParent()
        L4:
            if (r0 == 0) goto L14
            if (r0 == r2) goto L14
            boolean r1 = r0 instanceof android.view.View
            if (r1 == 0) goto L14
            r3 = r0
            android.view.View r3 = (android.view.View) r3
            android.view.ViewParent r0 = r3.getParent()
            goto L4
        L14:
            if (r0 != r2) goto L17
            return r3
        L17:
            r3 = 0
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.m949(android.view.View):android.view.View");
    }

    /* renamed from: ˈⁱ */
    public final void m950() {
        this.f1460++;
    }

    /* renamed from: ˉʿ */
    public final void m951() {
        int i = this.f1482.ᵎˊ();
        for (int i2 = 0; i2 < i; i2++) {
            AbstractC2673 m927 = m927(this.f1482.ٴʼ(i2));
            if (!m927.m6016()) {
                m927.f10179 = -1;
                m927.f10186 = -1;
            }
        }
        C2666 c2666 = this.f1464;
        ArrayList arrayList = c2666.f10126;
        ArrayList arrayList2 = c2666.f10120;
        int size = arrayList2.size();
        for (int i3 = 0; i3 < size; i3++) {
            AbstractC2673 abstractC2673 = (AbstractC2673) arrayList2.get(i3);
            abstractC2673.f10179 = -1;
            abstractC2673.f10186 = -1;
        }
        int size2 = arrayList.size();
        for (int i4 = 0; i4 < size2; i4++) {
            AbstractC2673 abstractC26732 = (AbstractC2673) arrayList.get(i4);
            abstractC26732.f10179 = -1;
            abstractC26732.f10186 = -1;
        }
        ArrayList arrayList3 = c2666.f10125;
        if (arrayList3 != null) {
            int size3 = arrayList3.size();
            for (int i5 = 0; i5 < size3; i5++) {
                AbstractC2673 abstractC26733 = (AbstractC2673) c2666.f10125.get(i5);
                abstractC26733.f10179 = -1;
                abstractC26733.f10186 = -1;
            }
        }
    }

    /* renamed from: ˉـ */
    public final void m952(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f1515) {
            int i = actionIndex == 0 ? 1 : 0;
            this.f1515 = motionEvent.getPointerId(i);
            int x = (int) (motionEvent.getX(i) + 0.5f);
            this.f1495 = x;
            this.f1466 = x;
            int y = (int) (motionEvent.getY(i) + 0.5f);
            this.f1468 = y;
            this.f1509 = y;
        }
    }

    /* renamed from: ˉٴ */
    public final AbstractC2673 m953(int i) {
        AbstractC2673 abstractC2673 = null;
        if (this.f1490) {
            return null;
        }
        int i2 = this.f1482.ᵎˊ();
        for (int i3 = 0; i3 < i2; i3++) {
            AbstractC2673 m927 = m927(this.f1482.ٴʼ(i3));
            if (m927 != null && !m927.m6007() && m977(m927) == i) {
                if (!((ArrayList) this.f1482.ᴵᵔ).contains(m927.f10176)) {
                    return m927;
                }
                abstractC2673 = m927;
            }
        }
        return abstractC2673;
    }

    /* renamed from: ˊʻ */
    public final void m954(int[] iArr) {
        int i = this.f1482.ˉٴ();
        if (i == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i2 = Integer.MAX_VALUE;
        int i3 = Integer.MIN_VALUE;
        for (int i4 = 0; i4 < i; i4++) {
            AbstractC2673 m927 = m927(this.f1482.ٴᵢ(i4));
            if (!m927.m6016()) {
                int m6008 = m927.m6008();
                if (m6008 < i2) {
                    i2 = m6008;
                }
                if (m6008 > i3) {
                    i3 = m6008;
                }
            }
        }
        iArr[0] = i2;
        iArr[1] = i3;
    }

    /* renamed from: ˊˋ */
    public final boolean m955() {
        return this.f1460 > 0;
    }

    /* renamed from: ˊᵔ */
    public final void m956(View view, View view2) {
        View view3 = view2 != null ? view2 : view;
        int width = view3.getWidth();
        int height = view3.getHeight();
        Rect rect = this.f1503;
        rect.set(0, 0, width, height);
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof C2700) {
            C2700 c2700 = (C2700) layoutParams;
            if (!c2700.f10280) {
                Rect rect2 = c2700.f10282;
                rect.left -= rect2.left;
                rect.right += rect2.right;
                rect.top -= rect2.top;
                rect.bottom += rect2.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, rect);
            offsetRectIntoDescendantCoords(view, rect);
        }
        this.f1521.mo2374(this, view, this.f1503, !this.f1479, view2 == null);
    }

    /* renamed from: ˋᵔ */
    public boolean m957() {
        return isChildrenDrawingOrderEnabled();
    }

    /* renamed from: ˏי */
    public final void m958() {
        m965();
        m950();
        C2723 c2723 = this.f1516;
        c2723.m6110(6);
        this.f1514.m3126();
        c2723.f10374 = this.f1474.mo611();
        c2723.f10369 = 0;
        if (this.f1478 != null) {
            AbstractC2727 abstractC2727 = this.f1474;
            int m3018 = AbstractC0844.m3018(abstractC2727.f10417);
            if (m3018 == 1 ? abstractC2727.mo611() > 0 : m3018 != 2) {
                Parcelable parcelable = this.f1478.f10426;
                if (parcelable != null) {
                    this.f1521.mo520(parcelable);
                }
                this.f1478 = null;
            }
        }
        c2723.f10376 = false;
        this.f1521.mo517(this.f1464, c2723);
        c2723.f10382 = false;
        c2723.f10370 = c2723.f10370 && this.f1492 != null;
        c2723.f10371 = 4;
        m975(true);
        m971(false);
    }

    /* renamed from: ˏᵢ */
    public final void m959() {
        boolean z;
        EdgeEffect edgeEffect = this.f1476;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            z = this.f1476.isFinished();
        } else {
            z = false;
        }
        EdgeEffect edgeEffect2 = this.f1532;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            z |= this.f1532.isFinished();
        }
        EdgeEffect edgeEffect3 = this.f1529;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            z |= this.f1529.isFinished();
        }
        EdgeEffect edgeEffect4 = this.f1458;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            z |= this.f1458.isFinished();
        }
        if (z) {
            postInvalidateOnAnimation();
        }
    }

    /* renamed from: ˑʼ */
    public void mo655(int i, int i2) {
        m968(i, i2, false);
    }

    /* renamed from: ˑٴ */
    public final boolean m960() {
        return !this.f1479 || this.f1490 || this.f1514.m3138();
    }

    /* renamed from: י */
    public final void m961(int i) {
        getScrollingChildHelper().m6300(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v5, types: [java.lang.Object, ʻʿ.ˉˆ] */
    /* JADX WARN: Type inference failed for: r9v11, types: [java.lang.Object, ʻʿ.ˉˆ] */
    /* renamed from: יـ */
    public final void m962() {
        C2685 c2685;
        View m949;
        C2723 c2723 = this.f1516;
        c2723.m6110(1);
        m937(c2723);
        c2723.f10367 = false;
        m965();
        C4790 c4790 = this.f1505;
        C3368 c3368 = (C3368) c4790.f18036;
        C3368 c33682 = (C3368) c4790.f18036;
        c3368.clear();
        C3352 c3352 = (C3352) c4790.f18034;
        c3352.m7175();
        m950();
        m978();
        AbstractC2673 abstractC2673 = null;
        View focusedChild = (this.f1523 && hasFocus() && this.f1474 != null) ? getFocusedChild() : null;
        if (focusedChild != null && (m949 = m949(focusedChild)) != null) {
            abstractC2673 = m946(m949);
        }
        if (abstractC2673 == null) {
            c2723.f10372 = -1L;
            c2723.f10381 = -1;
            c2723.f10377 = -1;
        } else {
            c2723.f10372 = this.f1474.f10418 ? abstractC2673.f10188 : -1L;
            c2723.f10381 = this.f1490 ? -1 : abstractC2673.m6007() ? abstractC2673.f10179 : abstractC2673.m6017();
            View view = abstractC2673.f10176;
            int id = view.getId();
            while (!view.isFocused() && (view instanceof ViewGroup) && view.hasFocus()) {
                view = ((ViewGroup) view).getFocusedChild();
                if (view.getId() != -1) {
                    id = view.getId();
                }
            }
            c2723.f10377 = id;
        }
        c2723.f10378 = c2723.f10370 && this.f1457;
        this.f1457 = false;
        this.f1524 = false;
        c2723.f10376 = c2723.f10375;
        c2723.f10374 = this.f1474.mo611();
        m954(this.f1525);
        if (c2723.f10370) {
            int i = this.f1482.ˉٴ();
            for (int i2 = 0; i2 < i; i2++) {
                AbstractC2673 m927 = m927(this.f1482.ٴᵢ(i2));
                if (!m927.m6016() && (!m927.m6015() || this.f1474.f10418)) {
                    AbstractC2722 abstractC2722 = this.f1492;
                    AbstractC2722.m6101(m927);
                    m927.m6011();
                    abstractC2722.getClass();
                    ?? obj = new Object();
                    obj.m2876(m927);
                    C2685 c26852 = (C2685) c33682.get(m927);
                    if (c26852 == null) {
                        c26852 = C2685.m6033();
                        c33682.put(m927, c26852);
                    }
                    c26852.f10229 = obj;
                    c26852.f10230 |= 4;
                    if (c2723.f10378 && m927.m6009() && !m927.m6007() && !m927.m6016() && !m927.m6015()) {
                        c3352.m7169(m981(m927), m927);
                    }
                }
            }
        }
        if (c2723.f10375) {
            int i3 = this.f1482.ᵎˊ();
            for (int i4 = 0; i4 < i3; i4++) {
                AbstractC2673 m9272 = m927(this.f1482.ٴʼ(i4));
                if (f1450 && m9272.f10175 == -1 && !m9272.m6007()) {
                    throw new IllegalStateException(AbstractC2305.m5376(this, new StringBuilder("view holder cannot have position -1 unless it is removed")));
                }
                if (!m9272.m6016() && m9272.f10179 == -1) {
                    m9272.f10179 = m9272.f10175;
                }
            }
            boolean z = c2723.f10382;
            c2723.f10382 = false;
            this.f1521.mo517(this.f1464, c2723);
            c2723.f10382 = z;
            for (int i5 = 0; i5 < this.f1482.ˉٴ(); i5++) {
                AbstractC2673 m9273 = m927(this.f1482.ٴᵢ(i5));
                if (!m9273.m6016() && ((c2685 = (C2685) c33682.get(m9273)) == null || (c2685.f10230 & 4) == 0)) {
                    AbstractC2722.m6101(m9273);
                    boolean z2 = (m9273.f10185 & 8192) != 0;
                    AbstractC2722 abstractC27222 = this.f1492;
                    m9273.m6011();
                    abstractC27222.getClass();
                    ?? obj2 = new Object();
                    obj2.m2876(m9273);
                    if (z2) {
                        m970(m9273, obj2);
                    } else {
                        C2685 c26853 = (C2685) c33682.get(m9273);
                        if (c26853 == null) {
                            c26853 = C2685.m6033();
                            c33682.put(m9273, c26853);
                        }
                        c26853.f10230 |= 2;
                        c26853.f10229 = obj2;
                    }
                }
            }
            m951();
        } else {
            m951();
        }
        m975(true);
        m971(false);
        c2723.f10371 = 2;
    }

    /* renamed from: ـˆ */
    public final void m963(int i, int i2) {
        this.f1484++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX - i, scrollY - i2);
        m943(i, i2);
        AbstractC2691 abstractC2691 = this.f1472;
        if (abstractC2691 != null) {
            abstractC2691.mo2403(this, i, i2);
        }
        ArrayList arrayList = this.f1528;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((AbstractC2691) this.f1528.get(size)).mo2403(this, i, i2);
            }
        }
        this.f1484--;
    }

    /* renamed from: ـˏ */
    public final void m964() {
        int i = this.f1482.ᵎˊ();
        for (int i2 = 0; i2 < i; i2++) {
            ((C2700) this.f1482.ٴʼ(i2).getLayoutParams()).f10280 = true;
        }
        ArrayList arrayList = this.f1464.f10120;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            C2700 c2700 = (C2700) ((AbstractC2673) arrayList.get(i3)).f10176.getLayoutParams();
            if (c2700 != null) {
                c2700.f10280 = true;
            }
        }
    }

    /* renamed from: ـᵎ */
    public final void m965() {
        int i = this.f1513 + 1;
        this.f1513 = i;
        if (i != 1 || this.f1471) {
            return;
        }
        this.f1480 = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00e3  */
    /* renamed from: ـﹶ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m966(int r19, int r20, android.view.MotionEvent r21, int r22) {
        /*
            Method dump skipped, instructions count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.m966(int, int, android.view.MotionEvent, int):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:131:0x020f, code lost:
    
        if (r1 < r14) goto L279;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00ce A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00e9 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0216  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0224  */
    /* JADX WARN: Removed duplicated region for block: B:82:? A[RETURN, SYNTHETIC] */
    /* renamed from: ٴʼ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m967(int r21, int r22, int r23, int r24) {
        /*
            Method dump skipped, instructions count: 575
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.m967(int, int, int, int):boolean");
    }

    /* renamed from: ٴﹳ */
    public final void m968(int i, int i2, boolean z) {
        AbstractC2669 abstractC2669 = this.f1521;
        if (abstractC2669 == null || this.f1471) {
            return;
        }
        if (!abstractC2669.mo506()) {
            i = 0;
        }
        if (!this.f1521.mo538()) {
            i2 = 0;
        }
        if (i == 0 && i2 == 0) {
            return;
        }
        if (z) {
            int i3 = i != 0 ? 1 : 0;
            if (i2 != 0) {
                i3 |= 2;
            }
            getScrollingChildHelper().m6299(i3, 1);
        }
        this.f1507.m6075(i, i2, Integer.MIN_VALUE, null);
    }

    /* renamed from: ٴﹶ */
    public final void m969(String str) {
        if (m955()) {
            if (str != null) {
                throw new IllegalStateException(str);
            }
            throw new IllegalStateException(AbstractC2305.m5376(this, new StringBuilder("Cannot call this method while RecyclerView is computing a layout or scrolling")));
        }
        if (this.f1484 > 0) {
            new IllegalStateException(AbstractC2305.m5376(this, new StringBuilder("")));
        }
    }

    /* renamed from: ᐧᴵ */
    public final void m970(AbstractC2673 abstractC2673, C0781 c0781) {
        abstractC2673.f10185 &= -8193;
        boolean z = this.f1516.f10378;
        C4790 c4790 = this.f1505;
        if (z && abstractC2673.m6009() && !abstractC2673.m6007() && !abstractC2673.m6016()) {
            ((C3352) c4790.f18034).m7169(m981(abstractC2673), abstractC2673);
        }
        C3368 c3368 = (C3368) c4790.f18036;
        C2685 c2685 = (C2685) c3368.get(abstractC2673);
        if (c2685 == null) {
            c2685 = C2685.m6033();
            c3368.put(abstractC2673, c2685);
        }
        c2685.f10229 = c0781;
        c2685.f10230 |= 4;
    }

    /* renamed from: ᐧﹶ */
    public final void m971(boolean z) {
        if (this.f1513 < 1) {
            if (f1450) {
                throw new IllegalStateException(AbstractC2305.m5376(this, new StringBuilder("stopInterceptRequestLayout was called more times than startInterceptRequestLayout.")));
            }
            this.f1513 = 1;
        }
        if (!z && !this.f1471) {
            this.f1480 = false;
        }
        if (this.f1513 == 1) {
            if (z && this.f1480 && !this.f1471 && this.f1521 != null && this.f1474 != null) {
                m986();
            }
            if (!this.f1471) {
                this.f1480 = false;
            }
        }
        this.f1513--;
    }

    /* renamed from: ᐧﾞ */
    public final void m972(boolean z) {
        this.f1511 = z | this.f1511;
        this.f1490 = true;
        int i = this.f1482.ᵎˊ();
        for (int i2 = 0; i2 < i; i2++) {
            AbstractC2673 m927 = m927(this.f1482.ٴʼ(i2));
            if (m927 != null && !m927.m6016()) {
                m927.m6018(6);
            }
        }
        m964();
        C2666 c2666 = this.f1464;
        ArrayList arrayList = c2666.f10120;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            AbstractC2673 abstractC2673 = (AbstractC2673) arrayList.get(i3);
            if (abstractC2673 != null) {
                abstractC2673.m6018(6);
                abstractC2673.m6018(1024);
            }
        }
        AbstractC2727 abstractC2727 = c2666.f10124.f1474;
        if (abstractC2727 == null || !abstractC2727.f10418) {
            c2666.m5955();
        }
    }

    /* renamed from: ᴵʼ */
    public final int m973(int i, float f) {
        float height = f / getHeight();
        float width = i / getWidth();
        EdgeEffect edgeEffect = this.f1476;
        float f2 = 0.0f;
        if (edgeEffect == null || ʽʽ.ﾞʻ(edgeEffect) == 0.0f) {
            EdgeEffect edgeEffect2 = this.f1529;
            if (edgeEffect2 != null && ʽʽ.ﾞʻ(edgeEffect2) != 0.0f) {
                if (canScrollHorizontally(1)) {
                    this.f1529.onRelease();
                } else {
                    float f3 = ʽʽ.ˏי(this.f1529, width, height);
                    if (ʽʽ.ﾞʻ(this.f1529) == 0.0f) {
                        this.f1529.onRelease();
                    }
                    f2 = f3;
                }
                invalidate();
            }
        } else {
            if (canScrollHorizontally(-1)) {
                this.f1476.onRelease();
            } else {
                float f4 = -ʽʽ.ˏי(this.f1476, -width, 1.0f - height);
                if (ʽʽ.ﾞʻ(this.f1476) == 0.0f) {
                    this.f1476.onRelease();
                }
                f2 = f4;
            }
            invalidate();
        }
        return Math.round(f2 * getWidth());
    }

    /* renamed from: ᴵˊ */
    public final String m974() {
        return " " + super.toString() + ", adapter:" + this.f1474 + ", layout:" + this.f1521 + ", context:" + getContext();
    }

    /* renamed from: ᴵˑ */
    public final void m975(boolean z) {
        int i;
        AccessibilityManager accessibilityManager;
        int i2 = this.f1460 - 1;
        this.f1460 = i2;
        if (i2 < 1) {
            if (f1450 && i2 < 0) {
                throw new IllegalStateException(AbstractC2305.m5376(this, new StringBuilder("layout or scroll counter cannot go below zero.Some calls are not matching")));
            }
            this.f1460 = 0;
            if (z) {
                int i3 = this.f1518;
                this.f1518 = 0;
                if (i3 != 0 && (accessibilityManager = this.f1508) != null && accessibilityManager.isEnabled()) {
                    AccessibilityEvent obtain = AccessibilityEvent.obtain();
                    obtain.setEventType(2048);
                    obtain.setContentChangeTypes(i3);
                    sendAccessibilityEventUnchecked(obtain);
                }
                ArrayList arrayList = this.f1496;
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    AbstractC2673 abstractC2673 = (AbstractC2673) arrayList.get(size);
                    if (abstractC2673.f10176.getParent() == this && !abstractC2673.m6016() && (i = abstractC2673.f10183) != -1) {
                        abstractC2673.f10176.setImportantForAccessibility(i);
                        abstractC2673.f10183 = -1;
                    }
                }
                arrayList.clear();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x005e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0061 A[SYNTHETIC] */
    /* renamed from: ᴵᵔ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m976(android.view.MotionEvent r12) {
        /*
            r11 = this;
            int r0 = r12.getAction()
            java.util.ArrayList r1 = r11.f1483
            int r2 = r1.size()
            r3 = 0
            r4 = r3
        Lc:
            if (r4 >= r2) goto L64
            java.lang.Object r5 = r1.get(r4)
            ˋˋ.ᴵˊ r5 = (p179.C2726) r5
            int r6 = r5.f10389
            r7 = 1
            r8 = 2
            if (r6 != r7) goto L59
            float r6 = r12.getX()
            float r9 = r12.getY()
            boolean r6 = r5.m6113(r6, r9)
            float r9 = r12.getX()
            float r10 = r12.getY()
            boolean r9 = r5.m6112(r9, r10)
            int r10 = r12.getAction()
            if (r10 != 0) goto L61
            if (r6 != 0) goto L3c
            if (r9 == 0) goto L61
        L3c:
            if (r9 == 0) goto L49
            r5.f10404 = r7
            float r6 = r12.getX()
            int r6 = (int) r6
            float r6 = (float) r6
            r5.f10392 = r6
            goto L55
        L49:
            if (r6 == 0) goto L55
            r5.f10404 = r8
            float r6 = r12.getY()
            int r6 = (int) r6
            float r6 = (float) r6
            r5.f10399 = r6
        L55:
            r5.m6114(r8)
            goto L5b
        L59:
            if (r6 != r8) goto L61
        L5b:
            r6 = 3
            if (r0 == r6) goto L61
            r11.f1461 = r5
            return r7
        L61:
            int r4 = r4 + 1
            goto Lc
        L64:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.m976(android.view.MotionEvent):boolean");
    }

    /* renamed from: ᵎʻ */
    public void mo656(int i) {
        AbstractC2669 abstractC2669;
        if (!this.f1471 && (abstractC2669 = this.f1521) != null) {
            abstractC2669.mo510(this, i);
        }
    }

    /* renamed from: ᵎˊ */
    public final int m977(AbstractC2673 abstractC2673) {
        if ((abstractC2673.f10185 & 524) == 0 && abstractC2673.m6013()) {
            int i = abstractC2673.f10175;
            ArrayList arrayList = (ArrayList) this.f1514.f3740;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                C2743 c2743 = (C2743) arrayList.get(i2);
                int i3 = c2743.f10467;
                if (i3 != 1) {
                    if (i3 == 2) {
                        int i4 = c2743.f10466;
                        if (i4 <= i) {
                            int i5 = c2743.f10465;
                            if (i4 + i5 <= i) {
                                i -= i5;
                            }
                        } else {
                            continue;
                        }
                    } else if (i3 == 8) {
                        int i6 = c2743.f10466;
                        if (i6 == i) {
                            i = c2743.f10465;
                        } else {
                            if (i6 < i) {
                                i--;
                            }
                            if (c2743.f10465 <= i) {
                                i++;
                            }
                        }
                    }
                } else if (c2743.f10466 <= i) {
                    i += c2743.f10465;
                }
            }
            return i;
        }
        return -1;
    }

    /* renamed from: ᵎᵔ */
    public final void m978() {
        boolean z;
        boolean z2 = false;
        if (this.f1490) {
            C0882 c0882 = this.f1514;
            c0882.m3127((ArrayList) c0882.f3740);
            c0882.m3127((ArrayList) c0882.f3741);
            c0882.f3744 = 0;
            if (this.f1511) {
                this.f1521.mo488();
            }
        }
        if (this.f1492 == null || !this.f1521.mo865()) {
            this.f1514.m3126();
        } else {
            this.f1514.m3137();
        }
        boolean z3 = this.f1524 || this.f1457;
        boolean z4 = this.f1479 && this.f1492 != null && ((z = this.f1490) || z3 || this.f1521.f10157) && (!z || this.f1474.f10418);
        C2723 c2723 = this.f1516;
        c2723.f10370 = z4;
        if (z4 && z3 && !this.f1490 && this.f1492 != null && this.f1521.mo865()) {
            z2 = true;
        }
        c2723.f10375 = z2;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003a A[SYNTHETIC] */
    /* renamed from: ᵎⁱ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p179.AbstractC2673 m979(int r6, boolean r7) {
        /*
            r5 = this;
            com.parse.ʽˑ r0 = r5.f1482
            int r0 = r0.ᵎˊ()
            r1 = 0
            r2 = 0
        L8:
            if (r2 >= r0) goto L3e
            com.parse.ʽˑ r3 = r5.f1482
            android.view.View r3 = r3.ٴʼ(r2)
            ˋˋ.ʼـ r3 = m927(r3)
            if (r3 == 0) goto L3b
            boolean r4 = r3.m6007()
            if (r4 != 0) goto L3b
            if (r7 == 0) goto L23
            int r4 = r3.f10175
            if (r4 == r6) goto L2a
            goto L3b
        L23:
            int r4 = r3.m6008()
            if (r4 == r6) goto L2a
            goto L3b
        L2a:
            android.view.View r1 = r3.f10176
            com.parse.ʽˑ r4 = r5.f1482
            java.lang.Object r4 = r4.ᴵᵔ
            java.util.ArrayList r4 = (java.util.ArrayList) r4
            boolean r1 = r4.contains(r1)
            if (r1 == 0) goto L3a
            r1 = r3
            goto L3b
        L3a:
            return r3
        L3b:
            int r2 = r2 + 1
            goto L8
        L3e:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.m979(int, boolean):ˋˋ.ʼـ");
    }

    /* renamed from: ᵔʾ */
    public final void m980(int i, int i2) {
        boolean z;
        EdgeEffect edgeEffect = this.f1476;
        if (edgeEffect == null || edgeEffect.isFinished() || i <= 0) {
            z = false;
        } else {
            this.f1476.onRelease();
            z = this.f1476.isFinished();
        }
        EdgeEffect edgeEffect2 = this.f1529;
        if (edgeEffect2 != null && !edgeEffect2.isFinished() && i < 0) {
            this.f1529.onRelease();
            z |= this.f1529.isFinished();
        }
        EdgeEffect edgeEffect3 = this.f1532;
        if (edgeEffect3 != null && !edgeEffect3.isFinished() && i2 > 0) {
            this.f1532.onRelease();
            z |= this.f1532.isFinished();
        }
        EdgeEffect edgeEffect4 = this.f1458;
        if (edgeEffect4 != null && !edgeEffect4.isFinished() && i2 < 0) {
            this.f1458.onRelease();
            z |= this.f1458.isFinished();
        }
        if (z) {
            postInvalidateOnAnimation();
        }
    }

    /* renamed from: ᵔי */
    public final long m981(AbstractC2673 abstractC2673) {
        return this.f1474.f10418 ? abstractC2673.f10188 : abstractC2673.f10175;
    }

    /* renamed from: ᵔᵢ */
    public final void m982(AbstractC2673 abstractC2673) {
        View view = abstractC2673.f10176;
        boolean z = view.getParent() == this;
        this.f1464.m5952(m946(view));
        if (abstractC2673.m6020()) {
            this.f1482.ﾞᴵ(view, -1, view.getLayoutParams(), true);
            return;
        }
        if (!z) {
            this.f1482.ˈ(-1, view, true);
            return;
        }
        ʽˑ r6 = this.f1482;
        int indexOfChild = ((C2742) r6.ʽʽ).f10463.indexOfChild(view);
        if (indexOfChild >= 0) {
            ((C1681) r6.ˈٴ).m4581(indexOfChild);
            r6.ᵔי(view);
        } else {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
    }

    /* renamed from: ᵔﹳ */
    public final void m983(int i, int i2) {
        int paddingRight = getPaddingRight() + getPaddingLeft();
        WeakHashMap weakHashMap = AbstractC2823.f10603;
        setMeasuredDimension(AbstractC2669.m5968(i, paddingRight, getMinimumWidth()), AbstractC2669.m5968(i2, getPaddingBottom() + getPaddingTop(), getMinimumHeight()));
    }

    /* renamed from: ᵢˏ */
    public final void m984() {
        if (this.f1529 != null) {
            return;
        }
        ((C2709) this.f1502).getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.f1529 = edgeEffect;
        if (this.f1481) {
            edgeEffect.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffect.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    /* renamed from: ﹳـ */
    public final void m985(int i, int i2, boolean z) {
        int i3 = i + i2;
        int i4 = this.f1482.ᵎˊ();
        for (int i5 = 0; i5 < i4; i5++) {
            AbstractC2673 m927 = m927(this.f1482.ٴʼ(i5));
            if (m927 != null && !m927.m6016()) {
                int i6 = m927.f10175;
                C2723 c2723 = this.f1516;
                if (i6 >= i3) {
                    if (f1455) {
                        String str = "offsetPositionRecordsForRemove attached child " + i5 + " holder " + m927 + " now at position " + (m927.f10175 - i2);
                    }
                    m927.m6014(-i2, z);
                    c2723.f10382 = true;
                } else if (i6 >= i) {
                    if (f1455) {
                        String str2 = "offsetPositionRecordsForRemove attached child " + i5 + " holder " + m927 + " now REMOVED";
                    }
                    m927.m6018(8);
                    m927.m6014(-i2, z);
                    m927.f10175 = i - 1;
                    c2723.f10382 = true;
                }
            }
        }
        C2666 c2666 = this.f1464;
        ArrayList arrayList = c2666.f10120;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            AbstractC2673 abstractC2673 = (AbstractC2673) arrayList.get(size);
            if (abstractC2673 != null) {
                int i7 = abstractC2673.f10175;
                if (i7 >= i3) {
                    if (f1455) {
                        String str3 = "offsetPositionRecordsForRemove cached " + size + " holder " + abstractC2673 + " now at position " + (abstractC2673.f10175 - i2);
                    }
                    abstractC2673.m6014(-i2, z);
                } else if (i7 >= i) {
                    abstractC2673.m6018(8);
                    c2666.m5957(size);
                }
            }
        }
        requestLayout();
    }

    /* JADX WARN: Code restructure failed: missing block: B:168:0x0380, code lost:
    
        if (((java.util.ArrayList) r19.f1482.ᴵᵔ).contains(getFocusedChild()) == false) goto L498;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:196:0x042c  */
    /* JADX WARN: Type inference failed for: r12v14, types: [java.lang.Object, ʻʿ.ˉˆ] */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v19 */
    /* JADX WARN: Type inference failed for: r3v20, types: [int] */
    /* JADX WARN: Type inference failed for: r3v23 */
    /* JADX WARN: Type inference failed for: r3v26 */
    /* JADX WARN: Type inference failed for: r3v27 */
    /* JADX WARN: Type inference failed for: r3v28 */
    /* JADX WARN: Type inference failed for: r3v29 */
    /* JADX WARN: Type inference failed for: r9v0, types: [ﹳʽ.ˊʻ] */
    /* renamed from: ﹳᐧ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m986() {
        /*
            Method dump skipped, instructions count: 1098
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.m986():void");
    }

    /* renamed from: ﹳﹳ */
    public final boolean m987(EdgeEffect edgeEffect, int i, int i2) {
        if (i > 0) {
            return true;
        }
        float f = ʽʽ.ﾞʻ(edgeEffect) * i2;
        float abs = Math.abs(-i) * 0.35f;
        float f2 = this.f1469 * 0.015f;
        double log = Math.log(abs / f2);
        double d = f1453;
        return ((float) (Math.exp((d / (d - 1.0d)) * log) * ((double) f2))) < f;
    }

    /* renamed from: ﹶᐧ */
    public void mo657(int i) {
        if (this.f1471) {
            return;
        }
        m940();
        AbstractC2669 abstractC2669 = this.f1521;
        if (abstractC2669 == null) {
            return;
        }
        abstractC2669.mo531(i);
        awakenScrollBars();
    }
}
