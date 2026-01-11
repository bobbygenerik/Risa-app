package p179;

import android.view.View;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import p035.C1213;
import p219.AbstractC3024;
import p307.AbstractC3740;
import ˋⁱ.ﾞᴵ;

/* renamed from: ˋˋ.ـˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C2713 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f10314;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f10315;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f10316;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final Object f10317;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f10318;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f10319;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final Object f10320;

    public C2713(int i) {
        this.f10319 = 1;
        this.f10318 = i;
        if (i <= 0) {
            AbstractC3024.m6552("maxSize <= 0");
            throw null;
        }
        this.f10320 = new C1213(1);
        this.f10317 = new Object();
    }

    public C2713(StaggeredGridLayoutManager staggeredGridLayoutManager, int i) {
        this.f10319 = 0;
        this.f10317 = staggeredGridLayoutManager;
        this.f10320 = new ArrayList();
        this.f10318 = Integer.MIN_VALUE;
        this.f10314 = Integer.MIN_VALUE;
        this.f10315 = 0;
        this.f10316 = i;
    }

    public String toString() {
        String str;
        switch (this.f10319) {
            case 1:
                synchronized (((ﾞᴵ) this.f10317)) {
                    try {
                        int i = this.f10315;
                        int i2 = this.f10316 + i;
                        str = "LruCache[maxSize=" + this.f10318 + ",hits=" + this.f10315 + ",misses=" + this.f10316 + ",hitRate=" + (i2 != 0 ? (i * 100) / i2 : 0) + "%]";
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return str;
            default:
                return super.toString();
        }
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public View m6082(int i, int i2) {
        StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) this.f10317;
        ArrayList arrayList = (ArrayList) this.f10320;
        View view = null;
        if (i2 != -1) {
            int size = arrayList.size() - 1;
            while (size >= 0) {
                View view2 = (View) arrayList.get(size);
                if ((staggeredGridLayoutManager.f1546 && AbstractC2669.m5963(view2) >= i) || ((!staggeredGridLayoutManager.f1546 && AbstractC2669.m5963(view2) <= i) || !view2.hasFocusable())) {
                    break;
                }
                size--;
                view = view2;
            }
            return view;
        }
        int size2 = arrayList.size();
        int i3 = 0;
        while (i3 < size2) {
            View view3 = (View) arrayList.get(i3);
            if ((staggeredGridLayoutManager.f1546 && AbstractC2669.m5963(view3) <= i) || ((!staggeredGridLayoutManager.f1546 && AbstractC2669.m5963(view3) >= i) || !view3.hasFocusable())) {
                break;
            }
            i3++;
            view = view3;
        }
        return view;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public Object mo6083(Object obj) {
        return null;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public int m6084(int i) {
        ArrayList arrayList = (ArrayList) this.f10320;
        int i2 = this.f10318;
        if (i2 != Integer.MIN_VALUE) {
            return i2;
        }
        if (arrayList.size() == 0) {
            return i;
        }
        View view = (View) arrayList.get(0);
        C2740 c2740 = (C2740) view.getLayoutParams();
        this.f10318 = ((StaggeredGridLayoutManager) this.f10317).f1555.mo3826(view);
        c2740.getClass();
        return this.f10318;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public int m6085() {
        return ((StaggeredGridLayoutManager) this.f10317).f1546 ? m6096(r0.size() - 1, -1) : m6096(0, ((ArrayList) this.f10320).size());
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public Object m6086(String str) {
        Object remove;
        synchronized (((ﾞᴵ) this.f10317)) {
            remove = ((C1213) this.f10320).f4694.remove(str);
            if (remove != null) {
                this.f10314--;
            }
        }
        return remove;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0062, code lost:
    
        throw new java.lang.IllegalStateException("LruCache.sizeOf() is reporting inconsistent results!");
     */
    /* renamed from: ˉˆ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m6087(int r4) {
        /*
            r3 = this;
        L0:
            java.lang.Object r0 = r3.f10317
            ˋⁱ.ﾞᴵ r0 = (ˋⁱ.ﾞᴵ) r0
            monitor-enter(r0)
            int r1 = r3.f10314     // Catch: java.lang.Throwable -> L1a
            if (r1 < 0) goto L5b
            java.lang.Object r1 = r3.f10320     // Catch: java.lang.Throwable -> L1a
            ʼﾞ.ˈٴ r1 = (p035.C1213) r1     // Catch: java.lang.Throwable -> L1a
            java.util.LinkedHashMap r1 = r1.f4694     // Catch: java.lang.Throwable -> L1a
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L1a
            if (r1 == 0) goto L1c
            int r1 = r3.f10314     // Catch: java.lang.Throwable -> L1a
            if (r1 != 0) goto L5b
            goto L1c
        L1a:
            r4 = move-exception
            goto L63
        L1c:
            int r1 = r3.f10314     // Catch: java.lang.Throwable -> L1a
            if (r1 <= r4) goto L59
            java.lang.Object r1 = r3.f10320     // Catch: java.lang.Throwable -> L1a
            ʼﾞ.ˈٴ r1 = (p035.C1213) r1     // Catch: java.lang.Throwable -> L1a
            java.util.LinkedHashMap r1 = r1.f4694     // Catch: java.lang.Throwable -> L1a
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L1a
            if (r1 == 0) goto L2d
            goto L59
        L2d:
            java.lang.Object r1 = r3.f10320     // Catch: java.lang.Throwable -> L1a
            ʼﾞ.ˈٴ r1 = (p035.C1213) r1     // Catch: java.lang.Throwable -> L1a
            java.util.LinkedHashMap r1 = r1.f4694     // Catch: java.lang.Throwable -> L1a
            java.util.Set r1 = r1.entrySet()     // Catch: java.lang.Throwable -> L1a
            java.lang.Object r1 = p430.AbstractC5099.m10037(r1)     // Catch: java.lang.Throwable -> L1a
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1     // Catch: java.lang.Throwable -> L1a
            if (r1 != 0) goto L41
            monitor-exit(r0)
            return
        L41:
            java.lang.Object r2 = r1.getKey()     // Catch: java.lang.Throwable -> L1a
            r1.getValue()     // Catch: java.lang.Throwable -> L1a
            java.lang.Object r1 = r3.f10320     // Catch: java.lang.Throwable -> L1a
            ʼﾞ.ˈٴ r1 = (p035.C1213) r1     // Catch: java.lang.Throwable -> L1a
            java.util.LinkedHashMap r1 = r1.f4694     // Catch: java.lang.Throwable -> L1a
            r1.remove(r2)     // Catch: java.lang.Throwable -> L1a
            int r1 = r3.f10314     // Catch: java.lang.Throwable -> L1a
            int r1 = r1 + (-1)
            r3.f10314 = r1     // Catch: java.lang.Throwable -> L1a
            monitor-exit(r0)
            goto L0
        L59:
            monitor-exit(r0)
            return
        L5b:
            java.lang.String r4 = "LruCache.sizeOf() is reporting inconsistent results!"
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L1a
            r1.<init>(r4)     // Catch: java.lang.Throwable -> L1a
            throw r1     // Catch: java.lang.Throwable -> L1a
        L63:
            monitor-exit(r0)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: p179.C2713.m6087(int):void");
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int m6088() {
        return ((StaggeredGridLayoutManager) this.f10317).f1546 ? m6096(0, ((ArrayList) this.f10320).size()) : m6096(r0.size() - 1, -1);
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public int m6089() {
        int i;
        synchronized (((ﾞᴵ) this.f10317)) {
            i = this.f10318;
        }
        return i;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public Object m6090(Object obj) {
        Object put;
        synchronized (((ﾞᴵ) this.f10317)) {
            Object obj2 = ((C1213) this.f10320).f4694.get(obj);
            if (obj2 != null) {
                this.f10315++;
                return obj2;
            }
            this.f10316++;
            Object mo6083 = mo6083(obj);
            if (mo6083 == null) {
                return null;
            }
            synchronized (((ﾞᴵ) this.f10317)) {
                put = ((C1213) this.f10320).f4694.put(obj, mo6083);
                if (put != null) {
                    ((C1213) this.f10320).f4694.put(obj, put);
                } else {
                    this.f10314++;
                }
            }
            if (put != null) {
                return put;
            }
            m6087(this.f10318);
            return mo6083;
        }
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public LinkedHashMap m6091() {
        LinkedHashMap linkedHashMap;
        synchronized (((ﾞᴵ) this.f10317)) {
            linkedHashMap = new LinkedHashMap(((C1213) this.f10320).f4694.entrySet().size());
            for (Map.Entry entry : ((C1213) this.f10320).f4694.entrySet()) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return linkedHashMap;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public int m6092(int i) {
        int i2 = this.f10314;
        if (i2 != Integer.MIN_VALUE) {
            return i2;
        }
        if (((ArrayList) this.f10320).size() == 0) {
            return i;
        }
        m6094();
        return this.f10314;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public void m6093() {
        ((ArrayList) this.f10320).clear();
        this.f10318 = Integer.MIN_VALUE;
        this.f10314 = Integer.MIN_VALUE;
        this.f10315 = 0;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public void m6094() {
        View view = (View) AbstractC3740.m7939(1, (ArrayList) this.f10320);
        C2740 c2740 = (C2740) view.getLayoutParams();
        this.f10314 = ((StaggeredGridLayoutManager) this.f10317).f1555.mo3821(view);
        c2740.getClass();
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public Object m6095(Object obj, Object obj2) {
        Object put;
        synchronized (((ﾞᴵ) this.f10317)) {
            this.f10314++;
            put = ((C1213) this.f10320).f4694.put(obj, obj2);
            if (put != null) {
                this.f10314--;
            }
        }
        m6087(this.f10318);
        return put;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int m6096(int i, int i2) {
        StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) this.f10317;
        int mo3822 = staggeredGridLayoutManager.f1555.mo3822();
        int mo3818 = staggeredGridLayoutManager.f1555.mo3818();
        int i3 = i2 > i ? 1 : -1;
        while (i != i2) {
            View view = (View) ((ArrayList) this.f10320).get(i);
            int mo3826 = staggeredGridLayoutManager.f1555.mo3826(view);
            int mo3821 = staggeredGridLayoutManager.f1555.mo3821(view);
            boolean z = mo3826 <= mo3818;
            boolean z2 = mo3821 >= mo3822;
            if (z && z2 && (mo3826 < mo3822 || mo3821 > mo3818)) {
                return AbstractC2669.m5963(view);
            }
            i += i3;
        }
        return -1;
    }
}
