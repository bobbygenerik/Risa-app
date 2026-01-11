package p275;

import android.os.Build;
import android.text.Editable;
import android.text.SpanWatcher;
import android.text.Spannable;
import android.text.TextWatcher;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: ـﹶ.ˏי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3512 implements TextWatcher, SpanWatcher {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Object f13840;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final AtomicInteger f13841 = new AtomicInteger(0);

    public C3512(Object obj) {
        this.f13840 = obj;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        ((TextWatcher) this.f13840).afterTextChanged(editable);
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        ((TextWatcher) this.f13840).beforeTextChanged(charSequence, i, i2, i3);
    }

    @Override // android.text.SpanWatcher
    public final void onSpanAdded(Spannable spannable, Object obj, int i, int i2) {
        if (this.f13841.get() <= 0 || !(obj instanceof C3515)) {
            ((SpanWatcher) this.f13840).onSpanAdded(spannable, obj, i, i2);
        }
    }

    @Override // android.text.SpanWatcher
    public final void onSpanChanged(Spannable spannable, Object obj, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        if (this.f13841.get() <= 0 || !(obj instanceof C3515)) {
            if (Build.VERSION.SDK_INT < 28) {
                if (i > i2) {
                    i = 0;
                }
                if (i3 > i4) {
                    i5 = i;
                    i6 = 0;
                    ((SpanWatcher) this.f13840).onSpanChanged(spannable, obj, i5, i2, i6, i4);
                }
            }
            i5 = i;
            i6 = i3;
            ((SpanWatcher) this.f13840).onSpanChanged(spannable, obj, i5, i2, i6, i4);
        }
    }

    @Override // android.text.SpanWatcher
    public final void onSpanRemoved(Spannable spannable, Object obj, int i, int i2) {
        if (this.f13841.get() <= 0 || !(obj instanceof C3515)) {
            ((SpanWatcher) this.f13840).onSpanRemoved(spannable, obj, i, i2);
        }
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        ((TextWatcher) this.f13840).onTextChanged(charSequence, i, i2, i3);
    }
}
