package p275;

import android.text.Editable;
import android.text.SpannableStringBuilder;
import java.lang.reflect.Array;
import java.util.ArrayList;
import ˈˊ.ˉˆ;

/* renamed from: ـﹶ.ʽﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3506 extends SpannableStringBuilder {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Class f13823;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final ArrayList f13824;

    public C3506(Class cls, CharSequence charSequence) {
        super(charSequence);
        this.f13824 = new ArrayList();
        ˉˆ.ﾞᴵ(cls, "watcherClass cannot be null");
        this.f13823 = cls;
    }

    public C3506(Class cls, C3506 c3506, int i, int i2) {
        super(c3506, i, i2);
        this.f13824 = new ArrayList();
        ˉˆ.ﾞᴵ(cls, "watcherClass cannot be null");
        this.f13823 = cls;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final Editable append(char c) {
        super.append(c);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final Editable append(CharSequence charSequence) {
        super.append(charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final Editable append(CharSequence charSequence, int i, int i2) {
        super.append(charSequence, i, i2);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final SpannableStringBuilder append(char c) {
        super.append(c);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final SpannableStringBuilder append(CharSequence charSequence) {
        super.append(charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final SpannableStringBuilder append(CharSequence charSequence, int i, int i2) {
        super.append(charSequence, i, i2);
        return this;
    }

    @Override // android.text.SpannableStringBuilder
    public final SpannableStringBuilder append(CharSequence charSequence, Object obj, int i) {
        super.append(charSequence, obj, i);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final Appendable append(char c) {
        super.append(c);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final Appendable append(CharSequence charSequence) {
        super.append(charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    public final Appendable append(CharSequence charSequence, int i, int i2) {
        super.append(charSequence, i, i2);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final Editable delete(int i, int i2) {
        super.delete(i, i2);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final SpannableStringBuilder delete(int i, int i2) {
        super.delete(i, i2);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public final int getSpanEnd(Object obj) {
        C3512 m7451;
        if (m7452(obj) && (m7451 = m7451(obj)) != null) {
            obj = m7451;
        }
        return super.getSpanEnd(obj);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public final int getSpanFlags(Object obj) {
        C3512 m7451;
        if (m7452(obj) && (m7451 = m7451(obj)) != null) {
            obj = m7451;
        }
        return super.getSpanFlags(obj);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public final int getSpanStart(Object obj) {
        C3512 m7451;
        if (m7452(obj) && (m7451 = m7451(obj)) != null) {
            obj = m7451;
        }
        return super.getSpanStart(obj);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public final Object[] getSpans(int i, int i2, Class cls) {
        if (this.f13823 != cls) {
            return super.getSpans(i, i2, cls);
        }
        C3512[] c3512Arr = (C3512[]) super.getSpans(i, i2, C3512.class);
        Object[] objArr = (Object[]) Array.newInstance((Class<?>) cls, c3512Arr.length);
        for (int i3 = 0; i3 < c3512Arr.length; i3++) {
            objArr[i3] = c3512Arr[i3].f13840;
        }
        return objArr;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final Editable insert(int i, CharSequence charSequence) {
        super.insert(i, charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final Editable insert(int i, CharSequence charSequence, int i2, int i3) {
        super.insert(i, charSequence, i2, i3);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final SpannableStringBuilder insert(int i, CharSequence charSequence) {
        super.insert(i, charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final SpannableStringBuilder insert(int i, CharSequence charSequence, int i2, int i3) {
        super.insert(i, charSequence, i2, i3);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public final int nextSpanTransition(int i, int i2, Class cls) {
        if (cls == null || this.f13823 == cls) {
            cls = C3512.class;
        }
        return super.nextSpanTransition(i, i2, cls);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spannable
    public final void removeSpan(Object obj) {
        C3512 c3512;
        if (m7452(obj)) {
            c3512 = m7451(obj);
            if (c3512 != null) {
                obj = c3512;
            }
        } else {
            c3512 = null;
        }
        super.removeSpan(obj);
        if (c3512 != null) {
            this.f13824.remove(c3512);
        }
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final /* bridge */ /* synthetic */ Editable replace(int i, int i2, CharSequence charSequence) {
        replace(i, i2, charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final /* bridge */ /* synthetic */ Editable replace(int i, int i2, CharSequence charSequence, int i3, int i4) {
        replace(i, i2, charSequence, i3, i4);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final SpannableStringBuilder replace(int i, int i2, CharSequence charSequence) {
        m7455();
        super.replace(i, i2, charSequence);
        m7453();
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    public final SpannableStringBuilder replace(int i, int i2, CharSequence charSequence, int i3, int i4) {
        m7455();
        super.replace(i, i2, charSequence, i3, i4);
        m7453();
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spannable
    public final void setSpan(Object obj, int i, int i2, int i3) {
        if (m7452(obj)) {
            C3512 c3512 = new C3512(obj);
            this.f13824.add(c3512);
            obj = c3512;
        }
        super.setSpan(obj, i, i2, i3);
    }

    @Override // android.text.SpannableStringBuilder, java.lang.CharSequence
    public final CharSequence subSequence(int i, int i2) {
        return new C3506(this.f13823, this, i, i2);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C3512 m7451(Object obj) {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.f13824;
            if (i >= arrayList.size()) {
                return null;
            }
            C3512 c3512 = (C3512) arrayList.get(i);
            if (c3512.f13840 == obj) {
                return c3512;
            }
            i++;
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final boolean m7452(Object obj) {
        if (obj != null) {
            return this.f13823 == obj.getClass();
        }
        return false;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m7453() {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.f13824;
            if (i >= arrayList.size()) {
                return;
            }
            ((C3512) arrayList.get(i)).f13841.decrementAndGet();
            i++;
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m7454() {
        m7453();
        int i = 0;
        while (true) {
            ArrayList arrayList = this.f13824;
            if (i >= arrayList.size()) {
                return;
            }
            ((C3512) arrayList.get(i)).onTextChanged(this, 0, length(), length());
            i++;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m7455() {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.f13824;
            if (i >= arrayList.size()) {
                return;
            }
            ((C3512) arrayList.get(i)).f13841.incrementAndGet();
            i++;
        }
    }
}
