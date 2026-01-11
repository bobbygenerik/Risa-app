package p129;

import android.text.TextPaint;
import java.lang.ref.WeakReference;
import p110.C1951;
import p110.C1953;
import p401.C4762;

/* renamed from: ˈᐧ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2180 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public float f8550;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final WeakReference f8552;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public C4762 f8555;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final TextPaint f8554 = new TextPaint(1);

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C1951 f8553 = new C1951(1, this);

    /* renamed from: ˈ, reason: contains not printable characters */
    public boolean f8551 = true;

    public C2180(C1953 c1953) {
        this.f8552 = new WeakReference(null);
        this.f8552 = new WeakReference(c1953);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final float m5166(String str) {
        if (!this.f8551) {
            return this.f8550;
        }
        TextPaint textPaint = this.f8554;
        this.f8550 = str == null ? 0.0f : textPaint.measureText((CharSequence) str, 0, str.length());
        if (str != null) {
            Math.abs(textPaint.getFontMetrics().ascent);
        }
        this.f8551 = false;
        return this.f8550;
    }
}
