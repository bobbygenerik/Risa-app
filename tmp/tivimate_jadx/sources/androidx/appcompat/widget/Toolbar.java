package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.leanback.widget.RunnableC0142;
import androidx.leanback.widget.ViewOnClickListenerC0083;
import androidx.leanback.widget.ˉˆ;
import ar.tvplayer.tv.R;
import com.google.android.gms.internal.measurement.ᵎ;
import com.parse.ٴʼ;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import p136.C2226;
import p137.AbstractC2257;
import p137.AbstractC2327;
import p137.C2251;
import p137.C2276;
import p137.C2286;
import p137.C2304;
import p137.C2308;
import p137.C2312;
import p137.C2347;
import p137.C2348;
import p137.InterfaceC2272;
import p137.InterfaceC2341;
import p137.RunnableC2343;
import p137.ViewOnClickListenerC2296;
import p186.AbstractC2823;
import p229.C3090;
import p323.AbstractC3985;
import p350.AbstractC4295;
import p353.C4329;
import p353.MenuC4312;
import ˉˆ.ʿ;
import ˑי.ʽ;
import ᴵˋ.ˊʻ;

/* loaded from: classes.dex */
public class Toolbar extends ViewGroup {

    /* renamed from: ʻˋ, reason: contains not printable characters */
    public C2304 f204;

    /* renamed from: ʻᵎ, reason: contains not printable characters */
    public final int[] f205;

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public int f206;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public C2312 f207;

    /* renamed from: ʽᵔ, reason: contains not printable characters */
    public final RunnableC0142 f208;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public ActionMenuView f209;

    /* renamed from: ʿ, reason: contains not printable characters */
    public CharSequence f210;

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public ColorStateList f211;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public int f212;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final int f213;

    /* renamed from: ˈˏ, reason: contains not printable characters */
    public final ʿ f214;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public C2251 f215;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public int f216;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public CharSequence f217;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public C2251 f218;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final Drawable f219;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public int f220;

    /* renamed from: ˊᵔ, reason: contains not printable characters */
    public final ʽ f221;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public int f222;

    /* renamed from: ˏᵢ, reason: contains not printable characters */
    public final ArrayList f223;

    /* renamed from: ˑʼ, reason: contains not printable characters */
    public boolean f224;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public int f225;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public C2347 f226;

    /* renamed from: ـᵎ, reason: contains not printable characters */
    public boolean f227;

    /* renamed from: ـﹶ, reason: contains not printable characters */
    public ArrayList f228;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public Context f229;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final CharSequence f230;

    /* renamed from: ٴﹳ, reason: contains not printable characters */
    public OnBackInvokedCallback f231;

    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public boolean f232;

    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    public boolean f233;

    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public final ArrayList f234;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public C2312 f235;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public final int f236;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public AppCompatImageView f237;

    /* renamed from: ᵎʻ, reason: contains not printable characters */
    public OnBackInvokedDispatcher f238;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public int f239;

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public ColorStateList f240;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public View f241;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public int f242;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public final int f243;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public int f244;

    /* renamed from: ﹳﹳ, reason: contains not printable characters */
    public C2308 f245;

    /* renamed from: ﹶᐧ, reason: contains not printable characters */
    public C2286 f246;

    public Toolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public Toolbar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, R.attr.5rb);
        this.f236 = 8388627;
        this.f223 = new ArrayList();
        this.f234 = new ArrayList();
        this.f205 = new int[2];
        this.f221 = new ʽ(new RunnableC2343(this, 1));
        this.f228 = new ArrayList();
        this.f214 = new ʿ(1, this);
        this.f208 = new RunnableC0142(18, this);
        Context context2 = getContext();
        int[] iArr = AbstractC4295.f15905;
        ٴʼ r8 = ٴʼ.ʿᵢ(R.attr.5rb, 0, context2, attributeSet, iArr);
        AbstractC2823.m6282(this, context, iArr, attributeSet, (TypedArray) r8.ᴵˊ, R.attr.5rb);
        TypedArray typedArray = (TypedArray) r8.ᴵˊ;
        this.f242 = typedArray.getResourceId(28, 0);
        this.f212 = typedArray.getResourceId(19, 0);
        this.f236 = typedArray.getInteger(0, 8388627);
        this.f243 = typedArray.getInteger(2, 48);
        int dimensionPixelOffset = typedArray.getDimensionPixelOffset(22, 0);
        dimensionPixelOffset = typedArray.hasValue(27) ? typedArray.getDimensionPixelOffset(27, dimensionPixelOffset) : dimensionPixelOffset;
        this.f206 = dimensionPixelOffset;
        this.f220 = dimensionPixelOffset;
        this.f222 = dimensionPixelOffset;
        this.f225 = dimensionPixelOffset;
        int dimensionPixelOffset2 = typedArray.getDimensionPixelOffset(25, -1);
        if (dimensionPixelOffset2 >= 0) {
            this.f225 = dimensionPixelOffset2;
        }
        int dimensionPixelOffset3 = typedArray.getDimensionPixelOffset(24, -1);
        if (dimensionPixelOffset3 >= 0) {
            this.f222 = dimensionPixelOffset3;
        }
        int dimensionPixelOffset4 = typedArray.getDimensionPixelOffset(26, -1);
        if (dimensionPixelOffset4 >= 0) {
            this.f220 = dimensionPixelOffset4;
        }
        int dimensionPixelOffset5 = typedArray.getDimensionPixelOffset(23, -1);
        if (dimensionPixelOffset5 >= 0) {
            this.f206 = dimensionPixelOffset5;
        }
        this.f213 = typedArray.getDimensionPixelSize(13, -1);
        int dimensionPixelOffset6 = typedArray.getDimensionPixelOffset(9, Integer.MIN_VALUE);
        int dimensionPixelOffset7 = typedArray.getDimensionPixelOffset(5, Integer.MIN_VALUE);
        int dimensionPixelSize = typedArray.getDimensionPixelSize(7, 0);
        int dimensionPixelSize2 = typedArray.getDimensionPixelSize(8, 0);
        m70();
        C2347 c2347 = this.f226;
        c2347.f9093 = false;
        if (dimensionPixelSize != Integer.MIN_VALUE) {
            c2347.f9091 = dimensionPixelSize;
            c2347.f9095 = dimensionPixelSize;
        }
        if (dimensionPixelSize2 != Integer.MIN_VALUE) {
            c2347.f9096 = dimensionPixelSize2;
            c2347.f9094 = dimensionPixelSize2;
        }
        if (dimensionPixelOffset6 != Integer.MIN_VALUE || dimensionPixelOffset7 != Integer.MIN_VALUE) {
            c2347.m5435(dimensionPixelOffset6, dimensionPixelOffset7);
        }
        this.f244 = typedArray.getDimensionPixelOffset(10, Integer.MIN_VALUE);
        this.f216 = typedArray.getDimensionPixelOffset(6, Integer.MIN_VALUE);
        this.f219 = r8.ˑٴ(4);
        this.f230 = typedArray.getText(3);
        CharSequence text = typedArray.getText(21);
        if (!TextUtils.isEmpty(text)) {
            setTitle(text);
        }
        CharSequence text2 = typedArray.getText(18);
        if (!TextUtils.isEmpty(text2)) {
            setSubtitle(text2);
        }
        this.f229 = getContext();
        setPopupTheme(typedArray.getResourceId(17, 0));
        Drawable drawable = r8.ˑٴ(16);
        if (drawable != null) {
            setNavigationIcon(drawable);
        }
        CharSequence text3 = typedArray.getText(15);
        if (!TextUtils.isEmpty(text3)) {
            setNavigationContentDescription(text3);
        }
        Drawable drawable2 = r8.ˑٴ(11);
        if (drawable2 != null) {
            setLogo(drawable2);
        }
        CharSequence text4 = typedArray.getText(12);
        if (!TextUtils.isEmpty(text4)) {
            setLogoDescription(text4);
        }
        if (typedArray.hasValue(29)) {
            setTitleTextColor(r8.ˈʿ(29));
        }
        if (typedArray.hasValue(20)) {
            setSubtitleTextColor(r8.ˈʿ(20));
        }
        if (typedArray.hasValue(14)) {
            getMenuInflater().inflate(typedArray.getResourceId(14, 0), getMenu());
        }
        r8.ᐧᴵ();
    }

    private ArrayList<MenuItem> getCurrentMenuItems() {
        ArrayList<MenuItem> arrayList = new ArrayList<>();
        Menu menu = getMenu();
        for (int i = 0; i < menu.size(); i++) {
            arrayList.add(menu.getItem(i));
        }
        return arrayList;
    }

    private MenuInflater getMenuInflater() {
        return new C2226(getContext());
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static C2348 m63(ViewGroup.LayoutParams layoutParams) {
        boolean z = layoutParams instanceof C2348;
        if (z) {
            C2348 c2348 = (C2348) layoutParams;
            C2348 c23482 = new C2348(c2348);
            c23482.f9097 = 0;
            c23482.f9097 = c2348.f9097;
            return c23482;
        }
        if (z) {
            C2348 c23483 = new C2348((C2348) layoutParams);
            c23483.f9097 = 0;
            return c23483;
        }
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            C2348 c23484 = new C2348(layoutParams);
            c23484.f9097 = 0;
            return c23484;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        C2348 c23485 = new C2348(marginLayoutParams);
        c23485.f9097 = 0;
        ((ViewGroup.MarginLayoutParams) c23485).leftMargin = marginLayoutParams.leftMargin;
        ((ViewGroup.MarginLayoutParams) c23485).topMargin = marginLayoutParams.topMargin;
        ((ViewGroup.MarginLayoutParams) c23485).rightMargin = marginLayoutParams.rightMargin;
        ((ViewGroup.MarginLayoutParams) c23485).bottomMargin = marginLayoutParams.bottomMargin;
        return c23485;
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static int m64(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.getMarginEnd() + marginLayoutParams.getMarginStart();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [ˉˆ.ﾞˏ, android.view.ViewGroup$MarginLayoutParams] */
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static C2348 m65() {
        ?? marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -2);
        marginLayoutParams.f9097 = 0;
        marginLayoutParams.f9098 = 8388627;
        return marginLayoutParams;
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static int m66(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof C2348);
    }

    @Override // android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return m65();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [ˉˆ.ﾞˏ, android.view.ViewGroup$LayoutParams, android.view.ViewGroup$MarginLayoutParams] */
    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        Context context = getContext();
        ?? marginLayoutParams = new ViewGroup.MarginLayoutParams(context, attributeSet);
        marginLayoutParams.f9098 = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC4295.f15920);
        marginLayoutParams.f9098 = obtainStyledAttributes.getInt(0, 0);
        obtainStyledAttributes.recycle();
        marginLayoutParams.f9097 = 0;
        return marginLayoutParams;
    }

    @Override // android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return m63(layoutParams);
    }

    public CharSequence getCollapseContentDescription() {
        C2251 c2251 = this.f218;
        if (c2251 != null) {
            return c2251.getContentDescription();
        }
        return null;
    }

    public Drawable getCollapseIcon() {
        C2251 c2251 = this.f218;
        if (c2251 != null) {
            return c2251.getDrawable();
        }
        return null;
    }

    public int getContentInsetEnd() {
        C2347 c2347 = this.f226;
        if (c2347 != null) {
            return c2347.f9092 ? c2347.f9095 : c2347.f9094;
        }
        return 0;
    }

    public int getContentInsetEndWithActions() {
        int i = this.f216;
        return i != Integer.MIN_VALUE ? i : getContentInsetEnd();
    }

    public int getContentInsetLeft() {
        C2347 c2347 = this.f226;
        if (c2347 != null) {
            return c2347.f9095;
        }
        return 0;
    }

    public int getContentInsetRight() {
        C2347 c2347 = this.f226;
        if (c2347 != null) {
            return c2347.f9094;
        }
        return 0;
    }

    public int getContentInsetStart() {
        C2347 c2347 = this.f226;
        if (c2347 != null) {
            return c2347.f9092 ? c2347.f9094 : c2347.f9095;
        }
        return 0;
    }

    public int getContentInsetStartWithNavigation() {
        int i = this.f244;
        return i != Integer.MIN_VALUE ? i : getContentInsetStart();
    }

    public int getCurrentContentInsetEnd() {
        MenuC4312 menuC4312;
        ActionMenuView actionMenuView = this.f209;
        return (actionMenuView == null || (menuC4312 = actionMenuView.f137) == null || !menuC4312.hasVisibleItems()) ? getContentInsetEnd() : Math.max(getContentInsetEnd(), Math.max(this.f216, 0));
    }

    public int getCurrentContentInsetLeft() {
        return getLayoutDirection() == 1 ? getCurrentContentInsetEnd() : getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        return getLayoutDirection() == 1 ? getCurrentContentInsetStart() : getCurrentContentInsetEnd();
    }

    public int getCurrentContentInsetStart() {
        return getNavigationIcon() != null ? Math.max(getContentInsetStart(), Math.max(this.f244, 0)) : getContentInsetStart();
    }

    public Drawable getLogo() {
        AppCompatImageView appCompatImageView = this.f237;
        if (appCompatImageView != null) {
            return appCompatImageView.getDrawable();
        }
        return null;
    }

    public CharSequence getLogoDescription() {
        AppCompatImageView appCompatImageView = this.f237;
        if (appCompatImageView != null) {
            return appCompatImageView.getContentDescription();
        }
        return null;
    }

    public Menu getMenu() {
        m74();
        return this.f209.getMenu();
    }

    public View getNavButtonView() {
        return this.f215;
    }

    public CharSequence getNavigationContentDescription() {
        C2251 c2251 = this.f215;
        if (c2251 != null) {
            return c2251.getContentDescription();
        }
        return null;
    }

    public Drawable getNavigationIcon() {
        C2251 c2251 = this.f215;
        if (c2251 != null) {
            return c2251.getDrawable();
        }
        return null;
    }

    public C2308 getOuterActionMenuPresenter() {
        return this.f245;
    }

    public Drawable getOverflowIcon() {
        m74();
        return this.f209.getOverflowIcon();
    }

    public Context getPopupContext() {
        return this.f229;
    }

    public int getPopupTheme() {
        return this.f239;
    }

    public CharSequence getSubtitle() {
        return this.f210;
    }

    public final TextView getSubtitleTextView() {
        return this.f207;
    }

    public CharSequence getTitle() {
        return this.f217;
    }

    public int getTitleMarginBottom() {
        return this.f206;
    }

    public int getTitleMarginEnd() {
        return this.f222;
    }

    public int getTitleMarginStart() {
        return this.f225;
    }

    public int getTitleMarginTop() {
        return this.f220;
    }

    public final TextView getTitleTextView() {
        return this.f235;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [ˉˆ.ˏⁱ, java.lang.Object] */
    public InterfaceC2341 getWrapper() {
        Drawable drawable;
        if (this.f246 == null) {
            ?? obj = new Object();
            obj.f8952 = 0;
            obj.f8955 = this;
            obj.f8953 = getTitle();
            obj.f8943 = getSubtitle();
            obj.f8951 = obj.f8953 != null;
            obj.f8957 = getNavigationIcon();
            ٴʼ r2 = ٴʼ.ʿᵢ(R.attr.35d, 0, getContext(), (AttributeSet) null, AbstractC4295.f15921);
            TypedArray typedArray = (TypedArray) r2.ᴵˊ;
            obj.f8948 = r2.ˑٴ(15);
            CharSequence text = typedArray.getText(27);
            if (!TextUtils.isEmpty(text)) {
                obj.f8951 = true;
                obj.f8953 = text;
                if ((obj.f8954 & 8) != 0) {
                    setTitle(text);
                    if (obj.f8951) {
                        AbstractC2823.m6278(getRootView(), text);
                    }
                }
            }
            CharSequence text2 = typedArray.getText(25);
            if (!TextUtils.isEmpty(text2)) {
                obj.f8943 = text2;
                if ((obj.f8954 & 8) != 0) {
                    setSubtitle(text2);
                }
            }
            Drawable drawable2 = r2.ˑٴ(20);
            if (drawable2 != null) {
                obj.f8949 = drawable2;
                obj.m5334();
            }
            Drawable drawable3 = r2.ˑٴ(17);
            if (drawable3 != null) {
                obj.f8946 = drawable3;
                obj.m5334();
            }
            if (obj.f8957 == null && (drawable = obj.f8948) != null) {
                obj.f8957 = drawable;
                if ((obj.f8954 & 4) != 0) {
                    setNavigationIcon(drawable);
                } else {
                    setNavigationIcon((Drawable) null);
                }
            }
            obj.m5336(typedArray.getInt(10, 0));
            int resourceId = typedArray.getResourceId(9, 0);
            if (resourceId != 0) {
                View inflate = LayoutInflater.from(getContext()).inflate(resourceId, (ViewGroup) this, false);
                View view = obj.f8944;
                if (view != null && (obj.f8954 & 16) != 0) {
                    removeView(view);
                }
                obj.f8944 = inflate;
                if (inflate != null && (obj.f8954 & 16) != 0) {
                    addView(inflate);
                }
                obj.m5336(obj.f8954 | 16);
            }
            int layoutDimension = typedArray.getLayoutDimension(13, 0);
            if (layoutDimension > 0) {
                ViewGroup.LayoutParams layoutParams = getLayoutParams();
                layoutParams.height = layoutDimension;
                setLayoutParams(layoutParams);
            }
            int dimensionPixelOffset = typedArray.getDimensionPixelOffset(7, -1);
            int dimensionPixelOffset2 = typedArray.getDimensionPixelOffset(3, -1);
            if (dimensionPixelOffset >= 0 || dimensionPixelOffset2 >= 0) {
                int max = Math.max(dimensionPixelOffset, 0);
                int max2 = Math.max(dimensionPixelOffset2, 0);
                m70();
                this.f226.m5435(max, max2);
            }
            int resourceId2 = typedArray.getResourceId(28, 0);
            if (resourceId2 != 0) {
                Context context = getContext();
                this.f242 = resourceId2;
                C2312 c2312 = this.f235;
                if (c2312 != null) {
                    c2312.setTextAppearance(context, resourceId2);
                }
            }
            int resourceId3 = typedArray.getResourceId(26, 0);
            if (resourceId3 != 0) {
                Context context2 = getContext();
                this.f212 = resourceId3;
                C2312 c23122 = this.f207;
                if (c23122 != null) {
                    c23122.setTextAppearance(context2, resourceId3);
                }
            }
            int resourceId4 = typedArray.getResourceId(22, 0);
            if (resourceId4 != 0) {
                setPopupTheme(resourceId4);
            }
            r2.ᐧᴵ();
            if (R.string.31u != obj.f8952) {
                obj.f8952 = R.string.31u;
                if (TextUtils.isEmpty(getNavigationContentDescription())) {
                    int i = obj.f8952;
                    obj.f8945 = i != 0 ? getContext().getString(i) : null;
                    obj.m5335();
                }
            }
            obj.f8945 = getNavigationContentDescription();
            setNavigationOnClickListener(new ViewOnClickListenerC2296(obj));
            this.f246 = obj;
        }
        return this.f246;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m73();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.f208);
        m73();
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f232 = false;
        }
        if (!this.f232) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.f232 = true;
            }
        }
        if (actionMasked != 10 && actionMasked != 3) {
            return true;
        }
        this.f232 = false;
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x028f A[LOOP:0: B:39:0x028d->B:40:0x028f, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x02a7 A[LOOP:1: B:43:0x02a5->B:44:0x02a7, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x02c7 A[LOOP:2: B:47:0x02c5->B:48:0x02c7, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x030d  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x031a A[LOOP:3: B:56:0x0318->B:57:0x031a, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0218  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r20, int r21, int r22, int r23, int r24) {
        /*
            Method dump skipped, instructions count: 811
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.Toolbar.onLayout(boolean, int, int, int, int):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        char c;
        Object[] objArr;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        boolean z = AbstractC2257.f8861;
        int i10 = 0;
        if (getLayoutDirection() == 1) {
            objArr = true;
            c = 0;
        } else {
            c = 1;
            objArr = false;
        }
        if (m75(this.f215)) {
            m81(this.f215, i, 0, i2, this.f213);
            i3 = m64(this.f215) + this.f215.getMeasuredWidth();
            i4 = Math.max(0, m66(this.f215) + this.f215.getMeasuredHeight());
            i5 = View.combineMeasuredStates(0, this.f215.getMeasuredState());
        } else {
            i3 = 0;
            i4 = 0;
            i5 = 0;
        }
        if (m75(this.f218)) {
            m81(this.f218, i, 0, i2, this.f213);
            i3 = m64(this.f218) + this.f218.getMeasuredWidth();
            i4 = Math.max(i4, m66(this.f218) + this.f218.getMeasuredHeight());
            i5 = View.combineMeasuredStates(i5, this.f218.getMeasuredState());
        }
        int currentContentInsetStart = getCurrentContentInsetStart();
        int max = Math.max(currentContentInsetStart, i3);
        int max2 = Math.max(0, currentContentInsetStart - i3);
        Object[] objArr2 = objArr;
        int[] iArr = this.f205;
        iArr[objArr2 == true ? 1 : 0] = max2;
        if (m75(this.f209)) {
            m81(this.f209, i, max, i2, this.f213);
            i6 = m64(this.f209) + this.f209.getMeasuredWidth();
            i4 = Math.max(i4, m66(this.f209) + this.f209.getMeasuredHeight());
            i5 = View.combineMeasuredStates(i5, this.f209.getMeasuredState());
        } else {
            i6 = 0;
        }
        int currentContentInsetEnd = getCurrentContentInsetEnd();
        int max3 = max + Math.max(currentContentInsetEnd, i6);
        iArr[c] = Math.max(0, currentContentInsetEnd - i6);
        if (m75(this.f241)) {
            max3 += m78(this.f241, i, max3, i2, 0, iArr);
            i4 = Math.max(i4, m66(this.f241) + this.f241.getMeasuredHeight());
            i5 = View.combineMeasuredStates(i5, this.f241.getMeasuredState());
        }
        if (m75(this.f237)) {
            max3 += m78(this.f237, i, max3, i2, 0, iArr);
            i4 = Math.max(i4, m66(this.f237) + this.f237.getMeasuredHeight());
            i5 = View.combineMeasuredStates(i5, this.f237.getMeasuredState());
        }
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (((C2348) childAt.getLayoutParams()).f9097 == 0 && m75(childAt)) {
                max3 += m78(childAt, i, max3, i2, 0, iArr);
                int max4 = Math.max(i4, m66(childAt) + childAt.getMeasuredHeight());
                i5 = View.combineMeasuredStates(i5, childAt.getMeasuredState());
                i4 = max4;
            } else {
                max3 = max3;
            }
        }
        int i12 = max3;
        int i13 = this.f220 + this.f206;
        int i14 = this.f225 + this.f222;
        if (m75(this.f235)) {
            m78(this.f235, i, i12 + i14, i2, i13, iArr);
            int m64 = m64(this.f235) + this.f235.getMeasuredWidth();
            i7 = m66(this.f235) + this.f235.getMeasuredHeight();
            i8 = View.combineMeasuredStates(i5, this.f235.getMeasuredState());
            i9 = m64;
        } else {
            i7 = 0;
            i8 = i5;
            i9 = 0;
        }
        if (m75(this.f207)) {
            i9 = Math.max(i9, m78(this.f207, i, i12 + i14, i2, i13 + i7, iArr));
            i7 += m66(this.f207) + this.f207.getMeasuredHeight();
            i8 = View.combineMeasuredStates(i8, this.f207.getMeasuredState());
        }
        int max5 = Math.max(i4, i7);
        int paddingRight = getPaddingRight() + getPaddingLeft() + i12 + i9;
        int paddingBottom = getPaddingBottom() + getPaddingTop() + max5;
        int resolveSizeAndState = View.resolveSizeAndState(Math.max(paddingRight, getSuggestedMinimumWidth()), i, (-16777216) & i8);
        int resolveSizeAndState2 = View.resolveSizeAndState(Math.max(paddingBottom, getSuggestedMinimumHeight()), i2, i8 << 16);
        if (this.f224) {
            int childCount2 = getChildCount();
            for (int i15 = 0; i15 < childCount2; i15++) {
                View childAt2 = getChildAt(i15);
                if (!m75(childAt2) || childAt2.getMeasuredWidth() <= 0 || childAt2.getMeasuredHeight() <= 0) {
                }
            }
            setMeasuredDimension(resolveSizeAndState, i10);
        }
        i10 = resolveSizeAndState2;
        setMeasuredDimension(resolveSizeAndState, i10);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem findItem;
        if (!(parcelable instanceof C2276)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C2276 c2276 = (C2276) parcelable;
        super.onRestoreInstanceState(c2276.f15355);
        ActionMenuView actionMenuView = this.f209;
        MenuC4312 menuC4312 = actionMenuView != null ? actionMenuView.f137 : null;
        int i = c2276.f8914;
        if (i != 0 && this.f204 != null && menuC4312 != null && (findItem = menuC4312.findItem(i)) != null) {
            findItem.expandActionView();
        }
        if (c2276.f8915) {
            RunnableC0142 runnableC0142 = this.f208;
            removeCallbacks(runnableC0142);
            post(runnableC0142);
        }
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        m70();
        C2347 c2347 = this.f226;
        boolean z = i == 1;
        if (z == c2347.f9092) {
            return;
        }
        c2347.f9092 = z;
        if (!c2347.f9093) {
            c2347.f9095 = c2347.f9091;
            c2347.f9094 = c2347.f9096;
            return;
        }
        if (z) {
            int i2 = c2347.f9090;
            if (i2 == Integer.MIN_VALUE) {
                i2 = c2347.f9091;
            }
            c2347.f9095 = i2;
            int i3 = c2347.f9089;
            if (i3 == Integer.MIN_VALUE) {
                i3 = c2347.f9096;
            }
            c2347.f9094 = i3;
            return;
        }
        int i4 = c2347.f9089;
        if (i4 == Integer.MIN_VALUE) {
            i4 = c2347.f9091;
        }
        c2347.f9095 = i4;
        int i5 = c2347.f9090;
        if (i5 == Integer.MIN_VALUE) {
            i5 = c2347.f9096;
        }
        c2347.f9094 = i5;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [ˉˆ.ˊﾞ, android.os.Parcelable, ᴵˑ.ⁱˊ] */
    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        C2308 c2308;
        C4329 c4329;
        ?? abstractC3985 = new AbstractC3985(super.onSaveInstanceState());
        C2304 c2304 = this.f204;
        if (c2304 != null && (c4329 = c2304.f8996) != null) {
            abstractC3985.f8914 = c4329.f16092;
        }
        ActionMenuView actionMenuView = this.f209;
        abstractC3985.f8915 = (actionMenuView == null || (c2308 = actionMenuView.f138) == null || !c2308.m5393()) ? false : true;
        return abstractC3985;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f233 = false;
        }
        if (!this.f233) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.f233 = true;
            }
        }
        if (actionMasked != 1 && actionMasked != 3) {
            return true;
        }
        this.f233 = false;
        return true;
    }

    public void setBackInvokedCallbackEnabled(boolean z) {
        if (this.f227 != z) {
            this.f227 = z;
            m73();
        }
    }

    public void setCollapseContentDescription(int i) {
        setCollapseContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setCollapseContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            m68();
        }
        C2251 c2251 = this.f218;
        if (c2251 != null) {
            c2251.setContentDescription(charSequence);
        }
    }

    public void setCollapseIcon(int i) {
        setCollapseIcon(ˊʻ.ﹳᐧ(getContext(), i));
    }

    public void setCollapseIcon(Drawable drawable) {
        if (drawable != null) {
            m68();
            this.f218.setImageDrawable(drawable);
        } else {
            C2251 c2251 = this.f218;
            if (c2251 != null) {
                c2251.setImageDrawable(this.f219);
            }
        }
    }

    public void setCollapsible(boolean z) {
        this.f224 = z;
        requestLayout();
    }

    public void setContentInsetEndWithActions(int i) {
        if (i < 0) {
            i = Integer.MIN_VALUE;
        }
        if (i != this.f216) {
            this.f216 = i;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setContentInsetStartWithNavigation(int i) {
        if (i < 0) {
            i = Integer.MIN_VALUE;
        }
        if (i != this.f244) {
            this.f244 = i;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setLogo(int i) {
        setLogo(ˊʻ.ﹳᐧ(getContext(), i));
    }

    public void setLogo(Drawable drawable) {
        if (drawable != null) {
            if (this.f237 == null) {
                this.f237 = new AppCompatImageView(getContext(), null);
            }
            if (!m77(this.f237)) {
                m79(this.f237, true);
            }
        } else {
            AppCompatImageView appCompatImageView = this.f237;
            if (appCompatImageView != null && m77(appCompatImageView)) {
                removeView(this.f237);
                this.f234.remove(this.f237);
            }
        }
        AppCompatImageView appCompatImageView2 = this.f237;
        if (appCompatImageView2 != null) {
            appCompatImageView2.setImageDrawable(drawable);
        }
    }

    public void setLogoDescription(int i) {
        setLogoDescription(getContext().getText(i));
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence) && this.f237 == null) {
            this.f237 = new AppCompatImageView(getContext(), null);
        }
        AppCompatImageView appCompatImageView = this.f237;
        if (appCompatImageView != null) {
            appCompatImageView.setContentDescription(charSequence);
        }
    }

    public void setNavigationContentDescription(int i) {
        setNavigationContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setNavigationContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            m76();
        }
        C2251 c2251 = this.f215;
        if (c2251 != null) {
            c2251.setContentDescription(charSequence);
            ᵎ.יـ(this.f215, charSequence);
        }
    }

    public void setNavigationIcon(int i) {
        setNavigationIcon(ˊʻ.ﹳᐧ(getContext(), i));
    }

    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null) {
            m76();
            if (!m77(this.f215)) {
                m79(this.f215, true);
            }
        } else {
            C2251 c2251 = this.f215;
            if (c2251 != null && m77(c2251)) {
                removeView(this.f215);
                this.f234.remove(this.f215);
            }
        }
        C2251 c22512 = this.f215;
        if (c22512 != null) {
            c22512.setImageDrawable(drawable);
        }
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        m76();
        this.f215.setOnClickListener(onClickListener);
    }

    public void setOnMenuItemClickListener(InterfaceC2272 interfaceC2272) {
    }

    public void setOverflowIcon(Drawable drawable) {
        m74();
        this.f209.setOverflowIcon(drawable);
    }

    public void setPopupTheme(int i) {
        if (this.f239 != i) {
            this.f239 = i;
            if (i == 0) {
                this.f229 = getContext();
            } else {
                this.f229 = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void setSubtitle(int i) {
        setSubtitle(getContext().getText(i));
    }

    public void setSubtitle(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            C2312 c2312 = this.f207;
            if (c2312 != null && m77(c2312)) {
                removeView(this.f207);
                this.f234.remove(this.f207);
            }
        } else {
            if (this.f207 == null) {
                Context context = getContext();
                C2312 c23122 = new C2312(context, null);
                this.f207 = c23122;
                c23122.setSingleLine();
                this.f207.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.f212;
                if (i != 0) {
                    this.f207.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.f240;
                if (colorStateList != null) {
                    this.f207.setTextColor(colorStateList);
                }
            }
            if (!m77(this.f207)) {
                m79(this.f207, true);
            }
        }
        C2312 c23123 = this.f207;
        if (c23123 != null) {
            c23123.setText(charSequence);
        }
        this.f210 = charSequence;
    }

    public void setSubtitleTextColor(int i) {
        setSubtitleTextColor(ColorStateList.valueOf(i));
    }

    public void setSubtitleTextColor(ColorStateList colorStateList) {
        this.f240 = colorStateList;
        C2312 c2312 = this.f207;
        if (c2312 != null) {
            c2312.setTextColor(colorStateList);
        }
    }

    public void setTitle(int i) {
        setTitle(getContext().getText(i));
    }

    public void setTitle(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            C2312 c2312 = this.f235;
            if (c2312 != null && m77(c2312)) {
                removeView(this.f235);
                this.f234.remove(this.f235);
            }
        } else {
            if (this.f235 == null) {
                Context context = getContext();
                C2312 c23122 = new C2312(context, null);
                this.f235 = c23122;
                c23122.setSingleLine();
                this.f235.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.f242;
                if (i != 0) {
                    this.f235.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.f211;
                if (colorStateList != null) {
                    this.f235.setTextColor(colorStateList);
                }
            }
            if (!m77(this.f235)) {
                m79(this.f235, true);
            }
        }
        C2312 c23123 = this.f235;
        if (c23123 != null) {
            c23123.setText(charSequence);
        }
        this.f217 = charSequence;
    }

    public void setTitleMarginBottom(int i) {
        this.f206 = i;
        requestLayout();
    }

    public void setTitleMarginEnd(int i) {
        this.f222 = i;
        requestLayout();
    }

    public void setTitleMarginStart(int i) {
        this.f225 = i;
        requestLayout();
    }

    public void setTitleMarginTop(int i) {
        this.f220 = i;
        requestLayout();
    }

    public void setTitleTextColor(int i) {
        setTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setTitleTextColor(ColorStateList colorStateList) {
        this.f211 = colorStateList;
        C2312 c2312 = this.f235;
        if (c2312 != null) {
            c2312.setTextColor(colorStateList);
        }
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final int m67(View view, int i, int i2, int[] iArr) {
        C2348 c2348 = (C2348) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) c2348).rightMargin - iArr[1];
        int max = i - Math.max(0, i3);
        iArr[1] = Math.max(0, -i3);
        int m69 = m69(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max - measuredWidth, m69, max, view.getMeasuredHeight() + m69);
        return max - (measuredWidth + ((ViewGroup.MarginLayoutParams) c2348).leftMargin);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m68() {
        if (this.f218 == null) {
            C2251 c2251 = new C2251(getContext(), null, R.attr.4bj);
            this.f218 = c2251;
            c2251.setImageDrawable(this.f219);
            this.f218.setContentDescription(this.f230);
            C2348 m65 = m65();
            m65.f9098 = (this.f243 & 112) | 8388611;
            m65.f9097 = 2;
            this.f218.setLayoutParams(m65);
            this.f218.setOnClickListener(new ViewOnClickListenerC0083(5, this));
        }
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final int m69(View view, int i) {
        C2348 c2348 = (C2348) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i2 = i > 0 ? (measuredHeight - i) / 2 : 0;
        int i3 = c2348.f9098 & 112;
        if (i3 != 16 && i3 != 48 && i3 != 80) {
            i3 = this.f236 & 112;
        }
        if (i3 == 48) {
            return getPaddingTop() - i2;
        }
        if (i3 == 80) {
            return (((getHeight() - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) c2348).bottomMargin) - i2;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int height = getHeight();
        int i4 = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
        int i5 = ((ViewGroup.MarginLayoutParams) c2348).topMargin;
        if (i4 < i5) {
            i4 = i5;
        } else {
            int i6 = (((height - paddingBottom) - measuredHeight) - i4) - paddingTop;
            int i7 = ((ViewGroup.MarginLayoutParams) c2348).bottomMargin;
            if (i6 < i7) {
                i4 = Math.max(0, i4 - (i7 - i6));
            }
        }
        return paddingTop + i4;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, ˉˆ.ﾞˋ] */
    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m70() {
        if (this.f226 == null) {
            ?? obj = new Object();
            obj.f9095 = 0;
            obj.f9094 = 0;
            obj.f9089 = Integer.MIN_VALUE;
            obj.f9090 = Integer.MIN_VALUE;
            obj.f9091 = 0;
            obj.f9096 = 0;
            obj.f9092 = false;
            obj.f9093 = false;
            this.f226 = obj;
        }
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final void m71() {
        ArrayList arrayList = this.f228;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            getMenu().removeItem(((MenuItem) obj).getItemId());
        }
        getMenu();
        ArrayList<MenuItem> currentMenuItems = getCurrentMenuItems();
        getMenuInflater();
        Iterator it = ((CopyOnWriteArrayList) this.f221.ᴵˊ).iterator();
        while (it.hasNext()) {
            ((C3090) it.next()).f11778.m6691();
        }
        ArrayList<MenuItem> currentMenuItems2 = getCurrentMenuItems();
        currentMenuItems2.removeAll(currentMenuItems);
        this.f228 = currentMenuItems2;
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final int m72(View view, int i, int i2, int[] iArr) {
        C2348 c2348 = (C2348) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) c2348).leftMargin - iArr[0];
        int max = Math.max(0, i3) + i;
        iArr[0] = Math.max(0, -i3);
        int m69 = m69(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max, m69, max + measuredWidth, view.getMeasuredHeight() + m69);
        return measuredWidth + ((ViewGroup.MarginLayoutParams) c2348).rightMargin + max;
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public final void m73() {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        if (Build.VERSION.SDK_INT >= 33) {
            OnBackInvokedDispatcher m5422 = AbstractC2327.m5422(this);
            C2304 c2304 = this.f204;
            boolean z = (c2304 == null || c2304.f8996 == null || m5422 == null || !isAttachedToWindow() || !this.f227) ? false : true;
            if (z && this.f238 == null) {
                if (this.f231 == null) {
                    this.f231 = AbstractC2327.m5421(new RunnableC2343(this, 0));
                }
                AbstractC2327.m5419(m5422, this.f231);
                this.f238 = m5422;
                return;
            }
            if (z || (onBackInvokedDispatcher = this.f238) == null) {
                return;
            }
            AbstractC2327.m5420(onBackInvokedDispatcher, this.f231);
            this.f238 = null;
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m74() {
        m82();
        ActionMenuView actionMenuView = this.f209;
        if (actionMenuView.f137 == null) {
            MenuC4312 menuC4312 = (MenuC4312) actionMenuView.getMenu();
            if (this.f204 == null) {
                this.f204 = new C2304(this);
            }
            this.f209.setExpandedActionViewsExclusive(true);
            menuC4312.m8731(this.f204, this.f229);
            m73();
        }
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final boolean m75(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m76() {
        if (this.f215 == null) {
            this.f215 = new C2251(getContext(), null, R.attr.4bj);
            C2348 m65 = m65();
            m65.f9098 = (this.f243 & 112) | 8388611;
            this.f215.setLayoutParams(m65);
        }
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final boolean m77(View view) {
        return view.getParent() == this || this.f234.contains(view);
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final int m78(View view, int i, int i2, int i3, int i4, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i5 = marginLayoutParams.leftMargin - iArr[0];
        int i6 = marginLayoutParams.rightMargin - iArr[1];
        int max = Math.max(0, i6) + Math.max(0, i5);
        iArr[0] = Math.max(0, -i5);
        iArr[1] = Math.max(0, -i6);
        view.measure(ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + max + i2, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i3, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height));
        return view.getMeasuredWidth() + max;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m79(View view, boolean z) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        C2348 m65 = layoutParams == null ? m65() : !checkLayoutParams(layoutParams) ? m63(layoutParams) : (C2348) layoutParams;
        m65.f9097 = 1;
        if (!z || this.f241 == null) {
            addView(view, m65);
        } else {
            view.setLayoutParams(m65);
            this.f234.add(view);
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m80(int i, ArrayList arrayList) {
        boolean z = getLayoutDirection() == 1;
        int childCount = getChildCount();
        int absoluteGravity = Gravity.getAbsoluteGravity(i, getLayoutDirection());
        arrayList.clear();
        if (!z) {
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                C2348 c2348 = (C2348) childAt.getLayoutParams();
                if (c2348.f9097 == 0 && m75(childAt)) {
                    int i3 = c2348.f9098;
                    int layoutDirection = getLayoutDirection();
                    int absoluteGravity2 = Gravity.getAbsoluteGravity(i3, layoutDirection) & 7;
                    if (absoluteGravity2 != 1 && absoluteGravity2 != 3 && absoluteGravity2 != 5) {
                        absoluteGravity2 = layoutDirection == 1 ? 5 : 3;
                    }
                    if (absoluteGravity2 == absoluteGravity) {
                        arrayList.add(childAt);
                    }
                }
            }
            return;
        }
        for (int i4 = childCount - 1; i4 >= 0; i4--) {
            View childAt2 = getChildAt(i4);
            C2348 c23482 = (C2348) childAt2.getLayoutParams();
            if (c23482.f9097 == 0 && m75(childAt2)) {
                int i5 = c23482.f9098;
                int layoutDirection2 = getLayoutDirection();
                int absoluteGravity3 = Gravity.getAbsoluteGravity(i5, layoutDirection2) & 7;
                if (absoluteGravity3 != 1 && absoluteGravity3 != 3 && absoluteGravity3 != 5) {
                    absoluteGravity3 = layoutDirection2 == 1 ? 5 : 3;
                }
                if (absoluteGravity3 == absoluteGravity) {
                    arrayList.add(childAt2);
                }
            }
        }
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final void m81(View view, int i, int i2, int i3, int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i3, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i4 >= 0) {
            if (mode != 0) {
                i4 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i4);
            }
            childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m82() {
        if (this.f209 == null) {
            ActionMenuView actionMenuView = new ActionMenuView(getContext(), null);
            this.f209 = actionMenuView;
            actionMenuView.setPopupTheme(this.f239);
            this.f209.setOnMenuItemClickListener(this.f214);
            ActionMenuView actionMenuView2 = this.f209;
            ˉˆ r1 = new ˉˆ(25, this);
            actionMenuView2.getClass();
            actionMenuView2.f140 = r1;
            C2348 m65 = m65();
            m65.f9098 = (this.f243 & 112) | 8388613;
            this.f209.setLayoutParams(m65);
            m79(this.f209, false);
        }
    }
}
