package p277;

import com.parse.ٴʼ;
import p330.C4111;
import p330.C4162;

/* renamed from: ٴʻ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3529 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C3529 f13869;

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C3529 f13870;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final C3529 f13871;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object f13872;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f13873;

    static {
        int i = 0;
        f13869 = new C3529(i, "ENABLED");
        f13870 = new C3529(i, "DISABLED");
        f13871 = new C3529(i, "DESTROYED");
    }

    public /* synthetic */ C3529(int i, Object obj) {
        this.f13873 = i;
        this.f13872 = obj;
    }

    public String toString() {
        switch (this.f13873) {
            case 0:
                return (String) this.f13872;
            default:
                return super.toString();
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public synchronized ٴʼ m7490() {
        return ٴʼ.ˆﾞ((C4111) ((C4162) this.f13872).m2485());
    }
}
