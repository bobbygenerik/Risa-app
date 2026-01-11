package androidx.leanback.widget;

import android.content.Context;
import android.graphics.Rect;
import android.media.AudioManager;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.GridView;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.WeakHashMap;
import p035.AbstractC1237;
import p075.C1652;
import p158.C2526;
import p158.C2535;
import p179.AbstractC2669;
import p179.AbstractC2673;
import p179.AbstractC2727;
import p179.C2666;
import p179.C2676;
import p179.C2688;
import p179.C2700;
import p179.C2701;
import p179.C2713;
import p179.C2723;
import p186.AbstractC2823;
import p307.AbstractC3740;

/* loaded from: classes.dex */
public final class GridLayoutManager extends AbstractC2669 {

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public C2723 f596;

    /* renamed from: ʻᵎ, reason: contains not printable characters */
    public final RunnableC0142 f597;

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final SparseIntArray f598;

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public int f599;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public float f600;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f601;

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public int f602;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public AudioManager f603;

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public int f604;

    /* renamed from: ʿ, reason: contains not printable characters */
    public int f605;

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public final ˏˆ.ﹳٴ f606;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public int f607;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public int[] f608;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public InterfaceC0106 f609;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public int f610;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public AbstractC0105 f611;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public AbstractC0146 f612;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public int f613;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public int f614;

    /* renamed from: ˊᵔ, reason: contains not printable characters */
    public final ˉˆ f615;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public int f616;

    /* renamed from: ˏי, reason: contains not printable characters */
    public AbstractC1237 f617;

    /* renamed from: ˏᵢ, reason: contains not printable characters */
    public final int[] f618;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public int f619;

    /* renamed from: יـ, reason: contains not printable characters */
    public int f620;

    /* renamed from: ـˆ, reason: contains not printable characters */
    public int f621;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public int f622;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public int f623;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public int f624;

    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public int f625;

    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    public int f626;

    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public final C0121 f627;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public C2666 f628;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public int f629;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public ArrayList f630;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public int f631;

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public final com.parse.ٴʼ f632;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public C0120 f633;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public int f634;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public int f635;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public int f636;

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public int[] f637;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public int f638;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public AbstractC0145 f639;

    /* renamed from: ـﹶ, reason: contains not printable characters */
    public static final Rect f595 = new Rect();

    /* renamed from: ˈˏ, reason: contains not printable characters */
    public static final int[] f594 = new int[2];

    public GridLayoutManager() {
        this(null);
    }

    /* JADX WARN: Type inference failed for: r2v7, types: [java.lang.Object, androidx.leanback.widget.יﹳ] */
    public GridLayoutManager(AbstractC0145 abstractC0145) {
        this.f600 = 1.0f;
        this.f636 = 10;
        this.f620 = 0;
        this.f617 = new C2701(this, 0);
        this.f598 = new SparseIntArray();
        this.f601 = 221696;
        this.f609 = null;
        this.f630 = null;
        this.f613 = -1;
        this.f624 = 0;
        this.f623 = 0;
        this.f638 = 8388659;
        this.f629 = 1;
        this.f605 = 0;
        this.f606 = new ˏˆ.ﹳٴ(2);
        this.f632 = new com.parse.ٴʼ(1);
        this.f618 = new int[2];
        ?? obj = new Object();
        obj.f956 = 0;
        obj.f957 = 100;
        this.f627 = obj;
        this.f597 = new RunnableC0142(0, this);
        this.f615 = new ˉˆ(0, this);
        this.f639 = abstractC0145;
        this.f631 = -1;
        m5995(false);
    }

    /* renamed from: ˊﾞ, reason: contains not printable characters */
    public static int m461(View view, View view2) {
        ˉˆ r0;
        if (view == null || view2 == null || (r0 = ((C0151) view.getLayoutParams()).f1023) == null) {
            return 0;
        }
        C0123[] c0123Arr = (C0123[]) r0.ᴵˊ;
        if (c0123Arr.length <= 1) {
            return 0;
        }
        while (view2 != view) {
            int id = view2.getId();
            if (id != -1) {
                for (int i = 1; i < c0123Arr.length; i++) {
                    if (c0123Arr[i].f969 == id) {
                        return i;
                    }
                }
            }
            view2 = (View) view2.getParent();
        }
        return 0;
    }

    /* renamed from: ˋـ, reason: contains not printable characters */
    public static int m462(View view) {
        C0151 c0151 = (C0151) view.getLayoutParams();
        return AbstractC2669.m5966(view) + ((ViewGroup.MarginLayoutParams) c0151).leftMargin + ((ViewGroup.MarginLayoutParams) c0151).rightMargin;
    }

    /* renamed from: ᵢˋ, reason: contains not printable characters */
    public static int m463(View view) {
        C0151 c0151 = (C0151) view.getLayoutParams();
        return AbstractC2669.m5964(view) + ((ViewGroup.MarginLayoutParams) c0151).topMargin + ((ViewGroup.MarginLayoutParams) c0151).bottomMargin;
    }

    /* renamed from: ﹳᵢ, reason: contains not printable characters */
    public static int m464(View view) {
        C0151 c0151;
        if (view == null || (c0151 = (C0151) view.getLayoutParams()) == null || c0151.f10283.m6007()) {
            return -1;
        }
        return c0151.f10283.m6017();
    }

    /* renamed from: ʻʼ, reason: contains not printable characters */
    public final void m465() {
        int i = this.f601;
        if ((65600 & i) == 65536) {
            AbstractC0105 abstractC0105 = this.f611;
            int i2 = this.f613;
            int i3 = (i & 262144) != 0 ? -this.f625 : this.f626 + this.f625;
            while (true) {
                int i4 = abstractC0105.f903;
                if (i4 < abstractC0105.f907 || i4 <= i2) {
                    break;
                }
                if (!abstractC0105.f900) {
                    if (abstractC0105.f905.יـ(i4) < i3) {
                        break;
                    }
                    abstractC0105.f905.ʼʼ(abstractC0105.f903);
                    abstractC0105.f903--;
                } else {
                    if (abstractC0105.f905.יـ(i4) > i3) {
                        break;
                    }
                    abstractC0105.f905.ʼʼ(abstractC0105.f903);
                    abstractC0105.f903--;
                }
            }
            if (abstractC0105.f903 < abstractC0105.f907) {
                abstractC0105.f903 = -1;
                abstractC0105.f907 = -1;
            }
        }
    }

    /* renamed from: ʻˆ, reason: contains not printable characters */
    public final void m466(int i) {
        if (i < 0 && i != -2) {
            throw new IllegalArgumentException(AbstractC3740.m7932(i, "Invalid row height: "));
        }
        this.f607 = i;
    }

    @Override // p179.AbstractC2669
    /* renamed from: ʻˋ, reason: contains not printable characters */
    public final void mo467(int i, int i2) {
        int i3;
        int i4 = i2 + i;
        while (i < i4) {
            C0121 c0121 = this.f627;
            C2713 c2713 = (C2713) c0121.f955;
            if (c2713 != null) {
                synchronized (((ˋⁱ.ﾞᴵ) c2713.f10317)) {
                    i3 = c2713.f10314;
                }
                if (i3 != 0) {
                    ((C2713) c0121.f955).m6086(Integer.toString(i));
                }
            }
            i++;
        }
    }

    @Override // p179.AbstractC2669
    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final C2700 mo468(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0151 ? new C2700((C2700) layoutParams) : layoutParams instanceof C2700 ? new C2700((C2700) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new C2700((ViewGroup.MarginLayoutParams) layoutParams) : new C2700(layoutParams);
    }

    @Override // p179.AbstractC2669
    /* renamed from: ʻᵎ, reason: contains not printable characters */
    public final void mo469(C2666 c2666, C2723 c2723, View view, C2535 c2535) {
        ﾞʻ mo597;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (this.f611 == null || !(layoutParams instanceof C0151)) {
            return;
        }
        int m6017 = ((C0151) layoutParams).f10283.m6017();
        int i = -1;
        if (m6017 >= 0 && (mo597 = this.f611.mo597(m6017)) != null) {
            i = mo597.ᴵˊ;
        }
        if (i < 0) {
            return;
        }
        int i2 = m6017 / this.f611.f902;
        if (this.f620 == 0) {
            c2535.m5678(C1652.m4511(false, i, 1, i2, 1));
        } else {
            c2535.m5678(C1652.m4511(false, i2, 1, i, 1));
        }
    }

    @Override // p179.AbstractC2669
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void mo470(int i, int i2, C2723 c2723, C2676 c2676) {
        try {
            m535(null, c2723);
            if (this.f620 != 0) {
                i = i2;
            }
            if (m5974() != 0 && i != 0) {
                this.f611.mo596(i < 0 ? -this.f625 : this.f626 + this.f625, i, c2676);
                m485();
            }
        } finally {
            m485();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0026, code lost:
    
        if (r5 != false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0046, code lost:
    
        r7 = 4096;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0031, code lost:
    
        if (r5 != false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0044, code lost:
    
        if (r7 == p158.C2526.f9618.m5646()) goto L23;
     */
    @Override // p179.AbstractC2669
    /* renamed from: ʼـ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo471(p179.C2666 r5, p179.C2723 r6, int r7, android.os.Bundle r8) {
        /*
            r4 = this;
            int r8 = r4.f601
            r0 = 131072(0x20000, float:1.83671E-40)
            r8 = r8 & r0
            r0 = 1
            if (r8 == 0) goto L86
            r4.m535(r5, r6)
            int r5 = r4.f601
            r8 = 262144(0x40000, float:3.67342E-40)
            r5 = r5 & r8
            r8 = 0
            if (r5 == 0) goto L15
            r5 = r0
            goto L16
        L15:
            r5 = r8
        L16:
            int r1 = r4.f620
            r2 = 8192(0x2000, float:1.148E-41)
            r3 = 4096(0x1000, float:5.74E-42)
            if (r1 != 0) goto L34
            ˊˋ.ʽ r1 = p158.C2526.f9625
            int r1 = r1.m5646()
            if (r7 != r1) goto L29
            if (r5 == 0) goto L3c
            goto L46
        L29:
            ˊˋ.ʽ r1 = p158.C2526.f9623
            int r1 = r1.m5646()
            if (r7 != r1) goto L47
            if (r5 == 0) goto L46
            goto L3c
        L34:
            ˊˋ.ʽ r5 = p158.C2526.f9621
            int r5 = r5.m5646()
            if (r7 != r5) goto L3e
        L3c:
            r7 = r2
            goto L47
        L3e:
            ˊˋ.ʽ r5 = p158.C2526.f9618
            int r5 = r5.m5646()
            if (r7 != r5) goto L47
        L46:
            r7 = r3
        L47:
            int r5 = r4.f613
            if (r5 != 0) goto L4f
            if (r7 != r2) goto L4f
            r1 = r0
            goto L50
        L4f:
            r1 = r8
        L50:
            int r6 = r6.m6109()
            int r6 = r6 - r0
            if (r5 != r6) goto L5b
            if (r7 != r3) goto L5b
            r5 = r0
            goto L5c
        L5b:
            r5 = r8
        L5c:
            if (r1 != 0) goto L75
            if (r5 == 0) goto L61
            goto L75
        L61:
            if (r7 == r3) goto L6e
            if (r7 == r2) goto L66
            goto L83
        L66:
            r4.m480(r8)
            r5 = -1
            r4.m484(r5, r8)
            goto L83
        L6e:
            r4.m480(r0)
            r4.m484(r0, r8)
            goto L83
        L75:
            android.view.accessibility.AccessibilityEvent r5 = android.view.accessibility.AccessibilityEvent.obtain(r3)
            androidx.leanback.widget.ᵔᵢ r6 = r4.f639
            r6.onInitializeAccessibilityEvent(r5)
            androidx.leanback.widget.ᵔᵢ r6 = r4.f639
            r6.requestSendAccessibilityEvent(r6, r5)
        L83:
            r4.m485()
        L86:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.leanback.widget.GridLayoutManager.mo471(ˋˋ.ʻˋ, ˋˋ.ᐧﹶ, int, android.os.Bundle):boolean");
    }

    @Override // p179.AbstractC2669
    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final int mo472(View view) {
        return super.mo472(view) + ((C0151) view.getLayoutParams()).f1019;
    }

    /* renamed from: ʽʾ, reason: contains not printable characters */
    public final void m473(View view, int i, int i2, int i3, int i4) {
        int m525;
        int i5;
        int m463 = this.f620 == 0 ? m463(view) : m462(view);
        int i6 = this.f635;
        if (i6 > 0) {
            m463 = Math.min(m463, i6);
        }
        int i7 = this.f638;
        int i8 = i7 & 112;
        int absoluteGravity = (this.f601 & 786432) != 0 ? Gravity.getAbsoluteGravity(i7 & 8388615, 1) : i7 & 7;
        int i9 = this.f620;
        if ((i9 != 0 || i8 != 48) && (i9 != 1 || absoluteGravity != 3)) {
            if ((i9 == 0 && i8 == 80) || (i9 == 1 && absoluteGravity == 5)) {
                m525 = m525(i) - m463;
            } else if ((i9 == 0 && i8 == 16) || (i9 == 1 && absoluteGravity == 1)) {
                m525 = (m525(i) - m463) / 2;
            }
            i4 += m525;
        }
        if (this.f620 == 0) {
            i5 = m463 + i4;
        } else {
            int i10 = m463 + i4;
            int i11 = i4;
            i4 = i2;
            i2 = i11;
            i5 = i3;
            i3 = i10;
        }
        C0151 c0151 = (C0151) view.getLayoutParams();
        AbstractC2669.m5969(view, i2, i4, i3, i5);
        Rect rect = f595;
        super.mo521(view, rect);
        int i12 = i2 - rect.left;
        int i13 = i4 - rect.top;
        int i14 = rect.right - i3;
        int i15 = rect.bottom - i5;
        c0151.f1019 = i12;
        c0151.f1024 = i13;
        c0151.f1021 = i14;
        c0151.f1022 = i15;
        m474(view);
    }

    /* renamed from: ʽᐧ, reason: contains not printable characters */
    public final void m474(View view) {
        C0151 c0151 = (C0151) view.getLayoutParams();
        ˉˆ r1 = c0151.f1023;
        com.parse.ٴʼ r2 = this.f632;
        if (r1 == null) {
            C0084 c0084 = (C0084) r2.ʽʽ;
            c0151.f1017 = AbstractC0149.m667(view, c0084, c0084.f842);
            C0084 c00842 = (C0084) r2.ᴵˊ;
            c0151.f1018 = AbstractC0149.m667(view, c00842, c00842.f842);
            return;
        }
        int i = this.f620;
        C0123[] c0123Arr = (C0123[]) r1.ᴵˊ;
        int[] iArr = c0151.f1020;
        if (iArr == null || iArr.length != c0123Arr.length) {
            c0151.f1020 = new int[c0123Arr.length];
        }
        for (int i2 = 0; i2 < c0123Arr.length; i2++) {
            c0151.f1020[i2] = AbstractC0149.m667(view, c0123Arr[i2], i);
        }
        if (i == 0) {
            c0151.f1017 = c0151.f1020[0];
        } else {
            c0151.f1018 = c0151.f1020[0];
        }
        if (this.f620 == 0) {
            C0084 c00843 = (C0084) r2.ᴵˊ;
            c0151.f1018 = AbstractC0149.m667(view, c00843, c00843.f842);
        } else {
            C0084 c00844 = (C0084) r2.ʽʽ;
            c0151.f1017 = AbstractC0149.m667(view, c00844, c00844.f842);
        }
    }

    @Override // p179.AbstractC2669
    /* renamed from: ʽᵔ, reason: contains not printable characters */
    public final boolean mo475(RecyclerView recyclerView, View view, View view2) {
        if ((this.f601 & 32768) == 0 && m464(view) != -1 && (this.f601 & 35) == 0) {
            m522(view, view2, true, 0, 0);
        }
        return true;
    }

    @Override // p179.AbstractC2669
    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final C2700 mo476(Context context, AttributeSet attributeSet) {
        return new C2700(context, attributeSet);
    }

    @Override // p179.AbstractC2669
    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int mo477(View view) {
        return super.mo477(view) - ((C0151) view.getLayoutParams()).f1022;
    }

    /* renamed from: ʾˏ, reason: contains not printable characters */
    public final void m478() {
        int m6109;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int top;
        int i6;
        int top2;
        int i7;
        if (this.f596.m6109() == 0) {
            return;
        }
        if ((this.f601 & 262144) == 0) {
            i = this.f611.f903;
            int m61092 = this.f596.m6109() - 1;
            i2 = this.f611.f907;
            i3 = m61092;
            m6109 = 0;
        } else {
            AbstractC0105 abstractC0105 = this.f611;
            int i8 = abstractC0105.f907;
            int i9 = abstractC0105.f903;
            m6109 = this.f596.m6109() - 1;
            i = i8;
            i2 = i9;
            i3 = 0;
        }
        if (i < 0 || i2 < 0) {
            return;
        }
        boolean z = i == i3;
        boolean z2 = i2 == m6109;
        int i10 = Integer.MIN_VALUE;
        int i11 = Integer.MAX_VALUE;
        ˏˆ.ﹳٴ r6 = this.f606;
        if (!z) {
            C0091 c0091 = (C0091) r6.ˈٴ;
            if (c0091.f857 == Integer.MAX_VALUE && !z2 && c0091.f856 == Integer.MIN_VALUE) {
                return;
            }
        }
        int[] iArr = f594;
        if (z) {
            i11 = this.f611.m598(true, iArr);
            View mo904 = mo904(iArr[1]);
            if (this.f620 == 0) {
                C0151 c0151 = (C0151) mo904.getLayoutParams();
                c0151.getClass();
                top2 = mo904.getLeft() + c0151.f1019;
                i7 = c0151.f1017;
            } else {
                C0151 c01512 = (C0151) mo904.getLayoutParams();
                c01512.getClass();
                top2 = mo904.getTop() + c01512.f1024;
                i7 = c01512.f1018;
            }
            int i12 = top2 + i7;
            int[] iArr2 = ((C0151) mo904.getLayoutParams()).f1020;
            i4 = (iArr2 == null || iArr2.length <= 0) ? i12 : (iArr2[iArr2.length - 1] - iArr2[0]) + i12;
        } else {
            i4 = Integer.MAX_VALUE;
        }
        if (z2) {
            i10 = this.f611.m591(false, iArr);
            View mo9042 = mo904(iArr[1]);
            if (this.f620 == 0) {
                C0151 c01513 = (C0151) mo9042.getLayoutParams();
                c01513.getClass();
                top = mo9042.getLeft() + c01513.f1019;
                i6 = c01513.f1017;
            } else {
                C0151 c01514 = (C0151) mo9042.getLayoutParams();
                c01514.getClass();
                top = mo9042.getTop() + c01514.f1024;
                i6 = c01514.f1018;
            }
            i5 = top + i6;
        } else {
            i5 = Integer.MIN_VALUE;
        }
        ((C0091) r6.ˈٴ).m575(i10, i11, i5, i4);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00d9  */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r17v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r17v4 */
    /* JADX WARN: Type inference failed for: r17v5 */
    /* JADX WARN: Type inference failed for: r17v6, types: [boolean] */
    @Override // p179.AbstractC2669
    /* renamed from: ʿ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo479(androidx.recyclerview.widget.RecyclerView r19, java.util.ArrayList r20, int r21, int r22) {
        /*
            Method dump skipped, instructions count: 436
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.leanback.widget.GridLayoutManager.mo479(androidx.recyclerview.widget.RecyclerView, java.util.ArrayList, int, int):boolean");
    }

    /* renamed from: ʿʽ, reason: contains not printable characters */
    public final void m480(boolean z) {
        int i;
        if (z) {
            if (m504()) {
                return;
            }
        } else if (m5977() == 0 || this.f639.m953(0) != null) {
            return;
        }
        C0120 c0120 = this.f633;
        if (c0120 == null) {
            C0120 c01202 = new C0120(this, z ? 1 : -1, this.f610 > 1);
            this.f623 = 0;
            mo536(c01202);
        } else {
            GridLayoutManager gridLayoutManager = c0120.f952;
            if (z) {
                int i2 = c0120.f953;
                if (i2 < gridLayoutManager.f636) {
                    c0120.f953 = i2 + 1;
                }
            } else {
                int i3 = c0120.f953;
                if (i3 > (-gridLayoutManager.f636)) {
                    c0120.f953 = i3 - 1;
                }
            }
        }
        if (this.f620 == 0) {
            i = 4;
            if (this.f10154.getLayoutDirection() != 1 ? !z : z) {
                i = 3;
            }
        } else {
            i = z ? 2 : 1;
        }
        if (this.f603 == null) {
            this.f603 = (AudioManager) this.f639.getContext().getSystemService("audio");
        }
        this.f603.playSoundEffect(i);
    }

    @Override // p179.AbstractC2669
    /* renamed from: ʿـ, reason: contains not printable characters */
    public final int mo481(int i, C2666 c2666, C2723 c2723) {
        if ((this.f601 & 512) == 0 || this.f611 == null) {
            return 0;
        }
        m535(c2666, c2723);
        this.f601 = (this.f601 & (-4)) | 2;
        int m482 = this.f620 == 0 ? m482(i) : m489(i);
        m485();
        this.f601 &= -4;
        return m482;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001d, code lost:
    
        if (r7 <= r0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0031, code lost:
    
        r7 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002f, code lost:
    
        if (r7 >= r0) goto L21;
     */
    /* renamed from: ˆʻ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m482(int r7) {
        /*
            r6 = this;
            int r0 = r6.f601
            r1 = r0 & 64
            r2 = 1
            if (r1 != 0) goto L32
            r0 = r0 & 3
            if (r0 == r2) goto L32
            ˏˆ.ﹳٴ r0 = r6.f606
            if (r7 <= 0) goto L20
            java.lang.Object r0 = r0.ˈٴ
            androidx.leanback.widget.ʽⁱ r0 = (androidx.leanback.widget.C0091) r0
            int r1 = r0.f857
            r3 = 2147483647(0x7fffffff, float:NaN)
            if (r1 != r3) goto L1b
            goto L32
        L1b:
            int r0 = r0.f849
            if (r7 <= r0) goto L32
            goto L31
        L20:
            if (r7 >= 0) goto L32
            java.lang.Object r0 = r0.ˈٴ
            androidx.leanback.widget.ʽⁱ r0 = (androidx.leanback.widget.C0091) r0
            int r1 = r0.f856
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r1 != r3) goto L2d
            goto L32
        L2d:
            int r0 = r0.f851
            if (r7 >= r0) goto L32
        L31:
            r7 = r0
        L32:
            r0 = 0
            if (r7 != 0) goto L36
            return r0
        L36:
            int r1 = -r7
            int r3 = r6.m5974()
            int r4 = r6.f620
            if (r4 != r2) goto L4c
            r4 = r0
        L40:
            if (r4 >= r3) goto L59
            android.view.View r5 = r6.m5981(r4)
            r5.offsetTopAndBottom(r1)
            int r4 = r4 + 1
            goto L40
        L4c:
            r4 = r0
        L4d:
            if (r4 >= r3) goto L59
            android.view.View r5 = r6.m5981(r4)
            r5.offsetLeftAndRight(r1)
            int r4 = r4 + 1
            goto L4d
        L59:
            int r1 = r6.f601
            r1 = r1 & 3
            if (r1 != r2) goto L63
            r6.m478()
            return r7
        L63:
            int r1 = r6.m5974()
            int r3 = r6.f601
            r4 = 262144(0x40000, float:3.67342E-40)
            r3 = r3 & r4
            if (r3 == 0) goto L71
            if (r7 <= 0) goto L77
            goto L73
        L71:
            if (r7 >= 0) goto L77
        L73:
            r6.m526()
            goto L7a
        L77:
            r6.m496()
        L7a:
            int r3 = r6.m5974()
            if (r3 <= r1) goto L82
            r1 = r2
            goto L83
        L82:
            r1 = r0
        L83:
            int r3 = r6.m5974()
            int r5 = r6.f601
            r4 = r4 & r5
            if (r4 == 0) goto L8f
            if (r7 <= 0) goto L95
            goto L91
        L8f:
            if (r7 >= 0) goto L95
        L91:
            r6.m465()
            goto L98
        L95:
            r6.m528()
        L98:
            int r4 = r6.m5974()
            if (r4 >= r3) goto L9f
            goto La0
        L9f:
            r2 = r0
        La0:
            r0 = r1 | r2
            if (r0 == 0) goto La7
            r6.m500()
        La7:
            androidx.leanback.widget.ᵔᵢ r0 = r6.f639
            r0.invalidate()
            r6.m478()
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.leanback.widget.GridLayoutManager.m482(int):int");
    }

    @Override // p179.AbstractC2669
    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void mo483(int i, C2676 c2676) {
        int i2 = this.f639.f1002;
        if (i == 0 || i2 == 0) {
            return;
        }
        int max = Math.max(0, Math.min(this.f613 - ((i2 - 1) / 2), i - i2));
        for (int i3 = max; i3 < i && i3 < max + i2; i3++) {
            c2676.m6025(i3, 0);
        }
    }

    /* renamed from: ˆˎ, reason: contains not printable characters */
    public final int m484(int i, boolean z) {
        ﾞʻ mo597;
        AbstractC0105 abstractC0105 = this.f611;
        if (abstractC0105 == null) {
            return i;
        }
        int i2 = this.f613;
        int i3 = (i2 == -1 || (mo597 = abstractC0105.mo597(i2)) == null) ? -1 : mo597.ᴵˊ;
        int m5974 = m5974();
        View view = null;
        for (int i4 = 0; i4 < m5974 && i != 0; i4++) {
            int i5 = i > 0 ? i4 : (m5974 - 1) - i4;
            View m5981 = m5981(i5);
            if (m5981.getVisibility() == 0 && (!m5978() || m5981.hasFocusable())) {
                int m464 = m464(m5981(i5));
                ﾞʻ mo5972 = this.f611.mo597(m464);
                int i6 = mo5972 == null ? -1 : mo5972.ᴵˊ;
                if (i3 == -1) {
                    i2 = m464;
                    view = m5981;
                    i3 = i6;
                } else if (i6 == i3 && ((i > 0 && m464 > i2) || (i < 0 && m464 < i2))) {
                    i = i > 0 ? i - 1 : i + 1;
                    i2 = m464;
                    view = m5981;
                }
            }
        }
        if (view != null) {
            if (z) {
                if (m5978()) {
                    this.f601 |= 32;
                    view.requestFocus();
                    this.f601 &= -33;
                }
                this.f613 = i2;
                this.f624 = 0;
                return i;
            }
            m507(view, true);
        }
        return i;
    }

    /* renamed from: ˆˑ, reason: contains not printable characters */
    public final void m485() {
        int i = this.f602 - 1;
        this.f602 = i;
        if (i == 0) {
            this.f628 = null;
            this.f596 = null;
            this.f621 = 0;
            this.f604 = 0;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:71:0x014c  */
    /* renamed from: ˆﹳ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m486(boolean r18) {
        /*
            Method dump skipped, instructions count: 357
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.leanback.widget.GridLayoutManager.m486(boolean):boolean");
    }

    @Override // p179.AbstractC2669
    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final int mo487(C2666 c2666, C2723 c2723) {
        AbstractC0105 abstractC0105;
        return (this.f620 != 0 || (abstractC0105 = this.f611) == null) ? super.mo487(c2666, c2723) : abstractC0105.f902;
    }

    @Override // p179.AbstractC2669
    /* renamed from: ˈˏ, reason: contains not printable characters */
    public final void mo488() {
        this.f623 = 0;
        C2713 c2713 = (C2713) this.f627.f955;
        if (c2713 != null) {
            c2713.m6087(-1);
        }
    }

    /* renamed from: ˉʽ, reason: contains not printable characters */
    public final int m489(int i) {
        int i2 = 0;
        if (i == 0) {
            return 0;
        }
        int i3 = -i;
        int m5974 = m5974();
        if (this.f620 == 0) {
            while (i2 < m5974) {
                m5981(i2).offsetTopAndBottom(i3);
                i2++;
            }
        } else {
            while (i2 < m5974) {
                m5981(i2).offsetLeftAndRight(i3);
                i2++;
            }
        }
        this.f634 += i;
        m519();
        this.f639.invalidate();
        return i;
    }

    @Override // p179.AbstractC2669
    /* renamed from: ˉـ, reason: contains not printable characters */
    public final void mo490(AbstractC2727 abstractC2727) {
        if (abstractC2727 != null) {
            this.f611 = null;
            this.f608 = null;
            this.f601 &= -1025;
            this.f613 = -1;
            this.f623 = 0;
            C2713 c2713 = (C2713) this.f627.f955;
            if (c2713 != null) {
                c2713.m6087(-1);
            }
        }
    }

    @Override // p179.AbstractC2669
    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final int mo491(View view) {
        return super.mo491(view) - ((C0151) view.getLayoutParams()).f1021;
    }

    /* renamed from: ˊˊ, reason: contains not printable characters */
    public final int m492() {
        int i = (this.f601 & 524288) != 0 ? 0 : this.f610 - 1;
        return m525(i) + m515(i);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00d6 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00d7  */
    @Override // p179.AbstractC2669
    /* renamed from: ˊᵔ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View mo493(android.view.View r8, int r9) {
        /*
            Method dump skipped, instructions count: 234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.leanback.widget.GridLayoutManager.mo493(android.view.View, int):android.view.View");
    }

    /* renamed from: ˊﹳ, reason: contains not printable characters */
    public final boolean m494(int i) {
        AbstractC2673 m953 = this.f639.m953(i);
        if (m953 == null) {
            return false;
        }
        View view = m953.f10176;
        return view.getLeft() >= 0 && view.getRight() <= this.f639.getWidth() && view.getTop() >= 0 && view.getBottom() <= this.f639.getHeight();
    }

    /* renamed from: ˎʼ, reason: contains not printable characters */
    public final void m495(int i) {
        if (i == 0 || i == 1) {
            this.f620 = i;
            this.f617 = AbstractC1237.m3817(this, i);
            ˏˆ.ﹳٴ r0 = this.f606;
            C0091 c0091 = (C0091) r0.ᴵˊ;
            C0091 c00912 = (C0091) r0.ʽʽ;
            if (i == 0) {
                r0.ˈٴ = c00912;
                r0.ᴵᵔ = c0091;
            } else {
                r0.ˈٴ = c0091;
                r0.ᴵᵔ = c00912;
            }
            com.parse.ٴʼ r02 = this.f632;
            r02.getClass();
            if (i == 0) {
                r02.ˈٴ = (C0084) r02.ʽʽ;
            } else {
                r02.ˈٴ = (C0084) r02.ᴵˊ;
            }
            this.f601 |= 256;
        }
    }

    /* renamed from: ˎʾ, reason: contains not printable characters */
    public final void m496() {
        this.f611.mo601((this.f601 & 262144) != 0 ? (-this.f625) - this.f604 : this.f626 + this.f625 + this.f604, false);
    }

    /* renamed from: ˎˉ, reason: contains not printable characters */
    public final void m497() {
        ArrayList arrayList = this.f630;
        if (arrayList == null || arrayList.size() <= 0) {
            return;
        }
        int i = this.f613;
        View mo904 = i == -1 ? null : mo904(i);
        if (mo904 != null) {
            AbstractC2673 m946 = this.f639.m946(mo904);
            int i2 = this.f613;
            ArrayList arrayList2 = this.f630;
            if (arrayList2 == null) {
                return;
            }
            for (int size = arrayList2.size() - 1; size >= 0; size--) {
                ((AbstractC0096) this.f630.get(size)).mo587(m946, i2);
            }
            return;
        }
        InterfaceC0106 interfaceC0106 = this.f609;
        if (interfaceC0106 != null) {
            interfaceC0106.mo605(null, -1);
        }
        ArrayList arrayList3 = this.f630;
        if (arrayList3 == null) {
            return;
        }
        for (int size2 = arrayList3.size() - 1; size2 >= 0; size2--) {
            ((AbstractC0096) this.f630.get(size2)).mo587(null, -1);
        }
    }

    /* renamed from: ˎـ, reason: contains not printable characters */
    public final void m498(View view) {
        int childMeasureSpec;
        int i;
        C0151 c0151 = (C0151) view.getLayoutParams();
        Rect rect = f595;
        m5976(view, rect);
        int i2 = ((ViewGroup.MarginLayoutParams) c0151).leftMargin + ((ViewGroup.MarginLayoutParams) c0151).rightMargin + rect.left + rect.right;
        int i3 = ((ViewGroup.MarginLayoutParams) c0151).topMargin + ((ViewGroup.MarginLayoutParams) c0151).bottomMargin + rect.top + rect.bottom;
        int makeMeasureSpec = this.f607 == -2 ? View.MeasureSpec.makeMeasureSpec(0, 0) : View.MeasureSpec.makeMeasureSpec(this.f635, 1073741824);
        if (this.f620 == 0) {
            childMeasureSpec = ViewGroup.getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(0, 0), i2, ((ViewGroup.MarginLayoutParams) c0151).width);
            i = ViewGroup.getChildMeasureSpec(makeMeasureSpec, i3, ((ViewGroup.MarginLayoutParams) c0151).height);
        } else {
            int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(0, 0), i3, ((ViewGroup.MarginLayoutParams) c0151).height);
            childMeasureSpec = ViewGroup.getChildMeasureSpec(makeMeasureSpec, i2, ((ViewGroup.MarginLayoutParams) c0151).width);
            i = childMeasureSpec2;
        }
        view.measure(childMeasureSpec, i);
    }

    @Override // p179.AbstractC2669
    /* renamed from: ˎᐧ, reason: contains not printable characters */
    public final void mo499(C2666 c2666) {
        for (int m5974 = m5974() - 1; m5974 >= 0; m5974--) {
            m5975(m5974, c2666);
        }
    }

    /* renamed from: ˎᵎ, reason: contains not printable characters */
    public final void m500() {
        int i = (this.f601 & (-1025)) | (m486(false) ? 1024 : 0);
        this.f601 = i;
        if ((i & 1024) != 0) {
            AbstractC0145 abstractC0145 = this.f639;
            WeakHashMap weakHashMap = AbstractC2823.f10603;
            abstractC0145.postOnAnimation(this.f597);
        }
    }

    /* renamed from: ˏʻ, reason: contains not printable characters */
    public final void m501(int i, boolean z) {
        if ((this.f613 == i || i == -1) && this.f624 == 0) {
            return;
        }
        m509(i, 0, z);
    }

    @Override // p179.AbstractC2669
    /* renamed from: ˏי, reason: contains not printable characters */
    public final C2700 mo502() {
        return new C2700(-2, -2);
    }

    @Override // p179.AbstractC2669
    /* renamed from: ˏᵢ, reason: contains not printable characters */
    public final void mo503(C2666 c2666, C2723 c2723, C2535 c2535) {
        m535(c2666, c2723);
        int m6109 = c2723.m6109();
        int i = this.f601;
        boolean z = (262144 & i) != 0;
        if ((i & 2048) == 0 || (m6109 > 1 && !m494(0))) {
            if (this.f620 == 0) {
                c2535.m5675(z ? C2526.f9623 : C2526.f9625);
            } else {
                c2535.m5675(C2526.f9621);
            }
            c2535.m5674(true);
        }
        if ((this.f601 & 4096) == 0 || (m6109 > 1 && !m494(m6109 - 1))) {
            if (this.f620 == 0) {
                c2535.m5675(z ? C2526.f9625 : C2526.f9623);
            } else {
                c2535.m5675(C2526.f9618);
            }
            c2535.m5674(true);
        }
        c2535.f9633.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(mo487(c2666, c2723), mo527(c2666, c2723), false, 0));
        c2535.m5665(GridView.class.getName());
        m485();
    }

    /* renamed from: ˏⁱ, reason: contains not printable characters */
    public final boolean m504() {
        int m5977 = m5977();
        return m5977 == 0 || this.f639.m953(m5977 - 1) != null;
    }

    /* renamed from: ˑˆ, reason: contains not printable characters */
    public final void m505() {
        ArrayList arrayList;
        if (this.f609 != null || ((arrayList = this.f630) != null && arrayList.size() > 0)) {
            int i = this.f613;
            View mo904 = i == -1 ? null : mo904(i);
            if (mo904 != null) {
                AbstractC2673 m946 = this.f639.m946(mo904);
                InterfaceC0106 interfaceC0106 = this.f609;
                if (interfaceC0106 != null) {
                    interfaceC0106.mo605(mo904, this.f613);
                }
                AbstractC0145 abstractC0145 = this.f639;
                int i2 = this.f613;
                ArrayList arrayList2 = this.f630;
                if (arrayList2 != null) {
                    for (int size = arrayList2.size() - 1; size >= 0; size--) {
                        ((AbstractC0096) this.f630.get(size)).mo588(abstractC0145, m946, i2);
                    }
                }
            } else {
                InterfaceC0106 interfaceC01062 = this.f609;
                if (interfaceC01062 != null) {
                    interfaceC01062.mo605(null, -1);
                }
                AbstractC0145 abstractC01452 = this.f639;
                ArrayList arrayList3 = this.f630;
                if (arrayList3 != null) {
                    for (int size2 = arrayList3.size() - 1; size2 >= 0; size2--) {
                        ((AbstractC0096) this.f630.get(size2)).mo588(abstractC01452, null, -1);
                    }
                }
            }
            if ((this.f601 & 3) == 1 || this.f639.isLayoutRequested()) {
                return;
            }
            int m5974 = m5974();
            for (int i3 = 0; i3 < m5974; i3++) {
                if (m5981(i3).isLayoutRequested()) {
                    AbstractC0145 abstractC01453 = this.f639;
                    WeakHashMap weakHashMap = AbstractC2823.f10603;
                    abstractC01453.postOnAnimation(this.f597);
                    return;
                }
            }
        }
    }

    @Override // p179.AbstractC2669
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final boolean mo506() {
        return this.f620 == 0 || this.f610 > 1;
    }

    /* renamed from: ˑﹶ, reason: contains not printable characters */
    public final void m507(View view, boolean z) {
        m522(view, view.findFocus(), z, 0, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x005c  */
    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.leanback.widget.ʽﹳ, android.os.Parcelable, java.lang.Object] */
    @Override // p179.AbstractC2669
    /* renamed from: י, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.os.Parcelable mo508() {
        /*
            r8 = this;
            androidx.leanback.widget.ʽﹳ r0 = new androidx.leanback.widget.ʽﹳ
            r0.<init>()
            android.os.Bundle r1 = android.os.Bundle.EMPTY
            r0.f861 = r1
            int r1 = r8.f613
            r0.f860 = r1
            androidx.leanback.widget.יﹳ r1 = r8.f627
            java.lang.Object r2 = r1.f955
            ˋˋ.ـˊ r2 = (p179.C2713) r2
            if (r2 == 0) goto L54
            java.lang.Object r3 = r2.f10317
            ˋⁱ.ﾞᴵ r3 = (ˋⁱ.ﾞᴵ) r3
            monitor-enter(r3)
            int r2 = r2.f10314     // Catch: java.lang.Throwable -> L51
            monitor-exit(r3)
            if (r2 != 0) goto L20
            goto L54
        L20:
            java.lang.Object r2 = r1.f955
            ˋˋ.ـˊ r2 = (p179.C2713) r2
            java.util.LinkedHashMap r2 = r2.m6091()
            android.os.Bundle r3 = new android.os.Bundle
            r3.<init>()
            java.util.Set r2 = r2.entrySet()
            java.util.Iterator r2 = r2.iterator()
        L35:
            boolean r4 = r2.hasNext()
            if (r4 == 0) goto L55
            java.lang.Object r4 = r2.next()
            java.util.Map$Entry r4 = (java.util.Map.Entry) r4
            java.lang.Object r5 = r4.getKey()
            java.lang.String r5 = (java.lang.String) r5
            java.lang.Object r4 = r4.getValue()
            android.util.SparseArray r4 = (android.util.SparseArray) r4
            r3.putSparseParcelableArray(r5, r4)
            goto L35
        L51:
            r0 = move-exception
            monitor-exit(r3)
            throw r0
        L54:
            r3 = 0
        L55:
            int r2 = r8.m5974()
            r4 = 0
        L5a:
            if (r4 >= r2) goto L84
            android.view.View r5 = r8.m5981(r4)
            int r6 = m464(r5)
            r7 = -1
            if (r6 == r7) goto L81
            int r7 = r1.f956
            if (r7 == 0) goto L81
            java.lang.String r6 = java.lang.Integer.toString(r6)
            android.util.SparseArray r7 = new android.util.SparseArray
            r7.<init>()
            r5.saveHierarchyState(r7)
            if (r3 != 0) goto L7e
            android.os.Bundle r3 = new android.os.Bundle
            r3.<init>()
        L7e:
            r3.putSparseParcelableArray(r6, r7)
        L81:
            int r4 = r4 + 1
            goto L5a
        L84:
            r0.f861 = r3
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.leanback.widget.GridLayoutManager.mo508():android.os.Parcelable");
    }

    /* renamed from: יʿ, reason: contains not printable characters */
    public final void m509(int i, int i2, boolean z) {
        View mo904 = mo904(i);
        C2688 c2688 = this.f10149;
        boolean z2 = c2688 != null && c2688.f10241;
        if (!z2 && !this.f639.isLayoutRequested() && mo904 != null && m464(mo904) == i) {
            this.f601 |= 32;
            m507(mo904, z);
            this.f601 &= -33;
            return;
        }
        int i3 = this.f601;
        if ((i3 & 512) == 0 || (i3 & 64) != 0) {
            this.f613 = i;
            this.f624 = i2;
            this.f623 = Integer.MIN_VALUE;
            return;
        }
        if (z && !this.f639.isLayoutRequested()) {
            this.f613 = i;
            this.f624 = i2;
            this.f623 = Integer.MIN_VALUE;
            if (this.f611 == null) {
                String str = "GridLayoutManager:" + this.f639.getId();
                return;
            }
            C0087 c0087 = new C0087(this);
            c0087.f10247 = i;
            mo536(c0087);
            int i4 = c0087.f10247;
            if (i4 != this.f613) {
                this.f613 = i4;
                this.f624 = 0;
                return;
            }
            return;
        }
        if (z2) {
            AbstractC0146 abstractC0146 = this.f612;
            if (abstractC0146 != null) {
                abstractC0146.f1008 = true;
            }
            this.f639.m940();
        }
        if (!this.f639.isLayoutRequested() && mo904 != null && m464(mo904) == i) {
            this.f601 |= 32;
            m507(mo904, z);
            this.f601 &= -33;
        } else {
            this.f613 = i;
            this.f624 = i2;
            this.f623 = Integer.MIN_VALUE;
            this.f601 |= 256;
            m5982();
        }
    }

    @Override // p179.AbstractC2669
    /* renamed from: יˉ, reason: contains not printable characters */
    public final void mo510(RecyclerView recyclerView, int i) {
        m501(i, true);
    }

    /* renamed from: יⁱ, reason: contains not printable characters */
    public final void m511() {
        int m5974 = m5974();
        for (int i = 0; i < m5974; i++) {
            m474(m5981(i));
        }
    }

    /* renamed from: ـʻ, reason: contains not printable characters */
    public final View m512(int i) {
        ˉˆ r1;
        View m5951 = this.f628.m5951(i);
        C0151 c0151 = (C0151) m5951.getLayoutParams();
        Object m946 = this.f639.m946(m5951);
        if (m946 instanceof InterfaceC0129) {
            ((C0101) ((InterfaceC0129) m946)).getClass();
            r1 = C0117.f928;
        } else {
            r1 = null;
        }
        c0151.f1023 = r1;
        return m5951;
    }

    @Override // p179.AbstractC2669
    /* renamed from: ـᵎ, reason: contains not printable characters */
    public final void mo513(C2666 c2666, C2723 c2723, int i, int i2) {
        int size;
        int size2;
        int mode;
        int m5984;
        int m5987;
        int i3;
        m535(c2666, c2723);
        if (this.f620 == 0) {
            size2 = View.MeasureSpec.getSize(i);
            size = View.MeasureSpec.getSize(i2);
            mode = View.MeasureSpec.getMode(i2);
            m5984 = m5989();
            m5987 = m5988();
        } else {
            size = View.MeasureSpec.getSize(i);
            size2 = View.MeasureSpec.getSize(i2);
            mode = View.MeasureSpec.getMode(i);
            m5984 = m5984();
            m5987 = m5987();
        }
        int i4 = m5987 + m5984;
        this.f619 = size;
        int i5 = this.f607;
        if (i5 == -2) {
            int i6 = this.f629;
            if (i6 == 0) {
                i6 = 1;
            }
            this.f610 = i6;
            this.f635 = 0;
            int[] iArr = this.f608;
            if (iArr == null || iArr.length != i6) {
                this.f608 = new int[i6];
            }
            if (this.f596.f10376) {
                m529();
            }
            m486(true);
            if (mode == Integer.MIN_VALUE) {
                size = Math.min(m492() + i4, this.f619);
            } else if (mode == 0) {
                i3 = m492();
                size = i3 + i4;
            } else {
                if (mode != 1073741824) {
                    throw new IllegalStateException("wrong spec");
                }
                size = this.f619;
            }
        } else {
            if (mode != Integer.MIN_VALUE) {
                if (mode == 0) {
                    if (i5 == 0) {
                        i5 = size - i4;
                    }
                    this.f635 = i5;
                    int i7 = this.f629;
                    if (i7 == 0) {
                        i7 = 1;
                    }
                    this.f610 = i7;
                    i3 = ((i7 - 1) * this.f622) + (i5 * i7);
                    size = i3 + i4;
                } else if (mode != 1073741824) {
                    throw new IllegalStateException("wrong spec");
                }
            }
            int i8 = this.f629;
            if (i8 == 0 && i5 == 0) {
                this.f610 = 1;
                this.f635 = size - i4;
            } else if (i8 == 0) {
                this.f635 = i5;
                int i9 = this.f622;
                this.f610 = (size + i9) / (i5 + i9);
            } else if (i5 == 0) {
                this.f610 = i8;
                this.f635 = ((size - i4) - ((i8 - 1) * this.f622)) / i8;
            } else {
                this.f610 = i8;
                this.f635 = i5;
            }
            if (mode == Integer.MIN_VALUE) {
                int i10 = this.f635;
                int i11 = this.f610;
                int i12 = ((i11 - 1) * this.f622) + (i10 * i11) + i4;
                if (i12 < size) {
                    size = i12;
                }
            }
        }
        if (this.f620 == 0) {
            RecyclerView.m926(this.f10154, size2, size);
        } else {
            RecyclerView.m926(this.f10154, size, size2);
        }
        m485();
    }

    @Override // p179.AbstractC2669
    /* renamed from: ـﹶ, reason: contains not printable characters */
    public final void mo514(int i, int i2) {
        AbstractC0105 abstractC0105;
        int i3;
        int i4 = this.f613;
        if (i4 != -1 && (abstractC0105 = this.f611) != null && abstractC0105.f907 >= 0 && (i3 = this.f623) != Integer.MIN_VALUE && i <= i4 + i3) {
            this.f623 = i3 + i2;
        }
        C2713 c2713 = (C2713) this.f627.f955;
        if (c2713 != null) {
            c2713.m6087(-1);
        }
    }

    /* renamed from: ٴʿ, reason: contains not printable characters */
    public final int m515(int i) {
        int i2 = 0;
        if ((this.f601 & 524288) != 0) {
            for (int i3 = this.f610 - 1; i3 > i; i3--) {
                i2 += m525(i3) + this.f622;
            }
            return i2;
        }
        int i4 = 0;
        while (i2 < i) {
            i4 += m525(i2) + this.f622;
            i2++;
        }
        return i4;
    }

    @Override // p179.AbstractC2669
    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final int mo516(View view) {
        return super.mo516(view) + ((C0151) view.getLayoutParams()).f1024;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: CFG modification limit reached, blocks count: 425
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:64)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:44)
        */
    @Override // p179.AbstractC2669
    /* renamed from: ٴﹳ, reason: contains not printable characters */
    public final void mo517(p179.C2666 r32, p179.C2723 r33) {
        /*
            Method dump skipped, instructions count: 1622
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.leanback.widget.GridLayoutManager.mo517(ˋˋ.ʻˋ, ˋˋ.ᐧﹶ):void");
    }

    @Override // p179.AbstractC2669
    /* renamed from: ᐧˎ, reason: contains not printable characters */
    public final boolean mo518(RecyclerView recyclerView, View view, Rect rect, boolean z) {
        return false;
    }

    /* renamed from: ᐧˏ, reason: contains not printable characters */
    public final void m519() {
        C0091 c0091 = (C0091) this.f606.ᴵᵔ;
        int i = c0091.f850 - this.f634;
        int m492 = m492() + i;
        c0091.m575(i, m492, i, m492);
    }

    @Override // p179.AbstractC2669
    /* renamed from: ᐧﹶ, reason: contains not printable characters */
    public final void mo520(Parcelable parcelable) {
        if (parcelable instanceof C0092) {
            C0092 c0092 = (C0092) parcelable;
            this.f613 = c0092.f860;
            this.f623 = 0;
            Bundle bundle = c0092.f861;
            C0121 c0121 = this.f627;
            C2713 c2713 = (C2713) c0121.f955;
            if (c2713 != null && bundle != null) {
                c2713.m6087(-1);
                for (String str : bundle.keySet()) {
                    ((C2713) c0121.f955).m6095(str, bundle.getSparseParcelableArray(str));
                }
            }
            this.f601 |= 256;
            m5982();
        }
    }

    @Override // p179.AbstractC2669
    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final void mo521(View view, Rect rect) {
        super.mo521(view, rect);
        C0151 c0151 = (C0151) view.getLayoutParams();
        rect.left += c0151.f1019;
        rect.top += c0151.f1024;
        rect.right -= c0151.f1021;
        rect.bottom -= c0151.f1022;
    }

    /* renamed from: ᴵٴ, reason: contains not printable characters */
    public final void m522(View view, View view2, boolean z, int i, int i2) {
        if ((this.f601 & 64) != 0) {
            return;
        }
        int m464 = m464(view);
        int m461 = m461(view, view2);
        if (m464 != this.f613 || m461 != this.f624) {
            this.f613 = m464;
            this.f624 = m461;
            this.f623 = 0;
            if ((this.f601 & 3) != 1) {
                m505();
            }
            if (this.f639.m957()) {
                this.f639.invalidate();
            }
        }
        if (view == null) {
            return;
        }
        if (!view.hasFocus() && this.f639.hasFocus()) {
            view.requestFocus();
        }
        if ((this.f601 & 131072) == 0 && z) {
            return;
        }
        int[] iArr = f594;
        if (!m537(view, view2, iArr) && i == 0 && i2 == 0) {
            return;
        }
        int i3 = iArr[0] + i;
        int i4 = iArr[1] + i2;
        if ((this.f601 & 3) == 1) {
            m482(i3);
            m489(i4);
            return;
        }
        if (this.f620 != 0) {
            i4 = i3;
            i3 = i4;
        }
        if (z) {
            this.f639.m968(i3, i4, false);
        } else {
            this.f639.scrollBy(i3, i4);
            m497();
        }
    }

    @Override // p179.AbstractC2669
    /* renamed from: ᵎʻ, reason: contains not printable characters */
    public final void mo523(C2723 c2723) {
    }

    @Override // p179.AbstractC2669
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final boolean mo524(C2700 c2700) {
        return c2700 instanceof C0151;
    }

    /* renamed from: ᵔⁱ, reason: contains not printable characters */
    public final int m525(int i) {
        int i2 = this.f635;
        if (i2 != 0) {
            return i2;
        }
        int[] iArr = this.f608;
        if (iArr == null) {
            return 0;
        }
        return iArr[i];
    }

    /* renamed from: ᵢʻ, reason: contains not printable characters */
    public final void m526() {
        this.f611.mo595((this.f601 & 262144) != 0 ? this.f626 + this.f625 + this.f604 : (-this.f625) - this.f604, false);
    }

    @Override // p179.AbstractC2669
    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public final int mo527(C2666 c2666, C2723 c2723) {
        AbstractC0105 abstractC0105;
        return (this.f620 != 1 || (abstractC0105 = this.f611) == null) ? super.mo527(c2666, c2723) : abstractC0105.f902;
    }

    /* renamed from: ᵢᐧ, reason: contains not printable characters */
    public final void m528() {
        int i = this.f601;
        if ((65600 & i) == 65536) {
            AbstractC0105 abstractC0105 = this.f611;
            int i2 = this.f613;
            int i3 = (i & 262144) != 0 ? this.f626 + this.f625 : -this.f625;
            while (true) {
                int i4 = abstractC0105.f903;
                int i5 = abstractC0105.f907;
                if (i4 < i5 || i5 >= i2) {
                    break;
                }
                int i6 = abstractC0105.f905.ʽﹳ(i5);
                if (!abstractC0105.f900) {
                    if (abstractC0105.f905.יـ(abstractC0105.f907) + i6 > i3) {
                        break;
                    }
                    abstractC0105.f905.ʼʼ(abstractC0105.f907);
                    abstractC0105.f907++;
                } else {
                    if (abstractC0105.f905.יـ(abstractC0105.f907) - i6 < i3) {
                        break;
                    }
                    abstractC0105.f905.ʼʼ(abstractC0105.f907);
                    abstractC0105.f907++;
                }
            }
            if (abstractC0105.f903 < abstractC0105.f907) {
                abstractC0105.f903 = -1;
                abstractC0105.f907 = -1;
            }
        }
    }

    /* renamed from: ⁱʾ, reason: contains not printable characters */
    public final void m529() {
        if (m5974() <= 0) {
            this.f621 = 0;
        } else {
            this.f621 = this.f611.f907 - ((C0151) m5981(0).getLayoutParams()).f10283.m6008();
        }
    }

    @Override // p179.AbstractC2669
    /* renamed from: ⁱי, reason: contains not printable characters */
    public final int mo530(int i, C2666 c2666, C2723 c2723) {
        int i2 = this.f601;
        if ((i2 & 512) == 0 || this.f611 == null) {
            return 0;
        }
        this.f601 = (i2 & (-4)) | 2;
        m535(c2666, c2723);
        int m482 = this.f620 == 1 ? m482(i) : m489(i);
        m485();
        this.f601 &= -4;
        return m482;
    }

    @Override // p179.AbstractC2669
    /* renamed from: ﹳⁱ, reason: contains not printable characters */
    public final void mo531(int i) {
        m501(i, false);
    }

    @Override // p179.AbstractC2669
    /* renamed from: ﹳﹳ, reason: contains not printable characters */
    public final void mo532(int i, int i2) {
        AbstractC0105 abstractC0105;
        int i3;
        int i4;
        int i5 = this.f613;
        if (i5 != -1 && (abstractC0105 = this.f611) != null && abstractC0105.f907 >= 0 && (i3 = this.f623) != Integer.MIN_VALUE && i <= (i4 = i5 + i3)) {
            if (i + i2 > i4) {
                this.f613 = (i - i4) + i3 + i5;
                this.f623 = Integer.MIN_VALUE;
            } else {
                this.f623 = i3 - i2;
            }
        }
        C2713 c2713 = (C2713) this.f627.f955;
        if (c2713 != null) {
            c2713.m6087(-1);
        }
    }

    /* renamed from: ﹶʽ, reason: contains not printable characters */
    public final int m533(int i) {
        int i2 = this.f620;
        if (i2 != 0) {
            if (i2 == 1) {
                if (i == 17) {
                    return (this.f601 & 524288) == 0 ? 2 : 3;
                }
                if (i == 33) {
                    return 0;
                }
                if (i == 66) {
                    return (this.f601 & 524288) == 0 ? 3 : 2;
                }
                if (i == 130) {
                    return 1;
                }
            }
        }
        if (i != 17) {
            if (i == 33) {
                return 2;
            }
            if (i != 66) {
                return i != 130 ? 17 : 3;
            }
            if ((this.f601 & 262144) != 0) {
                return 0;
            }
        } else if ((this.f601 & 262144) == 0) {
            return 0;
        }
        return 1;
    }

    @Override // p179.AbstractC2669
    /* renamed from: ﹶᐧ, reason: contains not printable characters */
    public final void mo534(int i, int i2) {
        int i3;
        int i4 = this.f613;
        if (i4 != -1 && (i3 = this.f623) != Integer.MIN_VALUE) {
            int i5 = i4 + i3;
            if (i <= i5 && i5 < i + 1) {
                this.f623 = (i2 - i) + i3;
            } else if (i < i5 && i2 > i5 - 1) {
                this.f623 = i3 - 1;
            } else if (i > i5 && i2 < i5) {
                this.f623 = i3 + 1;
            }
        }
        C2713 c2713 = (C2713) this.f627.f955;
        if (c2713 != null) {
            c2713.m6087(-1);
        }
    }

    /* renamed from: ﾞˊ, reason: contains not printable characters */
    public final void m535(C2666 c2666, C2723 c2723) {
        int i = this.f602;
        if (i == 0) {
            this.f628 = c2666;
            this.f596 = c2723;
            this.f621 = 0;
            this.f604 = 0;
        }
        this.f602 = i + 1;
    }

    @Override // p179.AbstractC2669
    /* renamed from: ﾞˋ, reason: contains not printable characters */
    public final void mo536(C2688 c2688) {
        AbstractC0146 abstractC0146 = this.f612;
        if (abstractC0146 != null) {
            abstractC0146.f1008 = true;
        }
        super.mo536(c2688);
        if (!c2688.f10241 || !(c2688 instanceof AbstractC0146)) {
            this.f612 = null;
            this.f633 = null;
            return;
        }
        AbstractC0146 abstractC01462 = (AbstractC0146) c2688;
        this.f612 = abstractC01462;
        if (abstractC01462 instanceof C0120) {
            this.f633 = (C0120) abstractC01462;
        } else {
            this.f633 = null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:83:0x0142, code lost:
    
        if (r3 != null) goto L66;
     */
    /* JADX WARN: Removed duplicated region for block: B:51:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0161  */
    /* renamed from: ﾞˏ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m537(android.view.View r13, android.view.View r14, int[] r15) {
        /*
            Method dump skipped, instructions count: 418
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.leanback.widget.GridLayoutManager.m537(android.view.View, android.view.View, int[]):boolean");
    }

    @Override // p179.AbstractC2669
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final boolean mo538() {
        return this.f620 == 1 || this.f610 > 1;
    }
}
