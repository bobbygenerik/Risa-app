package p447;

import android.os.Bundle;
import j$.util.Objects;
import java.util.EnumMap;

/* renamed from: ﹶﾞ.ˉˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5258 {

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final C5258 f19849 = new C5258((Boolean) null, 100, (Boolean) null, (String) null);

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Boolean f19850;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final String f19851;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final EnumMap f19852;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f19853;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f19854;

    public C5258(Boolean bool, int i, Boolean bool2, String str) {
        EnumMap enumMap = new EnumMap(EnumC5341.class);
        this.f19852 = enumMap;
        enumMap.put((EnumMap) EnumC5341.f20322, (EnumC5341) (bool == null ? EnumC5232.f19673 : bool.booleanValue() ? EnumC5232.f19674 : EnumC5232.f19671));
        this.f19854 = i;
        this.f19853 = m10451();
        this.f19850 = bool2;
        this.f19851 = str;
    }

    public C5258(EnumMap enumMap, int i, Boolean bool, String str) {
        EnumMap enumMap2 = new EnumMap(EnumC5341.class);
        this.f19852 = enumMap2;
        enumMap2.putAll(enumMap);
        this.f19854 = i;
        this.f19853 = m10451();
        this.f19850 = bool;
        this.f19851 = str;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static C5258 m10449(int i, Bundle bundle) {
        if (bundle == null) {
            return new C5258((Boolean) null, i, (Boolean) null, (String) null);
        }
        EnumMap enumMap = new EnumMap(EnumC5341.class);
        for (EnumC5341 enumC5341 : EnumC5238.DMA.f19690) {
            enumMap.put((EnumMap) enumC5341, (EnumC5341) C5311.m10531(bundle.getString(enumC5341.f20326)));
        }
        return new C5258(enumMap, i, bundle.containsKey("is_dma_region") ? Boolean.valueOf(bundle.getString("is_dma_region")) : null, bundle.getString("cps_display_str"));
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static C5258 m10450(String str) {
        if (str == null || str.length() <= 0) {
            return f19849;
        }
        String[] split = str.split(":");
        int parseInt = Integer.parseInt(split[0]);
        EnumMap enumMap = new EnumMap(EnumC5341.class);
        EnumC5341[] enumC5341Arr = EnumC5238.DMA.f19690;
        int length = enumC5341Arr.length;
        int i = 1;
        int i2 = 0;
        while (i2 < length) {
            enumMap.put((EnumMap) enumC5341Arr[i2], (EnumC5341) C5311.m10532(split[i].charAt(0)));
            i2++;
            i++;
        }
        return new C5258(enumMap, parseInt, (Boolean) null, (String) null);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C5258)) {
            return false;
        }
        C5258 c5258 = (C5258) obj;
        if (this.f19853.equalsIgnoreCase(c5258.f19853) && Objects.equals(this.f19850, c5258.f19850)) {
            return Objects.equals(this.f19851, c5258.f19851);
        }
        return false;
    }

    public final int hashCode() {
        Boolean bool = this.f19850;
        int i = bool == null ? 3 : true != bool.booleanValue() ? 13 : 7;
        String str = this.f19851;
        return ((str == null ? 17 : str.hashCode()) * 137) + this.f19853.hashCode() + (i * 29);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("source=");
        sb.append(C5311.m10535(this.f19854));
        for (EnumC5341 enumC5341 : EnumC5238.DMA.f19690) {
            sb.append(",");
            sb.append(enumC5341.f20326);
            sb.append("=");
            EnumC5232 enumC5232 = (EnumC5232) this.f19852.get(enumC5341);
            if (enumC5232 == null) {
                sb.append("uninitialized");
            } else {
                int ordinal = enumC5232.ordinal();
                if (ordinal == 0) {
                    sb.append("uninitialized");
                } else if (ordinal == 1) {
                    sb.append("eu_consent_policy");
                } else if (ordinal == 2) {
                    sb.append("denied");
                } else if (ordinal == 3) {
                    sb.append("granted");
                }
            }
        }
        Boolean bool = this.f19850;
        if (bool != null) {
            sb.append(",isDmaRegion=");
            sb.append(bool);
        }
        String str = this.f19851;
        if (str != null) {
            sb.append(",cpsDisplayStr=");
            sb.append(str);
        }
        return sb.toString();
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final String m10451() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f19854);
        for (EnumC5341 enumC5341 : EnumC5238.DMA.f19690) {
            sb.append(":");
            sb.append(C5311.m10533((EnumC5232) this.f19852.get(enumC5341)));
        }
        return sb.toString();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final EnumC5232 m10452() {
        EnumC5232 enumC5232 = (EnumC5232) this.f19852.get(EnumC5341.f20322);
        return enumC5232 == null ? EnumC5232.f19673 : enumC5232;
    }
}
