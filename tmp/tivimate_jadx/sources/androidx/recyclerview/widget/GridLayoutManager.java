package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import j$.util.DesugarCollections;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import java.util.WeakHashMap;
import p075.C1652;
import p158.C2526;
import p158.C2535;
import p179.AbstractC2669;
import p179.AbstractC2727;
import p179.C2666;
import p179.C2676;
import p179.C2697;
import p179.C2698;
import p179.C2700;
import p179.C2717;
import p179.C2723;
import p186.AbstractC2823;
import p307.AbstractC3740;
import ﹶﾞ.ⁱי;

/* loaded from: classes.dex */
public class GridLayoutManager extends LinearLayoutManager {

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public static final Set f1421 = DesugarCollections.unmodifiableSet(new HashSet(Arrays.asList(17, 66, 33, 130)));

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public int f1422;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public int f1423;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public View[] f1424;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public int f1425;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final SparseIntArray f1426;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public int[] f1427;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public boolean f1428;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final ⁱי f1429;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final SparseIntArray f1430;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final Rect f1431;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public int f1432;

    public GridLayoutManager(int i) {
        super(1);
        this.f1428 = false;
        this.f1425 = -1;
        this.f1430 = new SparseIntArray();
        this.f1426 = new SparseIntArray();
        this.f1429 = new ⁱי(24);
        this.f1431 = new Rect();
        this.f1422 = -1;
        this.f1432 = -1;
        this.f1423 = -1;
        m875(i);
    }

    public GridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f1428 = false;
        this.f1425 = -1;
        this.f1430 = new SparseIntArray();
        this.f1426 = new SparseIntArray();
        this.f1429 = new ⁱי(24);
        this.f1431 = new Rect();
        this.f1422 = -1;
        this.f1432 = -1;
        this.f1423 = -1;
        m875(AbstractC2669.m5967(context, attributeSet, i, i2).f10385);
    }

    /* renamed from: ʻˆ, reason: contains not printable characters */
    public final void m858(int i) {
        int i2;
        int[] iArr = this.f1427;
        int i3 = this.f1425;
        if (iArr == null || iArr.length != i3 + 1 || iArr[iArr.length - 1] != i) {
            iArr = new int[i3 + 1];
        }
        int i4 = 0;
        iArr[0] = 0;
        int i5 = i / i3;
        int i6 = i % i3;
        int i7 = 0;
        for (int i8 = 1; i8 <= i3; i8++) {
            i4 += i6;
            if (i4 <= 0 || i3 - i4 >= i6) {
                i2 = i5;
            } else {
                i2 = i5 + 1;
                i4 -= i3;
            }
            i7 += i2;
            iArr[i8] = i7;
        }
        this.f1427 = iArr;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [ˋˋ.ˊᵔ, ˋˋ.ˊʻ] */
    /* JADX WARN: Type inference failed for: r0v2, types: [ˋˋ.ˊᵔ, ˋˋ.ˊʻ] */
    @Override // p179.AbstractC2669
    /* renamed from: ʻٴ */
    public final C2700 mo468(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ?? c2700 = new C2700((ViewGroup.MarginLayoutParams) layoutParams);
            c2700.f10276 = -1;
            c2700.f10277 = 0;
            return c2700;
        }
        ?? c27002 = new C2700(layoutParams);
        c27002.f10276 = -1;
        c27002.f10277 = 0;
        return c27002;
    }

    @Override // p179.AbstractC2669
    /* renamed from: ʻᵎ */
    public final void mo469(C2666 c2666, C2723 c2723, View view, C2535 c2535) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof C2698)) {
            m5985(view, c2535);
            return;
        }
        C2698 c2698 = (C2698) layoutParams;
        int m880 = m880(c2698.f10283.m6008(), c2666, c2723);
        if (this.f1435 == 0) {
            c2535.m5678(C1652.m4511(false, c2698.f10276, c2698.f10277, m880, 1));
        } else {
            c2535.m5678(C1652.m4511(false, m880, 1, c2698.f10276, c2698.f10277));
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, p179.AbstractC2669
    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final int mo859(C2723 c2723) {
        return m914(c2723);
    }

    /* renamed from: ʽᐧ, reason: contains not printable characters */
    public final int m860(int i) {
        if (this.f1435 == 1) {
            RecyclerView recyclerView = this.f10154;
            return m880(i, recyclerView.f1464, recyclerView.f1516);
        }
        RecyclerView recyclerView2 = this.f10154;
        return m878(i, recyclerView2.f1464, recyclerView2.f1516);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [ˋˋ.ˊᵔ, ˋˋ.ˊʻ] */
    @Override // p179.AbstractC2669
    /* renamed from: ʽﹳ */
    public final C2700 mo476(Context context, AttributeSet attributeSet) {
        ?? c2700 = new C2700(context, attributeSet);
        c2700.f10276 = -1;
        c2700.f10277 = 0;
        return c2700;
    }

    /* renamed from: ʾˏ, reason: contains not printable characters */
    public final int m861(int i, int i2) {
        if (this.f1435 != 1 || !m889()) {
            int[] iArr = this.f1427;
            return iArr[i2 + i] - iArr[i];
        }
        int[] iArr2 = this.f1427;
        int i3 = this.f1425;
        return iArr2[i3 - i] - iArr2[(i3 - i) - i2];
    }

    /* renamed from: ʿˎ, reason: contains not printable characters */
    public final void m862() {
        int m5988;
        int m5989;
        if (this.f1435 == 1) {
            m5988 = this.f10152 - m5987();
            m5989 = m5984();
        } else {
            m5988 = this.f10148 - m5988();
            m5989 = m5989();
        }
        m858(m5988 - m5989);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, p179.AbstractC2669
    /* renamed from: ʿـ */
    public final int mo481(int i, C2666 c2666, C2723 c2723) {
        m862();
        m871();
        return super.mo481(i, c2666, c2723);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* renamed from: ˆˎ, reason: contains not printable characters */
    public final void mo863(C2666 c2666, C2723 c2723, C2697 c2697, int i) {
        m862();
        if (c2723.m6109() > 0 && !c2723.f10376) {
            boolean z = i == 1;
            int m878 = m878(c2697.f10273, c2666, c2723);
            if (z) {
                while (m878 > 0) {
                    int i2 = c2697.f10273;
                    if (i2 <= 0) {
                        break;
                    }
                    int i3 = i2 - 1;
                    c2697.f10273 = i3;
                    m878 = m878(i3, c2666, c2723);
                }
            } else {
                int m6109 = c2723.m6109() - 1;
                int i4 = c2697.f10273;
                while (i4 < m6109) {
                    int i5 = i4 + 1;
                    int m8782 = m878(i5, c2666, c2723);
                    if (m8782 <= m878) {
                        break;
                    }
                    i4 = i5;
                    m878 = m8782;
                }
                c2697.f10273 = i4;
            }
        }
        m871();
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x008c, code lost:
    
        r22.f10429 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x008e, code lost:
    
        return;
     */
    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* renamed from: ˆﹳ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo864(p179.C2666 r19, p179.C2723 r20, p179.C2717 r21, p179.C2732 r22) {
        /*
            Method dump skipped, instructions count: 608
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.mo864(ˋˋ.ʻˋ, ˋˋ.ᐧﹶ, ˋˋ.ٴʼ, ˋˋ.ᵎⁱ):void");
    }

    @Override // p179.AbstractC2669
    /* renamed from: ˈʿ */
    public final int mo487(C2666 c2666, C2723 c2723) {
        if (this.f1435 == 0) {
            return Math.min(this.f1425, m5977());
        }
        if (c2723.m6109() < 1) {
            return 0;
        }
        return m880(c2723.m6109() - 1, c2666, c2723) + 1;
    }

    @Override // p179.AbstractC2669
    /* renamed from: ˈˏ */
    public final void mo488() {
        ⁱי r0 = this.f1429;
        r0.ʻٴ();
        ((SparseIntArray) r0.ʽʽ).clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, p179.AbstractC2669
    /* renamed from: ˈـ, reason: contains not printable characters */
    public final boolean mo865() {
        return this.f1446 == null && !this.f1428;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, p179.AbstractC2669
    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final int mo866(C2723 c2723) {
        return m914(c2723);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, p179.AbstractC2669
    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final int mo867(C2723 c2723) {
        return m917(c2723);
    }

    /* renamed from: ˊـ, reason: contains not printable characters */
    public final int m868(int i, C2666 c2666, C2723 c2723) {
        boolean z = c2723.f10376;
        ⁱי r0 = this.f1429;
        if (!z) {
            r0.getClass();
            return 1;
        }
        int i2 = this.f1430.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        if (c2666.m5958(i) != -1) {
            r0.getClass();
            return 1;
        }
        String str = "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i;
        return 1;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* renamed from: ˊﹳ, reason: contains not printable characters */
    public final View mo869(C2666 c2666, C2723 c2723, boolean z, boolean z2) {
        int i;
        int i2;
        int m5974 = m5974();
        int i3 = 1;
        if (z2) {
            i2 = m5974() - 1;
            i = -1;
            i3 = -1;
        } else {
            i = m5974;
            i2 = 0;
        }
        int m6109 = c2723.m6109();
        m918();
        int mo3822 = this.f1447.mo3822();
        int mo3818 = this.f1447.mo3818();
        View view = null;
        View view2 = null;
        while (i2 != i) {
            View m5981 = m5981(i2);
            int m5963 = AbstractC2669.m5963(m5981);
            if (m5963 >= 0 && m5963 < m6109 && m878(m5963, c2666, c2723) == 0) {
                if (((C2700) m5981.getLayoutParams()).f10283.m6007()) {
                    if (view2 == null) {
                        view2 = m5981;
                    }
                } else {
                    if (this.f1447.mo3826(m5981) < mo3818 && this.f1447.mo3821(m5981) >= mo3822) {
                        return m5981;
                    }
                    if (view == null) {
                        view = m5981;
                    }
                }
            }
            i2 += i3;
        }
        return view != null ? view : view2;
    }

    /* renamed from: ˎᵎ, reason: contains not printable characters */
    public final HashSet m870(int i, int i2) {
        HashSet hashSet = new HashSet();
        RecyclerView recyclerView = this.f10154;
        int m868 = m868(i2, recyclerView.f1464, recyclerView.f1516);
        for (int i3 = i; i3 < i + m868; i3++) {
            hashSet.add(Integer.valueOf(i3));
        }
        return hashSet;
    }

    /* renamed from: ˏʻ, reason: contains not printable characters */
    public final void m871() {
        View[] viewArr = this.f1424;
        if (viewArr == null || viewArr.length != this.f1425) {
            this.f1424 = new View[this.f1425];
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, p179.AbstractC2669
    /* renamed from: ˏי */
    public final C2700 mo502() {
        return this.f1435 == 0 ? new C2698(-2, -1) : new C2698(-1, -2);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, p179.AbstractC2669
    /* renamed from: ˏᵢ */
    public final void mo503(C2666 c2666, C2723 c2723, C2535 c2535) {
        super.mo503(c2666, c2723, c2535);
        c2535.m5665(GridView.class.getName());
        AbstractC2727 abstractC2727 = this.f10154.f1474;
        if (abstractC2727 == null || abstractC2727.mo611() <= 1) {
            return;
        }
        c2535.m5675(C2526.f9619);
    }

    /* JADX WARN: Removed duplicated region for block: B:113:0x027e  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0213  */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, p179.AbstractC2669
    /* renamed from: ˑ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo872(int r12, android.os.Bundle r13) {
        /*
            Method dump skipped, instructions count: 739
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.mo872(int, android.os.Bundle):boolean");
    }

    @Override // p179.AbstractC2669
    /* renamed from: ˑʼ, reason: contains not printable characters */
    public final void mo873(RecyclerView recyclerView, int i, int i2) {
        ⁱי r1 = this.f1429;
        r1.ʻٴ();
        ((SparseIntArray) r1.ʽʽ).clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* renamed from: ˑˆ, reason: contains not printable characters */
    public final void mo874(C2723 c2723, C2717 c2717, C2676 c2676) {
        int i;
        int i2 = this.f1425;
        for (int i3 = 0; i3 < this.f1425 && (i = c2717.f10333) >= 0 && i < c2723.m6109() && i2 > 0; i3++) {
            c2676.m6025(c2717.f10333, Math.max(0, c2717.f10336));
            this.f1429.getClass();
            i2--;
            c2717.f10333 += c2717.f10334;
        }
    }

    /* renamed from: ˑˉ, reason: contains not printable characters */
    public final void m875(int i) {
        if (i == this.f1425) {
            return;
        }
        this.f1428 = true;
        if (i < 1) {
            throw new IllegalArgumentException(AbstractC3740.m7932(i, "Span count should be at least 1. Provided "));
        }
        this.f1425 = i;
        this.f1429.ʻٴ();
        m5982();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    /* renamed from: יʿ, reason: contains not printable characters */
    public final void mo876(boolean z) {
        if (z) {
            throw new UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
        }
        super.mo876(false);
    }

    /* renamed from: יⁱ, reason: contains not printable characters */
    public final int m877(int i) {
        if (this.f1435 == 0) {
            RecyclerView recyclerView = this.f10154;
            return m880(i, recyclerView.f1464, recyclerView.f1516);
        }
        RecyclerView recyclerView2 = this.f10154;
        return m878(i, recyclerView2.f1464, recyclerView2.f1516);
    }

    /* renamed from: ـˑ, reason: contains not printable characters */
    public final int m878(int i, C2666 c2666, C2723 c2723) {
        boolean z = c2723.f10376;
        ⁱי r0 = this.f1429;
        if (!z) {
            int i2 = this.f1425;
            r0.getClass();
            return i % i2;
        }
        int i3 = this.f1426.get(i, -1);
        if (i3 != -1) {
            return i3;
        }
        int m5958 = c2666.m5958(i);
        if (m5958 != -1) {
            int i4 = this.f1425;
            r0.getClass();
            return m5958 % i4;
        }
        String str = "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:" + i;
        return 0;
    }

    @Override // p179.AbstractC2669
    /* renamed from: ـﹶ */
    public final void mo514(int i, int i2) {
        ⁱי r1 = this.f1429;
        r1.ʻٴ();
        ((SparseIntArray) r1.ʽʽ).clear();
    }

    @Override // p179.AbstractC2669
    /* renamed from: ٴᴵ, reason: contains not printable characters */
    public final void mo879(Rect rect, int i, int i2) {
        int m5968;
        int m59682;
        if (this.f1427 == null) {
            super.mo879(rect, i, i2);
        }
        int m5987 = m5987() + m5984();
        int m5988 = m5988() + m5989();
        if (this.f1435 == 1) {
            int height = rect.height() + m5988;
            RecyclerView recyclerView = this.f10154;
            WeakHashMap weakHashMap = AbstractC2823.f10603;
            m59682 = AbstractC2669.m5968(i2, height, recyclerView.getMinimumHeight());
            int[] iArr = this.f1427;
            m5968 = AbstractC2669.m5968(i, iArr[iArr.length - 1] + m5987, this.f10154.getMinimumWidth());
        } else {
            int width = rect.width() + m5987;
            RecyclerView recyclerView2 = this.f10154;
            WeakHashMap weakHashMap2 = AbstractC2823.f10603;
            m5968 = AbstractC2669.m5968(i, width, recyclerView2.getMinimumWidth());
            int[] iArr2 = this.f1427;
            m59682 = AbstractC2669.m5968(i2, iArr2[iArr2.length - 1] + m5988, this.f10154.getMinimumHeight());
        }
        this.f10154.setMeasuredDimension(m5968, m59682);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, p179.AbstractC2669
    /* renamed from: ٴﹳ */
    public final void mo517(C2666 c2666, C2723 c2723) {
        boolean z = c2723.f10376;
        SparseIntArray sparseIntArray = this.f1426;
        SparseIntArray sparseIntArray2 = this.f1430;
        if (z) {
            int m5974 = m5974();
            for (int i = 0; i < m5974; i++) {
                C2698 c2698 = (C2698) m5981(i).getLayoutParams();
                int m6008 = c2698.f10283.m6008();
                sparseIntArray2.put(m6008, c2698.f10277);
                sparseIntArray.put(m6008, c2698.f10276);
            }
        }
        super.mo517(c2666, c2723);
        sparseIntArray2.clear();
        sparseIntArray.clear();
    }

    /* renamed from: ᐧˏ, reason: contains not printable characters */
    public final int m880(int i, C2666 c2666, C2723 c2723) {
        boolean z = c2723.f10376;
        ⁱי r0 = this.f1429;
        if (!z) {
            int i2 = this.f1425;
            r0.getClass();
            return ⁱי.ˏי(i, i2);
        }
        int m5958 = c2666.m5958(i);
        if (m5958 != -1) {
            int i3 = this.f1425;
            r0.getClass();
            return ⁱי.ˏי(m5958, i3);
        }
        String str = "Cannot find span size for pre layout position. " + i;
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x00c9, code lost:
    
        if (r13 == (r2 > r15)) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00f2, code lost:
    
        if (r13 == (r2 > r8)) goto L72;
     */
    @Override // androidx.recyclerview.widget.LinearLayoutManager, p179.AbstractC2669
    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View mo881(android.view.View r23, int r24, p179.C2666 r25, p179.C2723 r26) {
        /*
            Method dump skipped, instructions count: 305
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.GridLayoutManager.mo881(android.view.View, int, ˋˋ.ʻˋ, ˋˋ.ᐧﹶ):android.view.View");
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, p179.AbstractC2669
    /* renamed from: ᵎʻ */
    public final void mo523(C2723 c2723) {
        View mo904;
        super.mo523(c2723);
        this.f1428 = false;
        int i = this.f1422;
        if (i == -1 || (mo904 = mo904(i)) == null) {
            return;
        }
        mo904.sendAccessibilityEvent(67108864);
        this.f1422 = -1;
    }

    @Override // p179.AbstractC2669
    /* renamed from: ᵎﹶ */
    public final boolean mo524(C2700 c2700) {
        return c2700 instanceof C2698;
    }

    @Override // p179.AbstractC2669
    /* renamed from: ᵢˏ */
    public final int mo527(C2666 c2666, C2723 c2723) {
        if (this.f1435 == 1) {
            return Math.min(this.f1425, m5977());
        }
        if (c2723.m6109() < 1) {
            return 0;
        }
        return m880(c2723.m6109() - 1, c2666, c2723) + 1;
    }

    /* renamed from: ᵢי, reason: contains not printable characters */
    public final void m882(int i, View view, boolean z) {
        int i2;
        int i3;
        C2698 c2698 = (C2698) view.getLayoutParams();
        Rect rect = c2698.f10282;
        int i4 = rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) c2698).topMargin + ((ViewGroup.MarginLayoutParams) c2698).bottomMargin;
        int i5 = rect.left + rect.right + ((ViewGroup.MarginLayoutParams) c2698).leftMargin + ((ViewGroup.MarginLayoutParams) c2698).rightMargin;
        int m861 = m861(c2698.f10276, c2698.f10277);
        if (this.f1435 == 1) {
            i3 = AbstractC2669.m5962(false, m861, i, i5, ((ViewGroup.MarginLayoutParams) c2698).width);
            i2 = AbstractC2669.m5962(true, this.f1447.mo3827(), this.f10147, i4, ((ViewGroup.MarginLayoutParams) c2698).height);
        } else {
            int m5962 = AbstractC2669.m5962(false, m861, i, i4, ((ViewGroup.MarginLayoutParams) c2698).height);
            int m59622 = AbstractC2669.m5962(true, this.f1447.mo3827(), this.f10156, i5, ((ViewGroup.MarginLayoutParams) c2698).width);
            i2 = m5962;
            i3 = m59622;
        }
        C2700 c2700 = (C2700) view.getLayoutParams();
        if (z ? m5971(view, i3, i2, c2700) : m5972(view, i3, i2, c2700)) {
            view.measure(i3, i2);
        }
    }

    /* renamed from: ⁱʾ, reason: contains not printable characters */
    public final HashSet m883(int i) {
        return m870(m860(i), i);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, p179.AbstractC2669
    /* renamed from: ⁱי */
    public final int mo530(int i, C2666 c2666, C2723 c2723) {
        m862();
        m871();
        return super.mo530(i, c2666, c2723);
    }

    @Override // p179.AbstractC2669
    /* renamed from: ﹳﹳ */
    public final void mo532(int i, int i2) {
        ⁱי r1 = this.f1429;
        r1.ʻٴ();
        ((SparseIntArray) r1.ʽʽ).clear();
    }

    @Override // p179.AbstractC2669
    /* renamed from: ﹶᐧ */
    public final void mo534(int i, int i2) {
        ⁱי r1 = this.f1429;
        r1.ʻٴ();
        ((SparseIntArray) r1.ʽʽ).clear();
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, p179.AbstractC2669
    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final int mo884(C2723 c2723) {
        return m917(c2723);
    }
}
