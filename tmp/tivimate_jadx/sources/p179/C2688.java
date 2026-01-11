package p179;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.recyclerview.widget.RecyclerView;

/* renamed from: ˋˋ.ˆﾞ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C2688 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final LinearInterpolator f10234;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public int f10235;

    /* renamed from: ʽ, reason: contains not printable characters */
    public AbstractC2669 f10236;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final DecelerateInterpolator f10237;

    /* renamed from: ˈ, reason: contains not printable characters */
    public boolean f10238;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public boolean f10239;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public int f10240;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public boolean f10241;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public PointF f10242;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final C2715 f10243;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public float f10244;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public boolean f10245;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public RecyclerView f10246;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int f10247 = -1;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final DisplayMetrics f10248;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public View f10249;

    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, ˋˋ.ـᵎ] */
    public C2688(Context context) {
        ?? obj = new Object();
        obj.f10324 = -1;
        obj.f10329 = false;
        obj.f10326 = 0;
        obj.f10328 = 0;
        obj.f10327 = 0;
        obj.f10323 = Integer.MIN_VALUE;
        obj.f10325 = null;
        this.f10243 = obj;
        this.f10234 = new LinearInterpolator();
        this.f10237 = new DecelerateInterpolator();
        this.f10239 = false;
        this.f10240 = 0;
        this.f10235 = 0;
        this.f10248 = context.getResources().getDisplayMetrics();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static int m6035(int i, int i2, int i3, int i4, int i5) {
        if (i5 == -1) {
            return i3 - i;
        }
        if (i5 != 0) {
            if (i5 == 1) {
                return i4 - i2;
            }
            throw new IllegalArgumentException("snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_");
        }
        int i6 = i3 - i;
        if (i6 > 0) {
            return i6;
        }
        int i7 = i4 - i2;
        if (i7 < 0) {
            return i7;
        }
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x001e  */
    /* renamed from: ʼˎ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo658(android.view.View r7, p179.C2715 r8) {
        /*
            r6 = this;
            android.graphics.PointF r0 = r6.f10242
            r1 = 0
            r2 = -1
            r3 = 1
            r4 = 0
            if (r0 == 0) goto L15
            float r0 = r0.x
            int r0 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r0 != 0) goto Lf
            goto L15
        Lf:
            if (r0 <= 0) goto L13
            r0 = r3
            goto L16
        L13:
            r0 = r2
            goto L16
        L15:
            r0 = r1
        L16:
            int r0 = r6.mo6039(r7, r0)
            android.graphics.PointF r5 = r6.f10242
            if (r5 == 0) goto L2a
            float r5 = r5.y
            int r4 = (r5 > r4 ? 1 : (r5 == r4 ? 0 : -1))
            if (r4 != 0) goto L25
            goto L2a
        L25:
            if (r4 <= 0) goto L29
            r1 = r3
            goto L2a
        L29:
            r1 = r2
        L2a:
            int r7 = r6.mo6036(r7, r1)
            int r1 = r0 * r0
            int r2 = r7 * r7
            int r2 = r2 + r1
            double r1 = (double) r2
            double r1 = java.lang.Math.sqrt(r1)
            int r1 = (int) r1
            int r1 = r6.mo660(r1)
            double r1 = (double) r1
            r4 = 4599717252057688074(0x3fd57a786c22680a, double:0.3356)
            double r1 = r1 / r4
            double r1 = java.lang.Math.ceil(r1)
            int r1 = (int) r1
            if (r1 <= 0) goto L59
            int r0 = -r0
            int r7 = -r7
            r8.f10328 = r0
            r8.f10327 = r7
            r8.f10323 = r1
            android.view.animation.DecelerateInterpolator r7 = r6.f10237
            r8.f10325 = r7
            r8.f10329 = r3
        L59:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p179.C2688.mo658(android.view.View, ˋˋ.ـᵎ):void");
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public int mo6036(View view, int i) {
        AbstractC2669 abstractC2669 = this.f10236;
        if (abstractC2669 == null || !abstractC2669.mo538()) {
            return 0;
        }
        C2700 c2700 = (C2700) view.getLayoutParams();
        return m6035(abstractC2669.mo516(view) - ((ViewGroup.MarginLayoutParams) c2700).topMargin, abstractC2669.mo477(view) + ((ViewGroup.MarginLayoutParams) c2700).bottomMargin, abstractC2669.m5989(), abstractC2669.f10148 - abstractC2669.m5988(), i);
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void m6037() {
        if (this.f10241) {
            this.f10241 = false;
            mo661();
            this.f10246.f1516.f10380 = -1;
            this.f10249 = null;
            this.f10247 = -1;
            this.f10238 = false;
            AbstractC2669 abstractC2669 = this.f10236;
            if (abstractC2669.f10149 == this) {
                abstractC2669.f10149 = null;
            }
            this.f10236 = null;
            this.f10246 = null;
        }
    }

    /* renamed from: ˈ */
    public float mo659(DisplayMetrics displayMetrics) {
        return 25.0f / displayMetrics.densityDpi;
    }

    /* renamed from: ˑﹳ */
    public int mo660(int i) {
        float abs = Math.abs(i);
        if (!this.f10239) {
            this.f10244 = mo659(this.f10248);
            this.f10239 = true;
        }
        return (int) Math.ceil(abs * this.f10244);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m6038(int i, int i2) {
        PointF mo573;
        RecyclerView recyclerView = this.f10246;
        if (this.f10247 == -1 || recyclerView == null) {
            m6037();
        }
        if (this.f10238 && this.f10249 == null && this.f10236 != null && (mo573 = mo573(this.f10247)) != null) {
            float f = mo573.x;
            if (f != 0.0f || mo573.y != 0.0f) {
                recyclerView.m948(null, (int) Math.signum(f), (int) Math.signum(mo573.y));
            }
        }
        this.f10238 = false;
        View view = this.f10249;
        C2715 c2715 = this.f10243;
        if (view != null) {
            this.f10246.getClass();
            AbstractC2673 m927 = RecyclerView.m927(view);
            if ((m927 != null ? m927.m6008() : -1) == this.f10247) {
                View view2 = this.f10249;
                C2723 c2723 = recyclerView.f1516;
                mo658(view2, c2715);
                c2715.m6097(recyclerView);
                m6037();
            } else {
                this.f10249 = null;
            }
        }
        if (this.f10241) {
            C2723 c27232 = recyclerView.f1516;
            if (this.f10246.f1521.m5974() == 0) {
                m6037();
            } else {
                int i3 = this.f10240;
                int i4 = i3 - i;
                if (i3 * i4 <= 0) {
                    i4 = 0;
                }
                this.f10240 = i4;
                int i5 = this.f10235;
                int i6 = i5 - i2;
                if (i5 * i6 <= 0) {
                    i6 = 0;
                }
                this.f10235 = i6;
                if (i4 == 0 && i6 == 0) {
                    PointF mo5732 = mo573(this.f10247);
                    if (mo5732 != null) {
                        if (mo5732.x != 0.0f || mo5732.y != 0.0f) {
                            float f2 = mo5732.y;
                            float sqrt = (float) Math.sqrt((f2 * f2) + (r10 * r10));
                            float f3 = mo5732.x / sqrt;
                            mo5732.x = f3;
                            float f4 = mo5732.y / sqrt;
                            mo5732.y = f4;
                            this.f10242 = mo5732;
                            this.f10240 = (int) (f3 * 10000.0f);
                            this.f10235 = (int) (f4 * 10000.0f);
                            int mo660 = mo660(10000);
                            c2715.f10328 = (int) (this.f10240 * 1.2f);
                            c2715.f10327 = (int) (this.f10235 * 1.2f);
                            c2715.f10323 = (int) (mo660 * 1.2f);
                            c2715.f10325 = this.f10234;
                            c2715.f10329 = true;
                        }
                    }
                    c2715.f10324 = this.f10247;
                    m6037();
                }
            }
            boolean z = c2715.f10324 >= 0;
            c2715.m6097(recyclerView);
            if (z && this.f10241) {
                this.f10238 = true;
                recyclerView.f1507.m6076();
            }
        }
    }

    /* renamed from: ᵔᵢ */
    public void mo661() {
        this.f10235 = 0;
        this.f10240 = 0;
        this.f10242 = null;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int mo6039(View view, int i) {
        AbstractC2669 abstractC2669 = this.f10236;
        if (abstractC2669 == null || !abstractC2669.mo506()) {
            return 0;
        }
        C2700 c2700 = (C2700) view.getLayoutParams();
        return m6035(abstractC2669.mo472(view) - ((ViewGroup.MarginLayoutParams) c2700).leftMargin, abstractC2669.mo491(view) + ((ViewGroup.MarginLayoutParams) c2700).rightMargin, abstractC2669.m5984(), abstractC2669.f10152 - abstractC2669.m5987(), i);
    }

    /* renamed from: ﾞᴵ */
    public PointF mo573(int i) {
        Object obj = this.f10236;
        if (obj instanceof InterfaceC2677) {
            return ((InterfaceC2677) obj).mo916(i);
        }
        String str = "You should override computeScrollVectorForPosition when the LayoutManager does not implement " + InterfaceC2677.class.getCanonicalName();
        return null;
    }
}
