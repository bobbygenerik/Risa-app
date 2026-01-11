package p122;

import android.os.Build;

/* renamed from: ˈˋ.ٴﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2089 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean f8174;

    public C2089(boolean z) {
        String str = Build.VERSION.RELEASE;
        String str2 = Build.VERSION.CODENAME;
        if (str == null) {
            throw new NullPointerException("Null osRelease");
        }
        if (str2 == null) {
            throw new NullPointerException("Null osCodeName");
        }
        this.f8174 = z;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C2089)) {
            return false;
        }
        C2089 c2089 = (C2089) obj;
        String str = Build.VERSION.RELEASE;
        if (!str.equals(str)) {
            return false;
        }
        String str2 = Build.VERSION.CODENAME;
        return str2.equals(str2) && this.f8174 == c2089.f8174;
    }

    public final int hashCode() {
        return ((((Build.VERSION.RELEASE.hashCode() ^ 1000003) * 1000003) ^ Build.VERSION.CODENAME.hashCode()) * 1000003) ^ (this.f8174 ? 1231 : 1237);
    }

    public final String toString() {
        return "OsData{osRelease=" + Build.VERSION.RELEASE + ", osCodeName=" + Build.VERSION.CODENAME + ", isRooted=" + this.f8174 + "}";
    }
}
