package p312;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import ar.tvplayer.tv.R;
import java.util.ArrayList;
import java.util.List;
import p017.C0956;
import p055.C1463;
import p179.AbstractC2673;
import p179.AbstractC2727;

/* renamed from: ᐧⁱ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3842 extends AbstractC2727 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public List f14884 = new ArrayList();

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final /* synthetic */ C3860 f14885;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final /* synthetic */ C3860 f14886;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final /* synthetic */ int f14887;

    public C3842(C3860 c3860, int i) {
        this.f14887 = i;
        this.f14886 = c3860;
        this.f14885 = c3860;
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    private final void m8015(String str) {
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public void m8016(C3843 c3843, int i) {
        switch (this.f14887) {
            case 1:
                m8019(c3843, i);
                if (i > 0) {
                    C3877 c3877 = (C3877) this.f14884.get(i - 1);
                    c3843.f14888.setVisibility(c3877.f15098.f5654[c3877.f15097] ? 0 : 4);
                    return;
                }
                return;
            default:
                m8019(c3843, i);
                return;
        }
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public void m8017(List list) {
        C3860 c3860 = this.f14886;
        ImageView imageView = c3860.f15007;
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= ((C0956) list).f3903) {
                break;
            }
            C3877 c3877 = (C3877) ((C0956) list).get(i);
            if (c3877.f15098.f5654[c3877.f15097]) {
                z = true;
                break;
            }
            i++;
        }
        if (imageView != null) {
            imageView.setImageDrawable(z ? c3860.f15015 : c3860.f14969);
            imageView.setContentDescription(z ? c3860.f15028 : c3860.f15024);
        }
        this.f14884 = list;
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public boolean m8018(C1463 c1463) {
        for (int i = 0; i < this.f14884.size(); i++) {
            if (c1463.f5711.containsKey(((C3877) this.f14884.get(i)).f15098.f5655)) {
                return true;
            }
        }
        return false;
    }

    @Override // p179.AbstractC2727
    /* renamed from: ᵔᵢ */
    public final AbstractC2673 mo610(ViewGroup viewGroup, int i) {
        return new C3843(LayoutInflater.from(this.f14885.getContext()).inflate(R.layout.2df, viewGroup, false));
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a4, code lost:
    
        if (r8.f15098.f5654[r8.f15097] != false) goto L33;
     */
    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m8019(p312.C3843 r7, int r8) {
        /*
            r6 = this;
            ᐧⁱ.ˏי r0 = r6.f14885
            ʽⁱ.ᵔٴ r0 = r0.f15025
            if (r0 != 0) goto L7
            return
        L7:
            if (r8 != 0) goto L7e
            int r8 = r6.f14887
            switch(r8) {
                case 0: goto L4e;
                default: goto Le;
            }
        Le:
            android.widget.TextView r8 = r7.f14889
            r0 = 2131951806(0x7f1300be, float:1.9540037E38)
            r8.setText(r0)
            r8 = 0
            r0 = r8
        L18:
            java.util.List r1 = r6.f14884
            int r1 = r1.size()
            if (r0 >= r1) goto L37
            java.util.List r1 = r6.f14884
            java.lang.Object r1 = r1.get(r0)
            ᐧⁱ.ᵔﹳ r1 = (p312.C3877) r1
            ʽⁱ.ʿ r2 = r1.f15098
            int r1 = r1.f15097
            boolean[] r2 = r2.f5654
            boolean r1 = r2[r1]
            if (r1 == 0) goto L34
            r0 = r8
            goto L38
        L34:
            int r0 = r0 + 1
            goto L18
        L37:
            r0 = 1
        L38:
            android.view.View r1 = r7.f14888
            if (r0 == 0) goto L3d
            goto L3e
        L3d:
            r8 = 4
        L3e:
            r1.setVisibility(r8)
            android.view.View r7 = r7.f10176
            com.google.android.material.datepicker.ˉʿ r8 = new com.google.android.material.datepicker.ˉʿ
            r0 = 13
            r8.<init>(r0, r6)
            r7.setOnClickListener(r8)
            goto L7d
        L4e:
            android.widget.TextView r8 = r7.f14889
            r0 = 2131951805(0x7f1300bd, float:1.9540035E38)
            r8.setText(r0)
            ᐧⁱ.ˏי r8 = r6.f14886
            ʽⁱ.ᵔٴ r8 = r8.f15025
            r8.getClass()
            ⁱי.ʼʼ r8 = (p392.C4644) r8
            ʽⁱ.ˉـ r8 = r8.m9234()
            boolean r8 = r6.m8018(r8)
            android.view.View r0 = r7.f14888
            if (r8 == 0) goto L6d
            r8 = 4
            goto L6e
        L6d:
            r8 = 0
        L6e:
            r0.setVisibility(r8)
            android.view.View r7 = r7.f10176
            com.google.android.material.datepicker.ˉʿ r8 = new com.google.android.material.datepicker.ˉʿ
            r0 = 11
            r8.<init>(r0, r6)
            r7.setOnClickListener(r8)
        L7d:
            return
        L7e:
            java.util.List r1 = r6.f14884
            r2 = 1
            int r8 = r8 - r2
            java.lang.Object r8 = r1.get(r8)
            ᐧⁱ.ᵔﹳ r8 = (p312.C3877) r8
            ʽⁱ.ʿ r1 = r8.f15098
            ʽⁱ.ـˏ r1 = r1.f5655
            r3 = r0
            ⁱי.ʼʼ r3 = (p392.C4644) r3
            ʽⁱ.ˉـ r3 = r3.m9234()
            ʼʻ.ᵔי r3 = r3.f5711
            java.lang.Object r3 = r3.get(r1)
            r4 = 0
            if (r3 == 0) goto La7
            ʽⁱ.ʿ r3 = r8.f15098
            int r5 = r8.f15097
            boolean[] r3 = r3.f5654
            boolean r3 = r3[r5]
            if (r3 == 0) goto La7
            goto La8
        La7:
            r2 = r4
        La8:
            android.widget.TextView r3 = r7.f14889
            java.lang.String r5 = r8.f15096
            r3.setText(r5)
            android.view.View r3 = r7.f14888
            if (r2 == 0) goto Lb4
            goto Lb5
        Lb4:
            r4 = 4
        Lb5:
            r3.setVisibility(r4)
            android.view.View r7 = r7.f10176
            ᐧⁱ.ﹳᐧ r2 = new ᐧⁱ.ﹳᐧ
            r2.<init>()
            r7.setOnClickListener(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p312.C3842.m8019(ᐧⁱ.ʼᐧ, int):void");
    }

    @Override // p179.AbstractC2727
    /* renamed from: ﹳٴ */
    public final int mo611() {
        if (this.f14884.isEmpty()) {
            return 0;
        }
        return this.f14884.size() + 1;
    }

    @Override // p179.AbstractC2727
    /* renamed from: ﾞᴵ */
    public /* bridge */ /* synthetic */ void mo612(AbstractC2673 abstractC2673, int i) {
        switch (this.f14887) {
            case 1:
                m8016((C3843) abstractC2673, i);
                return;
            default:
                m8016((C3843) abstractC2673, i);
                return;
        }
    }
}
