package p319;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p121.AbstractC2026;
import p229.C3125;
import p339.AbstractC4228;

/* renamed from: ᴵˈ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3926 extends AbstractC4228 {
    public static final Parcelable.Creator<C3926> CREATOR = new ٴﹶ(1);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final long f15194;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final String f15195;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final int f15196;

    public C3926() {
        this.f15195 = "CLIENT_TELEMETRY";
        this.f15194 = 1L;
        this.f15196 = -1;
    }

    public C3926(long j, String str, int i) {
        this.f15195 = str;
        this.f15196 = i;
        this.f15194 = j;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C3926) {
            C3926 c3926 = (C3926) obj;
            String str = c3926.f15195;
            String str2 = this.f15195;
            if (((str2 != null && str2.equals(str)) || (str2 == null && str == null)) && m8092() == c3926.m8092()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f15195, Long.valueOf(m8092())});
    }

    public final String toString() {
        C3125 c3125 = new C3125(this);
        c3125.m6847(this.f15195, "name");
        c3125.m6847(Long.valueOf(m8092()), "version");
        return c3125.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m5058 = AbstractC2026.m5058(parcel, 20293);
        AbstractC2026.m5054(parcel, 1, this.f15195);
        AbstractC2026.m5045(parcel, 2, 4);
        parcel.writeInt(this.f15196);
        long m8092 = m8092();
        AbstractC2026.m5045(parcel, 3, 8);
        parcel.writeLong(m8092);
        AbstractC2026.m5047(parcel, m5058);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final long m8092() {
        long j = this.f15194;
        return j == -1 ? this.f15196 : j;
    }
}
