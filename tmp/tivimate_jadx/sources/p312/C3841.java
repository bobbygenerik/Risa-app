package p312;

import android.content.Context;
import android.webkit.WebView;
import android.widget.FrameLayout;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import p305.AbstractC3712;
import p388.C4625;
import ᴵˋ.ˊʻ;

/* renamed from: ᐧⁱ.ʼˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3841 extends FrameLayout implements InterfaceC3874 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public List f14878;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C3851 f14879;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public C3862 f14880;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public float f14881;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C3859 f14882;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public float f14883;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [ᐧⁱ.ˋᵔ, android.view.View, android.webkit.WebView] */
    public C3841(Context context) {
        super(context, null);
        this.f14878 = Collections.EMPTY_LIST;
        this.f14880 = C3862.f15037;
        this.f14883 = 0.0533f;
        this.f14881 = 0.08f;
        C3851 c3851 = new C3851(context, 0);
        this.f14879 = c3851;
        ?? webView = new WebView(context, null);
        this.f14882 = webView;
        webView.setBackgroundColor(0);
        addView(c3851);
        addView(webView);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (!z || this.f14878.isEmpty()) {
            return;
        }
        m8012();
    }

    /* JADX WARN: Code restructure failed: missing block: B:129:0x04bd, code lost:
    
        if (((android.text.style.TypefaceSpan) r3).getFamily() != null) goto L210;
     */
    /* JADX WARN: Code restructure failed: missing block: B:251:0x01fd, code lost:
    
        if (r12 != 0) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:252:0x0200, code lost:
    
        r30 = "left";
     */
    /* JADX WARN: Code restructure failed: missing block: B:253:0x0203, code lost:
    
        if (r12 != 0) goto L85;
     */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0499  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x04b6  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0514  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0546 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:143:0x04c4  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x0203  */
    /* JADX WARN: Removed duplicated region for block: B:254:0x01dd  */
    /* JADX WARN: Removed duplicated region for block: B:256:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:265:0x018e  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x01c2  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x01da  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01f0  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0239  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x05ef  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x062b  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x069e  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x06d0  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0650  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x024f  */
    /* renamed from: ʽ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m8012() {
        /*
            Method dump skipped, instructions count: 1862
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p312.C3841.m8012():void");
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String m8013(int i, float f) {
        float f2 = ˊʻ.ˉٴ(i, f, getHeight(), (getHeight() - getPaddingTop()) - getPaddingBottom());
        if (f2 == -3.4028235E38f) {
            return "unset";
        }
        Object[] objArr = {Float.valueOf(f2 / getContext().getResources().getDisplayMetrics().density)};
        String str = AbstractC3712.f14481;
        return String.format(Locale.US, "%.2fpx", objArr);
    }

    @Override // p312.InterfaceC3874
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void mo8014(List list, C3862 c3862, float f, float f2) {
        this.f14880 = c3862;
        this.f14883 = f;
        this.f14881 = f2;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            C4625 c4625 = (C4625) list.get(i);
            if (c4625.f17269 != null) {
                arrayList.add(c4625);
            } else {
                arrayList2.add(c4625);
            }
        }
        if (!this.f14878.isEmpty() || !arrayList2.isEmpty()) {
            this.f14878 = arrayList2;
            m8012();
        }
        this.f14879.mo8014(arrayList, c3862, f, f2);
        invalidate();
    }
}
