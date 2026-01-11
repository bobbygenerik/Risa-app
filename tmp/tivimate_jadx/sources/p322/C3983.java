package p322;

import android.app.Notification;

/* renamed from: ᴵˋ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3983 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Notification f15349;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f15350;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f15351;

    public C3983(int i, Notification notification, int i2) {
        this.f15351 = i;
        this.f15349 = notification;
        this.f15350 = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C3983.class != obj.getClass()) {
            return false;
        }
        C3983 c3983 = (C3983) obj;
        if (this.f15351 == c3983.f15351 && this.f15350 == c3983.f15350) {
            return this.f15349.equals(c3983.f15349);
        }
        return false;
    }

    public final int hashCode() {
        return this.f15349.hashCode() + (((this.f15351 * 31) + this.f15350) * 31);
    }

    public final String toString() {
        return "ForegroundInfo{mNotificationId=" + this.f15351 + ", mForegroundServiceType=" + this.f15350 + ", mNotification=" + this.f15349 + '}';
    }
}
