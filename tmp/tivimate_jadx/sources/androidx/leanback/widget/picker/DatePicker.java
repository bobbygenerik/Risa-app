package androidx.leanback.widget.picker;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.util.AttributeSet;
import androidx.leanback.widget.RunnableC0142;
import ar.tvplayer.tv.R;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Locale;
import p186.AbstractC2823;
import p244.C3248;
import p272.AbstractC3483;
import p404.C4790;
import ﹳˋ.ٴﹶ;

/* loaded from: classes.dex */
public class DatePicker extends Picker {

    /* renamed from: ˏᵢ, reason: contains not printable characters */
    public static final int[] f794 = {5, 2, 1};

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public C3248 f795;

    /* renamed from: ʿ, reason: contains not printable characters */
    public final C4790 f796;

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public final Calendar f797;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public int f798;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public final SimpleDateFormat f799;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public C3248 f800;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public String f801;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public C3248 f802;

    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public final Calendar f803;

    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    public final Calendar f804;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public int f805;

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public final Calendar f806;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public int f807;

    public DatePicker(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.6m8);
        this.f799 = new SimpleDateFormat("MM/dd/yyyy", Locale.getDefault());
        Locale locale = Locale.getDefault();
        getContext().getResources();
        this.f796 = new C4790(locale);
        this.f803 = ٴﹶ.ʽﹳ(this.f803, locale);
        this.f797 = ٴﹶ.ʽﹳ(this.f797, (Locale) this.f796.f18036);
        this.f806 = ٴﹶ.ʽﹳ(this.f806, (Locale) this.f796.f18036);
        this.f804 = ٴﹶ.ʽﹳ(this.f804, (Locale) this.f796.f18036);
        C3248 c3248 = this.f800;
        if (c3248 != null) {
            c3248.f12502 = (String[]) this.f796.f18034;
            m563(this.f807, c3248);
        }
        int[] iArr = AbstractC3483.f13665;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
        AbstractC2823.m6282(this, context, iArr, attributeSet, obtainStyledAttributes, 0);
        try {
            String string = obtainStyledAttributes.getString(0);
            String string2 = obtainStyledAttributes.getString(1);
            String string3 = obtainStyledAttributes.getString(2);
            obtainStyledAttributes.recycle();
            this.f803.clear();
            if (TextUtils.isEmpty(string)) {
                this.f803.set(1900, 0, 1);
            } else if (!m559(string, this.f803)) {
                this.f803.set(1900, 0, 1);
            }
            this.f797.setTimeInMillis(this.f803.getTimeInMillis());
            this.f803.clear();
            if (TextUtils.isEmpty(string2)) {
                this.f803.set(2100, 0, 1);
            } else if (!m559(string2, this.f803)) {
                this.f803.set(2100, 0, 1);
            }
            this.f806.setTimeInMillis(this.f803.getTimeInMillis());
            setDatePickerFormat(TextUtils.isEmpty(string3) ? new String(DateFormat.getDateFormatOrder(context)) : string3);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    public long getDate() {
        return this.f804.getTimeInMillis();
    }

    public String getDatePickerFormat() {
        return this.f801;
    }

    public long getMaxDate() {
        return this.f806.getTimeInMillis();
    }

    public long getMinDate() {
        return this.f797.getTimeInMillis();
    }

    public void setDate(long j) {
        this.f803.setTimeInMillis(j);
        m560(this.f803.get(1), this.f803.get(2), this.f803.get(5));
    }

    /* JADX WARN: Type inference failed for: r2v11, types: [י.ˈ, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v14, types: [י.ˈ, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v8, types: [י.ˈ, java.lang.Object] */
    public void setDatePickerFormat(String str) {
        if (TextUtils.isEmpty(str)) {
            str = new String(DateFormat.getDateFormatOrder(getContext()));
        }
        if (TextUtils.equals(this.f801, str)) {
            return;
        }
        this.f801 = str;
        C4790 c4790 = this.f796;
        String bestDateTimePattern = DateFormat.getBestDateTimePattern((Locale) c4790.f18036, str);
        if (TextUtils.isEmpty(bestDateTimePattern)) {
            bestDateTimePattern = "MM/dd/yyyy";
        }
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        char[] cArr = {'Y', 'y', 'M', 'm', 'D', 'd'};
        boolean z = false;
        char c = 0;
        for (int i = 0; i < bestDateTimePattern.length(); i++) {
            char charAt = bestDateTimePattern.charAt(i);
            if (charAt != ' ') {
                if (charAt != '\'') {
                    if (!z) {
                        int i2 = 0;
                        while (true) {
                            if (i2 >= 6) {
                                sb.append(charAt);
                                break;
                            } else if (charAt != cArr[i2]) {
                                i2++;
                            } else if (charAt != c) {
                                arrayList.add(sb.toString());
                                sb.setLength(0);
                            }
                        }
                    } else {
                        sb.append(charAt);
                    }
                    c = charAt;
                } else if (z) {
                    z = false;
                } else {
                    sb.setLength(0);
                    z = true;
                }
            }
        }
        arrayList.add(sb.toString());
        if (arrayList.size() != str.length() + 1) {
            throw new IllegalStateException("Separators size: " + arrayList.size() + " must equal the size of datePickerFormat: " + str.length() + " + 1");
        }
        setSeparators(arrayList);
        this.f795 = null;
        this.f800 = null;
        this.f802 = null;
        this.f807 = -1;
        this.f798 = -1;
        this.f805 = -1;
        String upperCase = str.toUpperCase((Locale) c4790.f18036);
        ArrayList arrayList2 = new ArrayList(3);
        for (int i3 = 0; i3 < upperCase.length(); i3++) {
            char charAt2 = upperCase.charAt(i3);
            if (charAt2 == 'D') {
                if (this.f795 != null) {
                    throw new IllegalArgumentException("datePicker format error");
                }
                ?? obj = new Object();
                this.f795 = obj;
                arrayList2.add(obj);
                this.f795.f12503 = "%02d";
                this.f798 = i3;
            } else if (charAt2 != 'M') {
                if (charAt2 != 'Y') {
                    throw new IllegalArgumentException("datePicker format error");
                }
                if (this.f802 != null) {
                    throw new IllegalArgumentException("datePicker format error");
                }
                ?? obj2 = new Object();
                this.f802 = obj2;
                arrayList2.add(obj2);
                this.f805 = i3;
                this.f802.f12503 = "%d";
            } else {
                if (this.f800 != null) {
                    throw new IllegalArgumentException("datePicker format error");
                }
                ?? obj3 = new Object();
                this.f800 = obj3;
                arrayList2.add(obj3);
                this.f800.f12502 = (String[]) c4790.f18034;
                this.f807 = i3;
            }
        }
        setColumns(arrayList2);
        post(new RunnableC0142(26, this));
    }

    public void setMaxDate(long j) {
        this.f803.setTimeInMillis(j);
        if (this.f803.get(1) != this.f806.get(1) || this.f803.get(6) == this.f806.get(6)) {
            this.f806.setTimeInMillis(j);
            if (this.f804.after(this.f806)) {
                this.f804.setTimeInMillis(this.f806.getTimeInMillis());
            }
            post(new RunnableC0142(26, this));
        }
    }

    public void setMinDate(long j) {
        this.f803.setTimeInMillis(j);
        if (this.f803.get(1) != this.f797.get(1) || this.f803.get(6) == this.f797.get(6)) {
            this.f797.setTimeInMillis(j);
            if (this.f804.before(this.f797)) {
                this.f804.setTimeInMillis(this.f797.getTimeInMillis());
            }
            post(new RunnableC0142(26, this));
        }
    }

    @Override // androidx.leanback.widget.picker.Picker
    /* renamed from: ʽ, reason: contains not printable characters */
    public final void mo558(int i, int i2) {
        this.f803.setTimeInMillis(this.f804.getTimeInMillis());
        int i3 = m568(i).f12505;
        if (i == this.f798) {
            this.f803.add(5, i2 - i3);
        } else if (i == this.f807) {
            this.f803.add(2, i2 - i3);
        } else {
            if (i != this.f805) {
                throw new IllegalArgumentException();
            }
            this.f803.add(1, i2 - i3);
        }
        m560(this.f803.get(1), this.f803.get(2), this.f803.get(5));
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final boolean m559(String str, Calendar calendar) {
        try {
            calendar.setTime(this.f799.parse(str));
            return true;
        } catch (ParseException unused) {
            String str2 = "Date: " + str + " not in format: MM/dd/yyyy";
            return false;
        }
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void m560(int i, int i2, int i3) {
        if (this.f804.get(1) == i && this.f804.get(2) == i3 && this.f804.get(5) == i2) {
            return;
        }
        this.f804.set(i, i2, i3);
        if (this.f804.before(this.f797)) {
            this.f804.setTimeInMillis(this.f797.getTimeInMillis());
        } else if (this.f804.after(this.f806)) {
            this.f804.setTimeInMillis(this.f806.getTimeInMillis());
        }
        post(new RunnableC0142(26, this));
    }
}
