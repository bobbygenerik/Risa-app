package p012;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.parse.ٴʼ;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.PriorityQueue;
import java.util.WeakHashMap;
import p003.C0782;
import p010.C0843;
import p137.AbstractC2307;
import p137.C2284;
import p137.C2330;
import p179.C2693;
import p179.C2743;
import p186.AbstractC2776;
import p186.AbstractC2823;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p305.C3711;
import p305.C3721;
import p305.C3732;
import p350.AbstractC4295;
import p392.C4644;
import p392.C4672;
import ˊⁱ.ˑﹳ;

/* renamed from: ʻᴵ.ʼʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0882 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Object f3740;

    /* renamed from: ˈ, reason: contains not printable characters */
    public Object f3741;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public Object f3742;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object f3743;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int f3744;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public Object f3745;

    public C0882(View view) {
        this.f3744 = -1;
        this.f3743 = view;
        this.f3740 = C2284.m5332();
    }

    public C0882(Object obj, Looper looper, Looper looper2, C3721 c3721, C4672 c4672) {
        this.f3743 = c3721.m7820(looper, null);
        this.f3740 = c3721.m7820(looper2, null);
        this.f3742 = obj;
        this.f3745 = obj;
        this.f3741 = c4672;
    }

    public C0882(InterfaceC0887 interfaceC0887) {
        this.f3743 = interfaceC0887;
        this.f3740 = new ArrayDeque();
        this.f3741 = new ArrayDeque();
        this.f3742 = new PriorityQueue();
        this.f3744 = -1;
    }

    public C0882(C2693 c2693) {
        this.f3743 = new C0843(30);
        this.f3740 = new ArrayList();
        this.f3741 = new ArrayList();
        this.f3744 = 0;
        this.f3742 = c2693;
        this.f3745 = new ˑﹳ(1, this);
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public void m3114(int i) {
        AbstractC3731.m7857(i >= 0);
        this.f3744 = i;
        m3116(i);
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public int m3115(int i, int i2) {
        int i3;
        int i4;
        C0843 c0843 = (C0843) this.f3743;
        ArrayList arrayList = (ArrayList) this.f3741;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            C2743 c2743 = (C2743) arrayList.get(size);
            int i5 = c2743.f10467;
            if (i5 == 8) {
                int i6 = c2743.f10466;
                int i7 = c2743.f10465;
                if (i6 < i7) {
                    i4 = i6;
                    i3 = i7;
                } else {
                    i3 = i6;
                    i4 = i7;
                }
                if (i < i4 || i > i3) {
                    if (i < i6) {
                        if (i2 == 1) {
                            c2743.f10466 = i6 + 1;
                            c2743.f10465 = i7 + 1;
                        } else if (i2 == 2) {
                            c2743.f10466 = i6 - 1;
                            c2743.f10465 = i7 - 1;
                        }
                    }
                } else if (i4 == i6) {
                    if (i2 == 1) {
                        c2743.f10465 = i7 + 1;
                    } else if (i2 == 2) {
                        c2743.f10465 = i7 - 1;
                    }
                    i++;
                } else {
                    if (i2 == 1) {
                        c2743.f10466 = i6 + 1;
                    } else if (i2 == 2) {
                        c2743.f10466 = i6 - 1;
                    }
                    i--;
                }
            } else {
                int i8 = c2743.f10466;
                if (i8 <= i) {
                    if (i5 == 1) {
                        i -= c2743.f10465;
                    } else if (i5 == 2) {
                        i += c2743.f10465;
                    }
                } else if (i2 == 1) {
                    c2743.f10466 = i8 + 1;
                } else if (i2 == 2) {
                    c2743.f10466 = i8 - 1;
                }
            }
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            C2743 c27432 = (C2743) arrayList.get(size2);
            if (c27432.f10467 == 8) {
                int i9 = c27432.f10465;
                if (i9 == c27432.f10466 || i9 < 0) {
                    arrayList.remove(size2);
                    c27432.f10464 = null;
                    c0843.mo3014(c27432);
                }
            } else if (c27432.f10465 <= 0) {
                arrayList.remove(size2);
                c27432.f10464 = null;
                c0843.mo3014(c27432);
            }
        }
        return i;
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public void m3116(int i) {
        ArrayList arrayList;
        PriorityQueue priorityQueue = (PriorityQueue) this.f3742;
        while (priorityQueue.size() > i) {
            C0895 c0895 = (C0895) priorityQueue.poll();
            String str = AbstractC3712.f14481;
            int i2 = 0;
            while (true) {
                arrayList = c0895.f3770;
                if (i2 >= arrayList.size()) {
                    break;
                }
                ((InterfaceC0887) this.f3743).mo2915(c0895.f3771, (C3732) arrayList.get(i2));
                ((ArrayDeque) this.f3740).push((C3732) arrayList.get(i2));
                i2++;
            }
            arrayList.clear();
            C0895 c08952 = (C0895) this.f3745;
            if (c08952 != null && c08952.f3771 == c0895.f3771) {
                this.f3745 = null;
            }
            ((ArrayDeque) this.f3741).push(c0895);
        }
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public void m3117(int i) {
        ColorStateList colorStateList;
        this.f3744 = i;
        C2284 c2284 = (C2284) this.f3740;
        if (c2284 != null) {
            Context context = ((View) this.f3743).getContext();
            synchronized (c2284) {
                colorStateList = c2284.f8942.m5245(context, i);
            }
        } else {
            colorStateList = null;
        }
        m3119(colorStateList);
        m3135();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public boolean m3118(int i) {
        ArrayList arrayList = (ArrayList) this.f3741;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            C2743 c2743 = (C2743) arrayList.get(i2);
            int i3 = c2743.f10467;
            if (i3 != 8) {
                if (i3 == 1) {
                    int i4 = c2743.f10466;
                    int i5 = c2743.f10465 + i4;
                    while (i4 < i5) {
                        if (m3132(i4, i2 + 1) == i) {
                            return true;
                        }
                        i4++;
                    }
                } else {
                    continue;
                }
            } else {
                if (m3132(c2743.f10465, i2 + 1) == i) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public void m3119(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (((C2330) this.f3741) == null) {
                this.f3741 = new Object();
            }
            C2330 c2330 = (C2330) this.f3741;
            c2330.f9069 = colorStateList;
            c2330.f9071 = true;
        } else {
            this.f3741 = null;
        }
        m3135();
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public void m3120(PorterDuff.Mode mode) {
        if (((C2330) this.f3742) == null) {
            this.f3742 = new Object();
        }
        C2330 c2330 = (C2330) this.f3742;
        c2330.f9070 = mode;
        c2330.f9072 = true;
        m3135();
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public ColorStateList m3121() {
        C2330 c2330 = (C2330) this.f3742;
        if (c2330 != null) {
            return (ColorStateList) c2330.f9069;
        }
        return null;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public void m3122() {
        ArrayList arrayList = (ArrayList) this.f3741;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((C2693) this.f3742).m6055((C2743) arrayList.get(i));
        }
        m3127(arrayList);
        this.f3744 = 0;
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public void m3123(AttributeSet attributeSet, int i) {
        ColorStateList m5245;
        View view = (View) this.f3743;
        Context context = view.getContext();
        int[] iArr = AbstractC4295.f15919;
        ٴʼ r1 = ٴʼ.ʿᵢ(i, 0, context, attributeSet, iArr);
        TypedArray typedArray = (TypedArray) r1.ᴵˊ;
        View view2 = (View) this.f3743;
        AbstractC2823.m6282(view2, view2.getContext(), iArr, attributeSet, (TypedArray) r1.ᴵˊ, i);
        try {
            if (typedArray.hasValue(0)) {
                this.f3744 = typedArray.getResourceId(0, -1);
                C2284 c2284 = (C2284) this.f3740;
                Context context2 = view.getContext();
                int i2 = this.f3744;
                synchronized (c2284) {
                    m5245 = c2284.f8942.m5245(context2, i2);
                }
                if (m5245 != null) {
                    m3119(m5245);
                }
            }
            if (typedArray.hasValue(1)) {
                AbstractC2776.m6178(view, r1.ˈʿ(1));
            }
            if (typedArray.hasValue(2)) {
                AbstractC2776.m6179(view, AbstractC2307.m5386(typedArray.getInt(2, -1), null));
            }
            r1.ᐧᴵ();
        } catch (Throwable th) {
            r1.ᐧᴵ();
            throw th;
        }
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public void m3124() {
        this.f3744 = -1;
        m3119(null);
        m3135();
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public void m3125(Runnable runnable) {
        C3711 c3711 = (C3711) this.f3743;
        if (c3711.f14471.getLooper().getThread().isAlive()) {
            c3711.m7750(runnable);
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public void m3126() {
        C2693 c2693 = (C2693) this.f3742;
        m3122();
        ArrayList arrayList = (ArrayList) this.f3740;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            C2743 c2743 = (C2743) arrayList.get(i);
            int i2 = c2743.f10467;
            if (i2 == 1) {
                c2693.m6055(c2743);
                c2693.m6049(c2743.f10466, c2743.f10465);
            } else if (i2 == 2) {
                c2693.m6055(c2743);
                int i3 = c2743.f10466;
                int i4 = c2743.f10465;
                RecyclerView recyclerView = c2693.f10259;
                recyclerView.m985(i3, i4, true);
                recyclerView.f1524 = true;
                recyclerView.f1516.f10369 += i4;
            } else if (i2 == 4) {
                c2693.m6055(c2743);
                c2693.m6048(c2743.f10466, c2743.f10465, c2743.f10464);
            } else if (i2 == 8) {
                c2693.m6055(c2743);
                c2693.m6051(c2743.f10466, c2743.f10465);
            }
        }
        m3127(arrayList);
        this.f3744 = 0;
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public void m3127(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            C2743 c2743 = (C2743) arrayList.get(i);
            c2743.f10464 = null;
            ((C0843) this.f3743).mo3014(c2743);
        }
        arrayList.clear();
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public void m3128(ColorStateList colorStateList) {
        if (((C2330) this.f3742) == null) {
            this.f3742 = new Object();
        }
        C2330 c2330 = (C2330) this.f3742;
        c2330.f9069 = colorStateList;
        c2330.f9071 = true;
        m3135();
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public PorterDuff.Mode m3129() {
        C2330 c2330 = (C2330) this.f3742;
        if (c2330 != null) {
            return (PorterDuff.Mode) c2330.f9070;
        }
        return null;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public void m3130(C2743 c2743, int i) {
        C2693 c2693 = (C2693) this.f3742;
        c2693.m6055(c2743);
        int i2 = c2743.f10467;
        if (i2 != 2) {
            if (i2 != 4) {
                throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
            }
            c2693.m6048(i, c2743.f10465, c2743.f10464);
        } else {
            int i3 = c2743.f10465;
            RecyclerView recyclerView = c2693.f10259;
            recyclerView.m985(i, i3, true);
            recyclerView.f1524 = true;
            recyclerView.f1516.f10369 += i3;
        }
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Object, ˋˋ.ﹳٴ] */
    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public C2743 m3131(Object obj, int i, int i2, int i3) {
        C2743 c2743 = (C2743) ((C0843) this.f3743).mo3016();
        if (c2743 != null) {
            c2743.f10467 = i;
            c2743.f10466 = i2;
            c2743.f10465 = i3;
            c2743.f10464 = obj;
            return c2743;
        }
        ?? obj2 = new Object();
        obj2.f10467 = i;
        obj2.f10466 = i2;
        obj2.f10465 = i3;
        obj2.f10464 = obj;
        return obj2;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public int m3132(int i, int i2) {
        ArrayList arrayList = (ArrayList) this.f3741;
        int size = arrayList.size();
        while (i2 < size) {
            C2743 c2743 = (C2743) arrayList.get(i2);
            int i3 = c2743.f10467;
            if (i3 == 8) {
                int i4 = c2743.f10466;
                if (i4 == i) {
                    i = c2743.f10465;
                } else {
                    if (i4 < i) {
                        i--;
                    }
                    if (c2743.f10465 <= i) {
                        i++;
                    }
                }
            } else {
                int i5 = c2743.f10466;
                if (i5 > i) {
                    continue;
                } else if (i3 == 2) {
                    int i6 = c2743.f10465;
                    if (i < i5 + i6) {
                        return -1;
                    }
                    i -= i6;
                } else if (i3 == 1) {
                    i += c2743.f10465;
                }
            }
            i2++;
        }
        return i;
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public void m3133(C2743 c2743) {
        C2693 c2693 = (C2693) this.f3742;
        ((ArrayList) this.f3741).add(c2743);
        int i = c2743.f10467;
        if (i == 1) {
            c2693.m6049(c2743.f10466, c2743.f10465);
            return;
        }
        if (i == 2) {
            int i2 = c2743.f10466;
            int i3 = c2743.f10465;
            RecyclerView recyclerView = c2693.f10259;
            recyclerView.m985(i2, i3, false);
            recyclerView.f1524 = true;
            return;
        }
        if (i == 4) {
            c2693.m6048(c2743.f10466, c2743.f10465, c2743.f10464);
        } else if (i == 8) {
            c2693.m6051(c2743.f10466, c2743.f10465);
        } else {
            throw new IllegalArgumentException("Unknown update op type for " + c2743);
        }
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public void m3134(Object obj) {
        Object obj2 = this.f3742;
        this.f3742 = obj;
        if (obj2.equals(obj)) {
            return;
        }
        C4644 c4644 = ((C4672) this.f3741).f17521;
        ((Integer) obj2).getClass();
        Integer num = (Integer) obj;
        int intValue = num.intValue();
        c4644.m9241();
        c4644.m9230(1, 10, num);
        c4644.m9230(2, 10, num);
        c4644.f17365.ᵎﹶ(21, new C0782(intValue, 2));
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public void m3135() {
        View view = (View) this.f3743;
        Drawable background = view.getBackground();
        if (background != null) {
            if (((C2330) this.f3741) != null) {
                if (((C2330) this.f3745) == null) {
                    this.f3745 = new Object();
                }
                C2330 c2330 = (C2330) this.f3745;
                c2330.f9069 = null;
                c2330.f9071 = false;
                c2330.f9070 = null;
                c2330.f9072 = false;
                WeakHashMap weakHashMap = AbstractC2823.f10603;
                ColorStateList m6172 = AbstractC2776.m6172(view);
                if (m6172 != null) {
                    c2330.f9071 = true;
                    c2330.f9069 = m6172;
                }
                PorterDuff.Mode m6174 = AbstractC2776.m6174(view);
                if (m6174 != null) {
                    c2330.f9072 = true;
                    c2330.f9070 = m6174;
                }
                if (c2330.f9071 || c2330.f9072) {
                    C2284.m5331(background, c2330, view.getDrawableState());
                    return;
                }
            }
            C2330 c23302 = (C2330) this.f3742;
            if (c23302 != null) {
                C2284.m5331(background, c23302, view.getDrawableState());
                return;
            }
            C2330 c23303 = (C2330) this.f3741;
            if (c23303 != null) {
                C2284.m5331(background, c23303, view.getDrawableState());
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0023, code lost:
    
        if (r9 < r2.f3771) goto L32;
     */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m3136(long r9, p305.C3732 r11) {
        /*
            r8 = this;
            java.lang.Object r0 = r8.f3741
            java.util.ArrayDeque r0 = (java.util.ArrayDeque) r0
            java.lang.Object r1 = r8.f3742
            java.util.PriorityQueue r1 = (java.util.PriorityQueue) r1
            int r2 = r8.f3744
            if (r2 == 0) goto L9e
            r3 = -1
            if (r2 == r3) goto L27
            int r2 = r1.size()
            int r4 = r8.f3744
            if (r2 < r4) goto L27
            java.lang.Object r2 = r1.peek()
            ʻᴵ.ـˆ r2 = (p012.C0895) r2
            java.lang.String r4 = p305.AbstractC3712.f14481
            long r4 = r2.f3771
            int r2 = (r9 > r4 ? 1 : (r9 == r4 ? 0 : -1))
            if (r2 >= 0) goto L27
            goto L9e
        L27:
            java.lang.Object r2 = r8.f3740
            java.util.ArrayDeque r2 = (java.util.ArrayDeque) r2
            boolean r4 = r2.isEmpty()
            if (r4 == 0) goto L37
            ᐧˎ.ﹳᐧ r2 = new ᐧˎ.ﹳᐧ
            r2.<init>()
            goto L3d
        L37:
            java.lang.Object r2 = r2.pop()
            ᐧˎ.ﹳᐧ r2 = (p305.C3732) r2
        L3d:
            int r4 = r11.m7904()
            r2.m7886(r4)
            byte[] r4 = r11.f14534
            int r11 = r11.f14533
            byte[] r5 = r2.f14534
            int r6 = r2.m7904()
            r7 = 0
            java.lang.System.arraycopy(r4, r11, r5, r7, r6)
            java.lang.Object r11 = r8.f3745
            ʻᴵ.ـˆ r11 = (p012.C0895) r11
            if (r11 == 0) goto L64
            long r4 = r11.f3771
            int r4 = (r9 > r4 ? 1 : (r9 == r4 ? 0 : -1))
            if (r4 != 0) goto L64
            java.util.ArrayList r9 = r11.f3770
            r9.add(r2)
            return
        L64:
            boolean r11 = r0.isEmpty()
            if (r11 == 0) goto L70
            ʻᴵ.ـˆ r11 = new ʻᴵ.ـˆ
            r11.<init>()
            goto L76
        L70:
            java.lang.Object r11 = r0.pop()
            ʻᴵ.ـˆ r11 = (p012.C0895) r11
        L76:
            java.util.ArrayList r0 = r11.f3770
            r4 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r4 = (r9 > r4 ? 1 : (r9 == r4 ? 0 : -1))
            if (r4 == 0) goto L82
            r7 = 1
        L82:
            p305.AbstractC3731.m7849(r7)
            boolean r4 = r0.isEmpty()
            p305.AbstractC3731.m7857(r4)
            r11.f3771 = r9
            r0.add(r2)
            r1.add(r11)
            r8.f3745 = r11
            int r9 = r8.f3744
            if (r9 == r3) goto L9d
            r8.m3116(r9)
        L9d:
            return
        L9e:
            java.lang.Object r0 = r8.f3743
            ʻᴵ.ʾᵎ r0 = (p012.InterfaceC0887) r0
            r0.mo2915(r9, r11)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p012.C0882.m3136(long, ᐧˎ.ﹳᐧ):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x00e3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:119:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x00b1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0015 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:131:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0138 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x012b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0111  */
    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m3137() {
        /*
            Method dump skipped, instructions count: 704
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012.C0882.m3137():void");
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public boolean m3138() {
        return ((ArrayList) this.f3740).size() > 0;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public void m3139(C2743 c2743) {
        int i;
        C0843 c0843 = (C0843) this.f3743;
        int i2 = c2743.f10467;
        if (i2 == 1 || i2 == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int m3115 = m3115(c2743.f10466, i2);
        int i3 = c2743.f10466;
        int i4 = c2743.f10467;
        if (i4 == 2) {
            i = 0;
        } else {
            if (i4 != 4) {
                throw new IllegalArgumentException("op should be remove or update." + c2743);
            }
            i = 1;
        }
        int i5 = 1;
        for (int i6 = 1; i6 < c2743.f10465; i6++) {
            int m31152 = m3115((i * i6) + c2743.f10466, c2743.f10467);
            int i7 = c2743.f10467;
            if (i7 == 2 ? m31152 != m3115 : !(i7 == 4 && m31152 == m3115 + 1)) {
                C2743 m3131 = m3131(c2743.f10464, i7, m3115, i5);
                m3130(m3131, i3);
                m3131.f10464 = null;
                c0843.mo3014(m3131);
                if (c2743.f10467 == 4) {
                    i3 += i5;
                }
                i5 = 1;
                m3115 = m31152;
            } else {
                i5++;
            }
        }
        Object obj = c2743.f10464;
        c2743.f10464 = null;
        c0843.mo3014(c2743);
        if (i5 > 0) {
            C2743 m31312 = m3131(obj, c2743.f10467, m3115, i5);
            m3130(m31312, i3);
            m31312.f10464 = null;
            c0843.mo3014(m31312);
        }
    }
}
