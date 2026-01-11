package p137;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.leanback.widget.RunnableC0142;
import ar.tvplayer.tv.R;
import java.lang.reflect.InvocationTargetException;
import p415.ViewOnTouchListenerC4921;

/* renamed from: ˉˆ.ʾˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C2249 extends ListView {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f8809;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Rect f8810;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public int f8811;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public boolean f8812;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public int f8813;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public boolean f8814;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public C2311 f8815;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f8816;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public int f8817;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public ViewOnTouchListenerC4921 f8818;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final boolean f8819;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public RunnableC0142 f8820;

    public C2249(Context context, boolean z) {
        super(context, null, R.attr.6qh);
        this.f8810 = new Rect();
        this.f8816 = 0;
        this.f8809 = 0;
        this.f8811 = 0;
        this.f8817 = 0;
        this.f8819 = z;
        setCacheColorHint(0);
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        Drawable selector;
        Rect rect = this.f8810;
        if (!rect.isEmpty() && (selector = getSelector()) != null) {
            selector.setBounds(rect);
            selector.draw(canvas);
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        if (this.f8820 != null) {
            return;
        }
        super.drawableStateChanged();
        C2311 c2311 = this.f8815;
        if (c2311 != null) {
            c2311.f9028 = true;
        }
        Drawable selector = getSelector();
        if (selector != null && this.f8814 && isPressed()) {
            selector.setState(getDrawableState());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean hasFocus() {
        return this.f8819 || super.hasFocus();
    }

    @Override // android.view.View
    public final boolean hasWindowFocus() {
        return this.f8819 || super.hasWindowFocus();
    }

    @Override // android.view.View
    public final boolean isFocused() {
        return this.f8819 || super.isFocused();
    }

    @Override // android.view.View
    public final boolean isInTouchMode() {
        return (this.f8819 && this.f8812) || super.isInTouchMode();
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        this.f8820 = null;
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int i = Build.VERSION.SDK_INT;
        if (i < 26) {
            return super.onHoverEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 10 && this.f8820 == null) {
            RunnableC0142 runnableC0142 = new RunnableC0142(16, this);
            this.f8820 = runnableC0142;
            post(runnableC0142);
        }
        boolean onHoverEvent = super.onHoverEvent(motionEvent);
        if (actionMasked != 9 && actionMasked != 7) {
            setSelection(-1);
            return onHoverEvent;
        }
        int pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        if (pointToPosition != -1 && pointToPosition != getSelectedItemPosition()) {
            View childAt = getChildAt(pointToPosition - getFirstVisiblePosition());
            if (childAt.isEnabled()) {
                requestFocus();
                if (i < 30 || !AbstractC2300.f8982) {
                    setSelectionFromTop(pointToPosition, childAt.getTop() - getTop());
                } else {
                    try {
                        AbstractC2300.f8984.invoke(this, Integer.valueOf(pointToPosition), childAt, Boolean.FALSE, -1, -1);
                        AbstractC2300.f8983.invoke(this, Integer.valueOf(pointToPosition));
                        AbstractC2300.f8981.invoke(this, Integer.valueOf(pointToPosition));
                    } catch (IllegalAccessException e) {
                        e.printStackTrace();
                    } catch (InvocationTargetException e2) {
                        e2.printStackTrace();
                    }
                }
            }
            Drawable selector = getSelector();
            if (selector != null && this.f8814 && isPressed()) {
                selector.setState(getDrawableState());
            }
        }
        return onHoverEvent;
    }

    @Override // android.widget.AbsListView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f8813 = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        RunnableC0142 runnableC0142 = this.f8820;
        if (runnableC0142 != null) {
            C2249 c2249 = (C2249) runnableC0142.f996;
            c2249.f8820 = null;
            c2249.removeCallbacks(runnableC0142);
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setListSelectionHidden(boolean z) {
        this.f8812 = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [ˉˆ.ᐧﹶ, android.graphics.drawable.Drawable$Callback, android.graphics.drawable.Drawable] */
    @Override // android.widget.AbsListView
    public void setSelector(Drawable drawable) {
        C2311 c2311;
        if (drawable != 0) {
            ?? drawable2 = new Drawable();
            Drawable drawable3 = drawable2.f9027;
            if (drawable3 != null) {
                drawable3.setCallback(null);
            }
            drawable2.f9027 = drawable;
            if (drawable != 0) {
                drawable.setCallback(drawable2);
            }
            drawable2.f9028 = true;
            c2311 = drawable2;
        } else {
            c2311 = null;
        }
        this.f8815 = c2311;
        super.setSelector(c2311);
        Rect rect = new Rect();
        if (drawable != 0) {
            drawable.getPadding(rect);
        }
        this.f8816 = rect.left;
        this.f8809 = rect.top;
        this.f8811 = rect.right;
        this.f8817 = rect.bottom;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x014a A[ADDED_TO_REGION] */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m5261(android.view.MotionEvent r18, int r19) {
        /*
            Method dump skipped, instructions count: 396
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p137.C2249.m5261(android.view.MotionEvent, int):boolean");
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int m5262(int i, int i2) {
        int listPaddingTop = getListPaddingTop();
        int listPaddingBottom = getListPaddingBottom();
        int dividerHeight = getDividerHeight();
        Drawable divider = getDivider();
        ListAdapter adapter = getAdapter();
        if (adapter == null) {
            return listPaddingTop + listPaddingBottom;
        }
        int i3 = listPaddingTop + listPaddingBottom;
        if (dividerHeight <= 0 || divider == null) {
            dividerHeight = 0;
        }
        int count = adapter.getCount();
        int i4 = 0;
        View view = null;
        for (int i5 = 0; i5 < count; i5++) {
            int itemViewType = adapter.getItemViewType(i5);
            if (itemViewType != i4) {
                view = null;
                i4 = itemViewType;
            }
            view = adapter.getView(i5, view, this);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = generateDefaultLayoutParams();
                view.setLayoutParams(layoutParams);
            }
            int i6 = layoutParams.height;
            view.measure(i, i6 > 0 ? View.MeasureSpec.makeMeasureSpec(i6, 1073741824) : View.MeasureSpec.makeMeasureSpec(0, 0));
            view.forceLayout();
            if (i5 > 0) {
                i3 += dividerHeight;
            }
            i3 += view.getMeasuredHeight();
            if (i3 >= i2) {
                return i2;
            }
        }
        return i3;
    }
}
