package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.AbsSavedState;
import ar.tvplayer.tv.R;
import p011.AbstractC0869;
import p011.C0880;
import p011.InterfaceC0872;
import p143.AbstractC2392;
import ˋⁱ.ﾞᴵ;

/* loaded from: classes.dex */
public class ListPreference extends DialogPreference {

    /* renamed from: ʼـ, reason: contains not printable characters */
    public final CharSequence[] f1338;

    /* renamed from: ʽⁱ, reason: contains not printable characters */
    public String f1339;

    /* renamed from: ʾﾞ, reason: contains not printable characters */
    public boolean f1340;

    /* renamed from: ˎᐧ, reason: contains not printable characters */
    public final CharSequence[] f1341;

    /* renamed from: יﹳ, reason: contains not printable characters */
    public String f1342;

    public ListPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, AbstractC2392.m5495(context, R.attr.477, android.R.attr.dialogPreferenceStyle));
    }

    /* JADX WARN: Type inference failed for: r2v10, types: [ˋⁱ.ﾞᴵ, java.lang.Object] */
    public ListPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0869.f3706, i, 0);
        CharSequence[] textArray = obtainStyledAttributes.getTextArray(2);
        this.f1338 = textArray == null ? obtainStyledAttributes.getTextArray(0) : textArray;
        CharSequence[] textArray2 = obtainStyledAttributes.getTextArray(3);
        this.f1341 = textArray2 == null ? obtainStyledAttributes.getTextArray(1) : textArray2;
        if (obtainStyledAttributes.getBoolean(4, obtainStyledAttributes.getBoolean(4, false))) {
            if (ﾞᴵ.ʾˋ == null) {
                ﾞᴵ.ʾˋ = new Object();
            }
            this.f1371 = ﾞᴵ.ʾˋ;
            mo815();
        }
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, AbstractC0869.f3708, i, 0);
        String string = obtainStyledAttributes2.getString(33);
        this.f1339 = string == null ? obtainStyledAttributes2.getString(7) : string;
        obtainStyledAttributes2.recycle();
    }

    @Override // androidx.preference.Preference
    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final void mo822(CharSequence charSequence) {
        super.mo822(charSequence);
        if (charSequence == null) {
            this.f1339 = null;
        } else {
            this.f1339 = charSequence.toString();
        }
    }

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final void m823(String str) {
        boolean equals = TextUtils.equals(this.f1342, str);
        if (equals && this.f1340) {
            return;
        }
        this.f1342 = str;
        this.f1340 = true;
        m828(str);
        if (equals) {
            return;
        }
        mo815();
    }

    @Override // androidx.preference.Preference
    /* renamed from: ˏי */
    public final void mo817(Object obj) {
        m823(m847((String) obj));
    }

    @Override // androidx.preference.Preference
    /* renamed from: יـ */
    public final Parcelable mo818() {
        super.mo818();
        AbsSavedState absSavedState = AbsSavedState.EMPTY_STATE;
        if (this.f1367) {
            return absSavedState;
        }
        C0880 c0880 = new C0880();
        c0880.f3734 = this.f1342;
        return c0880;
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final int m824(String str) {
        CharSequence[] charSequenceArr;
        if (str == null || (charSequenceArr = this.f1341) == null) {
            return -1;
        }
        for (int length = charSequenceArr.length - 1; length >= 0; length--) {
            if (TextUtils.equals(charSequenceArr[length].toString(), str)) {
                return length;
            }
        }
        return -1;
    }

    @Override // androidx.preference.Preference
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final CharSequence mo825() {
        CharSequence[] charSequenceArr;
        InterfaceC0872 interfaceC0872 = this.f1371;
        if (interfaceC0872 != null) {
            return interfaceC0872.m3081(this);
        }
        int m824 = m824(this.f1342);
        CharSequence charSequence = (m824 < 0 || (charSequenceArr = this.f1338) == null) ? null : charSequenceArr[m824];
        CharSequence mo825 = super.mo825();
        String str = this.f1339;
        if (str != null) {
            if (charSequence == null) {
                charSequence = "";
            }
            String format = String.format(str, charSequence);
            if (!TextUtils.equals(format, mo825)) {
                return format;
            }
        }
        return mo825;
    }

    @Override // androidx.preference.Preference
    /* renamed from: ᵔﹳ */
    public final Object mo820(TypedArray typedArray, int i) {
        return typedArray.getString(i);
    }

    @Override // androidx.preference.Preference
    /* renamed from: ﹳᐧ */
    public final void mo821(Parcelable parcelable) {
        if (!parcelable.getClass().equals(C0880.class)) {
            super.mo821(parcelable);
            return;
        }
        C0880 c0880 = (C0880) parcelable;
        super.mo821(c0880.getSuperState());
        m823(c0880.f3734);
    }
}
