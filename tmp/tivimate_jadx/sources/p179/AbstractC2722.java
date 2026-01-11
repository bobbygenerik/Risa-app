package p179;

import java.util.ArrayList;
import java.util.List;
import p307.AbstractC3740;

/* renamed from: ˋˋ.ᐧᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2722 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public long f10361;

    /* renamed from: ˈ, reason: contains not printable characters */
    public long f10362;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public long f10363;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public ArrayList f10364;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public C2742 f10365;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public long f10366;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m6101(AbstractC2673 abstractC2673) {
        int i = abstractC2673.f10185;
        if (!abstractC2673.m6015() && (i & 4) == 0) {
            abstractC2673.m6017();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0070  */
    /* renamed from: ʽ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m6102(p179.AbstractC2673 r11) {
        /*
            r10 = this;
            ˋˋ.ﹳـ r0 = r10.f10365
            if (r0 == 0) goto Lb3
            androidx.recyclerview.widget.RecyclerView r0 = r0.f10463
            r1 = 1
            r11.m6005(r1)
            android.view.View r2 = r11.f10176
            ˋˋ.ʼـ r3 = r11.f10180
            r4 = 0
            if (r3 == 0) goto L17
            ˋˋ.ʼـ r3 = r11.f10190
            if (r3 != 0) goto L17
            r11.f10180 = r4
        L17:
            r11.f10190 = r4
            int r3 = r11.f10185
            r3 = r3 & 16
            if (r3 == 0) goto L21
            goto Lb3
        L21:
            ˋˋ.ʻˋ r3 = r0.f1464
            r0.m965()
            com.parse.ʽˑ r4 = r0.f1482
            java.lang.Object r5 = r4.ˈٴ
            ʿʽ.ʽ r5 = (p079.C1681) r5
            java.lang.Object r6 = r4.ʽʽ
            ˋˋ.ﹳـ r6 = (p179.C2742) r6
            int r7 = r4.ᴵˊ
            r8 = 0
            if (r7 != r1) goto L45
            java.lang.Object r1 = r4.ˊʻ
            android.view.View r1 = (android.view.View) r1
            if (r1 != r2) goto L3d
        L3b:
            r1 = r8
            goto L6e
        L3d:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r0 = "Cannot call removeViewIfHidden within removeView(At) for a different view"
            r11.<init>(r0)
            throw r11
        L45:
            r9 = 2
            if (r7 == r9) goto Lab
            r4.ᴵˊ = r9     // Catch: java.lang.Throwable -> L59
            androidx.recyclerview.widget.RecyclerView r7 = r6.f10463     // Catch: java.lang.Throwable -> L59
            int r7 = r7.indexOfChild(r2)     // Catch: java.lang.Throwable -> L59
            r9 = -1
            if (r7 != r9) goto L5b
            r4.ˊˋ(r2)     // Catch: java.lang.Throwable -> L59
        L56:
            r4.ᴵˊ = r8
            goto L6e
        L59:
            r11 = move-exception
            goto La8
        L5b:
            boolean r9 = r5.m4593(r7)     // Catch: java.lang.Throwable -> L59
            if (r9 == 0) goto L6b
            r5.m4579(r7)     // Catch: java.lang.Throwable -> L59
            r4.ˊˋ(r2)     // Catch: java.lang.Throwable -> L59
            r6.m6145(r7)     // Catch: java.lang.Throwable -> L59
            goto L56
        L6b:
            r4.ᴵˊ = r8
            goto L3b
        L6e:
            if (r1 == 0) goto L97
            ˋˋ.ʼـ r4 = androidx.recyclerview.widget.RecyclerView.m927(r2)
            r3.m5952(r4)
            r3.m5950(r4)
            boolean r3 = androidx.recyclerview.widget.RecyclerView.f1455
            if (r3 == 0) goto L97
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r4 = "after removing animated view: "
            r3.<init>(r4)
            r3.append(r2)
            java.lang.String r4 = ", "
            r3.append(r4)
            r3.append(r0)
            java.lang.String r3 = r3.toString()
            java.lang.String r4 = "RecyclerView"
        L97:
            r3 = r1 ^ 1
            r0.m971(r3)
            if (r1 != 0) goto Lb3
            boolean r11 = r11.m6020()
            if (r11 == 0) goto Lb3
            r0.removeDetachedView(r2, r8)
            return
        La8:
            r4.ᴵˊ = r8
            throw r11
        Lab:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r0 = "Cannot call removeViewIfHidden within removeViewIfHidden"
            r11.<init>(r0)
            throw r11
        Lb3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p179.AbstractC2722.m6102(ˋˋ.ʼـ):void");
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m6103() {
        ArrayList arrayList = this.f10364;
        if (arrayList.size() > 0) {
            throw AbstractC3740.m7931(0, arrayList);
        }
        arrayList.clear();
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public abstract void m6104(AbstractC2673 abstractC2673);

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public abstract boolean m6105();

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public abstract void m6106();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public abstract boolean m6107(AbstractC2673 abstractC2673, List list);

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public abstract void m6108();
}
