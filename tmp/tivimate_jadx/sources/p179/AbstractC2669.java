package p179;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.leanback.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.parse.ʽˑ;
import java.util.ArrayList;
import java.util.WeakHashMap;
import p075.C1652;
import p079.C1681;
import p116.AbstractC1989;
import p137.AbstractC2305;
import p158.C2535;
import p186.AbstractC2823;
import p255.C3368;
import ˉˆ.ʿ;
import ˊⁱ.ˑﹳ;
import ﹶﾞ.ⁱי;

/* renamed from: ˋˋ.ʻᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2669 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public boolean f10143;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final ⁱי f10144;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public int f10145;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final ⁱי f10146;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public int f10147;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public int f10148;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public C2688 f10149;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public boolean f10150;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public boolean f10151;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public int f10152;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final boolean f10153;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public RecyclerView f10154;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public ʽˑ f10155;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public int f10156;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public boolean f10157;

    public AbstractC2669() {
        ˑﹳ r0 = new ˑﹳ(2, this);
        ʿ r1 = new ʿ(9, this);
        this.f10144 = new ⁱי(r0);
        this.f10146 = new ⁱי(r1);
        this.f10157 = false;
        this.f10151 = false;
        this.f10153 = true;
        this.f10143 = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0018, code lost:
    
        if (r6 == 1073741824) goto L14;
     */
    /* renamed from: ʼʼ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m5962(boolean r4, int r5, int r6, int r7, int r8) {
        /*
            int r5 = r5 - r7
            r7 = 0
            int r5 = java.lang.Math.max(r7, r5)
            r0 = -2
            r1 = -1
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = 1073741824(0x40000000, float:2.0)
            if (r4 == 0) goto L1d
            if (r8 < 0) goto L12
        L10:
            r6 = r3
            goto L30
        L12:
            if (r8 != r1) goto L1a
            if (r6 == r2) goto L22
            if (r6 == 0) goto L1a
            if (r6 == r3) goto L22
        L1a:
            r6 = r7
            r8 = r6
            goto L30
        L1d:
            if (r8 < 0) goto L20
            goto L10
        L20:
            if (r8 != r1) goto L24
        L22:
            r8 = r5
            goto L30
        L24:
            if (r8 != r0) goto L1a
            if (r6 == r2) goto L2e
            if (r6 != r3) goto L2b
            goto L2e
        L2b:
            r8 = r5
            r6 = r7
            goto L30
        L2e:
            r8 = r5
            r6 = r2
        L30:
            int r4 = android.view.View.MeasureSpec.makeMeasureSpec(r8, r6)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: p179.AbstractC2669.m5962(boolean, int, int, int, int):int");
    }

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public static int m5963(View view) {
        return ((C2700) view.getLayoutParams()).f10283.m6008();
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static int m5964(View view) {
        Rect rect = ((C2700) view.getLayoutParams()).f10282;
        return view.getMeasuredHeight() + rect.top + rect.bottom;
    }

    /* renamed from: ـˏ, reason: contains not printable characters */
    public static boolean m5965(int i, int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (i3 > 0 && i != i3) {
            return false;
        }
        if (mode == Integer.MIN_VALUE) {
            return size >= i;
        }
        if (mode != 0) {
            return mode == 1073741824 && size == i;
        }
        return true;
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static int m5966(View view) {
        Rect rect = ((C2700) view.getLayoutParams()).f10282;
        return view.getMeasuredWidth() + rect.left + rect.right;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [ˋˋ.ᴵʼ, java.lang.Object] */
    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public static C2725 m5967(Context context, AttributeSet attributeSet, int i, int i2) {
        ?? obj = new Object();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC1989.f7849, i, i2);
        obj.f10386 = obtainStyledAttributes.getInt(0, 1);
        obj.f10385 = obtainStyledAttributes.getInt(10, 1);
        obj.f10383 = obtainStyledAttributes.getBoolean(9, false);
        obj.f10384 = obtainStyledAttributes.getBoolean(11, false);
        obtainStyledAttributes.recycle();
        return obj;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static int m5968(int i, int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        return mode != Integer.MIN_VALUE ? mode != 1073741824 ? Math.max(i2, i3) : size : Math.min(size, Math.max(i2, i3));
    }

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public static void m5969(View view, int i, int i2, int i3, int i4) {
        C2700 c2700 = (C2700) view.getLayoutParams();
        Rect rect = c2700.f10282;
        view.layout(i + rect.left + ((ViewGroup.MarginLayoutParams) c2700).leftMargin, i2 + rect.top + ((ViewGroup.MarginLayoutParams) c2700).topMargin, (i3 - rect.right) - ((ViewGroup.MarginLayoutParams) c2700).rightMargin, (i4 - rect.bottom) - ((ViewGroup.MarginLayoutParams) c2700).bottomMargin);
    }

    /* renamed from: ʻʿ, reason: contains not printable characters */
    public final void m5970(RecyclerView recyclerView) {
        m5983(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
    }

    /* renamed from: ʻˋ */
    public void mo467(int i, int i2) {
    }

    /* renamed from: ʻٴ */
    public C2700 mo468(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C2700 ? new C2700((C2700) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new C2700((ViewGroup.MarginLayoutParams) layoutParams) : new C2700(layoutParams);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x00ad, code lost:
    
        if ((r5.bottom - r10) > r2) goto L28;
     */
    /* renamed from: ʻᴵ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo2374(androidx.recyclerview.widget.RecyclerView r9, android.view.View r10, android.graphics.Rect r11, boolean r12, boolean r13) {
        /*
            r8 = this;
            int r0 = r8.m5984()
            int r1 = r8.m5989()
            int r2 = r8.f10152
            int r3 = r8.m5987()
            int r2 = r2 - r3
            int r3 = r8.f10148
            int r4 = r8.m5988()
            int r3 = r3 - r4
            int r4 = r10.getLeft()
            int r5 = r11.left
            int r4 = r4 + r5
            int r5 = r10.getScrollX()
            int r4 = r4 - r5
            int r5 = r10.getTop()
            int r6 = r11.top
            int r5 = r5 + r6
            int r10 = r10.getScrollY()
            int r5 = r5 - r10
            int r10 = r11.width()
            int r10 = r10 + r4
            int r11 = r11.height()
            int r11 = r11 + r5
            int r4 = r4 - r0
            r0 = 0
            int r6 = java.lang.Math.min(r0, r4)
            int r5 = r5 - r1
            int r1 = java.lang.Math.min(r0, r5)
            int r10 = r10 - r2
            int r2 = java.lang.Math.max(r0, r10)
            int r11 = r11 - r3
            int r11 = java.lang.Math.max(r0, r11)
            androidx.recyclerview.widget.RecyclerView r3 = r8.f10154
            int r3 = r3.getLayoutDirection()
            r7 = 1
            if (r3 != r7) goto L5e
            if (r2 == 0) goto L59
            goto L66
        L59:
            int r2 = java.lang.Math.max(r6, r10)
            goto L66
        L5e:
            if (r6 == 0) goto L61
            goto L65
        L61:
            int r6 = java.lang.Math.min(r4, r2)
        L65:
            r2 = r6
        L66:
            if (r1 == 0) goto L69
            goto L6d
        L69:
            int r1 = java.lang.Math.min(r5, r11)
        L6d:
            int[] r10 = new int[]{r2, r1}
            r11 = r10[r0]
            r10 = r10[r7]
            if (r13 == 0) goto Lb0
            android.view.View r13 = r9.getFocusedChild()
            if (r13 != 0) goto L7e
            goto Lb5
        L7e:
            int r1 = r8.m5984()
            int r2 = r8.m5989()
            int r3 = r8.f10152
            int r4 = r8.m5987()
            int r3 = r3 - r4
            int r4 = r8.f10148
            int r5 = r8.m5988()
            int r4 = r4 - r5
            androidx.recyclerview.widget.RecyclerView r5 = r8.f10154
            android.graphics.Rect r5 = r5.f1503
            r8.mo521(r13, r5)
            int r13 = r5.left
            int r13 = r13 - r11
            if (r13 >= r3) goto Lb5
            int r13 = r5.right
            int r13 = r13 - r11
            if (r13 <= r1) goto Lb5
            int r13 = r5.top
            int r13 = r13 - r10
            if (r13 >= r4) goto Lb5
            int r13 = r5.bottom
            int r13 = r13 - r10
            if (r13 > r2) goto Lb0
            goto Lb5
        Lb0:
            if (r11 != 0) goto Lb6
            if (r10 == 0) goto Lb5
            goto Lb6
        Lb5:
            return r0
        Lb6:
            if (r12 == 0) goto Lbc
            r9.scrollBy(r11, r10)
            return r7
        Lbc:
            r9.mo652(r11, r10)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: p179.AbstractC2669.mo2374(androidx.recyclerview.widget.RecyclerView, android.view.View, android.graphics.Rect, boolean, boolean):boolean");
    }

    /* renamed from: ʻᵎ */
    public void mo469(C2666 c2666, C2723 c2723, View view, C2535 c2535) {
        c2535.m5678(C1652.m4511(false, mo538() ? m5963(view) : 0, 1, mo506() ? m5963(view) : 0, 1));
    }

    /* renamed from: ʼˈ */
    public boolean mo886() {
        return false;
    }

    /* renamed from: ʼˎ */
    public void mo470(int i, int i2, C2723 c2723, C2676 c2676) {
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x008c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00bc  */
    /* renamed from: ʼـ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo471(p179.C2666 r8, p179.C2723 r9, int r10, android.os.Bundle r11) {
        /*
            Method dump skipped, instructions count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p179.AbstractC2669.mo471(ˋˋ.ʻˋ, ˋˋ.ᐧﹶ, int, android.os.Bundle):boolean");
    }

    /* renamed from: ʼᐧ */
    public int mo859(C2723 c2723) {
        return 0;
    }

    /* renamed from: ʼᵢ, reason: contains not printable characters */
    public final boolean m5971(View view, int i, int i2, C2700 c2700) {
        return (this.f10153 && m5965(view.getMeasuredWidth(), i, ((ViewGroup.MarginLayoutParams) c2700).width) && m5965(view.getMeasuredHeight(), i2, ((ViewGroup.MarginLayoutParams) c2700).height)) ? false : true;
    }

    /* renamed from: ʽ */
    public void mo887(String str) {
        RecyclerView recyclerView = this.f10154;
        if (recyclerView != null) {
            recyclerView.m969(str);
        }
    }

    /* renamed from: ʽʽ */
    public int mo472(View view) {
        return view.getLeft() - ((C2700) view.getLayoutParams()).f10282.left;
    }

    /* renamed from: ʽˑ, reason: contains not printable characters */
    public final boolean m5972(View view, int i, int i2, C2700 c2700) {
        return (!view.isLayoutRequested() && this.f10153 && m5965(view.getWidth(), i, ((ViewGroup.MarginLayoutParams) c2700).width) && m5965(view.getHeight(), i2, ((ViewGroup.MarginLayoutParams) c2700).height)) ? false : true;
    }

    /* renamed from: ʽᵔ */
    public boolean mo475(RecyclerView recyclerView, View view, View view2) {
        C2688 c2688 = this.f10149;
        return (c2688 != null && c2688.f10241) || recyclerView.m955();
    }

    /* renamed from: ʽⁱ, reason: contains not printable characters */
    public final void m5973(View view, C2666 c2666) {
        ʽˑ r0 = this.f10155;
        C2742 c2742 = (C2742) r0.ʽʽ;
        int i = r0.ᴵˊ;
        if (i == 1) {
            throw new IllegalStateException("Cannot call removeView(At) within removeView(At)");
        }
        if (i == 2) {
            throw new IllegalStateException("Cannot call removeView(At) within removeViewIfHidden");
        }
        try {
            r0.ᴵˊ = 1;
            r0.ˊʻ = view;
            int indexOfChild = c2742.f10463.indexOfChild(view);
            if (indexOfChild >= 0) {
                if (((C1681) r0.ˈٴ).m4579(indexOfChild)) {
                    r0.ˊˋ(view);
                }
                c2742.m6145(indexOfChild);
            }
            r0.ᴵˊ = 0;
            r0.ˊʻ = null;
            c2666.m5948(view);
        } catch (Throwable th) {
            r0.ᴵˊ = 0;
            r0.ˊʻ = null;
            throw th;
        }
    }

    /* renamed from: ʽﹳ */
    public C2700 mo476(Context context, AttributeSet attributeSet) {
        return new C2700(context, attributeSet);
    }

    /* renamed from: ʾˊ */
    public void mo991(int i) {
    }

    /* renamed from: ʾˋ */
    public int mo477(View view) {
        return view.getBottom() + ((C2700) view.getLayoutParams()).f10282.bottom;
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final int m5974() {
        ʽˑ r0 = this.f10155;
        if (r0 != null) {
            return r0.ˉٴ();
        }
        return 0;
    }

    /* renamed from: ʾﾞ, reason: contains not printable characters */
    public final void m5975(int i, C2666 c2666) {
        View m5981 = m5981(i);
        m5991(i);
        c2666.m5948(m5981);
    }

    /* renamed from: ʿ */
    public boolean mo479(RecyclerView recyclerView, ArrayList arrayList, int i, int i2) {
        return false;
    }

    /* renamed from: ʿـ */
    public abstract int mo481(int i, C2666 c2666, C2723 c2723);

    /* renamed from: ʿᵢ */
    public void mo2375(RecyclerView recyclerView) {
    }

    /* renamed from: ˆʾ */
    public void mo483(int i, C2676 c2676) {
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m5976(View view, Rect rect) {
        RecyclerView recyclerView = this.f10154;
        if (recyclerView == null) {
            rect.set(0, 0, 0, 0);
        } else {
            rect.set(recyclerView.m947(view));
        }
    }

    /* renamed from: ˈʿ */
    public int mo487(C2666 c2666, C2723 c2723) {
        RecyclerView recyclerView = this.f10154;
        if (recyclerView == null || recyclerView.f1474 == null || !mo538()) {
            return 1;
        }
        return this.f10154.f1474.mo611();
    }

    /* renamed from: ˈˏ */
    public void mo488() {
    }

    /* renamed from: ˈـ */
    public boolean mo865() {
        return this instanceof GridLayoutManager;
    }

    /* renamed from: ˈⁱ */
    public void mo997(int i) {
        RecyclerView recyclerView = this.f10154;
        if (recyclerView != null) {
            int i2 = recyclerView.f1482.ˉٴ();
            for (int i3 = 0; i3 < i2; i3++) {
                recyclerView.f1482.ٴᵢ(i3).offsetLeftAndRight(i);
            }
        }
    }

    /* renamed from: ˉʿ */
    public int mo866(C2723 c2723) {
        return 0;
    }

    /* renamed from: ˉˆ */
    public int mo867(C2723 c2723) {
        return 0;
    }

    /* renamed from: ˉـ */
    public void mo490(AbstractC2727 abstractC2727) {
    }

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final int m5977() {
        RecyclerView recyclerView = this.f10154;
        AbstractC2727 adapter = recyclerView != null ? recyclerView.getAdapter() : null;
        if (adapter != null) {
            return adapter.mo611();
        }
        return 0;
    }

    /* renamed from: ˊʻ */
    public int mo491(View view) {
        return view.getRight() + ((C2700) view.getLayoutParams()).f10282.right;
    }

    /* renamed from: ˊˋ */
    public boolean mo894() {
        return false;
    }

    /* renamed from: ˊᵔ */
    public View mo493(View view, int i) {
        return null;
    }

    /* renamed from: ˋˊ */
    public boolean mo896() {
        return false;
    }

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public final boolean m5978() {
        RecyclerView recyclerView = this.f10154;
        return recyclerView != null && recyclerView.hasFocus();
    }

    /* renamed from: ˎᐧ */
    public void mo499(C2666 c2666) {
        for (int m5974 = m5974() - 1; m5974 >= 0; m5974--) {
            if (!RecyclerView.m927(m5981(m5974)).m6016()) {
                m5975(m5974, c2666);
            }
        }
    }

    /* renamed from: ˏי */
    public abstract C2700 mo502();

    /* renamed from: ˏᵢ */
    public void mo503(C2666 c2666, C2723 c2723, C2535 c2535) {
        if (this.f10154.canScrollVertically(-1) || this.f10154.canScrollHorizontally(-1)) {
            c2535.m5676(8192);
            c2535.m5674(true);
            c2535.m5662(67108864, true);
        }
        if (this.f10154.canScrollVertically(1) || this.f10154.canScrollHorizontally(1)) {
            c2535.m5676(4096);
            c2535.m5674(true);
            c2535.m5662(67108864, true);
        }
        c2535.f9633.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(mo487(c2666, c2723), mo527(c2666, c2723), false, 0));
    }

    /* renamed from: ˑ */
    public boolean mo872(int i, Bundle bundle) {
        RecyclerView recyclerView = this.f10154;
        return mo471(recyclerView.f1464, recyclerView.f1516, i, bundle);
    }

    /* renamed from: ˑʼ */
    public void mo873(RecyclerView recyclerView, int i, int i2) {
        mo467(i, i2);
    }

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public final void m5979(View view, Rect rect) {
        Matrix matrix;
        Rect rect2 = ((C2700) view.getLayoutParams()).f10282;
        rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
        if (this.f10154 != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
            RectF rectF = this.f10154.f1520;
            rectF.set(rect);
            matrix.mapRect(rectF);
            rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
        }
        rect.offset(view.getLeft(), view.getTop());
    }

    /* renamed from: ˑﹳ */
    public abstract boolean mo506();

    /* renamed from: י */
    public Parcelable mo508() {
        return null;
    }

    /* renamed from: יˉ */
    public abstract void mo510(RecyclerView recyclerView, int i);

    /* renamed from: יـ */
    public View mo904(int i) {
        int m5974 = m5974();
        for (int i2 = 0; i2 < m5974; i2++) {
            View m5981 = m5981(i2);
            AbstractC2673 m927 = RecyclerView.m927(m5981);
            if (m927 != null && m927.m6008() == i && !m927.m6016() && (this.f10154.f1516.f10376 || !m927.m6007())) {
                return m5981;
            }
        }
        return null;
    }

    /* renamed from: יﹳ, reason: contains not printable characters */
    public final void m5980(C2666 c2666) {
        ArrayList arrayList = c2666.f10126;
        int size = arrayList.size();
        for (int i = size - 1; i >= 0; i--) {
            View view = ((AbstractC2673) arrayList.get(i)).f10176;
            AbstractC2673 m927 = RecyclerView.m927(view);
            if (!m927.m6016()) {
                m927.m6005(false);
                if (m927.m6020()) {
                    this.f10154.removeDetachedView(view, false);
                }
                AbstractC2722 abstractC2722 = this.f10154.f1492;
                if (abstractC2722 != null) {
                    abstractC2722.m6104(m927);
                }
                m927.m6005(true);
                AbstractC2673 m9272 = RecyclerView.m927(view);
                m9272.f10192 = null;
                m9272.f10178 = false;
                m9272.f10185 &= -33;
                c2666.m5950(m9272);
            }
        }
        arrayList.clear();
        ArrayList arrayList2 = c2666.f10125;
        if (arrayList2 != null) {
            arrayList2.clear();
        }
        if (size > 0) {
            this.f10154.invalidate();
        }
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final View m5981(int i) {
        ʽˑ r0 = this.f10155;
        if (r0 != null) {
            return r0.ٴᵢ(i);
        }
        return null;
    }

    /* renamed from: ـˊ, reason: contains not printable characters */
    public final void m5982() {
        RecyclerView recyclerView = this.f10154;
        if (recyclerView != null) {
            recyclerView.requestLayout();
        }
    }

    /* renamed from: ـᵎ */
    public void mo513(C2666 c2666, C2723 c2723, int i, int i2) {
        this.f10154.m983(i, i2);
    }

    /* renamed from: ـᵢ, reason: contains not printable characters */
    public final void m5983(int i, int i2) {
        this.f10152 = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        this.f10156 = mode;
        if (mode == 0 && !RecyclerView.f1456) {
            this.f10152 = 0;
        }
        this.f10148 = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i2);
        this.f10147 = mode2;
        if (mode2 != 0 || RecyclerView.f1456) {
            return;
        }
        this.f10148 = 0;
    }

    /* renamed from: ـﹶ */
    public void mo514(int i, int i2) {
    }

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final int m5984() {
        RecyclerView recyclerView = this.f10154;
        if (recyclerView != null) {
            return recyclerView.getPaddingLeft();
        }
        return 0;
    }

    /* renamed from: ٴᴵ */
    public void mo879(Rect rect, int i, int i2) {
        int m5987 = m5987() + m5984() + rect.width();
        int m5988 = m5988() + m5989() + rect.height();
        RecyclerView recyclerView = this.f10154;
        WeakHashMap weakHashMap = AbstractC2823.f10603;
        this.f10154.setMeasuredDimension(m5968(i, m5987, recyclerView.getMinimumWidth()), m5968(i2, m5988, this.f10154.getMinimumHeight()));
    }

    /* renamed from: ٴᵢ */
    public int mo516(View view) {
        return view.getTop() - ((C2700) view.getLayoutParams()).f10282.top;
    }

    /* renamed from: ٴﹳ */
    public abstract void mo517(C2666 c2666, C2723 c2723);

    /* renamed from: ٴﹶ */
    public int mo907(C2723 c2723) {
        return 0;
    }

    /* renamed from: ᐧˎ */
    public boolean mo518(RecyclerView recyclerView, View view, Rect rect, boolean z) {
        return mo2374(recyclerView, view, rect, z, false);
    }

    /* renamed from: ᐧᴵ */
    public void mo908(AccessibilityEvent accessibilityEvent) {
        RecyclerView recyclerView = this.f10154;
        C2666 c2666 = recyclerView.f1464;
        if (accessibilityEvent == null) {
            return;
        }
        boolean z = true;
        if (!recyclerView.canScrollVertically(1) && !this.f10154.canScrollVertically(-1) && !this.f10154.canScrollHorizontally(-1) && !this.f10154.canScrollHorizontally(1)) {
            z = false;
        }
        accessibilityEvent.setScrollable(z);
        AbstractC2727 abstractC2727 = this.f10154.f1474;
        if (abstractC2727 != null) {
            accessibilityEvent.setItemCount(abstractC2727.mo611());
        }
    }

    /* renamed from: ᐧﹶ */
    public void mo520(Parcelable parcelable) {
    }

    /* renamed from: ᐧﾞ */
    public View mo881(View view, int i, C2666 c2666, C2723 c2723) {
        return null;
    }

    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public final void m5985(View view, C2535 c2535) {
        AbstractC2673 m927 = RecyclerView.m927(view);
        if (m927 == null || m927.m6007()) {
            return;
        }
        ʽˑ r1 = this.f10155;
        if (((ArrayList) r1.ᴵᵔ).contains(m927.f10176)) {
            return;
        }
        RecyclerView recyclerView = this.f10154;
        mo469(recyclerView.f1464, recyclerView.f1516, view, c2535);
    }

    /* renamed from: ᴵˊ */
    public void mo521(View view, Rect rect) {
        boolean z = RecyclerView.f1450;
        C2700 c2700 = (C2700) view.getLayoutParams();
        Rect rect2 = c2700.f10282;
        rect.set((view.getLeft() - rect2.left) - ((ViewGroup.MarginLayoutParams) c2700).leftMargin, (view.getTop() - rect2.top) - ((ViewGroup.MarginLayoutParams) c2700).topMargin, view.getRight() + rect2.right + ((ViewGroup.MarginLayoutParams) c2700).rightMargin, view.getBottom() + rect2.bottom + ((ViewGroup.MarginLayoutParams) c2700).bottomMargin);
    }

    /* renamed from: ᴵˑ */
    public void mo1009(int i) {
        RecyclerView recyclerView = this.f10154;
        if (recyclerView != null) {
            int i2 = recyclerView.f1482.ˉٴ();
            for (int i3 = 0; i3 < i2; i3++) {
                recyclerView.f1482.ٴᵢ(i3).offsetTopAndBottom(i);
            }
        }
    }

    /* renamed from: ᵎʻ */
    public abstract void mo523(C2723 c2723);

    /* renamed from: ᵎʿ, reason: contains not printable characters */
    public final void m5986(C2666 c2666, int i, View view) {
        AbstractC2673 m927 = RecyclerView.m927(view);
        if (m927.m6016()) {
            if (RecyclerView.f1455) {
                String str = "ignoring view " + m927;
                return;
            }
            return;
        }
        if (m927.m6015() && !m927.m6007() && !this.f10154.f1474.f10418) {
            m5991(i);
            c2666.m5950(m927);
        } else {
            m5981(i);
            this.f10155.ᵢˏ(i);
            c2666.m5954(view);
            this.f10154.f1505.m9564(m927);
        }
    }

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final int m5987() {
        RecyclerView recyclerView = this.f10154;
        if (recyclerView != null) {
            return recyclerView.getPaddingRight();
        }
        return 0;
    }

    /* renamed from: ᵎᵔ */
    public void mo910(RecyclerView recyclerView) {
    }

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final int m5988() {
        RecyclerView recyclerView = this.f10154;
        if (recyclerView != null) {
            return recyclerView.getPaddingBottom();
        }
        return 0;
    }

    /* renamed from: ᵎﹶ */
    public boolean mo524(C2700 c2700) {
        return c2700 != null;
    }

    /* renamed from: ᵔʾ */
    public int mo911(C2723 c2723) {
        return 0;
    }

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final int m5989() {
        RecyclerView recyclerView = this.f10154;
        if (recyclerView != null) {
            return recyclerView.getPaddingTop();
        }
        return 0;
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final void m5990(C2666 c2666) {
        for (int m5974 = m5974() - 1; m5974 >= 0; m5974--) {
            m5986(c2666, m5974, m5981(m5974));
        }
    }

    /* renamed from: ᵢˏ */
    public int mo527(C2666 c2666, C2723 c2723) {
        RecyclerView recyclerView = this.f10154;
        if (recyclerView == null || recyclerView.f1474 == null || !mo506()) {
            return 1;
        }
        return this.f10154.f1474.mo611();
    }

    /* renamed from: ⁱˉ, reason: contains not printable characters */
    public final void m5991(int i) {
        if (m5981(i) != null) {
            ʽˑ r0 = this.f10155;
            C2742 c2742 = (C2742) r0.ʽʽ;
            int i2 = r0.ᴵˊ;
            if (i2 == 1) {
                throw new IllegalStateException("Cannot call removeView(At) within removeView(At)");
            }
            if (i2 == 2) {
                throw new IllegalStateException("Cannot call removeView(At) within removeViewIfHidden");
            }
            try {
                int i3 = r0.ᵎⁱ(i);
                View childAt = c2742.f10463.getChildAt(i3);
                if (childAt != null) {
                    r0.ᴵˊ = 1;
                    r0.ˊʻ = childAt;
                    if (((C1681) r0.ˈٴ).m4579(i3)) {
                        r0.ˊˋ(childAt);
                    }
                    c2742.m6145(i3);
                }
                r0.ᴵˊ = 0;
                r0.ˊʻ = null;
            } catch (Throwable th) {
                r0.ᴵˊ = 0;
                r0.ˊʻ = null;
                throw th;
            }
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m5992(int i, View view, boolean z) {
        AbstractC2673 m927 = RecyclerView.m927(view);
        if (z || m927.m6007()) {
            C3368 c3368 = (C3368) this.f10154.f1505.f18036;
            C2685 c2685 = (C2685) c3368.get(m927);
            if (c2685 == null) {
                c2685 = C2685.m6033();
                c3368.put(m927, c2685);
            }
            c2685.f10230 |= 1;
        } else {
            this.f10154.f1505.m9564(m927);
        }
        C2700 c2700 = (C2700) view.getLayoutParams();
        if (m927.m6019() || m927.m6012()) {
            if (m927.m6012()) {
                m927.f10192.m5952(m927);
            } else {
                m927.f10185 &= -33;
            }
            this.f10155.ﾞᴵ(view, i, view.getLayoutParams(), false);
        } else {
            if (view.getParent() == this.f10154) {
                int i2 = this.f10155.ˆﾞ(view);
                if (i == -1) {
                    i = this.f10155.ˉٴ();
                }
                if (i2 == -1) {
                    StringBuilder sb = new StringBuilder("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:");
                    sb.append(this.f10154.indexOfChild(view));
                    throw new IllegalStateException(AbstractC2305.m5376(this.f10154, sb));
                }
                if (i2 != i) {
                    AbstractC2669 abstractC2669 = this.f10154.f1521;
                    View m5981 = abstractC2669.m5981(i2);
                    if (m5981 == null) {
                        throw new IllegalArgumentException("Cannot move a child from non-existing index:" + i2 + abstractC2669.f10154.toString());
                    }
                    abstractC2669.m5981(i2);
                    abstractC2669.f10155.ᵢˏ(i2);
                    C2700 c27002 = (C2700) m5981.getLayoutParams();
                    AbstractC2673 m9272 = RecyclerView.m927(m5981);
                    if (m9272.m6007()) {
                        C3368 c33682 = (C3368) abstractC2669.f10154.f1505.f18036;
                        C2685 c26852 = (C2685) c33682.get(m9272);
                        if (c26852 == null) {
                            c26852 = C2685.m6033();
                            c33682.put(m9272, c26852);
                        }
                        c26852.f10230 = 1 | c26852.f10230;
                    } else {
                        abstractC2669.f10154.f1505.m9564(m9272);
                    }
                    abstractC2669.f10155.ﾞᴵ(m5981, i, c27002, m9272.m6007());
                }
            } else {
                this.f10155.ˈ(i, view, false);
                c2700.f10280 = true;
                C2688 c2688 = this.f10149;
                if (c2688 != null && c2688.f10241) {
                    c2688.f10246.getClass();
                    AbstractC2673 m9273 = RecyclerView.m927(view);
                    if ((m9273 != null ? m9273.m6008() : -1) == c2688.f10247) {
                        c2688.f10249 = view;
                        if (RecyclerView.f1455) {
                        }
                    }
                }
            }
        }
        if (c2700.f10281) {
            if (RecyclerView.f1455) {
                String str = "consuming pending invalidate on child " + c2700.f10283;
            }
            m927.f10176.invalidate();
            c2700.f10281 = false;
        }
    }

    /* renamed from: ⁱי */
    public abstract int mo530(int i, C2666 c2666, C2723 c2723);

    /* renamed from: ⁱᴵ, reason: contains not printable characters */
    public final void m5993(int i, int i2) {
        int m5974 = m5974();
        if (m5974 == 0) {
            this.f10154.m983(i, i2);
            return;
        }
        int i3 = Integer.MIN_VALUE;
        int i4 = Integer.MAX_VALUE;
        int i5 = Integer.MIN_VALUE;
        int i6 = Integer.MAX_VALUE;
        for (int i7 = 0; i7 < m5974; i7++) {
            View m5981 = m5981(i7);
            Rect rect = this.f10154.f1503;
            mo521(m5981, rect);
            int i8 = rect.left;
            if (i8 < i6) {
                i6 = i8;
            }
            int i9 = rect.right;
            if (i9 > i3) {
                i3 = i9;
            }
            int i10 = rect.top;
            if (i10 < i4) {
                i4 = i10;
            }
            int i11 = rect.bottom;
            if (i11 > i5) {
                i5 = i11;
            }
        }
        this.f10154.f1503.set(i6, i4, i3, i5);
        mo879(this.f10154.f1503, i, i2);
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final View m5994(View view) {
        View m949;
        RecyclerView recyclerView = this.f10154;
        if (recyclerView == null || (m949 = recyclerView.m949(view)) == null || ((ArrayList) this.f10155.ᴵᵔ).contains(m949)) {
            return null;
        }
        return m949;
    }

    /* renamed from: ﹳⁱ */
    public abstract void mo531(int i);

    /* renamed from: ﹳﹳ */
    public void mo532(int i, int i2) {
    }

    /* renamed from: ﹶ, reason: contains not printable characters */
    public final void m5995(boolean z) {
        if (z != this.f10143) {
            this.f10143 = z;
            this.f10145 = 0;
            RecyclerView recyclerView = this.f10154;
            if (recyclerView != null) {
                recyclerView.f1464.m5956();
            }
        }
    }

    /* renamed from: ﹶˎ, reason: contains not printable characters */
    public final void m5996(RecyclerView recyclerView) {
        if (recyclerView == null) {
            this.f10154 = null;
            this.f10155 = null;
            this.f10152 = 0;
            this.f10148 = 0;
        } else {
            this.f10154 = recyclerView;
            this.f10155 = recyclerView.f1482;
            this.f10152 = recyclerView.getWidth();
            this.f10148 = recyclerView.getHeight();
        }
        this.f10156 = 1073741824;
        this.f10147 = 1073741824;
    }

    /* renamed from: ﹶᐧ */
    public void mo534(int i, int i2) {
    }

    /* renamed from: ﾞʻ */
    public int mo884(C2723 c2723) {
        return 0;
    }

    /* renamed from: ﾞˋ */
    public void mo536(C2688 c2688) {
        C2688 c26882 = this.f10149;
        if (c26882 != null && c2688 != c26882 && c26882.f10241) {
            c26882.m6037();
        }
        this.f10149 = c2688;
        RecyclerView recyclerView = this.f10154;
        RunnableC2705 runnableC2705 = recyclerView.f1507;
        runnableC2705.f10296.removeCallbacks(runnableC2705);
        runnableC2705.f10292.abortAnimation();
        if (c2688.f10245) {
            String str = "An instance of " + c2688.getClass().getSimpleName() + " was started more than once. Each instance of" + c2688.getClass().getSimpleName() + " is intended to only be used once. You should create a new instance for each use.";
        }
        c2688.f10246 = recyclerView;
        c2688.f10236 = this;
        int i = c2688.f10247;
        if (i == -1) {
            throw new IllegalArgumentException("Invalid target position");
        }
        recyclerView.f1516.f10380 = i;
        c2688.f10241 = true;
        c2688.f10238 = true;
        c2688.f10249 = recyclerView.f1521.mo904(i);
        c2688.f10246.f1507.m6076();
        c2688.f10245 = true;
    }

    /* renamed from: ﾞᴵ */
    public abstract boolean mo538();
}
