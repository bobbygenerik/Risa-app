package p080;

/* renamed from: ʿʾ.ʻٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1686 implements Appendable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Appendable f6848;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public boolean f6849 = true;

    public C1686(Appendable appendable) {
        this.f6848 = appendable;
    }

    @Override // java.lang.Appendable
    public final Appendable append(char c) {
        boolean z = this.f6849;
        Appendable appendable = this.f6848;
        if (z) {
            this.f6849 = false;
            appendable.append("  ");
        }
        this.f6849 = c == '\n';
        appendable.append(c);
        return this;
    }

    @Override // java.lang.Appendable
    public final Appendable append(CharSequence charSequence) {
        if (charSequence == null) {
            charSequence = "";
        }
        append(charSequence, 0, charSequence.length());
        return this;
    }

    @Override // java.lang.Appendable
    public final Appendable append(CharSequence charSequence, int i, int i2) {
        if (charSequence == null) {
            charSequence = "";
        }
        boolean z = this.f6849;
        Appendable appendable = this.f6848;
        boolean z2 = false;
        if (z) {
            this.f6849 = false;
            appendable.append("  ");
        }
        if (charSequence.length() > 0 && charSequence.charAt(i2 - 1) == '\n') {
            z2 = true;
        }
        this.f6849 = z2;
        appendable.append(charSequence, i, i2);
        return this;
    }
}
