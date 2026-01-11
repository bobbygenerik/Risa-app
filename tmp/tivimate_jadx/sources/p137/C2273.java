package p137;

import android.graphics.Typeface;
import android.os.Build;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import p143.AbstractC2392;
import ʼⁱ.ˉٴ;

/* renamed from: ˉˆ.ˊˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2273 extends AbstractC2392 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final /* synthetic */ int f8897;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final /* synthetic */ WeakReference f8898;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final /* synthetic */ C2315 f8899;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final /* synthetic */ int f8900;

    public C2273(C2315 c2315, int i, int i2, WeakReference weakReference) {
        this.f8899 = c2315;
        this.f8900 = i;
        this.f8897 = i2;
        this.f8898 = weakReference;
    }

    @Override // p143.AbstractC2392
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void mo5307(int i) {
    }

    @Override // p143.AbstractC2392
    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void mo5308(Typeface typeface) {
        int i;
        if (Build.VERSION.SDK_INT >= 28 && (i = this.f8900) != -1) {
            typeface = AbstractC2266.m5301(typeface, i, (this.f8897 & 2) != 0);
        }
        C2315 c2315 = this.f8899;
        if (c2315.f9044) {
            c2315.f9051 = typeface;
            TextView textView = (TextView) this.f8898.get();
            if (textView != null) {
                if (textView.isAttachedToWindow()) {
                    textView.post(new ˉٴ(textView, typeface, c2315.f9042, 3));
                } else {
                    textView.setTypeface(typeface, c2315.f9042);
                }
            }
        }
    }
}
