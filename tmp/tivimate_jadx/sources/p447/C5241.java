package p447;

import android.os.Parcel;
import android.os.Parcelable;
import p296.AbstractC3659;
import p339.AbstractC4228;
import ﹳـ.ᵎﹶ;

/* renamed from: ﹶﾞ.ʿˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5241 extends AbstractC4228 {
    public static final Parcelable.Creator<C5241> CREATOR = new ᵎﹶ(10);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final long f19700;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f19701;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final Long f19702;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final String f19703;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final Double f19704;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final String f19705;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final String f19706;

    public C5241(int i, String str, long j, Long l, Float f, String str2, String str3, Double d) {
        this.f19701 = i;
        this.f19705 = str;
        this.f19700 = j;
        this.f19702 = l;
        this.f19704 = i == 1 ? f != null ? Double.valueOf(f.doubleValue()) : null : d;
        this.f19706 = str2;
        this.f19703 = str3;
    }

    public C5241(long j, Object obj, String str, String str2) {
        AbstractC3659.m7680(str);
        this.f19701 = 2;
        this.f19705 = str;
        this.f19700 = j;
        this.f19703 = str2;
        if (obj == null) {
            this.f19702 = null;
            this.f19704 = null;
            this.f19706 = null;
            return;
        }
        if (obj instanceof Long) {
            this.f19702 = (Long) obj;
            this.f19704 = null;
            this.f19706 = null;
        } else if (obj instanceof String) {
            this.f19702 = null;
            this.f19704 = null;
            this.f19706 = (String) obj;
        } else {
            if (!(obj instanceof Double)) {
                throw new IllegalArgumentException("User attribute given of un-supported type");
            }
            this.f19702 = null;
            this.f19704 = (Double) obj;
            this.f19706 = null;
        }
    }

    public C5241(C5293 c5293) {
        this(c5293.f19964, c5293.f19965, c5293.f19963, c5293.f19966);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        ᵎﹶ.ⁱˊ(this, parcel);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Object m10309() {
        Long l = this.f19702;
        if (l != null) {
            return l;
        }
        Double d = this.f19704;
        if (d != null) {
            return d;
        }
        String str = this.f19706;
        if (str != null) {
            return str;
        }
        return null;
    }
}
