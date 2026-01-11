package p357;

import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.sidesheet.SideSheetBehavior;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedHashSet;
import p039.AbstractC1291;
import p121.AbstractC2026;
import p137.AbstractC2305;
import ᴵˋ.ˊʻ;

/* renamed from: ᵔˉ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4347 extends AbstractC2026 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final /* synthetic */ int f16168;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC1291 f16169;

    public /* synthetic */ C4347(AbstractC1291 abstractC1291, int i) {
        this.f16168 = i;
        this.f16169 = abstractC1291;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0023, code lost:
    
        if (r7 > r0.f2608) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0073, code lost:
    
        if (java.lang.Math.abs(r6.getTop() - r0.m2342()) < java.lang.Math.abs(r6.getTop() - r0.f2608)) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00be, code lost:
    
        if (java.lang.Math.abs(r7 - r0.f2582) < java.lang.Math.abs(r7 - r0.f2601)) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0113, code lost:
    
        if (r0.f2827.ˊʻ(r6) == false) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0143, code lost:
    
        if (java.lang.Math.abs(r7 - r0.f2827.יـ()) < java.lang.Math.abs(r7 - r0.f2827.ʽﹳ())) goto L73;
     */
    @Override // p121.AbstractC2026
    /* renamed from: ʼʼ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo4206(android.view.View r6, float r7, float r8) {
        /*
            Method dump skipped, instructions count: 340
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p357.C4347.mo4206(android.view.View, float, float):void");
    }

    @Override // p121.AbstractC2026
    /* renamed from: ʼᐧ */
    public int mo5065() {
        switch (this.f16168) {
            case 1:
                BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) this.f16169;
                return bottomSheetBehavior.f2611 ? bottomSheetBehavior.f2583 : bottomSheetBehavior.f2601;
            default:
                return super.mo5065();
        }
    }

    @Override // p121.AbstractC2026
    /* renamed from: ʽ */
    public final int mo4207(View view, int i) {
        switch (this.f16168) {
            case 0:
                return view.getTop();
            default:
                return ˊʻ.ˑﹳ(i, ((BottomSheetBehavior) this.f16169).m2342(), mo5065());
        }
    }

    @Override // p121.AbstractC2026
    /* renamed from: ʾᵎ */
    public final void mo4208(View view, int i, int i2) {
        ViewGroup.MarginLayoutParams marginLayoutParams;
        switch (this.f16168) {
            case 0:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.f16169;
                WeakReference weakReference = sideSheetBehavior.f2825;
                View view2 = weakReference != null ? (View) weakReference.get() : null;
                if (view2 != null && (marginLayoutParams = (ViewGroup.MarginLayoutParams) view2.getLayoutParams()) != null) {
                    sideSheetBehavior.f2827.ˉـ(marginLayoutParams, view.getLeft(), view.getRight());
                    view2.setLayoutParams(marginLayoutParams);
                }
                LinkedHashSet linkedHashSet = sideSheetBehavior.f2813;
                if (linkedHashSet.isEmpty()) {
                    return;
                }
                sideSheetBehavior.f2827.ˈ(i);
                Iterator it = linkedHashSet.iterator();
                if (it.hasNext()) {
                    throw AbstractC2305.m5372(it);
                }
                return;
            default:
                ((BottomSheetBehavior) this.f16169).m2341(i2);
                return;
        }
    }

    @Override // p121.AbstractC2026
    /* renamed from: ˉˆ */
    public int mo4209(View view) {
        switch (this.f16168) {
            case 0:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.f16169;
                return sideSheetBehavior.f2829 + sideSheetBehavior.f2817;
            default:
                return super.mo4209(view);
        }
    }

    @Override // p121.AbstractC2026
    /* renamed from: ـˆ */
    public final void mo4210(int i) {
        switch (this.f16168) {
            case 0:
                if (i == 1) {
                    SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.f16169;
                    if (sideSheetBehavior.f2822) {
                        sideSheetBehavior.m2421(1);
                        return;
                    }
                    return;
                }
                return;
            default:
                if (i == 1) {
                    BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) this.f16169;
                    if (bottomSheetBehavior.f2609) {
                        bottomSheetBehavior.m2348(1);
                        return;
                    }
                    return;
                }
                return;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x002e, code lost:
    
        if (r6.canScrollVertically(-1) != false) goto L27;
     */
    @Override // p121.AbstractC2026
    /* renamed from: ٴᵢ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo4211(android.view.View r5, int r6) {
        /*
            r4 = this;
            int r0 = r4.f16168
            switch(r0) {
                case 0: goto L41;
                default: goto L5;
            }
        L5:
            ʽʽ.ﹳٴ r0 = r4.f16169
            com.google.android.material.bottomsheet.BottomSheetBehavior r0 = (com.google.android.material.bottomsheet.BottomSheetBehavior) r0
            int r1 = r0.f2615
            r2 = 1
            if (r1 != r2) goto Lf
            goto L3f
        Lf:
            boolean r3 = r0.f2603
            if (r3 == 0) goto L14
            goto L3f
        L14:
            r3 = 3
            if (r1 != r3) goto L31
            int r1 = r0.f2610
            if (r1 != r6) goto L31
            java.lang.ref.WeakReference r6 = r0.f2586
            if (r6 == 0) goto L26
            java.lang.Object r6 = r6.get()
            android.view.View r6 = (android.view.View) r6
            goto L27
        L26:
            r6 = 0
        L27:
            if (r6 == 0) goto L31
            r1 = -1
            boolean r6 = r6.canScrollVertically(r1)
            if (r6 == 0) goto L31
            goto L3f
        L31:
            android.os.SystemClock.uptimeMillis()
            java.lang.ref.WeakReference r6 = r0.f2607
            if (r6 == 0) goto L3f
            java.lang.Object r6 = r6.get()
            if (r6 != r5) goto L3f
            goto L40
        L3f:
            r2 = 0
        L40:
            return r2
        L41:
            ʽʽ.ﹳٴ r6 = r4.f16169
            com.google.android.material.sidesheet.SideSheetBehavior r6 = (com.google.android.material.sidesheet.SideSheetBehavior) r6
            int r0 = r6.f2824
            r1 = 0
            r2 = 1
            if (r0 != r2) goto L4c
            goto L57
        L4c:
            java.lang.ref.WeakReference r6 = r6.f2811
            if (r6 == 0) goto L57
            java.lang.Object r6 = r6.get()
            if (r6 != r5) goto L57
            r1 = r2
        L57:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: p357.C4347.mo4211(android.view.View, int):boolean");
    }

    @Override // p121.AbstractC2026
    /* renamed from: ⁱˊ */
    public final int mo4212(View view, int i) {
        switch (this.f16168) {
            case 0:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.f16169;
                return ˊʻ.ˑﹳ(i, sideSheetBehavior.f2827.ـˆ(), sideSheetBehavior.f2827.ʻٴ());
            default:
                return view.getLeft();
        }
    }
}
