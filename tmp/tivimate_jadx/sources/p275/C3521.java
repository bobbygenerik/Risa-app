package p275;

import android.os.Build;
import android.text.Spannable;
import android.text.SpannableString;
import com.google.android.gms.internal.measurement.AbstractC0473;
import j$.util.stream.IntStream;

/* renamed from: ـﹶ.ᵢˏ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3521 implements Spannable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public boolean f13860 = false;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public Spannable f13861;

    public C3521(Spannable spannable) {
        this.f13861 = spannable;
    }

    @Override // java.lang.CharSequence
    public final char charAt(int i) {
        return this.f13861.charAt(i);
    }

    @Override // java.lang.CharSequence
    public final IntStream chars() {
        return AbstractC0473.m1924(this.f13861);
    }

    @Override // java.lang.CharSequence
    public /* synthetic */ java.util.stream.IntStream chars() {
        return IntStream.Wrapper.convert(chars());
    }

    @Override // java.lang.CharSequence
    public final IntStream codePoints() {
        return AbstractC0473.m1923(this.f13861);
    }

    @Override // java.lang.CharSequence
    public /* synthetic */ java.util.stream.IntStream codePoints() {
        return IntStream.Wrapper.convert(codePoints());
    }

    @Override // android.text.Spanned
    public final int getSpanEnd(Object obj) {
        return this.f13861.getSpanEnd(obj);
    }

    @Override // android.text.Spanned
    public final int getSpanFlags(Object obj) {
        return this.f13861.getSpanFlags(obj);
    }

    @Override // android.text.Spanned
    public final int getSpanStart(Object obj) {
        return this.f13861.getSpanStart(obj);
    }

    @Override // android.text.Spanned
    public final Object[] getSpans(int i, int i2, Class cls) {
        return this.f13861.getSpans(i, i2, cls);
    }

    @Override // java.lang.CharSequence
    public final int length() {
        return this.f13861.length();
    }

    @Override // android.text.Spanned
    public final int nextSpanTransition(int i, int i2, Class cls) {
        return this.f13861.nextSpanTransition(i, i2, cls);
    }

    @Override // android.text.Spannable
    public final void removeSpan(Object obj) {
        m7488();
        this.f13861.removeSpan(obj);
    }

    @Override // android.text.Spannable
    public final void setSpan(Object obj, int i, int i2, int i3) {
        m7488();
        this.f13861.setSpan(obj, i, i2, i3);
    }

    @Override // java.lang.CharSequence
    public final CharSequence subSequence(int i, int i2) {
        return this.f13861.subSequence(i, i2);
    }

    @Override // java.lang.CharSequence
    public final String toString() {
        return this.f13861.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [ˋⁱ.ﾞᴵ] */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m7488() {
        Spannable spannable = this.f13861;
        if (!this.f13860) {
            if ((Build.VERSION.SDK_INT < 28 ? new Object() : new Object()).ʼʼ(spannable)) {
                this.f13861 = new SpannableString(spannable);
            }
        }
        this.f13860 = true;
    }
}
