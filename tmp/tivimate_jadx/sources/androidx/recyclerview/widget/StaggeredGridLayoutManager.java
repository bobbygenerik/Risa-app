package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.leanback.widget.RunnableC0142;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.WeakHashMap;
import p035.AbstractC1237;
import p075.C1652;
import p158.C2535;
import p179.AbstractC2669;
import p179.AbstractC2727;
import p179.AbstractC2741;
import p179.C2666;
import p179.C2668;
import p179.C2676;
import p179.C2683;
import p179.C2688;
import p179.C2700;
import p179.C2713;
import p179.C2718;
import p179.C2723;
import p179.C2725;
import p179.C2740;
import p179.InterfaceC2677;
import p186.AbstractC2823;
import p404.C4790;

/* loaded from: classes.dex */
public class StaggeredGridLayoutManager extends AbstractC2669 implements InterfaceC2677 {

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final C2718 f1534;

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final BitSet f1535;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final int f1536;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final int f1537;

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public int f1538;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public boolean f1541;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final C2683 f1542;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public C2668 f1543;

    /* renamed from: ˏי, reason: contains not printable characters */
    public final int f1544;

    /* renamed from: יـ, reason: contains not printable characters */
    public final AbstractC1237 f1545;

    /* renamed from: ـˆ, reason: contains not printable characters */
    public boolean f1546;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public int[] f1547;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final Rect f1548;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C4790 f1549;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public boolean f1550;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final RunnableC0142 f1551;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final boolean f1552;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final C2713[] f1553;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final AbstractC1237 f1555;

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public boolean f1540 = false;

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public int f1554 = -1;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public int f1539 = Integer.MIN_VALUE;

    /* JADX WARN: Type inference failed for: r6v3, types: [java.lang.Object, ˋˋ.ٴᵢ] */
    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.f1536 = -1;
        this.f1546 = false;
        C4790 c4790 = new C4790(21, false);
        this.f1549 = c4790;
        this.f1537 = 2;
        this.f1548 = new Rect();
        this.f1542 = new C2683(this);
        this.f1552 = true;
        this.f1551 = new RunnableC0142(21, this);
        C2725 m5967 = AbstractC2669.m5967(context, attributeSet, i, i2);
        int i3 = m5967.f10386;
        if (i3 != 0 && i3 != 1) {
            throw new IllegalArgumentException("invalid orientation.");
        }
        mo887(null);
        if (i3 != this.f1544) {
            this.f1544 = i3;
            AbstractC1237 abstractC1237 = this.f1555;
            this.f1555 = this.f1545;
            this.f1545 = abstractC1237;
            m5982();
        }
        int i4 = m5967.f10385;
        mo887(null);
        if (i4 != this.f1536) {
            c4790.m9569();
            m5982();
            this.f1536 = i4;
            this.f1535 = new BitSet(this.f1536);
            this.f1553 = new C2713[this.f1536];
            for (int i5 = 0; i5 < this.f1536; i5++) {
                this.f1553[i5] = new C2713(this, i5);
            }
            m5982();
        }
        boolean z = m5967.f10383;
        mo887(null);
        C2668 c2668 = this.f1543;
        if (c2668 != null && c2668.f10136 != z) {
            c2668.f10136 = z;
        }
        this.f1546 = z;
        m5982();
        ?? obj = new Object();
        obj.f10349 = true;
        obj.f10350 = 0;
        obj.f10346 = 0;
        this.f1534 = obj;
        this.f1555 = AbstractC1237.m3817(this, this.f1544);
        this.f1545 = AbstractC1237.m3817(this, 1 - this.f1544);
    }

    /* renamed from: ˉʽ, reason: contains not printable characters */
    public static int m988(int i, int i2, int i3) {
        int mode;
        return (!(i2 == 0 && i3 == 0) && ((mode = View.MeasureSpec.getMode(i)) == Integer.MIN_VALUE || mode == 1073741824)) ? View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i) - i2) - i3), mode) : i;
    }

    /* renamed from: ʻʼ, reason: contains not printable characters */
    public final int m989(int i, C2666 c2666, C2723 c2723) {
        if (m5974() == 0 || i == 0) {
            return 0;
        }
        m1004(i, c2723);
        C2718 c2718 = this.f1534;
        int m1003 = m1003(c2666, c2718, c2723);
        if (c2718.f10348 >= m1003) {
            i = i < 0 ? -m1003 : m1003;
        }
        this.f1555.mo3829(-i);
        this.f1541 = this.f1540;
        c2718.f10348 = 0;
        m1011(c2666, c2718);
        return i;
    }

    @Override // p179.AbstractC2669
    /* renamed from: ʻٴ */
    public final C2700 mo468(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new C2700((ViewGroup.MarginLayoutParams) layoutParams) : new C2700(layoutParams);
    }

    @Override // p179.AbstractC2669
    /* renamed from: ʻᵎ */
    public final void mo469(C2666 c2666, C2723 c2723, View view, C2535 c2535) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof C2740)) {
            m5985(view, c2535);
            return;
        }
        C2740 c2740 = (C2740) layoutParams;
        if (this.f1544 == 0) {
            C2713 c2713 = c2740.f10459;
            c2535.m5678(C1652.m4511(false, c2713 == null ? -1 : c2713.f10316, 1, -1, -1));
        } else {
            C2713 c27132 = c2740.f10459;
            c2535.m5678(C1652.m4511(false, -1, -1, c27132 == null ? -1 : c27132.f10316, 1));
        }
    }

    @Override // p179.AbstractC2669
    /* renamed from: ʼˈ */
    public final boolean mo886() {
        return this.f1546;
    }

    @Override // p179.AbstractC2669
    /* renamed from: ʼˎ */
    public final void mo470(int i, int i2, C2723 c2723, C2676 c2676) {
        C2718 c2718;
        int m6092;
        int i3;
        if (this.f1544 != 0) {
            i = i2;
        }
        if (m5974() == 0 || i == 0) {
            return;
        }
        m1004(i, c2723);
        int[] iArr = this.f1547;
        if (iArr == null || iArr.length < this.f1536) {
            this.f1547 = new int[this.f1536];
        }
        int i4 = 0;
        int i5 = 0;
        while (true) {
            int i6 = this.f1536;
            c2718 = this.f1534;
            if (i4 >= i6) {
                break;
            }
            if (c2718.f10344 == -1) {
                m6092 = c2718.f10350;
                i3 = this.f1553[i4].m6084(m6092);
            } else {
                m6092 = this.f1553[i4].m6092(c2718.f10346);
                i3 = c2718.f10346;
            }
            int i7 = m6092 - i3;
            if (i7 >= 0) {
                this.f1547[i5] = i7;
                i5++;
            }
            i4++;
        }
        Arrays.sort(this.f1547, 0, i5);
        for (int i8 = 0; i8 < i5; i8++) {
            int i9 = c2718.f10343;
            if (i9 < 0 || i9 >= c2723.m6109()) {
                return;
            }
            c2676.m6025(c2718.f10343, this.f1547[i8]);
            c2718.f10343 += c2718.f10344;
        }
    }

    @Override // p179.AbstractC2669
    /* renamed from: ʼᐧ */
    public final int mo859(C2723 c2723) {
        if (m5974() == 0) {
            return 0;
        }
        boolean z = !this.f1552;
        return AbstractC2741.m6140(c2723, this.f1555, m1012(z), m1014(z), this, this.f1552);
    }

    @Override // p179.AbstractC2669
    /* renamed from: ʽ */
    public final void mo887(String str) {
        if (this.f1543 == null) {
            super.mo887(str);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01aa, code lost:
    
        r11 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x01a6, code lost:
    
        if ((r11 < m1010()) != r16.f1540) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:261:0x0416, code lost:
    
        if (m1002() != false) goto L255;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0198, code lost:
    
        if (r16.f1540 != false) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x01a8, code lost:
    
        r11 = false;
     */
    /* renamed from: ʽʾ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m990(p179.C2666 r17, p179.C2723 r18, boolean r19) {
        /*
            Method dump skipped, instructions count: 1076
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m990(ˋˋ.ʻˋ, ˋˋ.ᐧﹶ, boolean):void");
    }

    @Override // p179.AbstractC2669
    /* renamed from: ʽﹳ */
    public final C2700 mo476(Context context, AttributeSet attributeSet) {
        return new C2700(context, attributeSet);
    }

    @Override // p179.AbstractC2669
    /* renamed from: ʾˊ, reason: contains not printable characters */
    public final void mo991(int i) {
        if (i == 0) {
            m1002();
        }
    }

    /* renamed from: ʿʽ, reason: contains not printable characters */
    public final void m992(int i, C2666 c2666) {
        for (int m5974 = m5974() - 1; m5974 >= 0; m5974--) {
            View m5981 = m5981(m5974);
            if (this.f1555.mo3826(m5981) < i || this.f1555.mo3819(m5981) < i) {
                return;
            }
            C2740 c2740 = (C2740) m5981.getLayoutParams();
            c2740.getClass();
            if (((ArrayList) c2740.f10459.f10320).size() == 1) {
                return;
            }
            C2713 c2713 = c2740.f10459;
            ArrayList arrayList = (ArrayList) c2713.f10320;
            int size = arrayList.size();
            View view = (View) arrayList.remove(size - 1);
            C2740 c27402 = (C2740) view.getLayoutParams();
            c27402.f10459 = null;
            if (c27402.f10283.m6007() || c27402.f10283.m6009()) {
                c2713.f10315 -= ((StaggeredGridLayoutManager) c2713.f10317).f1555.mo3824(view);
            }
            if (size == 1) {
                c2713.f10318 = Integer.MIN_VALUE;
            }
            c2713.f10314 = Integer.MIN_VALUE;
            m5973(m5981, c2666);
        }
    }

    @Override // p179.AbstractC2669
    /* renamed from: ʿـ */
    public final int mo481(int i, C2666 c2666, C2723 c2723) {
        return m989(i, c2666, c2723);
    }

    /* renamed from: ˆʻ, reason: contains not printable characters */
    public final void m993(C2713 c2713, int i, int i2) {
        int i3 = c2713.f10315;
        int i4 = c2713.f10316;
        if (i != -1) {
            int i5 = c2713.f10314;
            if (i5 == Integer.MIN_VALUE) {
                c2713.m6094();
                i5 = c2713.f10314;
            }
            if (i5 - i3 >= i2) {
                this.f1535.set(i4, false);
                return;
            }
            return;
        }
        int i6 = c2713.f10318;
        if (i6 == Integer.MIN_VALUE) {
            View view = (View) ((ArrayList) c2713.f10320).get(0);
            C2740 c2740 = (C2740) view.getLayoutParams();
            c2713.f10318 = ((StaggeredGridLayoutManager) c2713.f10317).f1555.mo3826(view);
            c2740.getClass();
            i6 = c2713.f10318;
        }
        if (i6 + i3 <= i2) {
            this.f1535.set(i4, false);
        }
    }

    /* renamed from: ˆˎ, reason: contains not printable characters */
    public final void m994() {
        if (this.f1544 == 1 || !m1005()) {
            this.f1540 = this.f1546;
        } else {
            this.f1540 = !this.f1546;
        }
    }

    /* renamed from: ˆˑ, reason: contains not printable characters */
    public final boolean m995(int i) {
        if (this.f1544 == 0) {
            return (i == -1) != this.f1540;
        }
        return ((i == -1) == this.f1540) == m1005();
    }

    /* renamed from: ˆﹳ, reason: contains not printable characters */
    public final void m996(int i, C2666 c2666) {
        while (m5974() > 0) {
            View m5981 = m5981(0);
            if (this.f1555.mo3821(m5981) > i || this.f1555.mo3823(m5981) > i) {
                return;
            }
            C2740 c2740 = (C2740) m5981.getLayoutParams();
            c2740.getClass();
            if (((ArrayList) c2740.f10459.f10320).size() == 1) {
                return;
            }
            C2713 c2713 = c2740.f10459;
            ArrayList arrayList = (ArrayList) c2713.f10320;
            View view = (View) arrayList.remove(0);
            C2740 c27402 = (C2740) view.getLayoutParams();
            c27402.f10459 = null;
            if (arrayList.size() == 0) {
                c2713.f10314 = Integer.MIN_VALUE;
            }
            if (c27402.f10283.m6007() || c27402.f10283.m6009()) {
                c2713.f10315 -= ((StaggeredGridLayoutManager) c2713.f10317).f1555.mo3824(view);
            }
            c2713.f10318 = Integer.MIN_VALUE;
            m5973(m5981, c2666);
        }
    }

    @Override // p179.AbstractC2669
    /* renamed from: ˈʿ */
    public final int mo487(C2666 c2666, C2723 c2723) {
        if (this.f1544 == 0) {
            return Math.min(this.f1536, c2723.m6109());
        }
        return -1;
    }

    @Override // p179.AbstractC2669
    /* renamed from: ˈˏ */
    public final void mo488() {
        this.f1549.m9569();
        m5982();
    }

    @Override // p179.AbstractC2669
    /* renamed from: ˈـ */
    public final boolean mo865() {
        return this.f1543 == null;
    }

    @Override // p179.AbstractC2669
    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public final void mo997(int i) {
        super.mo997(i);
        for (int i2 = 0; i2 < this.f1536; i2++) {
            C2713 c2713 = this.f1553[i2];
            int i3 = c2713.f10318;
            if (i3 != Integer.MIN_VALUE) {
                c2713.f10318 = i3 + i;
            }
            int i4 = c2713.f10314;
            if (i4 != Integer.MIN_VALUE) {
                c2713.f10314 = i4 + i;
            }
        }
    }

    @Override // p179.AbstractC2669
    /* renamed from: ˉʿ */
    public final int mo866(C2723 c2723) {
        if (m5974() == 0) {
            return 0;
        }
        boolean z = !this.f1552;
        return AbstractC2741.m6140(c2723, this.f1555, m1012(z), m1014(z), this, this.f1552);
    }

    @Override // p179.AbstractC2669
    /* renamed from: ˉˆ */
    public final int mo867(C2723 c2723) {
        return m1006(c2723);
    }

    @Override // p179.AbstractC2669
    /* renamed from: ˉـ */
    public final void mo490(AbstractC2727 abstractC2727) {
        this.f1549.m9569();
        for (int i = 0; i < this.f1536; i++) {
            this.f1553[i].m6093();
        }
    }

    /* renamed from: ˊˊ, reason: contains not printable characters */
    public final int m998(int i) {
        int m6084 = this.f1553[0].m6084(i);
        for (int i2 = 1; i2 < this.f1536; i2++) {
            int m60842 = this.f1553[i2].m6084(i);
            if (m60842 < m6084) {
                m6084 = m60842;
            }
        }
        return m6084;
    }

    @Override // p179.AbstractC2669
    /* renamed from: ˊˋ */
    public final boolean mo894() {
        return this.f1537 != 0;
    }

    /* renamed from: ˊﹳ, reason: contains not printable characters */
    public final void m999(View view, int i, int i2) {
        Rect rect = this.f1548;
        m5976(view, rect);
        C2740 c2740 = (C2740) view.getLayoutParams();
        int m988 = m988(i, ((ViewGroup.MarginLayoutParams) c2740).leftMargin + rect.left, ((ViewGroup.MarginLayoutParams) c2740).rightMargin + rect.right);
        int m9882 = m988(i2, ((ViewGroup.MarginLayoutParams) c2740).topMargin + rect.top, ((ViewGroup.MarginLayoutParams) c2740).bottomMargin + rect.bottom);
        if (m5972(view, m988, m9882, c2740)) {
            view.measure(m988, m9882);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:56:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00c6  */
    /* renamed from: ˊﾞ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m1000(int r10, int r11, int r12) {
        /*
            Method dump skipped, instructions count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m1000(int, int, int):void");
    }

    /* renamed from: ˋـ, reason: contains not printable characters */
    public final void m1001(C2666 c2666, C2723 c2723, boolean z) {
        int mo3818;
        int m1017 = m1017(Integer.MIN_VALUE);
        if (m1017 != Integer.MIN_VALUE && (mo3818 = this.f1555.mo3818() - m1017) > 0) {
            int i = mo3818 - (-m989(-mo3818, c2666, c2723));
            if (!z || i <= 0) {
                return;
            }
            this.f1555.mo3829(i);
        }
    }

    /* renamed from: ˎʾ, reason: contains not printable characters */
    public final boolean m1002() {
        int m1010;
        if (m5974() != 0 && this.f1537 != 0 && this.f10151) {
            if (this.f1540) {
                m1010 = m1008();
                m1010();
            } else {
                m1010 = m1010();
                m1008();
            }
            if (m1010 == 0 && m1007() != null) {
                this.f1549.m9569();
                this.f10157 = true;
                m5982();
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0267, code lost:
    
        m1011(r20, r3);
     */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v24 */
    /* JADX WARN: Type inference failed for: r8v3, types: [boolean, int] */
    /* renamed from: ˎˉ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m1003(p179.C2666 r20, p179.C2718 r21, p179.C2723 r22) {
        /*
            Method dump skipped, instructions count: 671
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m1003(ˋˋ.ʻˋ, ˋˋ.ٴᵢ, ˋˋ.ᐧﹶ):int");
    }

    /* renamed from: ˎـ, reason: contains not printable characters */
    public final void m1004(int i, C2723 c2723) {
        int m1010;
        int i2;
        if (i > 0) {
            m1010 = m1008();
            i2 = 1;
        } else {
            m1010 = m1010();
            i2 = -1;
        }
        C2718 c2718 = this.f1534;
        c2718.f10349 = true;
        m1016(m1010, c2723);
        m1013(i2);
        c2718.f10343 = m1010 + c2718.f10344;
        c2718.f10348 = Math.abs(i);
    }

    @Override // p179.AbstractC2669
    /* renamed from: ˏי */
    public final C2700 mo502() {
        return this.f1544 == 0 ? new C2700(-2, -1) : new C2700(-1, -2);
    }

    @Override // p179.AbstractC2669
    /* renamed from: ˏᵢ */
    public final void mo503(C2666 c2666, C2723 c2723, C2535 c2535) {
        super.mo503(c2666, c2723, c2535);
        c2535.m5665("androidx.recyclerview.widget.StaggeredGridLayoutManager");
    }

    /* renamed from: ˏⁱ, reason: contains not printable characters */
    public final boolean m1005() {
        return this.f10154.getLayoutDirection() == 1;
    }

    @Override // p179.AbstractC2669
    /* renamed from: ˑʼ */
    public final void mo873(RecyclerView recyclerView, int i, int i2) {
        m1000(i, i2, 4);
    }

    /* renamed from: ˑˆ, reason: contains not printable characters */
    public final int m1006(C2723 c2723) {
        if (m5974() == 0) {
            return 0;
        }
        boolean z = !this.f1552;
        return AbstractC2741.m6139(c2723, this.f1555, m1012(z), m1014(z), this, this.f1552, this.f1540);
    }

    @Override // p179.AbstractC2669
    /* renamed from: ˑﹳ */
    public final boolean mo506() {
        return this.f1544 == 0;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [android.os.Parcelable, ˋˋ.ʻᴵ, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v6, types: [android.os.Parcelable, ˋˋ.ʻᴵ, java.lang.Object] */
    @Override // p179.AbstractC2669
    /* renamed from: י */
    public final Parcelable mo508() {
        int m6084;
        int mo3822;
        int[] iArr;
        C2668 c2668 = this.f1543;
        if (c2668 != null) {
            ?? obj = new Object();
            obj.f10133 = c2668.f10133;
            obj.f10134 = c2668.f10134;
            obj.f10140 = c2668.f10140;
            obj.f10135 = c2668.f10135;
            obj.f10141 = c2668.f10141;
            obj.f10137 = c2668.f10137;
            obj.f10136 = c2668.f10136;
            obj.f10142 = c2668.f10142;
            obj.f10138 = c2668.f10138;
            obj.f10139 = c2668.f10139;
            return obj;
        }
        ?? obj2 = new Object();
        obj2.f10136 = this.f1546;
        obj2.f10142 = this.f1541;
        obj2.f10138 = this.f1550;
        C4790 c4790 = this.f1549;
        if (c4790 == null || (iArr = (int[]) c4790.f18036) == null) {
            obj2.f10141 = 0;
        } else {
            obj2.f10137 = iArr;
            obj2.f10141 = iArr.length;
            obj2.f10139 = (ArrayList) c4790.f18034;
        }
        if (m5974() <= 0) {
            obj2.f10134 = -1;
            obj2.f10140 = -1;
            obj2.f10133 = 0;
            return obj2;
        }
        obj2.f10134 = this.f1541 ? m1008() : m1010();
        View m1014 = this.f1540 ? m1014(true) : m1012(true);
        obj2.f10140 = m1014 != null ? AbstractC2669.m5963(m1014) : -1;
        int i = this.f1536;
        obj2.f10133 = i;
        obj2.f10135 = new int[i];
        for (int i2 = 0; i2 < this.f1536; i2++) {
            if (this.f1541) {
                m6084 = this.f1553[i2].m6092(Integer.MIN_VALUE);
                if (m6084 != Integer.MIN_VALUE) {
                    mo3822 = this.f1555.mo3818();
                    m6084 -= mo3822;
                    obj2.f10135[i2] = m6084;
                } else {
                    obj2.f10135[i2] = m6084;
                }
            } else {
                m6084 = this.f1553[i2].m6084(Integer.MIN_VALUE);
                if (m6084 != Integer.MIN_VALUE) {
                    mo3822 = this.f1555.mo3822();
                    m6084 -= mo3822;
                    obj2.f10135[i2] = m6084;
                } else {
                    obj2.f10135[i2] = m6084;
                }
            }
        }
        return obj2;
    }

    @Override // p179.AbstractC2669
    /* renamed from: יˉ */
    public final void mo510(RecyclerView recyclerView, int i) {
        C2688 c2688 = new C2688(recyclerView.getContext());
        c2688.f10247 = i;
        mo536(c2688);
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00fe A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x002c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00f6  */
    /* renamed from: ـʻ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View m1007() {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.m1007():android.view.View");
    }

    @Override // p179.AbstractC2669
    /* renamed from: ـﹶ */
    public final void mo514(int i, int i2) {
        m1000(i, i2, 1);
    }

    /* renamed from: ٴʿ, reason: contains not printable characters */
    public final int m1008() {
        int m5974 = m5974();
        if (m5974 == 0) {
            return 0;
        }
        return AbstractC2669.m5963(m5981(m5974 - 1));
    }

    @Override // p179.AbstractC2669
    /* renamed from: ٴᴵ */
    public final void mo879(Rect rect, int i, int i2) {
        int m5968;
        int m59682;
        int m5987 = m5987() + m5984();
        int m5988 = m5988() + m5989();
        int i3 = this.f1544;
        int i4 = this.f1536;
        if (i3 == 1) {
            int height = rect.height() + m5988;
            RecyclerView recyclerView = this.f10154;
            WeakHashMap weakHashMap = AbstractC2823.f10603;
            m59682 = AbstractC2669.m5968(i2, height, recyclerView.getMinimumHeight());
            m5968 = AbstractC2669.m5968(i, (this.f1538 * i4) + m5987, this.f10154.getMinimumWidth());
        } else {
            int width = rect.width() + m5987;
            RecyclerView recyclerView2 = this.f10154;
            WeakHashMap weakHashMap2 = AbstractC2823.f10603;
            m5968 = AbstractC2669.m5968(i, width, recyclerView2.getMinimumWidth());
            m59682 = AbstractC2669.m5968(i2, (this.f1538 * i4) + m5988, this.f10154.getMinimumHeight());
        }
        this.f10154.setMeasuredDimension(m5968, m59682);
    }

    @Override // p179.AbstractC2669
    /* renamed from: ٴﹳ */
    public final void mo517(C2666 c2666, C2723 c2723) {
        m990(c2666, c2723, true);
    }

    @Override // p179.AbstractC2669
    /* renamed from: ٴﹶ */
    public final int mo907(C2723 c2723) {
        if (m5974() == 0) {
            return 0;
        }
        boolean z = !this.f1552;
        return AbstractC2741.m6141(c2723, this.f1555, m1012(z), m1014(z), this, this.f1552);
    }

    @Override // p179.AbstractC2669
    /* renamed from: ᐧᴵ */
    public final void mo908(AccessibilityEvent accessibilityEvent) {
        super.mo908(accessibilityEvent);
        if (m5974() > 0) {
            View m1012 = m1012(false);
            View m1014 = m1014(false);
            if (m1012 == null || m1014 == null) {
                return;
            }
            int m5963 = AbstractC2669.m5963(m1012);
            int m59632 = AbstractC2669.m5963(m1014);
            if (m5963 < m59632) {
                accessibilityEvent.setFromIndex(m5963);
                accessibilityEvent.setToIndex(m59632);
            } else {
                accessibilityEvent.setFromIndex(m59632);
                accessibilityEvent.setToIndex(m5963);
            }
        }
    }

    @Override // p179.AbstractC2669
    /* renamed from: ᐧﹶ */
    public final void mo520(Parcelable parcelable) {
        if (parcelable instanceof C2668) {
            C2668 c2668 = (C2668) parcelable;
            this.f1543 = c2668;
            if (this.f1554 != -1) {
                c2668.f10134 = -1;
                c2668.f10140 = -1;
                c2668.f10135 = null;
                c2668.f10133 = 0;
                c2668.f10141 = 0;
                c2668.f10137 = null;
                c2668.f10139 = null;
            }
            m5982();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:109:0x003b, code lost:
    
        if (r7.f1544 == 1) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x0041, code lost:
    
        if (r7.f1544 == 0) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x004d, code lost:
    
        if (m1005() == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0059, code lost:
    
        if (m1005() == false) goto L29;
     */
    @Override // p179.AbstractC2669
    /* renamed from: ᐧﾞ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View mo881(android.view.View r8, int r9, p179.C2666 r10, p179.C2723 r11) {
        /*
            Method dump skipped, instructions count: 331
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.mo881(android.view.View, int, ˋˋ.ʻˋ, ˋˋ.ᐧﹶ):android.view.View");
    }

    @Override // p179.AbstractC2669
    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public final void mo1009(int i) {
        super.mo1009(i);
        for (int i2 = 0; i2 < this.f1536; i2++) {
            C2713 c2713 = this.f1553[i2];
            int i3 = c2713.f10318;
            if (i3 != Integer.MIN_VALUE) {
                c2713.f10318 = i3 + i;
            }
            int i4 = c2713.f10314;
            if (i4 != Integer.MIN_VALUE) {
                c2713.f10314 = i4 + i;
            }
        }
    }

    @Override // p179.AbstractC2669
    /* renamed from: ᵎʻ */
    public final void mo523(C2723 c2723) {
        this.f1554 = -1;
        this.f1539 = Integer.MIN_VALUE;
        this.f1543 = null;
        this.f1542.m6031();
    }

    @Override // p179.AbstractC2669
    /* renamed from: ᵎᵔ */
    public final void mo910(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.f10154;
        if (recyclerView2 != null) {
            recyclerView2.removeCallbacks(this.f1551);
        }
        for (int i = 0; i < this.f1536; i++) {
            this.f1553[i].m6093();
        }
        recyclerView.requestLayout();
    }

    @Override // p179.AbstractC2669
    /* renamed from: ᵎﹶ */
    public final boolean mo524(C2700 c2700) {
        return c2700 instanceof C2740;
    }

    @Override // p179.AbstractC2669
    /* renamed from: ᵔʾ */
    public final int mo911(C2723 c2723) {
        if (m5974() == 0) {
            return 0;
        }
        boolean z = !this.f1552;
        return AbstractC2741.m6141(c2723, this.f1555, m1012(z), m1014(z), this, this.f1552);
    }

    /* renamed from: ᵔⁱ, reason: contains not printable characters */
    public final int m1010() {
        if (m5974() == 0) {
            return 0;
        }
        return AbstractC2669.m5963(m5981(0));
    }

    /* renamed from: ᵢʻ, reason: contains not printable characters */
    public final void m1011(C2666 c2666, C2718 c2718) {
        if (!c2718.f10349 || c2718.f10342) {
            return;
        }
        if (c2718.f10348 == 0) {
            if (c2718.f10345 == -1) {
                m992(c2718.f10346, c2666);
                return;
            } else {
                m996(c2718.f10350, c2666);
                return;
            }
        }
        int i = 1;
        if (c2718.f10345 == -1) {
            int i2 = c2718.f10350;
            int m6084 = this.f1553[0].m6084(i2);
            while (i < this.f1536) {
                int m60842 = this.f1553[i].m6084(i2);
                if (m60842 > m6084) {
                    m6084 = m60842;
                }
                i++;
            }
            int i3 = i2 - m6084;
            m992(i3 < 0 ? c2718.f10346 : c2718.f10346 - Math.min(i3, c2718.f10348), c2666);
            return;
        }
        int i4 = c2718.f10346;
        int m6092 = this.f1553[0].m6092(i4);
        while (i < this.f1536) {
            int m60922 = this.f1553[i].m6092(i4);
            if (m60922 < m6092) {
                m6092 = m60922;
            }
            i++;
        }
        int i5 = m6092 - c2718.f10346;
        m996(i5 < 0 ? c2718.f10350 : Math.min(i5, c2718.f10348) + c2718.f10350, c2666);
    }

    /* renamed from: ᵢˋ, reason: contains not printable characters */
    public final View m1012(boolean z) {
        int mo3822 = this.f1555.mo3822();
        int mo3818 = this.f1555.mo3818();
        int m5974 = m5974();
        View view = null;
        for (int i = 0; i < m5974; i++) {
            View m5981 = m5981(i);
            int mo3826 = this.f1555.mo3826(m5981);
            if (this.f1555.mo3821(m5981) > mo3822 && mo3826 < mo3818) {
                if (mo3826 >= mo3822 || !z) {
                    return m5981;
                }
                if (view == null) {
                    view = m5981;
                }
            }
        }
        return view;
    }

    @Override // p179.AbstractC2669
    /* renamed from: ᵢˏ */
    public final int mo527(C2666 c2666, C2723 c2723) {
        if (this.f1544 == 1) {
            return Math.min(this.f1536, c2723.m6109());
        }
        return -1;
    }

    /* renamed from: ᵢᐧ, reason: contains not printable characters */
    public final void m1013(int i) {
        C2718 c2718 = this.f1534;
        c2718.f10345 = i;
        c2718.f10344 = this.f1540 != (i == -1) ? -1 : 1;
    }

    @Override // p179.AbstractC2669
    /* renamed from: ⁱי */
    public final int mo530(int i, C2666 c2666, C2723 c2723) {
        return m989(i, c2666, c2723);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0019, code lost:
    
        if ((r4 < m1010()) != r3.f1540) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x000a, code lost:
    
        if (r3.f1540 != false) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x000c, code lost:
    
        r1 = 1;
     */
    @Override // p179.InterfaceC2677
    /* renamed from: ﹳٴ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.PointF mo916(int r4) {
        /*
            r3 = this;
            int r0 = r3.m5974()
            r1 = -1
            r2 = 1
            if (r0 != 0) goto Le
            boolean r4 = r3.f1540
            if (r4 == 0) goto L1b
        Lc:
            r1 = r2
            goto L1b
        Le:
            int r0 = r3.m1010()
            if (r4 >= r0) goto L16
            r4 = r2
            goto L17
        L16:
            r4 = 0
        L17:
            boolean r0 = r3.f1540
            if (r4 == r0) goto Lc
        L1b:
            android.graphics.PointF r4 = new android.graphics.PointF
            r4.<init>()
            if (r1 != 0) goto L24
            r4 = 0
            return r4
        L24:
            int r0 = r3.f1544
            r2 = 0
            if (r0 != 0) goto L2f
            float r0 = (float) r1
            r4.x = r0
            r4.y = r2
            return r4
        L2f:
            r4.x = r2
            float r0 = (float) r1
            r4.y = r0
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.mo916(int):android.graphics.PointF");
    }

    /* renamed from: ﹳᵢ, reason: contains not printable characters */
    public final View m1014(boolean z) {
        int mo3822 = this.f1555.mo3822();
        int mo3818 = this.f1555.mo3818();
        View view = null;
        for (int m5974 = m5974() - 1; m5974 >= 0; m5974--) {
            View m5981 = m5981(m5974);
            int mo3826 = this.f1555.mo3826(m5981);
            int mo3821 = this.f1555.mo3821(m5981);
            if (mo3821 > mo3822 && mo3826 < mo3818) {
                if (mo3821 <= mo3818 || !z) {
                    return m5981;
                }
                if (view == null) {
                    view = m5981;
                }
            }
        }
        return view;
    }

    @Override // p179.AbstractC2669
    /* renamed from: ﹳⁱ */
    public final void mo531(int i) {
        C2668 c2668 = this.f1543;
        if (c2668 != null && c2668.f10134 != i) {
            c2668.f10135 = null;
            c2668.f10133 = 0;
            c2668.f10134 = -1;
            c2668.f10140 = -1;
        }
        this.f1554 = i;
        this.f1539 = Integer.MIN_VALUE;
        m5982();
    }

    @Override // p179.AbstractC2669
    /* renamed from: ﹳﹳ */
    public final void mo532(int i, int i2) {
        m1000(i, i2, 2);
    }

    /* renamed from: ﹶʽ, reason: contains not printable characters */
    public final void m1015(C2666 c2666, C2723 c2723, boolean z) {
        int mo3822;
        int m998 = m998(Integer.MAX_VALUE);
        if (m998 != Integer.MAX_VALUE && (mo3822 = m998 - this.f1555.mo3822()) > 0) {
            int m989 = mo3822 - m989(mo3822, c2666, c2723);
            if (!z || m989 <= 0) {
                return;
            }
            this.f1555.mo3829(-m989);
        }
    }

    @Override // p179.AbstractC2669
    /* renamed from: ﹶᐧ */
    public final void mo534(int i, int i2) {
        m1000(i, i2, 8);
    }

    @Override // p179.AbstractC2669
    /* renamed from: ﾞʻ */
    public final int mo884(C2723 c2723) {
        return m1006(c2723);
    }

    /* renamed from: ﾞˊ, reason: contains not printable characters */
    public final void m1016(int i, C2723 c2723) {
        int i2;
        int i3;
        int i4;
        C2718 c2718 = this.f1534;
        boolean z = false;
        c2718.f10348 = 0;
        c2718.f10343 = i;
        C2688 c2688 = this.f10149;
        if (c2688 == null || !c2688.f10241 || (i4 = c2723.f10380) == -1) {
            i2 = 0;
            i3 = 0;
        } else {
            if (this.f1540 == (i4 < i)) {
                i2 = this.f1555.mo3827();
                i3 = 0;
            } else {
                i3 = this.f1555.mo3827();
                i2 = 0;
            }
        }
        RecyclerView recyclerView = this.f10154;
        if (recyclerView == null || !recyclerView.f1481) {
            c2718.f10346 = this.f1555.mo3828() + i2;
            c2718.f10350 = -i3;
        } else {
            c2718.f10350 = this.f1555.mo3822() - i3;
            c2718.f10346 = this.f1555.mo3818() + i2;
        }
        c2718.f10347 = false;
        c2718.f10349 = true;
        if (this.f1555.mo3825() == 0 && this.f1555.mo3828() == 0) {
            z = true;
        }
        c2718.f10342 = z;
    }

    /* renamed from: ﾞˏ, reason: contains not printable characters */
    public final int m1017(int i) {
        int m6092 = this.f1553[0].m6092(i);
        for (int i2 = 1; i2 < this.f1536; i2++) {
            int m60922 = this.f1553[i2].m6092(i);
            if (m60922 > m6092) {
                m6092 = m60922;
            }
        }
        return m6092;
    }

    @Override // p179.AbstractC2669
    /* renamed from: ﾞᴵ */
    public final boolean mo538() {
        return this.f1544 == 1;
    }
}
