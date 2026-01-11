package p179;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import com.google.android.material.carousel.CarouselLayoutManager;

/* renamed from: ˋˋ.ˊˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2699 extends C2688 {

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final /* synthetic */ int f10278;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final /* synthetic */ Object f10279;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2699(int i, Context context, Object obj) {
        super(context);
        this.f10278 = i;
        this.f10279 = obj;
    }

    @Override // p179.C2688
    /* renamed from: ʼˎ */
    public void mo658(View view, C2715 c2715) {
        switch (this.f10278) {
            case 0:
                C2671 c2671 = (C2671) this.f10279;
                int[] m6001 = c2671.m6001(c2671.f10164.getLayoutManager(), view);
                int i = m6001[0];
                int i2 = m6001[1];
                int ceil = (int) Math.ceil(mo660(Math.max(Math.abs(i), Math.abs(i2))) / 0.3356d);
                if (ceil > 0) {
                    c2715.f10328 = i;
                    c2715.f10327 = i2;
                    c2715.f10323 = ceil;
                    c2715.f10325 = this.f10237;
                    c2715.f10329 = true;
                    return;
                }
                return;
            default:
                super.mo658(view, c2715);
                return;
        }
    }

    @Override // p179.C2688
    /* renamed from: ʽ */
    public int mo6036(View view, int i) {
        switch (this.f10278) {
            case 1:
                ((CarouselLayoutManager) this.f10279).getClass();
                return 0;
            default:
                return super.mo6036(view, i);
        }
    }

    @Override // p179.C2688
    /* renamed from: ˈ */
    public float mo659(DisplayMetrics displayMetrics) {
        switch (this.f10278) {
            case 0:
                return 100.0f / displayMetrics.densityDpi;
            default:
                return super.mo659(displayMetrics);
        }
    }

    @Override // p179.C2688
    /* renamed from: ˑﹳ */
    public int mo660(int i) {
        switch (this.f10278) {
            case 0:
                return Math.min(100, super.mo660(i));
            default:
                return super.mo660(i);
        }
    }

    @Override // p179.C2688
    /* renamed from: ⁱˊ */
    public int mo6039(View view, int i) {
        switch (this.f10278) {
            case 1:
                ((CarouselLayoutManager) this.f10279).getClass();
                return 0;
            default:
                return super.mo6039(view, i);
        }
    }

    @Override // p179.C2688
    /* renamed from: ﾞᴵ */
    public PointF mo573(int i) {
        switch (this.f10278) {
            case 1:
                return null;
            default:
                return super.mo573(i);
        }
    }
}
