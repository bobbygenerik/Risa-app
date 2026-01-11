package p137;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;
import ar.tvplayer.tv.R;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import p028.AbstractC1116;
import p186.AbstractC2823;
import p186.AbstractC2828;

/* renamed from: ˉˆ.ˆˑ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ViewOnLongClickListenerC2258 implements View.OnLongClickListener, View.OnHoverListener, View.OnAttachStateChangeListener {

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public static ViewOnLongClickListenerC2258 f8862;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public static ViewOnLongClickListenerC2258 f8863;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final int f8864;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final View f8865;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final RunnableC2244 f8866;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public C2282 f8867;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public int f8868;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public boolean f8869;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public int f8870;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final CharSequence f8871;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final RunnableC2244 f8872;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public boolean f8873;

    /* JADX WARN: Type inference failed for: r0v0, types: [ˉˆ.ʽʾ] */
    /* JADX WARN: Type inference failed for: r0v1, types: [ˉˆ.ʽʾ] */
    public ViewOnLongClickListenerC2258(View view, CharSequence charSequence) {
        final int i = 0;
        this.f8866 = new Runnable(this) { // from class: ˉˆ.ʽʾ

            /* renamed from: ᴵˊ, reason: contains not printable characters */
            public final /* synthetic */ ViewOnLongClickListenerC2258 f8792;

            {
                this.f8792 = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i) {
                    case 0:
                        this.f8792.m5284(false);
                        return;
                    default:
                        this.f8792.m5285();
                        return;
                }
            }
        };
        final int i2 = 1;
        this.f8872 = new Runnable(this) { // from class: ˉˆ.ʽʾ

            /* renamed from: ᴵˊ, reason: contains not printable characters */
            public final /* synthetic */ ViewOnLongClickListenerC2258 f8792;

            {
                this.f8792 = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i2) {
                    case 0:
                        this.f8792.m5284(false);
                        return;
                    default:
                        this.f8792.m5285();
                        return;
                }
            }
        };
        this.f8865 = view;
        this.f8871 = charSequence;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(view.getContext());
        Method method = AbstractC2828.f10612;
        this.f8864 = Build.VERSION.SDK_INT >= 28 ? AbstractC1116.m3536(viewConfiguration) : viewConfiguration.getScaledTouchSlop() / 2;
        this.f8869 = true;
        view.setOnLongClickListener(this);
        view.setOnHoverListener(this);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static void m5283(ViewOnLongClickListenerC2258 viewOnLongClickListenerC2258) {
        ViewOnLongClickListenerC2258 viewOnLongClickListenerC22582 = f8862;
        if (viewOnLongClickListenerC22582 != null) {
            viewOnLongClickListenerC22582.f8865.removeCallbacks(viewOnLongClickListenerC22582.f8866);
        }
        f8862 = viewOnLongClickListenerC2258;
        if (viewOnLongClickListenerC2258 != null) {
            viewOnLongClickListenerC2258.f8865.postDelayed(viewOnLongClickListenerC2258.f8866, ViewConfiguration.getLongPressTimeout());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0064, code lost:
    
        if (java.lang.Math.abs(r5 - r3.f8870) <= r2) goto L30;
     */
    @Override // android.view.View.OnHoverListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onHover(android.view.View r4, android.view.MotionEvent r5) {
        /*
            r3 = this;
            ˉˆ.ˎـ r4 = r3.f8867
            r0 = 0
            if (r4 == 0) goto La
            boolean r4 = r3.f8873
            if (r4 == 0) goto La
            goto L6f
        La:
            android.view.View r4 = r3.f8865
            android.content.Context r1 = r4.getContext()
            java.lang.String r2 = "accessibility"
            java.lang.Object r1 = r1.getSystemService(r2)
            android.view.accessibility.AccessibilityManager r1 = (android.view.accessibility.AccessibilityManager) r1
            boolean r2 = r1.isEnabled()
            if (r2 == 0) goto L25
            boolean r1 = r1.isTouchExplorationEnabled()
            if (r1 == 0) goto L25
            goto L6f
        L25:
            int r1 = r5.getAction()
            r2 = 7
            if (r1 == r2) goto L38
            r4 = 10
            if (r1 == r4) goto L31
            goto L6f
        L31:
            r4 = 1
            r3.f8869 = r4
            r3.m5285()
            return r0
        L38:
            boolean r4 = r4.isEnabled()
            if (r4 == 0) goto L6f
            ˉˆ.ˎـ r4 = r3.f8867
            if (r4 != 0) goto L6f
            float r4 = r5.getX()
            int r4 = (int) r4
            float r5 = r5.getY()
            int r5 = (int) r5
            boolean r1 = r3.f8869
            if (r1 != 0) goto L66
            int r1 = r3.f8868
            int r1 = r4 - r1
            int r1 = java.lang.Math.abs(r1)
            int r2 = r3.f8864
            if (r1 > r2) goto L66
            int r1 = r3.f8870
            int r1 = r5 - r1
            int r1 = java.lang.Math.abs(r1)
            if (r1 <= r2) goto L6f
        L66:
            r3.f8868 = r4
            r3.f8870 = r5
            r3.f8869 = r0
            m5283(r3)
        L6f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p137.ViewOnLongClickListenerC2258.onHover(android.view.View, android.view.MotionEvent):boolean");
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        this.f8868 = view.getWidth() / 2;
        this.f8870 = view.getHeight() / 2;
        m5284(true);
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        m5285();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m5284(boolean z) {
        int height;
        int i;
        int i2;
        boolean z2;
        int i3;
        int i4;
        long longPressTimeout;
        long j;
        long j2;
        View view = this.f8865;
        if (view.isAttachedToWindow()) {
            m5283(null);
            ViewOnLongClickListenerC2258 viewOnLongClickListenerC2258 = f8863;
            if (viewOnLongClickListenerC2258 != null) {
                viewOnLongClickListenerC2258.m5285();
            }
            f8863 = this;
            this.f8873 = z;
            C2282 c2282 = new C2282(view.getContext());
            View view2 = (View) c2282.f8928;
            Context context = (Context) c2282.f8929;
            this.f8867 = c2282;
            int i5 = this.f8868;
            int i6 = this.f8870;
            boolean z3 = this.f8873;
            WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) c2282.f8925;
            if (view2.getParent() != null && view2.getParent() != null) {
                ((WindowManager) context.getSystemService("window")).removeView(view2);
            }
            ((TextView) c2282.f8924).setText(this.f8871);
            int[] iArr = (int[]) c2282.f8927;
            int[] iArr2 = (int[]) c2282.f8930;
            Rect rect = (Rect) c2282.f8926;
            layoutParams.token = view.getApplicationWindowToken();
            int dimensionPixelOffset = context.getResources().getDimensionPixelOffset(R.dimen.31s);
            if (view.getWidth() < dimensionPixelOffset) {
                i5 = view.getWidth() / 2;
            }
            if (view.getHeight() >= dimensionPixelOffset) {
                int dimensionPixelOffset2 = context.getResources().getDimensionPixelOffset(R.dimen.1ab);
                height = i6 + dimensionPixelOffset2;
                i = i6 - dimensionPixelOffset2;
            } else {
                height = view.getHeight();
                i = 0;
            }
            layoutParams.gravity = 49;
            int dimensionPixelOffset3 = context.getResources().getDimensionPixelOffset(z3 ? R.dimen.3t1 : R.dimen.75d);
            View rootView = view.getRootView();
            ViewGroup.LayoutParams layoutParams2 = rootView.getLayoutParams();
            int i7 = i5;
            if (!(layoutParams2 instanceof WindowManager.LayoutParams) || ((WindowManager.LayoutParams) layoutParams2).type != 2) {
                Context context2 = view.getContext();
                while (true) {
                    if (!(context2 instanceof ContextWrapper)) {
                        break;
                    }
                    if (context2 instanceof Activity) {
                        rootView = ((Activity) context2).getWindow().getDecorView();
                        break;
                    }
                    context2 = ((ContextWrapper) context2).getBaseContext();
                }
            }
            if (rootView == null) {
                i4 = 1;
            } else {
                rootView.getWindowVisibleDisplayFrame(rect);
                if (rect.left >= 0 || rect.top >= 0) {
                    i2 = i;
                    z2 = z3;
                    i3 = 0;
                    i4 = 1;
                } else {
                    Resources resources = context.getResources();
                    i4 = 1;
                    i2 = i;
                    z2 = z3;
                    int identifier = resources.getIdentifier("status_bar_height", "dimen", "android");
                    int dimensionPixelSize = identifier != 0 ? resources.getDimensionPixelSize(identifier) : 0;
                    DisplayMetrics displayMetrics = resources.getDisplayMetrics();
                    i3 = 0;
                    rect.set(0, dimensionPixelSize, displayMetrics.widthPixels, displayMetrics.heightPixels);
                }
                rootView.getLocationOnScreen(iArr);
                view.getLocationOnScreen(iArr2);
                int i8 = iArr2[i3] - iArr[i3];
                iArr2[i3] = i8;
                iArr2[i4] = iArr2[i4] - iArr[i4];
                layoutParams.x = (i8 + i7) - (rootView.getWidth() / 2);
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i3, i3);
                view2.measure(makeMeasureSpec, makeMeasureSpec);
                int measuredHeight = view2.getMeasuredHeight();
                int i9 = iArr2[i4];
                int i10 = ((i9 + i2) - dimensionPixelOffset3) - measuredHeight;
                int i11 = i9 + height + dimensionPixelOffset3;
                if (z2) {
                    if (i10 >= 0) {
                        layoutParams.y = i10;
                    } else {
                        layoutParams.y = i11;
                    }
                } else if (measuredHeight + i11 <= rect.height()) {
                    layoutParams.y = i11;
                } else {
                    layoutParams.y = i10;
                }
            }
            ((WindowManager) context.getSystemService("window")).addView(view2, layoutParams);
            view.addOnAttachStateChangeListener(this);
            if (this.f8873) {
                j2 = 2500;
            } else {
                WeakHashMap weakHashMap = AbstractC2823.f10603;
                if ((view.getWindowSystemUiVisibility() & 1) == i4) {
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                    j = 3000;
                } else {
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                    j = 15000;
                }
                j2 = j - longPressTimeout;
            }
            RunnableC2244 runnableC2244 = this.f8872;
            view.removeCallbacks(runnableC2244);
            view.postDelayed(runnableC2244, j2);
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m5285() {
        ViewOnLongClickListenerC2258 viewOnLongClickListenerC2258 = f8863;
        View view = this.f8865;
        if (viewOnLongClickListenerC2258 == this) {
            f8863 = null;
            C2282 c2282 = this.f8867;
            if (c2282 != null) {
                View view2 = (View) c2282.f8928;
                if (view2.getParent() != null) {
                    ((WindowManager) ((Context) c2282.f8929).getSystemService("window")).removeView(view2);
                }
                this.f8867 = null;
                this.f8869 = true;
                view.removeOnAttachStateChangeListener(this);
            }
        }
        if (f8862 == this) {
            m5283(null);
        }
        view.removeCallbacks(this.f8872);
    }
}
