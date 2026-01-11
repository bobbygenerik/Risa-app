package p385;

import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import java.util.ArrayList;
import p388.C4625;

/* renamed from: ⁱʾ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4610 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final StringBuilder f17196;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f17197;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f17198;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public int f17199;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public int f17200;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final ArrayList f17201;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ArrayList f17202;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f17203;

    public C4610(int i, int i2) {
        ArrayList arrayList = new ArrayList();
        this.f17202 = arrayList;
        ArrayList arrayList2 = new ArrayList();
        this.f17201 = arrayList2;
        StringBuilder sb = new StringBuilder();
        this.f17196 = sb;
        this.f17199 = i;
        arrayList.clear();
        arrayList2.clear();
        sb.setLength(0);
        this.f17197 = 15;
        this.f17198 = 0;
        this.f17203 = 0;
        this.f17200 = i2;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C4625 m9173(int i) {
        float f;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.f17201;
            if (i2 >= arrayList.size()) {
                break;
            }
            spannableStringBuilder.append((CharSequence) arrayList.get(i2));
            spannableStringBuilder.append('\n');
            i2++;
        }
        spannableStringBuilder.append((CharSequence) m9174());
        if (spannableStringBuilder.length() == 0) {
            return null;
        }
        int i3 = this.f17198 + this.f17203;
        int length = (32 - i3) - spannableStringBuilder.length();
        int i4 = i3 - length;
        int i5 = i != Integer.MIN_VALUE ? i : (this.f17199 != 2 || (Math.abs(i4) >= 3 && length >= 0)) ? (this.f17199 != 2 || i4 <= 0) ? 0 : 2 : 1;
        if (i5 != 1) {
            if (i5 == 2) {
                i3 = 32 - length;
            }
            f = ((i3 / 32.0f) * 0.8f) + 0.1f;
        } else {
            f = 0.5f;
        }
        float f2 = f;
        int i6 = this.f17197;
        if (i6 > 7) {
            i6 -= 17;
        } else if (this.f17199 == 1) {
            i6 -= this.f17200 - 1;
        }
        return new C4625(spannableStringBuilder, Layout.Alignment.ALIGN_NORMAL, null, null, i6, 1, Integer.MIN_VALUE, f2, i5, Integer.MIN_VALUE, -3.4028235E38f, -3.4028235E38f, -3.4028235E38f, false, -16777216, Integer.MIN_VALUE, 0.0f, 0);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final SpannableString m9174() {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f17196);
        int length = spannableStringBuilder.length();
        int i = -1;
        int i2 = -1;
        int i3 = -1;
        int i4 = -1;
        int i5 = 0;
        int i6 = 0;
        boolean z = false;
        while (true) {
            ArrayList arrayList = this.f17202;
            if (i5 >= arrayList.size()) {
                break;
            }
            C4611 c4611 = (C4611) arrayList.get(i5);
            boolean z2 = c4611.f17205;
            int i7 = c4611.f17206;
            if (i7 != 8) {
                boolean z3 = i7 == 7;
                if (i7 != 7) {
                    i4 = C4605.f17139[i7];
                }
                z = z3;
            }
            int i8 = c4611.f17204;
            i5++;
            if (i8 != (i5 < arrayList.size() ? ((C4611) arrayList.get(i5)).f17204 : length)) {
                if (i != -1 && !z2) {
                    spannableStringBuilder.setSpan(new UnderlineSpan(), i, i8, 33);
                    i = -1;
                } else if (i == -1 && z2) {
                    i = i8;
                }
                if (i2 != -1 && !z) {
                    spannableStringBuilder.setSpan(new StyleSpan(2), i2, i8, 33);
                    i2 = -1;
                } else if (i2 == -1 && z) {
                    i2 = i8;
                }
                if (i4 != i3) {
                    if (i3 != -1) {
                        spannableStringBuilder.setSpan(new ForegroundColorSpan(i3), i6, i8, 33);
                    }
                    i3 = i4;
                    i6 = i8;
                }
            }
        }
        if (i != -1 && i != length) {
            spannableStringBuilder.setSpan(new UnderlineSpan(), i, length, 33);
        }
        if (i2 != -1 && i2 != length) {
            spannableStringBuilder.setSpan(new StyleSpan(2), i2, length, 33);
        }
        if (i6 != length && i3 != -1) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan(i3), i6, length, 33);
        }
        return new SpannableString(spannableStringBuilder);
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final boolean m9175() {
        return this.f17202.isEmpty() && this.f17201.isEmpty() && this.f17196.length() == 0;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m9176() {
        StringBuilder sb = this.f17196;
        int length = sb.length();
        if (length > 0) {
            sb.delete(length - 1, length);
            ArrayList arrayList = this.f17202;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                C4611 c4611 = (C4611) arrayList.get(size);
                int i = c4611.f17204;
                if (i != length) {
                    return;
                }
                c4611.f17204 = i - 1;
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m9177(char c) {
        StringBuilder sb = this.f17196;
        if (sb.length() < 32) {
            sb.append(c);
        }
    }
}
