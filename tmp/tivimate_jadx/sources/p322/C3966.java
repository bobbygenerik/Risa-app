package p322;

import android.net.NetworkRequest;
import android.os.Build;
import java.util.LinkedHashSet;
import java.util.Set;
import p010.AbstractC0844;
import p113.C1974;
import p152.AbstractC2444;
import p307.AbstractC3740;
import p430.C5113;

/* renamed from: ᴵˋ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3966 {

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static final C3966 f15288 = new C3966();

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final Set f15289;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean f15290;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final boolean f15291;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final boolean f15292;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final long f15293;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final long f15294;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C1974 f15295;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f15296;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final boolean f15297;

    public C3966() {
        this.f15295 = new C1974(null);
        this.f15296 = 1;
        this.f15290 = false;
        this.f15291 = false;
        this.f15292 = false;
        this.f15297 = false;
        this.f15293 = -1L;
        this.f15294 = -1L;
        this.f15289 = C5113.f19217;
    }

    public C3966(C1974 c1974, int i, boolean z, boolean z2, boolean z3, boolean z4, long j, long j2, LinkedHashSet linkedHashSet) {
        this.f15295 = c1974;
        this.f15296 = i;
        this.f15290 = z;
        this.f15291 = z2;
        this.f15292 = z3;
        this.f15297 = z4;
        this.f15293 = j;
        this.f15294 = j2;
        this.f15289 = linkedHashSet;
    }

    public C3966(C3966 c3966) {
        this.f15290 = c3966.f15290;
        this.f15291 = c3966.f15291;
        this.f15295 = c3966.f15295;
        this.f15296 = c3966.f15296;
        this.f15292 = c3966.f15292;
        this.f15297 = c3966.f15297;
        this.f15289 = c3966.f15289;
        this.f15293 = c3966.f15293;
        this.f15294 = c3966.f15294;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !C3966.class.equals(obj.getClass())) {
            return false;
        }
        C3966 c3966 = (C3966) obj;
        if (this.f15290 == c3966.f15290 && this.f15291 == c3966.f15291 && this.f15292 == c3966.f15292 && this.f15297 == c3966.f15297 && this.f15293 == c3966.f15293 && this.f15294 == c3966.f15294 && AbstractC2444.m5562(m8136(), c3966.m8136()) && this.f15296 == c3966.f15296) {
            return AbstractC2444.m5562(this.f15289, c3966.f15289);
        }
        return false;
    }

    public final int hashCode() {
        int m3018 = ((((((((AbstractC0844.m3018(this.f15296) * 31) + (this.f15290 ? 1 : 0)) * 31) + (this.f15291 ? 1 : 0)) * 31) + (this.f15292 ? 1 : 0)) * 31) + (this.f15297 ? 1 : 0)) * 31;
        long j = this.f15293;
        int i = (m3018 + ((int) (j ^ (j >>> 32)))) * 31;
        long j2 = this.f15294;
        int hashCode = (this.f15289.hashCode() + ((i + ((int) (j2 ^ (j2 >>> 32)))) * 31)) * 31;
        NetworkRequest m8136 = m8136();
        return hashCode + (m8136 != null ? m8136.hashCode() : 0);
    }

    public final String toString() {
        return "Constraints{requiredNetworkType=" + AbstractC3740.m7924(this.f15296) + ", requiresCharging=" + this.f15290 + ", requiresDeviceIdle=" + this.f15291 + ", requiresBatteryNotLow=" + this.f15292 + ", requiresStorageNotLow=" + this.f15297 + ", contentTriggerUpdateDelayMillis=" + this.f15293 + ", contentTriggerMaxDelayMillis=" + this.f15294 + ", contentUriTriggers=" + this.f15289 + ", }";
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean m8135() {
        return Build.VERSION.SDK_INT < 24 || !this.f15289.isEmpty();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final NetworkRequest m8136() {
        return (NetworkRequest) this.f15295.f7830;
    }
}
