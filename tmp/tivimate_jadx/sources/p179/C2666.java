package p179;

import android.support.v4.media.session.AbstractC0001;
import android.util.SparseArray;
import android.view.View;
import androidx.leanback.widget.C0150;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.internal.measurement.ᵎ;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Set;
import p137.AbstractC2305;
import p186.AbstractC2823;
import p186.C2833;

/* renamed from: ˋˋ.ʻˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2666 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final ArrayList f10120;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final List f10121;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f10122;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public C2745 f10123;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final /* synthetic */ RecyclerView f10124;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public ArrayList f10125;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ArrayList f10126;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f10127;

    public C2666(RecyclerView recyclerView) {
        this.f10124 = recyclerView;
        ArrayList arrayList = new ArrayList();
        this.f10126 = arrayList;
        this.f10125 = null;
        this.f10120 = new ArrayList();
        this.f10121 = DesugarCollections.unmodifiableList(arrayList);
        this.f10122 = 2;
        this.f10127 = 2;
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void m5948(View view) {
        AbstractC2673 m927 = RecyclerView.m927(view);
        boolean m6020 = m927.m6020();
        RecyclerView recyclerView = this.f10124;
        if (m6020) {
            recyclerView.removeDetachedView(view, false);
        }
        if (m927.m6012()) {
            m927.f10192.m5952(m927);
        } else if (m927.m6019()) {
            m927.f10185 &= -33;
        }
        m5950(m927);
        if (recyclerView.f1492 == null || m927.m6004()) {
            return;
        }
        recyclerView.f1492.m6104(m927);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C2745 m5949() {
        if (this.f10123 == null) {
            this.f10123 = new C2745();
            m5953();
        }
        return this.f10123;
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x00ae, code lost:
    
        r6 = r6 - 1;
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00c4  */
    /* renamed from: ˆʾ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m5950(p179.AbstractC2673 r13) {
        /*
            Method dump skipped, instructions count: 325
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p179.C2666.m5950(ˋˋ.ʼـ):void");
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final View m5951(int i) {
        return m5960(i, Long.MAX_VALUE).f10176;
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final void m5952(AbstractC2673 abstractC2673) {
        if (abstractC2673.f10178) {
            this.f10125.remove(abstractC2673);
        } else {
            this.f10126.remove(abstractC2673);
        }
        abstractC2673.f10192 = null;
        abstractC2673.f10178 = false;
        abstractC2673.f10185 &= -33;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m5953() {
        RecyclerView recyclerView;
        AbstractC2727 abstractC2727;
        C2745 c2745 = this.f10123;
        if (c2745 == null || (abstractC2727 = (recyclerView = this.f10124).f1474) == null || !recyclerView.f1499) {
            return;
        }
        c2745.f10471.add(abstractC2727);
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void m5954(View view) {
        AbstractC2722 abstractC2722;
        AbstractC2673 m927 = RecyclerView.m927(view);
        int i = m927.f10185 & 12;
        RecyclerView recyclerView = this.f10124;
        if (i == 0 && m927.m6009() && (abstractC2722 = recyclerView.f1492) != null && !abstractC2722.m6107(m927, m927.m6011())) {
            if (this.f10125 == null) {
                this.f10125 = new ArrayList();
            }
            m927.f10192 = this;
            m927.f10178 = true;
            this.f10125.add(m927);
            return;
        }
        if (m927.m6015() && !m927.m6007() && !recyclerView.f1474.f10418) {
            throw new IllegalArgumentException(AbstractC2305.m5376(recyclerView, new StringBuilder("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool.")));
        }
        m927.f10192 = this;
        m927.f10178 = false;
        this.f10126.add(m927);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m5955() {
        ArrayList arrayList = this.f10120;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            m5957(size);
        }
        arrayList.clear();
        if (RecyclerView.f1448) {
            C2676 c2676 = this.f10124.f1498;
            int[] iArr = c2676.f10199;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            c2676.f10197 = 0;
        }
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final void m5956() {
        AbstractC2669 abstractC2669 = this.f10124.f1521;
        this.f10127 = this.f10122 + (abstractC2669 != null ? abstractC2669.f10145 : 0);
        ArrayList arrayList = this.f10120;
        for (int size = arrayList.size() - 1; size >= 0 && arrayList.size() > this.f10127; size--) {
            m5957(size);
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m5957(int i) {
        if (RecyclerView.f1455) {
            String str = "Recycling cached view at index " + i;
        }
        ArrayList arrayList = this.f10120;
        AbstractC2673 abstractC2673 = (AbstractC2673) arrayList.get(i);
        if (RecyclerView.f1455) {
            String str2 = "CachedViewHolder to be recycled: " + abstractC2673;
        }
        m5959(abstractC2673, true);
        arrayList.remove(i);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int m5958(int i) {
        RecyclerView recyclerView = this.f10124;
        if (i >= 0 && i < recyclerView.f1516.m6109()) {
            return !recyclerView.f1516.f10376 ? i : recyclerView.f1514.m3132(i, 0);
        }
        StringBuilder m16 = AbstractC0001.m16(i, "invalid position ", ". State item count is ");
        m16.append(recyclerView.f1516.m6109());
        m16.append(recyclerView.m974());
        throw new IndexOutOfBoundsException(m16.toString());
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m5959(AbstractC2673 abstractC2673, boolean z) {
        RecyclerView.m929(abstractC2673);
        View view = abstractC2673.f10176;
        RecyclerView recyclerView = this.f10124;
        C2711 c2711 = recyclerView.f1504;
        if (c2711 != null) {
            C2833 mo3082 = c2711.mo3082();
            AbstractC2823.m6273(view, mo3082 instanceof C2702 ? (C2833) ((C2702) mo3082).f10286.remove(view) : null);
        }
        if (z) {
            InterfaceC2706 interfaceC2706 = recyclerView.f1475;
            ArrayList arrayList = recyclerView.f1494;
            if (interfaceC2706 != null) {
                ((C0150) interfaceC2706).m668(abstractC2673);
            }
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((C0150) ((InterfaceC2706) arrayList.get(i))).m668(abstractC2673);
            }
            AbstractC2727 abstractC2727 = recyclerView.f1474;
            if (abstractC2727 != null) {
                abstractC2727.m6121(abstractC2673);
            }
            if (recyclerView.f1516 != null) {
                recyclerView.f1505.m9565(abstractC2673);
            }
            if (RecyclerView.f1455) {
                String str = "dispatchViewRecycled: " + abstractC2673;
            }
        }
        abstractC2673.f10174 = null;
        abstractC2673.f10182 = null;
        C2745 m5949 = m5949();
        m5949.getClass();
        int i2 = abstractC2673.f10181;
        ArrayList arrayList2 = m5949.m6149(i2).f10477;
        if (((C2746) m5949.f10473.get(i2)).f10476 <= arrayList2.size()) {
            ᵎ.ﾞᴵ(view);
        } else {
            if (RecyclerView.f1450 && arrayList2.contains(abstractC2673)) {
                throw new IllegalArgumentException("this scrap item already exists");
            }
            abstractC2673.m6010();
            arrayList2.add(abstractC2673);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:215:0x0470, code lost:
    
        if (r10.m6015() == false) goto L257;
     */
    /* JADX WARN: Code restructure failed: missing block: B:228:0x04bd, code lost:
    
        if ((r13 + r11) >= r30) goto L257;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x02ae, code lost:
    
        r10 = r6;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:196:0x061b  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x063b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:204:0x0625  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x0519  */
    /* JADX WARN: Removed duplicated region for block: B:258:0x0580  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x059f  */
    /* JADX WARN: Removed duplicated region for block: B:269:0x05b6  */
    /* JADX WARN: Removed duplicated region for block: B:276:0x05cf  */
    /* JADX WARN: Removed duplicated region for block: B:296:0x0612  */
    /* JADX WARN: Removed duplicated region for block: B:298:0x060d  */
    /* JADX WARN: Removed duplicated region for block: B:362:0x0080  */
    /* JADX WARN: Type inference failed for: r6v34, types: [java.lang.Object, ʻʿ.ˉˆ] */
    /* renamed from: ﾞʻ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p179.AbstractC2673 m5960(int r29, long r30) {
        /*
            Method dump skipped, instructions count: 1638
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p179.C2666.m5960(int, long):ˋˋ.ʼـ");
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m5961(AbstractC2727 abstractC2727, boolean z) {
        C2745 c2745 = this.f10123;
        if (c2745 != null) {
            SparseArray sparseArray = c2745.f10473;
            Set set = c2745.f10471;
            set.remove(abstractC2727);
            if (set.size() != 0 || z) {
                return;
            }
            for (int i = 0; i < sparseArray.size(); i++) {
                ArrayList arrayList = ((C2746) sparseArray.get(sparseArray.keyAt(i))).f10477;
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    ᵎ.ﾞᴵ(((AbstractC2673) arrayList.get(i2)).f10176);
                }
            }
        }
    }
}
