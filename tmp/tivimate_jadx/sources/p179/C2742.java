package p179;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import p003.C0781;
import ʿי.ـᵎ;

/* renamed from: ˋˋ.ﹳـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2742 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ RecyclerView f10463;

    public /* synthetic */ C2742(RecyclerView recyclerView) {
        this.f10463 = recyclerView;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public void m6145(int i) {
        RecyclerView recyclerView = this.f10463;
        View childAt = recyclerView.getChildAt(i);
        if (childAt != null) {
            AbstractC2673 m927 = RecyclerView.m927(childAt);
            AbstractC2727 abstractC2727 = recyclerView.f1474;
            if (abstractC2727 != null && m927 != null) {
                abstractC2727.m6117(m927);
            }
            childAt.clearAnimation();
        }
        recyclerView.removeViewAt(i);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public void m6146(AbstractC2673 abstractC2673, C0781 c0781, C0781 c07812) {
        boolean z;
        RecyclerView recyclerView = this.f10463;
        recyclerView.f1464.m5952(abstractC2673);
        recyclerView.m982(abstractC2673);
        abstractC2673.m6005(false);
        ـᵎ r2 = recyclerView.f1492;
        r2.getClass();
        int i = c0781.f3265;
        int i2 = c0781.f3264;
        View view = abstractC2673.f10176;
        int left = c07812 == null ? view.getLeft() : c07812.f3265;
        int top = c07812 == null ? view.getTop() : c07812.f3264;
        if (abstractC2673.m6007() || (i == left && i2 == top)) {
            switch (r2.ᵔᵢ) {
                case 0:
                    r2.ᵔﹳ(abstractC2673);
                    r2.ʼˎ.add(abstractC2673);
                    break;
                default:
                    r2.ﹳᐧ(abstractC2673);
                    r2.ʼˎ.add(abstractC2673);
                    break;
            }
            z = true;
        } else {
            view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
            z = r2.ˆʾ(abstractC2673, i, i2, left, top);
        }
        if (z) {
            recyclerView.m944();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x004e  */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m6147(p179.AbstractC2673 r9, p003.C0781 r10, p003.C0781 r11) {
        /*
            r8 = this;
            r0 = 0
            r9.m6005(r0)
            androidx.recyclerview.widget.RecyclerView r0 = r8.f10463
            ˋˋ.ᐧᴵ r1 = r0.f1492
            r2 = r1
            ʿי.ـᵎ r2 = (ʿי.ـᵎ) r2
            if (r10 == 0) goto L1d
            r2.getClass()
            int r4 = r10.f3265
            int r6 = r11.f3265
            if (r4 != r6) goto L1f
            int r1 = r10.f3264
            int r3 = r11.f3264
            if (r1 == r3) goto L1d
            goto L1f
        L1d:
            r3 = r9
            goto L29
        L1f:
            int r5 = r10.f3264
            int r7 = r11.f3264
            r3 = r9
            boolean r9 = r2.ˆʾ(r3, r4, r5, r6, r7)
            goto L4c
        L29:
            int r9 = r2.ᵔᵢ
            switch(r9) {
                case 0: goto L3d;
                default: goto L2e;
            }
        L2e:
            r2.ﹳᐧ(r3)
            android.view.View r9 = r3.f10176
            r10 = 0
            r9.setAlpha(r10)
            java.util.ArrayList r9 = r2.ˆʾ
            r9.add(r3)
            goto L4b
        L3d:
            r2.ᵔﹳ(r3)
            android.view.View r9 = r3.f10176
            r10 = 0
            r9.setAlpha(r10)
            java.util.ArrayList r9 = r2.ˆʾ
            r9.add(r3)
        L4b:
            r9 = 1
        L4c:
            if (r9 == 0) goto L51
            r0.m944()
        L51:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p179.C2742.m6147(ˋˋ.ʼـ, ʻʿ.ˉˆ, ʻʿ.ˉˆ):void");
    }
}
