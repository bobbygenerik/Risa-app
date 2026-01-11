package p137;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import p208.C2946;
import p208.C2963;
import p208.EnumC2957;

/* renamed from: ˉˆ.ᵢˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2330 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public Object f9069;

    /* renamed from: ˈ, reason: contains not printable characters */
    public Serializable f9070;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public boolean f9071;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public boolean f9072 = true;

    /* JADX WARN: Type inference failed for: r6v10, types: [java.lang.String[], java.io.Serializable] */
    /* renamed from: ʽ, reason: contains not printable characters */
    public void m5423(EnumC2957... enumC2957Arr) {
        if (!this.f9072) {
            throw new IllegalArgumentException("no TLS versions for cleartext connections");
        }
        ArrayList arrayList = new ArrayList(enumC2957Arr.length);
        for (EnumC2957 enumC2957 : enumC2957Arr) {
            arrayList.add(enumC2957.f11273);
        }
        String[] strArr = (String[]) arrayList.toArray(new String[0]);
        String[] strArr2 = (String[]) Arrays.copyOf(strArr, strArr.length);
        if (!this.f9072) {
            throw new IllegalArgumentException("no TLS versions for cleartext connections");
        }
        if (strArr2.length == 0) {
            throw new IllegalArgumentException("At least one TLS version is required");
        }
        this.f9070 = (String[]) Arrays.copyOf(strArr2, strArr2.length);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public void m5424(C2963... c2963Arr) {
        if (!this.f9072) {
            throw new IllegalArgumentException("no cipher suites for cleartext connections");
        }
        ArrayList arrayList = new ArrayList(c2963Arr.length);
        for (C2963 c2963 : c2963Arr) {
            arrayList.add(c2963.f11326);
        }
        String[] strArr = (String[]) arrayList.toArray(new String[0]);
        String[] strArr2 = (String[]) Arrays.copyOf(strArr, strArr.length);
        if (!this.f9072) {
            throw new IllegalArgumentException("no cipher suites for cleartext connections");
        }
        if (strArr2.length == 0) {
            throw new IllegalArgumentException("At least one cipher suite is required");
        }
        this.f9069 = (String[]) Arrays.copyOf(strArr2, strArr2.length);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public C2946 m5425() {
        return new C2946(this.f9072, this.f9071, (String[]) this.f9069, (String[]) this.f9070);
    }
}
