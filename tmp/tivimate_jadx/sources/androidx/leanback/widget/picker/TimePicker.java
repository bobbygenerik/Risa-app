package androidx.leanback.widget.picker;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.util.AttributeSet;
import ar.tvplayer.tv.R;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Locale;
import p035.AbstractC1220;
import p186.AbstractC2823;
import p244.C3248;
import p272.AbstractC3483;
import ˏˆ.ﹳٴ;

/* loaded from: classes.dex */
public class TimePicker extends Picker {

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public C3248 f824;

    /* renamed from: ʿ, reason: contains not printable characters */
    public int f825;

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public int f826;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public int f827;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public boolean f828;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public C3248 f829;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public C3248 f830;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public int f831;

    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    public String f832;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public final ﹳٴ f833;

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public int f834;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public int f835;

    public TimePicker(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.174);
        Locale locale = Locale.getDefault();
        context.getResources();
        this.f833 = new ﹳٴ(locale);
        int[] iArr = AbstractC3483.f13664;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
        AbstractC2823.m6282(this, context, iArr, attributeSet, obtainStyledAttributes, 0);
        try {
            this.f828 = obtainStyledAttributes.getBoolean(0, DateFormat.is24HourFormat(context));
            boolean z = obtainStyledAttributes.getBoolean(3, true);
            obtainStyledAttributes.recycle();
            m570();
            m571();
            if (z) {
                Calendar calendar = Calendar.getInstance(locale);
                setHour(calendar.get(11));
                setMinute(calendar.get(12));
                if (this.f828) {
                    return;
                }
                m564(this.f827, this.f834);
            }
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    public String getBestHourMinutePattern() {
        String bestDateTimePattern = DateFormat.getBestDateTimePattern((Locale) this.f833.ᴵˊ, this.f828 ? "Hma" : "hma");
        return TextUtils.isEmpty(bestDateTimePattern) ? "h:mma" : bestDateTimePattern;
    }

    public int getHour() {
        return this.f828 ? this.f825 : this.f834 == 0 ? this.f825 % 12 : (this.f825 % 12) + 12;
    }

    public int getMinute() {
        return this.f826;
    }

    public void setHour(int i) {
        if (i < 0 || i > 23) {
            throw new IllegalArgumentException(AbstractC1220.m3773(i, "hour: ", " is not in [0-23] range in"));
        }
        this.f825 = i;
        boolean z = this.f828;
        if (!z) {
            if (i >= 12) {
                this.f834 = 1;
                if (i > 12) {
                    this.f825 = i - 12;
                }
            } else {
                this.f834 = 0;
                if (i == 0) {
                    this.f825 = 12;
                }
            }
            if (!z) {
                m564(this.f827, this.f834);
            }
        }
        m564(this.f831, this.f825);
    }

    public void setIs24Hour(boolean z) {
        if (this.f828 == z) {
            return;
        }
        int hour = getHour();
        int minute = getMinute();
        this.f828 = z;
        m570();
        m571();
        setHour(hour);
        setMinute(minute);
        if (this.f828) {
            return;
        }
        m564(this.f827, this.f834);
    }

    public void setMinute(int i) {
        if (i < 0 || i > 59) {
            throw new IllegalArgumentException(AbstractC1220.m3773(i, "minute: ", " is not in [0-59] range."));
        }
        this.f826 = i;
        m564(this.f835, i);
    }

    @Override // androidx.leanback.widget.picker.Picker
    /* renamed from: ʽ */
    public final void mo558(int i, int i2) {
        if (i == this.f831) {
            this.f825 = i2;
        } else if (i == this.f835) {
            this.f826 = i2;
        } else {
            if (i != this.f827) {
                throw new IllegalArgumentException("Invalid column index.");
            }
            this.f834 = i2;
        }
    }

    /* JADX WARN: Type inference failed for: r6v10, types: [י.ˈ, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v6, types: [י.ˈ, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v8, types: [י.ˈ, java.lang.Object] */
    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void m570() {
        String bestHourMinutePattern = getBestHourMinutePattern();
        if (TextUtils.equals(bestHourMinutePattern, this.f832)) {
            return;
        }
        this.f832 = bestHourMinutePattern;
        String bestHourMinutePattern2 = getBestHourMinutePattern();
        ﹳٴ r1 = this.f833;
        boolean z = TextUtils.getLayoutDirectionFromLocale((Locale) r1.ᴵˊ) == 1;
        boolean z2 = bestHourMinutePattern2.indexOf(97) < 0 || bestHourMinutePattern2.indexOf("a") > bestHourMinutePattern2.indexOf("m");
        String str = z ? "mh" : "hm";
        if (!this.f828) {
            str = z2 ? str.concat("a") : "a".concat(str);
        }
        String bestHourMinutePattern3 = getBestHourMinutePattern();
        ArrayList arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        char[] cArr = {'H', 'h', 'K', 'k', 'm', 'M', 'a'};
        boolean z3 = false;
        char c = 0;
        for (int i = 0; i < bestHourMinutePattern3.length(); i++) {
            char charAt = bestHourMinutePattern3.charAt(i);
            if (charAt != ' ') {
                if (charAt != '\'') {
                    if (!z3) {
                        int i2 = 0;
                        while (true) {
                            if (i2 >= 7) {
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
                } else if (z3) {
                    z3 = false;
                } else {
                    sb.setLength(0);
                    z3 = true;
                }
            }
        }
        arrayList.add(sb.toString());
        if (arrayList.size() != str.length() + 1) {
            throw new IllegalStateException("Separators size: " + arrayList.size() + " must equal the size of timeFieldsPattern: " + str.length() + " + 1");
        }
        setSeparators(arrayList);
        String upperCase = str.toUpperCase((Locale) r1.ᴵˊ);
        this.f824 = null;
        this.f829 = null;
        this.f830 = null;
        this.f827 = -1;
        this.f835 = -1;
        this.f831 = -1;
        ArrayList arrayList2 = new ArrayList(3);
        for (int i3 = 0; i3 < upperCase.length(); i3++) {
            char charAt2 = upperCase.charAt(i3);
            if (charAt2 == 'A') {
                ?? obj = new Object();
                this.f824 = obj;
                arrayList2.add(obj);
                C3248 c3248 = this.f824;
                c3248.f12502 = (String[]) r1.ᴵᵔ;
                this.f827 = i3;
                if (c3248.f12504 != 0) {
                    c3248.f12504 = 0;
                }
                if (1 != c3248.f12501) {
                    c3248.f12501 = 1;
                }
            } else if (charAt2 == 'H') {
                ?? obj2 = new Object();
                this.f830 = obj2;
                arrayList2.add(obj2);
                this.f830.f12502 = (String[]) r1.ʽʽ;
                this.f831 = i3;
            } else {
                if (charAt2 != 'M') {
                    throw new IllegalArgumentException("Invalid time picker format.");
                }
                ?? obj3 = new Object();
                this.f829 = obj3;
                arrayList2.add(obj3);
                this.f829.f12502 = (String[]) r1.ˈٴ;
                this.f835 = i3;
            }
        }
        setColumns(arrayList2);
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void m571() {
        C3248 c3248 = this.f830;
        boolean z = this.f828;
        int i = !z ? 1 : 0;
        if (i != c3248.f12504) {
            c3248.f12504 = i;
        }
        int i2 = z ? 23 : 12;
        if (i2 != c3248.f12501) {
            c3248.f12501 = i2;
        }
        C3248 c32482 = this.f829;
        if (c32482.f12504 != 0) {
            c32482.f12504 = 0;
        }
        if (59 != c32482.f12501) {
            c32482.f12501 = 59;
        }
        C3248 c32483 = this.f824;
        if (c32483 != null) {
            if (c32483.f12504 != 0) {
                c32483.f12504 = 0;
            }
            if (1 != c32483.f12501) {
                c32483.f12501 = 1;
            }
        }
    }
}
